_LO = ((_this select 3) select 0) select 0;

// classnames
// _challenger2 = "CUP_B_Challenger2_2CW_BAF";
_warrior = "UK3CB_MDF_B_Warrior_Cage_Camo";
_bulldogGPMG = "UK3CB_BAF_FV432_Mk3_GPMG_Green_MTP";
_bulldogHMG = "UK3CB_BAF_FV432_Mk3_RWS_Green_MTP";

spawnARMOUR = {
	params ["_location", "_armour"];

	if(triggerActivated _location) then {
		hint "Spawn location is not clear!"
	}
	else{
		_pos = getPosATL _location;
		_armour createVehicle [_pos select 0, _pos select 1, _pos select 2];
		hint "Armour Spawned!";
	};
};



switch (_LO) do {
	case "WARRIOR":
	{
		[ArmourSpawn, _warrior] call spawnARMOUR;
	};

	case "BULLDOGGPMG":
	{
		[ArmourSpawn, _bulldogGPMG]	call spawnARMOUR;	
	};

	case "BULLDOGHMG":
	{
		[ArmourSpawn, _bulldogHMG] call spawnARMOUR;
	};
};