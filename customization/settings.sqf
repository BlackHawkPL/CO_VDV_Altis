ace_cookoff_enable = false;
ace_cookoff_ammoCookoffDuration = 0;
ace_cookoff_enableAmmoCookoff = false;
ace_hearing_enableCombatDeafness = false;
ACE_weather_syncWind = false;
ACE_wind = [0,0,0];
setWind [0,0, true];
ACE_medical_enableUnconsciousnessAI = 0;

z1m addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = if (
				(toLower _x) in ["moduleremotecontrol_f","ace_zeus_modulesuppressivefire", "ace_zeus_moduleungarrison",
				"ace_zeus_modulegarrison", "ace_zeus_modulesearchnearby", "ace_zeus_modulesearcharea", "ace_zeus_modulepatrolarea",
				"ace_zeus_moduleglobalsetskill", "ace_zeus_moduledefendarea"]
			) then {[true,0]} else {[false,0]};
			_costs = _costs + [_cost];
		} forEach _classes;
		_costs
	}
];

{_x setVariable ["acex_headless_blacklist", false];} forEach allUnits + allGroups;

removeAllCuratorEditingAreas z1m;
z1m setCuratorEditingAreaType true;
z1m addCuratorEditingArea [0,getpos DZ,0];


if (isServer || !hasInterface) then {
	{
		_x setskill ["spottime", 0.95];
		_x setskill ["spotdistance", 0.95];
		_x setskill ["aimingaccuracy", 0.25];
		_x setskill ["aimingshake", 0.85];
		_x setskill ["aimingspeed", 0.7];
	} forEach allUnits;

	{
		[{
			{
				if (side _x == independent) then {
					private _group = _x;
					{_group reveal [vehicle _x, 4]} forEach allPlayers;
					if (_forEachIndex == 0) then {
						_group allowFleeing 0;
						_group setBehaviour "Combat";
						units _group doWatch DZ;
					};
				};
			} forEach allGroups;
		}, [], _x] call CBA_fnc_waitAndExecute;
	} forEach [300, 600, 900];
};

if (isServer) then {

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 30; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

	[independent, "Turkey", "ai"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[east, "VDV", "player"] call FNC_AddTeam; //Adds a ai team called VDV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

	private _ind_units = [];
	{
		if (side _x == independent) then {
			_ind_units pushBack _x;
			private _kit = "RF";
			if (vehicle _x == _x) then {
				_kit = selectRandom ["RF", "RF", "RF", "RPG_AT", "RPG_AP", "LAT", "LAT", "MG"];
			};
			[_x, "Turkey_" + _kit] call FNC_GearScript;
		};
	} forEach allUnits;

	z1m addCuratorEditableObjects [_ind_units, true];

	[{
		{
			[_x, "Aware"] remoteExec ["setBehiaviour", groupOwner _x];
			[_x, getPos DZ] remoteExec ["move", groupOwner _x];
		} forEach [dz_attack_1, dz_attack_2, dz_attack_3, dz_attack_2];
	}, [], 310] call CBA_fnc_waitAndExecute;

};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = true; //Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player

	//call FNC_forceTerrainGrid; //uncomment this to force high terrain setting. This will prevent faraway objects from appearing as floating. Useful for missions with long sightlines.
	
	switch (side player) do { //Checks what team the player is on
		case west: {
			FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
		};
		//add more cases for other factions here
	};
};