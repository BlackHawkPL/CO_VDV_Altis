["Start in Parachute", "Starts players in parachutes", "Briland"] call FNC_RegisterModule;

FNC_DOPARACHUTE = {
	private ["_target", "_elev", "_rand", "_stear", "_class"];

	if (!isDedicated && hasInterface && (str (side player)) != "LOGIC") then {
		_target = _this select 0;
		_elev = _this select 1;
		_rand = 100;
		_stear = false;
		_class = "rhs_d6_Parachute";
		_doPara = false;

		if (count _this > 2) then {
			_rand = _this select 2;
		};

		if (count _this > 3) then {
			_stear = _this select 3;
		};

		if (_stear) then {
			_class = "Steerable_Parachute_F";
		};

		if (((typeOf player) find "pilot") != -1) exitWith {};

		if (typeName _target == "SIDE") then {
			if (side player isEqualTo _target) then {
				_doPara = true;
			};
		};

		if (typeName _target == "ARRAY") then {
			{
				if (player isEqualTo _x) then {
					_doPara = true;
				};
			} foreach _target;
		};

		if (typeName _target == "OBJECT") then {
			if (player isEqualTo _target) then {
				_doPara = true;
			};
		};

		if (!_doPara) exitwith {};

		[_elev, _rand, _class] spawn {

			_elevation = _this select 0;
			_randelev = _this select 1;
			_classname = _this select 2;

			waitUntil {!isnull player};
			_random = floor (random _randelev);
			_chute = _classname createVehicle [0,0,0]; 
			_chute setPosATL [getPosatl player select 0, getPosatl player select 1, _elevation + _random]; 
			player moveIndriver _chute;
			player allowDamage false;
			[{0.1 > (getPos player select 2)}, {[] spawn {sleep 2; player allowdamage true}}] call CBA_fnc_waitUntilAndExecute;

		};
	};
	if (isServer) then {
		{
			_para = "B_Parachute_02_F" createvehicle [0, 0, 0];
			_para setpos [getpos _x select 0, getpos _x select 1, 200];
			_x setPos [getPos _x select 0, getPos _x select 1, 100];
			_x attachTo [_para,[0,0,-.5]];

			[{(getPos (_this select 0) select 2) < 1}, {detach (_this select 0); deleteVehicle (_this select 1);}, [_x, _para]] call CBA_fnc_waitUntilAndExecute;
		} forEach [bmd111, bmd112, bmd113, bmd100];
	};
};

#define DOPARACHUTE(TARGET, ELEVATION, RAND, STEAR) \
[TARGET, ELEVATION, RAND, STEAR] call FNC_DOPARACHUTE;

#include "settings.sqf"