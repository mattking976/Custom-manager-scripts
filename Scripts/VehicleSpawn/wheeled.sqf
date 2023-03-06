_LO = ((_this select 3) select 0) select 0;

// classnames
_coyoteGMG = "UK3CB_BAF_Coyote_Logistics_L134A1_W_MTP";
_coyoteHMG = "UK3CB_BAF_Coyote_Logistics_L111A1_W_MTP";
_jackal_GMG = "UK3CB_BAF_Jackal2_GMG_W_MTP";
_jackal_HMG = "UK3CB_BAF_Jackal2_L2A1_W_MTP";
_coyoteGMGT = "UK3CB_BAF_Coyote_Logistics_L134A1_D_MTP";
_coyoteHMGT = "UK3CB_BAF_Coyote_Logistics_L111A1_D_MTP";
_jackal_GMGT = "UK3CB_BAF_Jackal2_GMG_D_MTP";
_jackal_HMGT = "UK3CB_BAF_Jackal2_L2A1_D_MTP";
_wmikMilan = "UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_A_MTP";
_wmikHMG = "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_A_MTP";
_wmikMilanT = "UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A_MTP";
_wmikHMGT = "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A_MTP";
_panther = "UK3CB_BAF_Panther_GPMG_Green_A_MTP";
_pantherT = "UK3CB_BAF_Panther_GPMG_Sand_A_MTP";

spawnWheeled = {
	params ["_location", "_wheeled"];

	if(triggerActivated _location) then {
		hint "Spawn location is not clear!"
	}
	else{
		_pos = getPosATL _location;
		_wheeled createVehicle [_pos select 0, _pos select 1, _pos select 2];
		hint "Thin Skinned vehicle Spawned!";
	};
};

switch(_LO) do
{
	case "COYGMG":
	{
		[CarPad, _coyoteGMG] call spawnWheeled;
	};

	case "COYHMG":
	{
		[CarPad, _coyoteHMG] call spawnWheeled;
	};

	case "JAKGMG":
	{
		[CarPad, _jackal_GMG] call spawnWheeled;
	};

	case "JAKHMG":
	{
		[CarPad, _jackal_HMG] call spawnWheeled;
	};

	case "COYGMGTAN":
	{
		[CarPad, _coyoteGMGT] call spawnWheeled;
	};

	case "COYHMGTAN":
	{
		[CarPad, _coyoteHMGT] call spawnWheeled;
	};

	case "JAKGMGTAN":
	{
		[CarPad, _jackal_GMGT] call spawnWheeled;
	};

	case "JAKHMGTAN":
	{
		[CarPad, _jackal_HMGT] call spawnWheeled;
	};

	case "WMIKMILAN":
	{
		[CarPad, _wmikMilan] call spawnWheeled;
	};

	case "WMIKHMG":
	{
		[CarPad, _wmikHMG] call spawnWheeled;
	};

	case "WMIKMILANTAN":
	{
		[CarPad, _wmikMilanT] call spawnWheeled;
	};

	case "WMIKHMGTAN":
	{
		[CarPad, _wmikHMGT] call spawnWheeled;
	};

	case "PANTHER":
	{
		[CarPad, _panther] call spawnWheeled;
	};

	case "PANTHERTAN":
	{
		[CarPad, _pantherT] call spawnWheeled;
	};
};
