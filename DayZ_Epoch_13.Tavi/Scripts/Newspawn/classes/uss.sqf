private ["_object","_uniqueid"];

if (dayz_combat == 1) then {
	titleText ["You can't select a class while in combat.", "PLAIN DOWN", 3];
	sleep 5;
	titleFadeOut 1;
} else {
	titleText ["Selecting class...", "PLAIN DOWN", 3];
	sleep 2;
	[dayz_playerUID,dayz_characterID,'Graves_Light_DZ'] spawn player_humanityMorph;
	sleep 2;
	showCommandingMenu '';

	removeAllWeapons player;
	removeAllItems player;
	player addWeapon 'M4A1';
	player selectWeapon 'M4A1';
	player addMagazine '30Rnd_556x45_Stanag';
	player addMagazine '30Rnd_556x45_Stanag';
	player addMagazine 'ItemBandage';
	player addMagazine 'ItemBandage';
	player addMagazine 'ItemBandage';
	player addMagazine 'ItemPainkiller';
	player addMagazine 'FoodMRE';
	player addMagazine 'ItemWaterbottle';
	player addMagazine 'ItemMorphine';
	player addWeapon 'ItemFlashlightRed';
	player addWeapon 'ItemMap';
	player addWeapon 'M9';
	player addMagazine '15Rnd_9x19_M9';
	player addMagazine '15Rnd_9x19_M9';
	reload player;

	_object = 'HMMWV_DZ' createVehicle (position player);
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