_plyer = _this select 1;
_LO = ((_this select 3) select 0) select 0;

// Clearing Inventory
removeAllWeapons _plyer;  
removeAllItems _plyer;  
removeUniform _plyer;  
removeVest _plyer;  
removeBackpack _plyer;  
removeHeadgear _plyer;  
removeGoggles _plyer; 

// class names
// ------------------------------------------------

// uniform vest and helmet
_uniform = "CUP_U_B_BAF_MTP_UBACSLONGKNEE_Gloves";
_helmet = "UK3CB_BAF_H_Mk7_Scrim_ESS_B";
_vestRifle = "mpx_virtus_p"; // vest is the same for all except SL and medic

// medic vest
_vestMedic = "mpx_virtus_Medic_p";

// rifles and their setups
// common attachments
_rifleOptic = "rksl_optic_lds";
_rifleLLM = "UK3CB_BAF_LLM_IR_Black";

// SL
_rifleSL = "UK3CB_BAF_L85A3_UGL";
_vestSL = "mpx_virtus_admin_p";

// 249 Machine Gunner
_MG249 = "UK3CB_BAF_L110A2RIS";
_MG249Optic = "rhsusf_acc_ELCAN";

// MG240
_MG240 = "rhs_weap_m240G";
_MG240Optic = "rhsusf_acc_ELCAN";

// marksman
_rifleMarksman = "UK3CB_BAF_L129A1";
_rifleMarksmanSupressor = "UK3CB_BAF_Silencer_L115A3";
_rifleMarksmanScope = "UK3CB_BAF_TA648_308";

// rifleman
_rifle = "UK3CB_BAF_L85A3";
_rifleGripPod = "UK3CB_underbarrel_acc_grippod";

// sidearm
_pistol = "UK3CB_BAF_L131A1";

// magazines
_pistolMag = "UK3CB_BAF_9_17Rnd";
_rifleMag = "UK3CB_BAF_556_30Rnd";
_rifleMarksmanMag = "UK3CB_BAF_762_L42A1_20Rnd";
_MG249Mag = "rhsusf_200rnd_556x45_mixed_box";
_MG240Mag = "rhsusf_100Rnd_762x51";

// backpacks including LR Radios
_backpack = "mpx_daysack8";
_longRangeRadioBP = "TFAR_anprc155";
_backpackMedic = "B_Bergen_mcamo_F";

// binoculars
_binoculars = "ACE_VectorDay";

// gas mask
_gasMask = "G_CBRN_M04_Hood";

// Ctab tablet
_cTab = "ItemcTab";

// gps
_gps = "ItemGPS";

// ------------------------------------------------

addBasics = {
	params ["_weapon", "_vest", "_bag"];

	// weapons
	_plyer addWeapon _weapon;

	// add attachments
	switch(_weapon) do
	{
		case _rifleSL:
		{
			_plyer addPrimaryWeaponItem _rifleLLM;
			_plyer addPrimaryWeaponItem _rifleOptic;
			_plyer addPrimaryWeaponItem _rifleMag;
			_plyer addVest _vest;
		};

		case _MG249:
		{
			_plyer addPrimaryWeaponItem _MG249Optic;
			_plyer addPrimaryWeaponItem _MG249Mag;
			_plyer addVest _vest;
		};

		case _MG240:
		{
			_plyer addPrimaryWeaponItem _MG240Optic;
			_plyer addPrimaryWeaponItem _MG240Mag;
			_plyer addVest _vest;
		};

		case _rifleMarksman:
		{
			_plyer addPrimaryWeaponItem _rifleMarksmanScope;
			_plyer addPrimaryWeaponItem _rifleMarksmanSupressor;
			_plyer addPrimaryWeaponItem _rifleMarksmanMag;
			_plyer addVest _vest;
		};

		case _rifle:
		{
			_plyer addPrimaryWeaponItem _rifleOptic;
			_plyer addPrimaryWeaponItem _rifleLLM;
			_plyer addPrimaryWeaponItem _rifleGripPod;
			_plyer addPrimaryWeaponItem _rifleMag;
			_plyer addVest _vest;
		};
	};

	// pistol
	_plyer addWeapon _pistol;
	_plyer addWeaponItem [_pistol, _pistolMag];
			
	// uniform
	_plyer forceAddUniform _uniform;

	// backpack
	_plyer addBackpack _bag;

	// Other Equipment
	_plyer addHeadgear _helmet;
	_plyer addWeapon _binoculars;
};

// function for adding bandages to players uniform
addBandage = {
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_fieldDressing"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_elasticBandage"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_packingBandage"};
	for "_i" from 1 to 10 do { _plyer addItemToUniform "ACE_quikclot"};
};

// fucntion for adding common ammo and misc items to the vest
addVestItems = {
	for "_i" from 1 to 3 do {_plyer addItemToVest _pistolMag;};
	for "_i" from 1 to 10 do {_plyer addItemToVest _rifleMag;};
	_plyer addItemToVest "kat_Painkiller";
};

// function for addding backpack items
addBackpackItems = {
	_plyer addItemToBackpack "ACE_EarPlugs";
	_plyer addItemToBackpack "ItemcTabHCam";
	_plyer addItemToBackpack "ACE_EntrenchingTool";
	_plyer addItemToBackpack "rhsusf_ANPVS_14";
	_plyer addItemToBackpack _gasMask;
	for "_i" from 1 to 4 do { _plyer addItemToBackpack "ACE_splint"};
	for "_i" from 1 to 4 do { _plyer addItemToBackpack "ACE_tourniquet"};
	for "_i" from 1 to 2 do { _plyer addItemToBackpack "ACE_plasmaIV"};
	for "_i" from 1 to 4 do { _plyer addItemToBackpack "ACE_plasmaIV_500"};
};

// full medic backpack content.
addMedicBackpack = {
	// add medical and misc content
	for "_i" from 1 to 5 do { _plyer addItemToBackpack "ACE_splint"};
	for "_i" from 1 to 5 do { _plyer addItemToBackpack "ACE_tourniquet"};
	for "_i" from 1 to 40 do { _plyer addItemToBackpack "ACE_packingBandage"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_chestSeal"};
	for "_i" from 1 to 5 do { _plyer addItemToBackpack "kat_plate"};
	for "_i" from 1 to 5 do { _plyer addItemToBackpack "kat_clamp"};
	for "_i" from 1 to 20 do { _plyer addItemToBackpack "ACE_epinephrine"};
	for "_i" from 1 to 25 do { _plyer addItemToBackpack "ACE_morphine"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "ACE_plasmaIV_250"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "ACE_plasmaIV_500"};
	for "_i" from 1 to 15 do { _plyer addItemToBackpack "ACE_plasmaIV"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_lidocaine"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_lorazepam"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_flumazenil"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_amiodarone"};
	for "_i" from 1 to 20 do { _plyer addItemToBackpack "kat_etomidate"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_atropine"};
	for "_i" from 1 to 2 do { _plyer addItemToBackpack "Attachable_Helistretcher"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_larynx"};
	for "_i" from 1 to 5 do { _plyer addItemToBackpack "kat_naloxone"};
	for "_i" from 1 to 10 do { _plyer addItemToBackpack "kat_Carbonate"};
	_plyer addItemToBackpack "kat_scalpel";
	_plyer addItemToBackpack "ACE_surgicalKit";
	_plyer addItemToBackpack "kat_retractor";
	_plyer addItemToBackpack "kat_X_AED";
	_plyer addItemToBackpack _gasMask;
};

switch (_LO) do
{
	case "HQCOL":
	{
		// basic gear
		[_rifleSL, _vestSL, _backpack] call addBasics;

		// uniform gear
		call addBandage;

		// add cTab
		_plyer addWeapon _cTab;
		
		// vest gear
		call addVestItems;
		for "_i" from 1 to 9 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell"};
		for "_i" from 1 to 2 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell"};
		
		// Backpack items
		call addBackpackItems;
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellRed"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellGreen"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "kat_larynx"};
	};

	// Zeus case
	case "ZEUS":
	{
		// basic gear
		[_rifleSL, _vestSL, _longRangeRadioBP] call addBasics;

		// uniform gear
		call addBandage;

		// add cTab
		_plyer addWeapon _cTab;
		
		// vest gear
		call addVestItems;
		for "_i" from 1 to 9 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell"};
		for "_i" from 1 to 2 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell"};
		
		// Backpack items
		call addBackpackItems;
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellRed"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellGreen"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "kat_larynx"};
	};

	// Squad leader equipment
	case "1IC":
	{
		// basic gear
		[_rifleSL, _vestSL, _backpack] call addBasics;

		// uniform gear
		call addBandage;

		// add cTab
		_plyer addWeapon _cTab;
		
		// vest gear
		call addVestItems;
		for "_i" from 1 to 9 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell"};
		for "_i" from 1 to 2 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell"};
		
		// Backpack items
		call addBackpackItems;
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellRed"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellGreen"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "kat_larynx"};
	};
	
	// 2IC and Radio operator
	case "2IC":
	{
		// basic gear
		[_rifleSL, _vestSL, _backpack] call addBasics;
		
		// uniform gear
		call addBandage;

		// add cTab
		_plyer addWeapon _cTab;
				
		//vest gear
		call addVestItems;
		for "_i" from 1 to 9 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell"};
		for "_i" from 1 to 2 do { _plyer addItemToVest "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell"};
				
		// Backpack items
		call addBackpackItems;
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellRed"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShellGreen"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "kat_larynx"};
	};

	case "MEDIC":
	{
		// basic gear
		[_rifle, _vestMedic, _backpackMedic] call addBasics;
		
		// add items to uniform
		_plyer addItemToUniform "ACE_EarPlugs";
		_plyer addItemToUniform "ItemcTabHCam";
		_plyer addItemToUniform "ACE_EntrenchingTool";

		// add gps
		_plyer addWeapon _gps;

		// vest gear
		call addVestItems;
		for "_i" from 1 to 2 do { _plyer addItemToVest "rhs_mag_m67"};
		_plyer addItemToVest "rhsusf_ANPVS_14";
		
		// add medics backpack and contents
		_plyer call addMedicBackpack;
	};
	
	case "EOD":
	{
		// basic gear
		[_rifle, _vestRifle, _backpack] call addBasics;
		
		// uniform gear
		call addBandage;
		
		// vest gear
		call addVestItems;
		_plyer addItemToVest "ACE_VMH3";

		// add gps
		_plyer addWeapon _gps;
		
		// backpack items
		call addBackpackItems;
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "ACE_CTS9"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
		for "_i" from 1 to 6 do { _plyer addItemToBackpack "rhsusf_m112_mag"};
		_plyer addItemToBackpack "ACE_DefusalKit";
		_plyer addItemToBackpack "Toolkit";
		_plyer addItemToBackpack "ACE_Clacker";
	};
	
	// 249 Machine Gunner
	case "249MG":
	{
		// basic gear
		[_MG249, _vestRifle, _backpack] call addBasics;

		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;
				
		// vest gear
		for "_i" from 1 to 3 do {_plyer addItemToVest _pistolMag;};
		for "_i" from 1 to 2 do {_plyer addItemToVest _MG249Mag;};
				
		// backpack items
		call addBackpackItems;
		for "_i" from 1 to 2 do {_plyer addItemToBackpack _MG249Mag;};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "ACE_CTS9"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
	};
	
	// 240 Machine Gunner
	case "240MG":
	{
		// basic gear
		[_MG240, _vestRifle, _backpack] call addBasics;

		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;
		
		// vest gear
		for "_i" from 1 to 3 do {_plyer addItemToVest _pistolMag;};
		for "_i" from 1 to 3 do {_plyer addItemToVest _MG240Mag;};
		
		// backpack items
		call addBackpackItems;
		for "_i" from 1 to 3 do {_plyer addItemToBackpack _MG240Mag;};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "ACE_CTS9"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
	};

	// Rifleman Equipment
	case "RFL":
	{
		// basic gear
		[_rifle, _vestRifle, _backpack] call addBasics;

		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;

		// add vest gear
		call addVestItems;

		// add backpack items
		call addBackpackItems;
	};

	// RTO Equipment
	case "RTO":
	{
		// basic gear
		[_rifle, _vestRifle, _longRangeRadioBP] call addBasics;

		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;

		// add vest gear
		call addVestItems;

		// add backpack items
		call addBackpackItems;
	};
	
	// marksman equipment
	case "MARKSMAN":
	{
		// basic gear
		[_rifleMarksman, _vestRifle, _backpack] call addBasics;	

		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;
		
		// vest gear
		for "_i" from 1 to 3 do {_plyer addItemToVest _pistolMag;};
		for "_i" from 1 to 9 do {_plyer addItemToVest _rifleMarksmanMag;};
		
		// backpack items
		call addBackpackItems;
		_plyer addItemToVest _rifleMarksmanMag;
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "ACE_CTS9"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
	};
	
	case "HAT":
	{
		// basic gear
		[_rifle, _vestRifle, _backpack] call addBasics;

		_plyer addWeapon "rhs_weap_fgm148";
		_plyer addWeaponItem ["rhs_weap_fgm148", "rhs_fgm148_magazine_AT"];
		
		// uniform gear
		call addBandage;

		// add gps
		_plyer addWeapon _gps;
		
		// vest gear
		call addVestItems;
		
		// backpack items
		call addBackpackItems;
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "rhs_mag_m67"};
		for "_i" from 1 to 3 do { _plyer addItemToBackpack "ACE_CTS9"};
		for "_i" from 1 to 2 do { _plyer addItemToBackpack "UK3CB_BAF_SmokeShell"};
	};
};