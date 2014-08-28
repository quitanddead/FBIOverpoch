private ["_object","_uniqueid"];

if (dayz_combat == 1) then {
	titleText ["You can't select a class while in combat.", "PLAIN DOWN", 3];
	sleep 5;
	titleFadeOut 1;
} else {
	titleText ["Selecting class...", "PLAIN DOWN", 3];
	sleep 2;
	[dayz_playerUID,dayz_characterID,'CZ_Special_Forces_GL_DES_EP1_DZ'] spawn player_humanityMorph;
	sleep 2;
	showCommandingMenu '';
	
	player addWeapon 'Sa58P_EP1';
	player selectWeapon 'Sa58P_EP1';
	player addMagazine '30Rnd_762x39_SA58';
	player addMagazine '30Rnd_762x39_SA58';
	removeBackpack player;
	player addBackPack "DZ_CivilBackpack_EP1";
	reload player;
	
	_object = 'LandRover_CZ_EP1' createVehicle (position player);
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