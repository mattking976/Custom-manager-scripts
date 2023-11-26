plyer = _this select 1;
_LO = ((_this select 3) select 0) select 0;

//Clearing Inventory
removeAllWeapons plyer;  
removeAllItems plyer;  
removeUniform plyer;  
removeVest plyer;  
removeBackpack plyer;  
removeHeadgear plyer;  
removeGoggles plyer; 

//common items
//------------------------------------------------

pilotUniform = "ML700_Cadian_Pilot_Uniform";
rifleLLM = "TIOW_M36_flashlight";
rifle = "M36KantRifle700";
rifleMag = "UK3CB_BAF_556_30Rnd";
pilotVest = "ML700_Cadian_Pilot_Armor";
helmet = "ML700_Cadian_Pilot_Helmet";
pilotGoggles = "ML700_Cadian_Pilot_Goggles";

//------------------------------------------------

//function for adding bandages to players uniform
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

//fucntion for adding common ammo and misc items to the vest
addVestItems = {
	for "_i" from 1 to 2 do { plyer addItemToVest "IC_CAD_FRAG_mag" };
	for "_i" from 1 to 4 do { plyer addItemToVest rifleMag };
	plyer addItemToVest "ItemcTabHCam";
	plyer addItemToVest "ACE_EntrenchingTool";
	plyer addItemToVest "ACRE_PRC343";
	plyer addItemToVest "IC_CAD_SMOKE_mag";
};


//switch for ease of kit switching
switch (_LO) do
{
	case "PIL":
	{
		//weapons
		plyer addWeapon rifle;
		plyer addPrimaryWeaponItem rifleLLM;
		plyer addPrimaryWeaponItem rifleMag;
				
		//uniform
		plyer forceAddUniform pilotUniform;
		plyer addVest pilotVest;

		//uniform gear
		[rifle, pilotVest] call addBasics;
		//vest gear
		call addVestItems;
		
		//Other Equipment
		plyer addHeadgear helmet;
		plyer addItem pilotGoggles;
		plyer assignItem pilotGoggles;
	};
};
