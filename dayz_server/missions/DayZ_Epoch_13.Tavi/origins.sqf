if (isServer) then {

	_unit_100000 = objNull;
	if (true) then
	{
		_this = createAgent ["Citizen1", [1009.66,18247.7,0.00211143], [], 0, "CAN_COLLIDE"];
		_unit_100000 = _this;
		_this setDir 270;
		_this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
		_this setUnitAbility 0.60000002;
		_this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
	};

	_vehicle_100002 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven3VelkyDomek", [1015.76,18258.6,0.249996], [], 0, "CAN_COLLIDE"];
		_vehicle_100002 = _this;
		_this setDir 93;
		_this setPos [1015.76,18258.6,0.249996];
	};
	_vehicle_100003 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven1DrevenaBudka", [1014.55,18237.4,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100003 = _this;
		_this setDir 93;
		_this setPos [1014.55,18237.4,0];
    };
	_vehicle_100004 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven2KladaDomek", [1018.36,18221.8,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100004 = _this;
		_this setDir 93;
		_this setPos [1018.36,18221.8,0];
    };
	_vehicle_100005 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven3DrevenyDomek", [1017.55,18205.1,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100005 = _this;
		_this setDir 93;
		_this setPos [1017.55,18205.1,0];
    };
	_vehicle_100007 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven2MalyDomek", [965.344,18197.4,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100007 = _this;
		_this setDir 270;
		_this setPos [965.344,18197.4,0];
    };
	_vehicle_100008 = objNull;
	if (true) then
	{
		_this = createVehicle ["Uroven1VelkaBudka", [964.798,18211.7,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100008 = _this;
		_this setDir 270;
		_this setPos [964.798,18211.7,0];
    };
	_vehicle_100009 = objNull;
	if (true) then
	{
		_this = createVehicle ["malaGaraz", [963.624,18225.8,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100009 = _this;
		_this setDir 270;
		_this setPos [963.624,18225.8,0];
    };
	_vehicle_100010 = objNull;
	if (true) then
	{
		_this = createVehicle ["velkaGaraz", [961.502,18240.7,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100010 = _this;
		_this setDir 270;
		_this setPos [961.502,18240.7,0];
    };
	_vehicle_100011 = objNull;
	if (true) then
	{
		_this = createVehicle ["kingramida", [964.069,18256.9,0], [], 0, "CAN_COLLIDE"];
		_vehicle_100011 = _this;
		_this setDir 270;
		_this setPos [964.069,18256.9,0];
    };
	_vehicle_100012 = objNull;
	if (true) then
	{
		_this = createVehicle ["krepost", [989.423,18278.2,1.90735e-006], [], 0, "CAN_COLLIDE"];
		_vehicle_100012 = _this;
		_this setDir 0;
		_this setPos [989.423,18278.2,1.90735e-006];
    };
	_vehicle_100013 = objNull;
	if (true) then
	{
		_this = createVehicle ["FlagCarrierIONblack_PMC", [1009.28,18250.2,0.12672], [], 0, "CAN_COLLIDE"];
		_vehicle_100013 = _this;
		_this setDir 0;
		_this setPos [1009.28,18250.2,0.12672];
    };
};