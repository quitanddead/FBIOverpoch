private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
<<<<<<< HEAD
_ebayrandomspawn = [[14531.3,12748.8,-0], [13801.5,12284.2,0 [14021.3,12365.7,0], [14267.1,12253.3,0]] call BIS_fnc_selectRandom;
=======
_ebayrandomspawn = [[14531.3,12748.8,0], [13801.5,12284.2,0 [14021.3,12365.7,0], [14267.1,12253.3,0], [14234.4,12254.3,0], [13791.1,12044.3,0]] call BIS_fnc_selectRandom;
>>>>>>> 5bc106bc3e6c48d5ac2e0d41b7be7b9bbdb29aa9
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};