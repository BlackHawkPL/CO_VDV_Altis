ace_cookoff_enable = false;
ace_cookoff_ammoCookoffDuration = 0;
ace_cookoff_enableAmmoCookoff = false;
ace_hearing_enableCombatDeafness = false;
ACE_weather_syncWind = false;
ACE_wind = [0,0,0];
setWind [0,0, true];

#define ZEUS_MODULES ["moduleremotecontrol_f","ace_zeus_modulesuppressivefire", "ace_zeus_moduleungarrison", \
"ace_zeus_modulegarrison", "ace_zeus_modulesearchnearby", "ace_zeus_modulesearcharea", "ace_zeus_modulepatrolarea", \
"ace_zeus_moduleglobalsetskill", "ace_zeus_moduledefendarea", "ace_zeus_moduleeditableobjects"]

z1m addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{

			_cost = if (_x in ZEUS_MODULES) then {[true,0]} else {[false,0]}; // Show only objects of type "Man", hide everything else
			_costs = _costs + [_cost];
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];

if (isServer) then {

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 30; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

	[west, "USMC", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[east, "VDV", "ai"] call FNC_AddTeam; //Adds a ai team called VDV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

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