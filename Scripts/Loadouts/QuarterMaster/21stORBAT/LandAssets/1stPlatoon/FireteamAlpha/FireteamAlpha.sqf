removeallActions WM;
WM addAction ["<t color='#ff1111'>Quartermaster</t>", hint ""]; 
WM addAction ["==================", hint ""];
WM addAction ["Squad 1IC","Scripts\Loadouts\Quartermaster\Infantry.sqf",[["1IC"]]];
WM addAction ["Squad 2IC","Scripts\Loadouts\Quartermaster\Infantry.sqf",[["2IC"]]];
WM addAction ["Squad RTO", "Scripts\Loadouts\Quartermaster\Infantry.sqf", [["RTO"]]];
WM addAction ["Squad Medic", "Scripts\Loadouts\Quartermaster\Infantry.sqf", [["MEDIC"]]];
WM addAction ["Machine Gunner", "Scripts\Loadouts\Quartermaster\Infantry.sqf", [["249MG"]]];
WM addAction ["Squad EOD", "Scripts\Loadouts\Quartermaster\Infantry.sqf", [["EOD"]]];
WM addAction ["Squad Rifleman", "Scripts\Loadouts\Quartermaster\Infantry.sqf", [["RFL"]]];
WM addAction ["==================", hint ""]; 
WM addAction ["<t color='#54ff9f'>Back</t>", "Scripts\Loadouts\Quartermaster\21stORBAT\back.sqf"];