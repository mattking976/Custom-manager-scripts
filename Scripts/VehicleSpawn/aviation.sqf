_LO = ((_this select 3) select 0) select 0;

// classnames
arvusLighter = "ArvusLighter";
valkTransport = "ML700_Valkyrie_Transport";
valkPylons = "ML700_Valkyrie_Multilas";

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
	case "AVL":
	{
		[HeliPad, arvusLighter] call spawnAIR;
	};

	case "VTRAN":
	{
		[HeliPad, valkTransport] call spawnAIR;
	};

	case "VPYLON":
	{
		[HeliPad, valkPylons] call spawnAIR;
	};
};
