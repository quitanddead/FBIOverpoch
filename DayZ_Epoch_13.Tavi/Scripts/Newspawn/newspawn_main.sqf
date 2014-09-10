pathtonewspawn = "newspawn\locations\";
EXECscript1 = 'player execVM "'+pathtonewspawn+'%1"';

if ((getPlayerUID player) in ["0","0","0"]) then {
	newspawn =
	[
		["",false],
		["Select Spawn Point", [2], "#USER:Donator", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
	];
} else {
	newspawn =
	[
		["",false],
		["Select Spawn Point", [2], "#USER:Peasant", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
	];
};

Donator =
[
	["",false],
		["Donor Base", [2], "", -5, [["expression", format[EXECscript1,"donor.sqf"]]], "1", "1"],
		["Sabina", [3], "", -5, [["expression", format[EXECscript1,"Sabina.sqf"]]], "1", "1"],
		["Boye", [4], "", -5, [["expression", format[EXECscript1,"Boye.sqf"]]], "1", "1"],
		["Byelov", [5], "", -5, [["expression", format[EXECscript1,"Byelov.sqf"]]], "1", "1"],
		["Komarovo", [6], "", -5, [["expression", format[EXECscript1,"Komarovo.sqf"]]], "1", "1"],
		["Shtangrad", [7], "", -5, [["expression", format[EXECscript1,"Shtangrad.sqf"]]], "1", "1"],
		["Ekaterinburg", [8], "", -5, [["expression", format[EXECscript1,"Ekaterinburg.sqf"]]], "1", "1"],
		["Solibor", [9], "", -5, [["expression", format[EXECscript1,"Solibor.sqf"]]], "1", "1"],
		["Molotovsk", [10], "", -5, [["expression", format[EXECscript1,"Molotovsk.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:Page4", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Peasant =
[
	["",false],
		["Sabina", [2], "", -5, [["expression", format[EXECscript1,"Sabina.sqf"]]], "1", "1"],
		["Boye", [3], "", -5, [["expression", format[EXECscript1,"Boye.sqf"]]], "1", "1"],
		["Byelov", [4], "", -5, [["expression", format[EXECscript1,"Byelov.sqf"]]], "1", "1"],
		["Komarovo", [5], "", -5, [["expression", format[EXECscript1,"Komarovo.sqf"]]], "1", "1"],
		["Lenzburg", [6], "", -5, [["expression", format[EXECscript1,"Lenzburg.sqf"]]], "1", "1"],
		["Shtangrad", [7], "", -5, [["expression", format[EXECscript1,"Shtangrad.sqf"]]], "1", "1"],
		["Ekaterinburg", [8], "", -5, [["expression", format[EXECscript1,"Ekaterinburg.sqf"]]], "1", "1"],
		["Solibor", [9], "", -5, [["expression", format[EXECscript1,"Solibor.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:Page4", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Page4 =
[
	["",false],
		["Molotovsk", [2], "", -5, [["expression", format[EXECscript1,"Molotovsk.sqf"]]], "1", "1"],
		//["Schangen", [3], "", -5, [["expression", format[EXECscript1,"Schangen.sqf"]]], "1", "1"],
		//["Waldegg", [4], "", -5, [["expression", format[EXECscript1,"Waldegg.sqf"]]], "1", "1"],
		//["Worb", [5], "", -5, [["expression", format[EXECscript1,"Worb.sqf"]]], "1", "1"],
		//[Horw", [6], "", -5, [["expression", format[EXECscript1,"Horw.sqf"]]], "1", "1"],
		//["Pusta", [7], "", -5, [["expression", format[EXECscript1,"pusta.sqf"]]], "1", "1"],
		//["Solnichniy", [8], "", -5, [["expression", format[EXECscript1,"solnichniy.sqf"]]], "1", "1"],
		//["Vybor", [9], "", -5, [["expression", format[EXECscript1,"vybor.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Previous Page", [12], "", -4, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:newspawn";