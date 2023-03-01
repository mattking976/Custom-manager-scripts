//Vehicle Manager script inits
call{
	VM allowDamage false;
	VM disableAI "MOVE";
	removeAllWeapons VM;
	VM enableSimulation false;
	null = [] execVM "Scripts\VehicleSpawn\Menu\mainmenu.sqf";
};

//Quartermaster script inits
call{
	WM allowDamage false;
	WM disableAI "MOVE";
	removeAllWeapons WM;
	WM enableSimulation false;
	null = [] execVM "Scripts\Loadouts\Quartermaster\21stORBAT\mainmenu.sqf";
};
