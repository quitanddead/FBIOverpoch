private ["_ammoType","_vehicle","_ammo","_weapon","_turret","_text","_array","_magazines"];
_array = _this select 3;
_vehicle = _array select 0;
_weapon = _array select 1;
_turret = _array select 2;
_ammo = "";
_text = [];

call r_player_removeActions2;
_magazines = getArray (configFile >> "cfgWeapons" >> _weapon >> "magazines");
{
	_ammoType = getText (configFile >> "cfgMagazines" >> _x >> "displayName");
	if (_ammoType == "") then {_ammoType = _x;};
	if (!(_ammoType in _text)) then {_text set [count _text,_ammoType];};
	if (_x in magazines player) exitWith {_ammo = _x;};
} count _magazines;
if (_ammo != "") then {
	_vehicle removeMagazineTurret [_ammo,_turret];
	_vehicle addMagazineTurret [_ammo,_turret];
	player removeMagazine _ammo;

	cutText [format[(localize "str_epoch_player_127"),_ammoType], "PLAIN DOWN"];
} else {
	cutText [format[(localize "str_epoch_player_128"),_text], "PLAIN DOWN"];
};