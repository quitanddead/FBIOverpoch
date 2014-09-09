private ["_object","_uniqueid"];

if (dayz_combat == 1) then {
	titleText ["You can't select a class while in combat.", "PLAIN DOWN", 3];
	sleep 5;
	titleFadeOut 1;
} else {
	titleText ["Selecting class...", "PLAIN DOWN", 3];
	sleep 2;
	[dayz_playerUID,dayz_characterID,'RU_Policeman_DZ'] spawn player_humanityMorph;
	sleep 2;
	showCommandingMenu '';

	player addWeapon 'Remington870_lamp';
	player selectWeapon 'Remington870_lamp';
	player addMagazine '8Rnd_B_Beneli_74Slug';
	player addMagazine '8Rnd_B_Beneli_74Slug';
	player addWeapon 'M9';
	player addMagazine '15Rnd_9x19_M9';
	player addMagazine '15Rnd_9x19_M9';
	reload player;

	_object = 'policecar' createVehicle (position player);
	_object setVariable ["Mission",1,true];
	_uniqueid = str(round(random 999999));
	_object setVariable ["ObjectID", _uniqueid, true];
	_object setVariable ["ObjectUID", _uniqueid, true];
	clearMagazineCargo _object;
	clearWeaponCargo _object;
	sleep 2;
	titleText ["Class selected! Note: Car will not save after restart.", "PLAIN DOWN", 3];
	sleep 5;
	titleFadeOut 1;
};