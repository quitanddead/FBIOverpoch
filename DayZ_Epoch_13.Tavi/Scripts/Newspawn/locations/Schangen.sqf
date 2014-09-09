private ["_ebayrandomspawn"];
if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
_ebayrandomspawn = [[9412.4971,5882.4438,0], [8951.6543,5695.4077,0], [9027.6094,5247.7075,0], [9555.7998,5485.2979,0], [9506.8711,5290.6763,0]] call BIS_fnc_selectRandom;
player setPosATL _ebayrandomspawn;
showCommandingMenu '';
sleep 2;
titleText ["Spawned!", "PLAIN DOWN", 3];
sleep 2;
titleFadeOut 1;
};