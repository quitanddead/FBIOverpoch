if (_dikCode == 210) then {
	if (isNil 'debugMonitor') then {
		debugMonitor = true;
		_nill = execvm "custom\sdsDebug.sqf";
	} else {
		debugMonitor = !debugMonitor;
		hintSilent '';
		_nill = execvm "custom\sdsDebug.sqf";
	};
};