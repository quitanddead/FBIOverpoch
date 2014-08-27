/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 13;	//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
server_name = "FBI";

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config

spawnShoremode = 0; // Default = 1 (on shore)
spawnArea = 2500; // Default = 1500
dayz_MapArea = 20000; // Default = 10000
dayz_minpos = -26000; 
dayz_maxpos = 26000;
MaxHeliCrashes= 10; // Default = 5
MaxVehicleLimit = 650;
DZE_DeathMsgTitleText = true;
DZE_MissionLootTable = true;
DZE_DeathMsgGlobal = true;
DZE_PlayerZed = false;

// Add this
DZE_ConfigTrader = true;
DZE_AsReMix_PLAYER_HUD = true; //Open Custom 	AsReMix Player HUD

//DZE_R3F_WEIGHT = true or false
DZE_R3F_WEIGHT = false;

//SelfBB 
DZE_SelfTransfuse = true;

//Non destructable bases
DZE_GodModeBase = true;

//Epoch Config Variables
call compile preprocessFileLineNumbers "Thunder\CFG\epochconfig.sqf";
// DZEdebug = true;

setViewDistance 1250;	//sets view distance
setTerrainGrid 20;	//sets terrain detail


//Load in compiled functions
call compile preprocessFileLineNumbers "Thunder\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "Thunder\init\compiles.sqf";			//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs

//Call Base Jumping Script Here
//Lucy 8/23/2014 --2053 EST
//call compile preprocessFileLineNumbers "baseJump\init.sqf";


call compile preprocessFileLineNumbers "custom\compiles.sqf"; 				//Compile custom compiles & Snap Pro 
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\dynamic_vehicle.sqf";				//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	[] execVM "Server_WelcomeCredits.sqf";
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	
	// Safezone script
	//[] execVM "safezone.sqf";

	//Service Points
	//	execVM "Thunder\service_point\service_point.sqf";

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	
	//["elevator"] execVM "elevator\elevator_init.sqf";
};
//#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

waitUntil {!isNil ("PVDZE_plr_LoginRecord")}; if (dayzPlayerLogin2 select 2) then { [] execVM "addons\DRNSpawn.sqf"; };

[] spawn {[] execVM "custom\secbran.sqf";};

     // and this completely at the bottom
        execVM "gold\init.sqf";
        execVM "gold\addbankmarkers.sqf";
     // my debug
            if (!isDedicated) then {
            if (DZE_AsReMix_PLAYER_HUD) then {
            execVM "addons\playerhud\playerHud.sqf"//AsReMix Player HUD
            };
            };
[] execVM "R3F_ARTY_AND_LOG\init.sqf";

// WPD's Action Menu
[] execVM "ActionMenu\actionmenu_activate.sqf";
//SafeZone
[] execVM "custom\safezone\sdsSafeZone.sqf";

//SDSDebug
[] execVM "custom\sdsDebugKey.sqf";
[] execVM "custom\sdsDebug.sqf";


//Watermark
if (!isNil "server_name") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
	};
};