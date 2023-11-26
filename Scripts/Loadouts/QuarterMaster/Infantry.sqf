plyer = _this select 1;
_LO = ((_this select 3) select 0) select 0;

// Clearing Inventory
removeAllWeapons plyer;  
removeAllItems plyer;  
removeUniform plyer;  
removeVest plyer;  
removeBackpack plyer;  
removeHeadgear plyer;  
removeGoggles plyer; 

// class names
// ------------------------------------------------

// uniform vest and helmet
cadUniform = "CadUni700th";
helmet = "Cad_Inf_Helm700th";
voxHelmet = "Cad_InfBreather_Helm700th";
cadVest = "Cad_Gear700th";
cadVestLeader = "TIOW_IG_Sergeant_Armour_700";

// weapon attachments
rifleLLM = "TIOW_M36_flashlight";

// basic issue weapons
rifle = "M36KantRifle700";
specialWeapon = "ICP_LMG_01_imp"; // stubber but options available from arsenal

// magazines
rifleMag = "M36KantRifle_mag";
specialWeaponMag = "ic_100rnd_825_Tracer_rifleMag";

// backpacks including LR Radios
backpackVox = "IG_Voxcaster_Black";
backpackMedic = "TIOW_CadMedicaeBackpack";
backpackSpec = "IC_CAD_assaultpack_02_grey";
longRangeRadio = "ACRE_PRC117F";

// binoculars
binoculars = "ic_cad_magnoculars";

// Ctab tablet
cTab = "ItemcTab";

// gps
gps = "ItemGPS";

// adding the basics to each soldier based on selection
addBasics = {
	params ["_weapon", "_vest"];

	// weapons
	plyer addWeapon _weapon;	
	// uniform
	plyer forceAddUniform cadUniform;
	// vest
	plyer addvest _vest;

	// add weapon specific items
	switch(_weapon) do
	{
		case rifle:
		{
			plyer addPrimaryWeaponItem rifleLLM;
			plyer addPrimaryWeaponItem rifleMag;
			for "_i" from 1 to 4 do { plyer addItemToVest rifleMag };
		};

		case specialWeapon:
		{
			plyer addPrimaryWeaponItem specialWeaponMag;
			for "_i" from 1 to 4 do { plyer addItemToBackpack specialWeaponMag };
		};
	};
};

// function for adding bandages to players uniform
addUniformItems = {
	for "_i" from 1 to 10 do { plyer addItemToUniform "ACE_fieldDressing" };
	for "_i" from 1 to 10 do { plyer addItemToUniform "ACE_elasticBandage" };
	for "_i" from 1 to 10 do { plyer addItemToUniform "ACE_packingBandage" };
	for "_i" from 1 to 10 do { plyer addItemToUniform "ACE_quikclot" };
	for "_i" from 1 to 4 do { plyer addItemToUniform "ACE_splint" };
	for "_i" from 1 to 4 do { plyer addItemToUniform "ACE_tourniquet" };
	for "_i" from 1 to 3 do { plyer addItemToUniform "ACE_plasmaIV_500" };
	for "_i" from 1 to 2 do { plyer addItemToUniform "kat_Painkiller" };
	plyer addItemToUniform "ACE_EarPlugs";
	plyer addItemToUniform "IC_CAD_KRAK_mag";
};

addVestItems = {
	for "_i" from 1 to 2 do { plyer addItemToVest "IC_CAD_FRAG_mag" };
	plyer addItemToVest "ItemcTabHCam";
	plyer addItemToVest "ACE_EntrenchingTool";
	plyer addItemToVest "ACRE_PRC343";
	plyer addItemToVest "IC_CAD_SMOKE_mag";
};

// full medic backpack content.
addMedicBackpackItems = {
	plyer addItemToBackpack "ACE_surgicalKit";
	plyer addItemToBackpack "kat_X_AED";
	plyer addItemToBackpack "kat_pocketBVM";
	for "_i" from 1 to 10 do { plyer addItemToBackpack "kat_atropine"};
	for "_i" from 1 to 10 do { plyer addItemToBackpack "ACE_morphine"};
	for "_i" from 1 to 10 do { plyer addItemToBackpack "ACE_epinephrine"};
	for "_i" from 1 to 10 do { plyer addItemToBackpack "kat_CaffeineItem"};
	for "_i" from 1 to 10 do { plyer addItemToBackpack "kat_Carbonate"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "kat_larynx"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "ACE_plasmaIV"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "kat_chestSeal"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "kat_lidocaine"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "kat_amiodarone"};
	for "_i" from 1 to 5 do { plyer addItemToBackpack "kat_naloxone"};
};

// calling switch for actioning kits
switch (_LO) do
{
	case "SL":
	{
		[rifle, cadVestLeader] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addWeapon cTab;
		plyer addHeadgear helmet;
		plyer addWeapon binoculars;
	};

	case "VOX":
	{
		plyer addBackpack backpackVox;
		plyer addItemToBackpack longRangeRadio;
		[rifle, cadVest] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addHeadgear voxHelmet;
		plyer addWeapon gps;
		plyer addWeapon binoculars;
	};

	case "RFL":
	{
		[rifle, cadVest] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addHeadgear helmet;
		plyer addWeapon gps;
	};

	case "MEDIC":
	{
		plyer addBackpack backpackMedic;
		call addMedicBackpackItems;
		[rifle, cadVest] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addHeadgear helmet;
		plyer addWeapon gps;
	};

	case "SPEC":
	{
		plyer addBackpack backpackSpec;
		[specialWeapon, cadVest] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addHeadgear helmet;
		plyer addWeapon gps;
	};

	case "ZEUS":
	{
		plyer addBackpack backpackVox;
		plyer addItemToBackpack longRangeRadio;
		[rifle, cadVestLeader] call addBasics;
		call addUniformItems;
		call addVestItems;
		plyer addWeapon cTab;
		plyer addHeadgear helmet;
	};
};
