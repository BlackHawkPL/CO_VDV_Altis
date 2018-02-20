//AUTHOR: SgtDeadly12
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

#define package "ModernVDV_"

SET_GROUP(uniform)
	["rhs_uniform_vdv_emr"] call FNC_AddItem;
END_GROUP;
	
SET_GROUP(IFAK)
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem;
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem;
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem;
	["ACE_morphine", 1, "uniform"] call FNC_AddItem;
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem;
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;
END_GROUP;
	
SET_GROUP(items)
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ACE_MapTools"] call FNC_AddItem;
	["ACRE_PRC343"] call FNC_AddItem;
END_GROUP;
	
case (package + "RF"): { //Rifleman
	
	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest  //6B23 modern variant | 343 for everyone | UMBTS | PKP instead of RPK | fancy grenades for TL | range finder for SL | AK-74M for crew | 1 SVT per platoon
	
	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet  //EMR MODERN
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle  //AK-74M
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	
};

case (package + "RFLAT"): { //AT Rifleman
	
	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	
	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	
	["rhs_weap_rpg26"] call FNC_AddItem; //Anti tank launcher
	
};

case (package + "MG"): { //Automatic Rifleman
	
	["rhs_6b23_digi_6sh92"] call FNC_AddItem;	//Vest
	["rhs_assault_umbts"] call FNC_AddItem; //Backpack
	
	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_100Rnd_762x54mmR",1,"vest"] call FNC_AddItem; //Magazines
	["rhs_100Rnd_762x54mmR",1,"backpack"] call FNC_AddItem; //Magazines
	["rhs_100Rnd_762x54mmR_green",1,"backpack"] call FNC_AddItem; //Tracer Magazines
	
	["rhs_weap_pkp"] call FNC_AddItem;//Primary Rifle

};
	
case (package + "RPG"): { //AT Rifleman
	
	["rhs_6b23_digi_rifleman"] call FNC_AddItem;  //Vest
	["rhs_rpg_empty"] call FNC_AddItem;	//backpack
	
	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	["rhs_rpg7_PG7VL_mag",3,"backpack"] call FNC_AddItem; //HEAT Rockets
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	
	["rhs_weap_rpg7"] call FNC_AddItem; //Rocket Launcher
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v3";
	
};

case (package + "RPGASS"): { //Assitant RPG Gunner
	
	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	["rhs_rpg_empty"] call FNC_AddItem;	//backpack
	
	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem; //HEAT Rockets
	["rhs_rpg7_OG7V_mag",2,"backpack"] call FNC_AddItem;
	
	["rhs_weap_ak74m"] call FNC_AddItem; //Primary rifle
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	
};

case (package + "EFR"): { //Team Leader/Efreitor

	["rhs_6b23_digi_6sh92"] call FNC_AddItem;  //Vest
	["rhs_assault_umbts"] call FNC_AddItem; //Backpack

	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	
	["rhs_VOG25",4,"backpack"] call FNC_AddItem; //GP-25 HE and Smoke Grenades
	["rhs_VOG25P",2,"backpack"] call FNC_AddItem;
	["rhs_VG40TB",2,"backpack"] call FNC_AddItem;
	["rhs_GRD40_White",2,"backpack"] call FNC_AddItem;
	["rhs_GRD40_Green",1,"backpack"] call FNC_AddItem;
	["rhs_GRD40_Red",1,"backpack"] call FNC_AddItem;

	["rhs_weap_ak74m_gp25"] call FNC_AddItem; //Primary Rifle
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p78_3d";

};

case (package + "SL"): { //Squad Leader

	["rhs_6b23_digi_6sh92"] call FNC_AddItem; //Vest
	["rhs_assault_umbts"] call FNC_AddItem; //Backpack Radio
	["ACRE_PRC117F", 1, "backpack"] call FNC_AddItem;

	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_pdu4"] call FNC_AddItem;

	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines

	["rhs_weap_ak74m"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p78_3d"; //4X Optic

};

case (package + "PL"): { //Platoon Leader

	["rhs_6b23_digi_6sh92"] call FNC_AddItem; //Vest
	["rhs_assault_umbts"] call FNC_AddItem; //Backpack Radio

	["rhs_6b28_green_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_pdu4"] call FNC_AddItem;

	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines

	["rhs_weap_ak74m"] call FNC_AddItem; //Primary Rifle
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; //Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p29"; //4X Optic

};

case (package + "GNR"): { //Vehicle Gunner
	
	["rhs_6b23_digi_crew"] call FNC_AddItem;  //Vest
	
	["rhs_tsh4_ess"] call FNC_AddItem; //Helmet
	
	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	
	["rhs_pdu4"] call FNC_AddItem;
	
	["rhs_mag_rdg2_white", 1] call FNC_AddItem; //White smoke
	["rhs_mag_rgd5", 1] call FNC_AddItem; //Frag grenade
	
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; //Magazines
	["rhs_30Rnd_545x39_AK_green",1,"vest"] call FNC_AddItem; //Tracer Magazines
	
["rhs_weap_ak74m_plummag_folded"] call FNC_AddItem; //Primary Rifle
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u"; //Flash Hider
	
};