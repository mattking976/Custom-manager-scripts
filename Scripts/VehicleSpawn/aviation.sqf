_LO = ((_this select 3) select 0) select 0;

// classnames
_wildcatArmed = "UK3CB_BAF_Wildcat_AH1_6_Generic_MTP";
_wildcatArmedg = "CUP_B_AW159_GB";
_chinook = "UK3CB_BAF_Chinook_HC2_MTP";
_merlin = "UK3CB_BAF_Merlin_HC3_18_GPMG_MTP";
_pumaHC1 = "CUP_B_SA330_Puma_HC1_BAF";
_pumaHC2 = "CUP_B_SA330_Puma_HC2_BAF";
// _MQ9 = "UK3CB_BAF_MQ9_Reaper_Generic_MTP";

spawnAIR = {
	params ["_location", "_aircraft"];

	if(triggerActivated _location) then {
		hint "Spawn location is not clear!"
	}
	else{
		_pos = getPosATL _location;
		_aircraft createVehicle [_pos select 0, _pos select 1, _pos select 2];
		hint "Aircraft Spawned!";
	};
};


switch (_LO) do 
{
	case "WCARMED":
	{
		[HeliPad, _wildcatArmed] call spawnAIR;
	};

	case "WCARMEDG":
	{
		[HeliPad, _wildcatArmedg] call spawnAIR;
	};

	case "CHINOOK":
	{
		[HeliPad, _chinook] call spawnAIR;
	};

	case "MERLIN":
	{
		[HeliPad, _merlin] call spawnAIR;
	};

	case "PUMA":
	{
		[HeliPad, _pumaHC1] call spawnAIR;
	};

	case "PUMAC":
	{
		[HeliPad, _pumaHC2] call spawnAIR;
	};
};
