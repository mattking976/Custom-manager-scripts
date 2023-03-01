removeAllActions VM;
VM addAction ["<t color='#ff1111'>Vehicle Manager</t>", hint ""]; 
VM addAction ["==================", hint ""];
VM addAction ["Spawn Armed Wildcat", "Scripts\VehicleSpawn\aviation.sqf", [["WCARMED"]]];
VM addAction ["Spawn Chinook", "Scripts\VehicleSpawn\aviation.sqf", [["CHINOOK"]]];
VM addAction ["Spawn Merlin", "Scripts\VehicleSpawn\aviation.sqf", [["MERLIN"]]];
VM addAction ["==================", hint ""];
VM addAction ["<t color='#54ff9f'>Back</t>", "Scripts\VehicleSpawn\Menu\back.sqf"];