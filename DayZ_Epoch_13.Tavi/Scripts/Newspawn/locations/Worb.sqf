private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
_ebayrandomspawn = [[2602.7307,7145.1489,0], [2181.7844,8712.5938,0], [3105.8306,8830.3994,0], [3197.1919,8301.625,0], [3488.5413,7108.2949,0]] call BIS_fnc_selectRandom;
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};