/*

	CUSTOM TRADERS FOR TAVIANA EPOCH
	(Credits: DayZ Epoch Devs for their original traders.)
	AUTHOR: AVendettaForYou
	Date: 12/11/2013

*/
serverTraders = [
"GUE_Worker2",
"Soldier_Sniper_KSVK_PMC",
"Soldier_GL_PMC",
"GUE_Soldier_Pilot",
"GUE_Woodlander3",
"Worker4",
"Reynolds_PMC",
"Soldier_Sniper_PMC",
"GUE_Soldier_3",
"RU_Doctor",
"Doctor",
"UN_CDF_Soldier_Pilot_EP1",
"RU_Worker4",
"RU_Woodlander4",
"Citizen3",
"RU_Damsel5",
"Dr_Hladik_EP1",
"GUE_Commander",
"GUE_Soldier_CO",
"Profiteer2_EP1",
"RU_Farmwife5",
"GUE_Woodlander1",
"RU_Worker1",
"GUE_Soldier_2",
"Citizen1",
"Tanny_PMC"];

/*---------------------------------------------------------------------------
			HERO VENDORS
---------------------------------------------------------------------------*/

//COMBINATION VENDOR
menu_Soldier_Sniper_PMC = [
	[["Ammunition",478],["Military Armed",562],["Helicopter Armed",493],["Trucks Armed",479],["Weapons",477],["Clothing",476],["Fortune Trader",700]],
	[],
	"hero"
];
//SUPPLIES
menu_GUE_Woodlander3 = [
	[["Building Supplies",662],["Toolbelt Items",510],["Vehicle Parts",509],["Fortune Trader",700]],
	[],
	"hero"
];
//MEDICAL
menu_RU_Doctor = [
	[["Chem-lites/Flares",666],["Medical Supplies",665],["Smoke Grenades",668],["Fortune Trader",700]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"hero"
];
//FOOD & DRINK
menu_RU_Damsel5 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579],["Fortune Trader",700]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Tin Bar",101]],
	"hero"
];

/*---------------------------------------------------------------------------
			BANDIT VENDORS
---------------------------------------------------------------------------*/

//COMBINATION VENDOR
menu_GUE_Woodlander1 = [
	[["Ammunition",478],["Helicopter Armed",512],["Military Armed",569],["Trucks Armed",479],["Weapons",477],["Clothing",476],["Fortune Trader",700]],
	[],
	"hostile"
];
//SUPPLIES
menu_RU_Worker1 = [
	[["Building Supplies",662],["Toolbelt Items",510],["Vehicle Parts",509],["Fortune Trader",700]],
	[],
	"hostile"
];
//MEDICAl
menu_Dr_Hladik_EP1 = [
	[["Chem-lites/Flares",666],["Medical Supplies",665],["Smoke Grenades",668],["Fortune Trader",700]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"hostile"
];
//FOOD & DRINK
menu_RU_Farmwife5 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579],["Fortune Trader",700]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Tin Bar",101]],
	"hostile"
];

/*---------------------------------------------------------------------------
			NEUTRAL VENDORS
---------------------------------------------------------------------------*/

//MEDICAL
menu_Doctor = [
	[["Chem-lites/Flares",666],["Medical Supplies",665],["Smoke Grenades",668],["Fortune Trader",700]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
//SUPPLIES
menu_RU_Worker4 = [
	[["Building Supplies",662],["Toolbelt Items",510],["Vehicle Parts",509],["Fortune Trader",700]],
	[],
	"neutral"
];
//WEAPONS
menu_Soldier_Sniper_KSVK_PMC = [
	[["Assault Rifle",602],["Light Machine Gun",603],["Pistols",606],["Shotguns and Single-shot",607],["Sniper Rifle",605],["Submachine Guns",642],["Fortune Trader",700]],
	[],
	"neutral"
];
//AMMUNITION
menu_Soldier_GL_PMC = [
	[["Assault Rifle Ammo",643],["Light Machine Gun Ammo",644],["Pistol Ammo",646],["Shotguns and Single-shot Ammo",649],["Sniper Rifle Ammo",647],["Submachine Gun Ammo",642],["Fortune Trader",700]],
	[],
	"neutral"
];
//FOOD & DRINK
menu_Citizen3 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579],["Fortune Trader",700]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Tin Bar",101]],
	"neutral"
];


/*---------------------------------------------------------------------------
			NEUTRAL VEHICLE VENDORS
---------------------------------------------------------------------------*/

menu_GUE_Soldier_3 = [
	[["Bikes and ATV",650],["Buses and Vans",651],["Cargo Trucks",653],["Fuel Trucks",655],["Military Unarmed",658],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Sports Cars",1015],["Super Cars",1016],["Origins Vehicles",997]],
	[],
	"neutral"
];
menu_RU_Woodlander4 = [
	[["Bikes and ATV",650],["Buses and Vans",651],["Cargo Trucks",653],["Fuel Trucks",655],["Military Unarmed",658],["Trucks",590],["Used Cars",520],["Utility Vehicles",591],["Sports Cars",1015],["Super Cars",1016],["Orings Vehicles",997]],
	[],
	"neutral"
];
menu_Worker4 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];
menu_Profiteer2_EP1 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];
menu_GUE_Soldier_Pilot = [
	[["Helicopter Unarmed",519],["Airplanes",517]],
	[],
	"neutral"
];
menu_UN_CDF_Soldier_Pilot_EP1 = [
	[["Helicopter Unarmed",519],["Airplanes",517]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			FRIENDLY VENDORS
---------------------------------------------------------------------------*/

//WEAPONS
menu_GUE_Commander = [
	[["Assault Rifle",602],["Light Machine Gun",603],["Pistols",606],["Shotguns and Single-shot",607],["Sniper Rifle",605],["Submachine Guns",642],["Fortune Trader",700]],
	[],
	"friendly"
];
//AMMUNITION
menu_GUE_Soldier_CO = [
	[["Assault Rifle Ammo",643],["Light Machine Gun Ammo",644],["Pistol Ammo",646],["Shotguns and Single-shot Ammo",649],["Sniper Rifle Ammo",647],["Submachine Gun Ammo",648],["Fortune Trader",700]],
	[],
	"friendly"
];
//HELICOPTERS
menu_GUE_Worker2 = [
	[["Helicopter Armed",493]],
	[],
	"friendly"
];

/*---------------------------------------------------------------------------
			WHOLESALE VENDORS
---------------------------------------------------------------------------*/

//EAST BRIDGE
menu_GUE_Soldier_2 = [
	[["Wholesale",636],["Fortune Trader",700]],
	[],
	"neutral"
];
//WEST BRIDGE
menu_Reynolds_PMC = [
	[["Wholesale",636],["Fortune Trader",700]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			Origins VENDORS   WHOLESALE VENDORS END
---------------------------------------------------------------------------*/

//Buildables VENDOR
menu_Citizen1 = [
	[["Hero Houses",900],["Bandit Houses",901],["Garages",902],["Stronghold",903],["Fortune Trader",700]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			Origins VENDORS END OW VENDOR START
---------------------------------------------------------------------------*/

menu_Tanny_PMC = [
	[["OW ACR Var",1005],["OW DMR Var",1010],["OW HK416 Var",1008],["OW HK417 Var",1009],["OW G3 Var",1006],["OW MAS Var",1007],["OW Pistols",1001],["OW Scar Var",1004],["OW Sniper Var",1011],["OW TAR Var",1003],["OW VIL Var",1002],["Gun Ammo",1013],["Pistol Ammo",1012],["Fortune Trader",700]],
	[],
	"neutral"
];

/*---------------------------------------------------------------------------
			OW Vendor End
---------------------------------------------------------------------------*/