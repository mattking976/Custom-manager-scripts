_plyer = _this select 1;
_LO = ((_this select 3) select 0) select 0;

//Clearing Inventory
removeAllWeapons _plyer;  
removeAllItems _plyer;  
removeUniform _plyer;  
removeVest _plyer;  
removeBackpack _plyer;  
removeHeadgear _plyer;  
removeGoggles _plyer; 

//common items
//------------------------------------------------

_uniform = "UK3CB_BAF_U_HeliPilotCoveralls_Army";
_pistolMag = "UK3CB_BAF_9_17Rnd";
_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
_rifle = "UK3CB_BAF_L22A2";
_rifleOptic = "rksl_optic_lds";
_rifleLLM = "UK3CB_BAF_LLM_IR_Black";
_pistol = "UK3CB_BAF_L131A1";
_vest = "mpx_virtus_p";
_helmet = "UK3CB_H_Crew_Helmet";
_backpack = "B_Parachute";
_binoculars = "ACE_VectorDay";

//------------------------------------------------

//function for adding bandages to players uniform
addBandage = {
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_fieldDressing"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_elasticBandage"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_packingBandage"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_quikclot"};
};

//fucntion for adding common ammo and misc items to the vest
addVestItems = {
	_plyer addItemToVest "ACE_EarPlugs";
	_plyer addItemToVest "ItemcTabHCam";
	_plyer addItemToVest "ACE_EntrenchingTool";
	for "_i" from 1 to 3 do {_plyer addItemToVest _pistolMag;};
	for "_i" from 1 to 5 do {_plyer addItemToVest _rifleMag;};
};


//switch for ease of kit switching
switch (_LO) do
{
	case "PIL":
	{
		//weapons
		_plyer addWeapon _rifle;
		_plyer addPrimaryWeaponItem _rifleLLM;
		_plyer addPrimaryWeaponItem _rifleOptic;
		_plyer addPrimaryWeaponItem _rifleMag;
		_plyer addWeapon _pistol;
		_plyer addWeaponItem [_pistol, _pistolMag];
				
		//uniform
		_plyer forceAddUniform _uniform;
		
		//uniform gear
		call addBandage;
		
		//vest
		_plyer addVest _vest;
		
		//vest gear
		call addVestItems;
		
		//Other Equipment
		_plyer addBackpack _backpack;
		_plyer addHeadgear _helmet;
		_plyer addWeapon _binoculars;
	};
	
	case "COPIL":
	{
		//weapons
		_plyer addWeapon _rifle;
		_plyer addPrimaryWeaponItem _rifleLLM;
		_plyer addPrimaryWeaponItem _rifleOptic;
		_plyer addPrimaryWeaponItem _rifleMag;
		_plyer addWeapon _pistol;
		_plyer addWeaponItem [_pistol, _pistolMag];
	
		//uniform
		_plyer forceAddUniform _uniform;
		
		//uniform gear
		call addBandage;
		
		//vest
		_plyer addVest _vest;
		
		//vest gear
		call addVestItems;
		
		//Other Equipment
		_plyer addBackpack _backpack;
		_plyer addHeadgear _helmet;
		_plyer addWeapon _binoculars;
	};
};