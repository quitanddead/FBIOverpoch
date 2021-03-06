/*
	Medical Outpost by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
*/
private ["_missName","_coords","_base","_base1","_base2","_base3","_vehicle","_vehicle1","_crate","_crate2","_crate3"];

//Name of the Mission
_missName = "Bandit Medical Outpost";
diag_log format["[EMS]: Minor SM2 Bandit Mission Party Outpost has started."];

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"A group of bandits have taken over a Medical Outpost! Check your map for the location!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missName] execVM DZMSAddMinMarker;

//We create the scenery
_base = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[(_coords select 0) +2, (_coords select 1)+5,-0.3],[], 0, "CAN_COLLIDE"];
_base1 = createVehicle ["MASH_EP1",[(_coords select 0) - 24, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_base2 = createVehicle ["MASH_EP1",[(_coords select 0) - 17, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_base3 = createVehicle ["MASH_EP1",[(_coords select 0) - 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];

//DZMSProtectObj prevents it from disappearing
[_base] call DZMSProtectObj;
[_base1] call DZMSProtectObj;
[_base2] call DZMSProtectObj;
[_base3] call DZMSProtectObj;

//We create the vehicles
_vehicle = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_vehicle1 = createVehicle ["HMMWV_DZ",[(_coords select 0) + 15, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];

//DZMSSetupVehicle prevents the vehicle from disappearing and sets fuel and such
[_vehicle] call DZMSSetupVehicle;
[_vehicle1] call DZMSSetupVehicle;

//We create and fill the crates
_crate = createVehicle ["MedBox0",[(_coords select 0) - 12, _coords select 1,0],[], 0, "CAN_COLLIDE"];
//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
[_crate,"medical"] execVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 8, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2,"weap"] execVM DZMSBoxSetup;
[_crate2] call DZMSProtectObj;

//We create and fill the crates
_crate3 = createVehicle ["MedBox0",[(_coords select 0) - 3, _coords select 1,0],[], 0, "CAN_COLLIDE"];
//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
[_crate3,"medical"] execVM DZMSBoxSetup;
[_crate3] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel]
[[(_coords select 0) - 20, (_coords select 1) - 15,0],12,0] call DZMSAISpawn;
sleep 3;


//Wait until the player is within 30meters
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;
//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
 
 

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Medical Outpost is under survivor control!", "PLAIN",6] call RE;
diag_log format["[EMS]: Minor SM2 Medical Outpost Mission has Ended."];
deleteMarker "DZMSMinMarker";
deleteMarker "DZMSMinDot";

//Let the timer know the mission is over
DZMSMinDone = true;