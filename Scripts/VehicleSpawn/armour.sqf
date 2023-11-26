_LO = ((_this select 3) select 0) select 0;

// classnames
chimera = "TIOW_CadianChimAuto_700";
lemanRuss = "TIOW_Cad_LR_Battlecannon_700th_Blu";

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
	case "CHIM":
	{
		[ArmourSpawn, chimera] call spawnARMOUR;
	};

	case "RUSS":
	{
		[ArmourSpawn, lemanRuss] call spawnARMOUR;
	};
};
