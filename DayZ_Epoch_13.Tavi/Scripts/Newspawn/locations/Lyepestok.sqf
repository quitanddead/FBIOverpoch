private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
_ebayrandomspawn = [[12998.2,16197.6,0], [12018.4,15705.1,0], [11944.7,15052.1,0], [11217.6,15706,0]] call BIS_fnc_selectRandom;
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};