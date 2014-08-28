private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
_ebayrandomspawn = [[15064.7,7925.77,0], [15224,7971.21,0]] call BIS_fnc_selectRandom;
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};