
//Enable purchased vehicle parachute spawning setting this to true. (Default: false)
DZE_TRADER_SPAWNMODE = false;

//Set the Amount of possible heli Crashes on Spawn
MaxHeliCrashes= 10; // Default = 5

//Enable full moon nights by setting this to true. (Default: false)
dayz_fullMoonNights = true;

//Controls the max overall vehicle limit if this limit is reached no new vehicles will spawn.
//MaxVehicleLimit = 500;

//Experimental feature that will parachute spawn all players into the game. (Default: false)
dayz_paraSpawn = false;

//Allows adding more potential spawn points. PLEASE NOTE: The extra markers named spawn5 - spawn10 must exist. (Default: 4)
//spawnMarkerCount = 4;

//Controls animal spawn limits (Default: 8)
dayz_maxAnimals = 20;

//Enables the ability to tame dogs with raw meat. (Default: false)
dayz_tameDogs = true;

//Sets the lowest possible damage a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleDamageLow = 0;

//Sets the highest possible damage a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleDamageHigh = 50;

//Sets the lowest possible fuel level a fresh spawned vehicle will have. (Default: 0)
DynamicVehicleFuelLow = 10;

//Sets the highest possible fuel level a fresh spawned vehicle will have. (Default: 100)
DynamicVehicleFuelHigh = 100;

//Max number of zombies spawned per player. (Default: 40)
dayz_maxLocalZombies = 40; // Default = 30

//Total zombie limit (Default: 500)
dayz_maxZeds = 500;

//Disables zombies attacking vehicles.  (Default: false)
dayz_zedsAttackVehicles = false;

//Controls the distance that you can sell a vehicle to the traders.
dayz_sellDistance = 20;
dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

//true will enable debug so that road debris and new vehicle spawns are visible via map markers. Also debug will enable "Save to arma.RPT" that allows access of a tool to obtain lootpos information for buildings used for adding support for additional maps. (Default: false)
//DZEdebug = false;

//To change how many debris spawn edit the MaxDynamicDebris variable in the missions init.sqf.
MaxDynamicDebris = 100; // Max number of road debris spawns (Default: 100)

//Customize fresh spawn loadout
<<<<<<< HEAD
if ((getPlayerUID player) in ["76561198104914624","76561198085810227","0"]) then {
	if(getPlayerUID  player) = "76561198104914624"{
		DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","Navy_SEAL_diver"];  
		DefaultWeapons = ["RH_sc2sp","RH_uspsd","ItemFlashlight","ItemHatchet","ItemGPS","ItemMAP","ItemToolbox"];  
		DefaultBackpack = "DZ_Patrol_Pack_EP1";  
		DefaultBackpackItems = [""];
	}
	if(getPlayerUID  player) = "76561198085810227"{
		DefaultMagazines = ["RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","Navy_SEAL_diver"];  
		DefaultWeapons = ["RH_hk417sp","RH_uspsd","ItemFlashlight","ItemHatchet","ItemGPS","ItemMAP","ItemToolbox"];  
		DefaultBackpack = "DZ_Patrol_Pack_EP1";  
		DefaultBackpackItems = [""];
	}
}
else{
DefaultMagazines = ["30Rnd_556x45_Stanag","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];  
DefaultWeapons = ["G36C","glock17_EP1","ItemFlashlight","ItemHatchet","ItemGPS","ItemMAP","ItemToolbox"];  
DefaultBackpack = "DZ_Patrol_Pack_EP1";  
DefaultBackpackItems = [""];
}
=======
DefaultMagazines = ["30Rnd_556x45_Stanag","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];  
DefaultWeapons = ["G36C","glock17_EP1","ItemFlashlight","ItemHatchet","ItemGPS","ItemMAP","ItemToolbox"];  
DefaultBackpack = "DZ_Patrol_Pack_EP1";  
DefaultBackpackItems = [""];

>>>>>>> 5bc106bc3e6c48d5ac2e0d41b7be7b9bbdb29aa9
//Customize Death Messages
//Enables global chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgGlobal = true;

//Enables side chat messaging of player deaths. (Also requires enableRadio true;?)   (Default: false)
DZE_DeathMsgSide = false;

//Enables global title text messaging of player deaths.  (Default: false)
DZE_DeathMsgTitleText = true;

//Change amount of ammo boxes that spawn on the server.
MaxAmmoBoxes = 50;

//Change amount of mining veins on the server.
MaxMineVeins = 50;

//Enables Helicopter Lifting
DZE_HeliLift = true;

//Enables Player to Spawn as Zombie after being killed by them
DZE_PlayerZed = false;

// (Default: 25)
DZE_HumanityTargetDistance = 25;

// (Default: true)
DZE_FriendlySaving = true;

//If True will allow building on roads
DZE_BuildOnRoads = false;

// Custom Mission Loot Table (Default: false)
//DZE_MissionLootTable = true;

// Loot Spawn Timer (Default: 10)
//DZE_LootSpawnTimer = 10;

//Enable/Disable backpack contents being wiped if logging out or losing connection beside another player.
DZE_BackpackGuard = false; //Default = true, true to enable, false to disable

//Change the number of constructed objects within range of a 30m Plot Pole. (default=150). Be very carefull with this number, as setting it too high will cause a huge amount of local lag**
DZE_BuildingLimit = 500; 

//Non destructable bases
DZE_GodModeBase = True;

//DZE_requireplot override variable added
DZE_requireplot = 1; 

//Steps to build. Default: 3
DZE_StaticConstructionCount = 1;

//Random start skins (Epoch 1.0.5) 
//DZE_defaultSkin = [["Male skin1","Male skin2"],["Female skin1","Female skin2"]]

//SelfBB 
//DZE_SelfTransfuse = true;

//SelfBB Values Remove // if you want to use
//DZE_selfTransfuse_Values = [blood amount, infection chance, cool-down (seconds)];

//Force Names in trader
DZE_ForceNameTagsInTrader = false;

//Plotpole size (DZE_PlotPole = [x,y]) Default  [30,45]
DZE_PlotPole = [30,45]