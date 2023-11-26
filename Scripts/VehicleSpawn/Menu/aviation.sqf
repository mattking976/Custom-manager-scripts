removeAllActions VM;
VM addAction ["<t color='#ff1111'>Vehicle Manager</t>", hint ""]; 
VM addAction ["==================", hint ""];
VM addAction ["Spawn Arvus Lighter", "Scripts\VehicleSpawn\aviation.sqf", [["AVL"]]];
VM addAction ["Spawn Valkrie Transport", "Scripts\VehicleSpawn\aviation.sqf", [["VTRAN"]]];
VM addAction ["Spawn Valkrie Pylons", "Scripts\VehicleSpawn\aviation.sqf", [["VPYLON"]]];
VM addAction ["==================", hint ""];
VM addAction ["<t color='#54ff9f'>Back</t>", "Scripts\VehicleSpawn\Menu\back.sqf"];
