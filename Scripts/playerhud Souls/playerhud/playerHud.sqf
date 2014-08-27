/*  
Author : AsReMixhud 
Edited By : Peter Beer
Credit : AsReMixhud , Zupa
*/

disableSerialization;

AsReMixhud_Control = true;

while {true} do
{
    1000 cutRsc ["AsReMixhud","PLAIN"];
    _wpui = uiNameSpace getVariable "AsReMixhud";
    _vitals = _wpui displayCtrl 4900;
	_Player = player;

	AsReMixhud_zombieKills 	=     _Player getVariable["zombieKills",0];
	AsReMixhud_headshots 	=     _Player getVariable["cashMoney",0];
	AsReMixhud_killsH 		=     _Player getVariable["humanKills",0];
    Bank_Balance 		        =     _Player getVariable["bankMoney",0];
	AsReMixhud_killsB 		=     _Player getVariable["banditKills",0];
	AsReMixhud_humanity 		=     _Player getVariable["humanity",0];
	AsReMixhud_blood			=     _Player getVariable["USEC_BloodQty",12000];
	AsReMixhud_fps 			=     (round diag_fps);
	AsReMixhud_svrname		=     "Amnesia";
	AsReMixhud_Players		=     {isPlayer _x} count _players;

	_players = [];
    {
        _y = _x;
        if (isPlayer _y) then
            {
                {_players = _players + [_x];} forEach (crew _y);
            };
    } forEach ([0,0,0] nearEntities ['AllVehicles', 10000000]);

	_stime = 0;
	if(serverTime > 36000)then{_stime = time;}else{_stime = serverTime;};
	_hours = (_stime/60/60);
	_hours = toArray (str _hours);
	_hours resize 1;
	_hours = toString _hours;
	_hours = compile _hours;
	_hours = call  _hours;
	_minutes = floor(_stime/60);
	_minutes2 = ((_minutes - (_hours*60)) min 60) max 0;if (_minutes2 < 10) then {_minutes2 = format ['0%1',_minutes2];};

	if(AsReMixhud_humanity >= 5000) then { AsReMixhud_hmnicon = "<img size='0.9' image='addons\playerhud\icons\HeroHumanity.paa'/>"; };
	if((AsReMixhud_humanity >= 200) && (AsReMixhud_humanity <= 4999)) then { AsReMixhud_hmnicon = "<img size='0.9' image='addons\playerhud\icons\CivHumanity.paa'/>"; };
	if(AsReMixhud_humanity <= 199) then { AsReMixhud_hmnicon = "<img size='0.9' image='addons\playerhud\icons\BanditHumanity.paa'/>"; };
	
	_vitals ctrlSetStructuredText parseText format ["
	<t size='0.8' align='right'>~~~~~ Stats ~~~~~</t><br/>
	<t size='0.9'> %1 </t><img size='0.9' align='right' image='addons\playerhud\icons\Players.paa'/><br/> 
	<t size='0.9'> %2 </t><img size='0.9' align='right' image='addons\playerhud\icons\Health.paa'/><br/> 
	<t size='0.9'> %2 %3 </t><br/> 
	<t size='0.9'> £%4 </t><img size='0.9' align='right' image='addons\playerhud\icons\Money.paa'/><br/>
	<t size='0.9'> £%5 </t><img size='0.9' align='right' image='addons\playerhud\icons\Bank.paa'/><br/>
	<t size='0.9'> %6 </t><img size='0.9' align='right' image='addons\playerhud\icons\HeroKills.paa'/><br/> 
	<t size='0.9'> %7 </t><img size='0.9' align='right' image='addons\playerhud\icons\BanditKills.paa'/><br/>
	<t size='0.9'> %8 </t><img size='0.9' align='right' image='addons\playerhud\icons\ZombieKills.paa'/><br/>
	<t size='0.9'> %9h %10min </t><img size='0.9' align='right' image='addons\playerhud\icons\Uptime.paa'/><br/>
	<t size='0.9'> %12 </t><img size='0.9' align='right' image='addons\playerhud\icons\Fps.paa'/><br/>
	<t size='0.8' align='right'>~~~~~~~~~~~~~~~~~</t><br/>",
	AsReMixhud_Players,
	AsReMixhud_blood,
	[AsReMixhud_humanity] call BIS_fnc_numberText,
	AsReMixhud_hmnicon,
	[AsReMixhud_headshots] call BIS_fnc_numberText,
	[Bank_Balance] call BIS_fnc_numberText,
	AsReMixhud_killsH,
	AsReMixhud_killsB,
	AsReMixhud_zombiekills,
	_hours,
	_minutes2,
	AsReMixhud_fps
	];
	_vitals ctrlCommit 0;
    sleep 1.5;
};
