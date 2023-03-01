removeAllActions VM;
VM addAction ["<t color='#ff1111'>Vehicle Manager</t>", hint ""]; 
VM addAction ["==================", hint ""];
VM addAction ["Spawn Challenger 2 MBT", "Scripts\VehicleSpawn\armour.sqf", [["CHALL2"]]];
VM addAction ["Spawn Warrior", "Scripts\VehicleSpawn\armour.sqf", [["WARRIOR"]]];
VM addAction ["Spawn Bulldog GPMG", "Scripts\VehicleSpawn\armour.sqf", [["BULLDOGGPMG"]]];
VM addAction ["Spawn Bulldog HMG", "Scripts\VehicleSpawn\armour.sqf", [["BULLDOGHMG"]]];
VM addAction ["==================", hint ""];
VM addAction ["<t color='#54ff9f'>Back</t>", "Scripts\VehicleSpawn\Menu\back.sqf"];