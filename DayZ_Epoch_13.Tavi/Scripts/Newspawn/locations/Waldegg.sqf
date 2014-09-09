private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
_ebayrandomspawn = [[8538.2148,852.31079,0], [8063.9019,573.8855,0], [8571.1777,1092.821,0], [8762.834,1463.7891,0], [9568.9814,1015.5713,0]] call BIS_fnc_selectRandom;
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};