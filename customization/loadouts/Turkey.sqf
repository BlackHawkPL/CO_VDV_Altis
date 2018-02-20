//AUTHOR: BlackHawk
//
//[this, "1989VDV_RF"] call FNC_GearScript;
//[this, "1989VDV_RFLAT"] call FNC_GearScript;
//[this, "1989VDV_AR"] call FNC_GearScript;
//[this, "1989VDV_RFAT"] call FNC_GearScript;
//[this, "1989VDV_RFASST"] call FNC_GearScript;
//[this, "1989VDV_TL"] call FNC_GearScript;
//[this, "1989VDV_SL"] call FNC_GearScript;
//[this, "1989VDV_PL"] call FNC_GearScript;
//[this, "1989VDV_MRKSMN"] call FNC_GearScript;
//[this, "1989VDV_GNR"] call FNC_GearScript;
//[this, "1989VDV_DRVR"] call FNC_GearScript;

#define package "Turkey_"

SET_GROUP(uniform)
	["CORX_m93_turkishstripe"] call FNC_AddItem;
	["V_TacVest_oli"] call FNC_AddItem;
	["rhs_6b27m_green"] call FNC_AddItem;
END_GROUP;
	
SET_GROUP(IFAK)
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem;
END_GROUP;

case (package + "RF"): {
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	
	["hlc_20rnd_762x51_b_G3", 5] call FNC_AddItem;
	["HandGrenade", 1] call FNC_AddItem;

	["hlc_rifle_g3sg1"] call FNC_AddItem;
};

case (package + "RPG_AT"): {
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);

	["rhs_rpg_empty"] call FNC_AddItem;
	
	["hlc_20rnd_762x51_b_G3", 5] call FNC_AddItem;
	["HandGrenade", 1] call FNC_AddItem;

	["hlc_rifle_g3sg1"] call FNC_AddItem;

	["rhs_rpg7_PG7VL_mag",3,"backpack"] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
};

case (package + "RPG_AP"): {
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);

	["rhs_rpg_empty"] call FNC_AddItem;
	
	["hlc_20rnd_762x51_b_G3", 5] call FNC_AddItem;
	["HandGrenade", 1] call FNC_AddItem;

	["hlc_rifle_g3sg1"] call FNC_AddItem;

	["rhs_rpg7_OG7V_mag",2,"backpack"] call FNC_AddItem;
	["rhs_weap_rpg7"] call FNC_AddItem;
};

case (package + "LAT"): {
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	
	["hlc_20rnd_762x51_b_G3", 5] call FNC_AddItem;
	["HandGrenade", 1] call FNC_AddItem;

	["hlc_rifle_g3sg1"] call FNC_AddItem;

	["rhs_weap_m72a7"] call FNC_AddItem;
};


case (package + "MG"): {
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	
	["JO_500rnd_MG3",1,"vest"] call FNC_AddItem;
	["HandGrenade", 1] call FNC_AddItem;

	["JO_MG_MG3"] call FNC_AddItem;
};