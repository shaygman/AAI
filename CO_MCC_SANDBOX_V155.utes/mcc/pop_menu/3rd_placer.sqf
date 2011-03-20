/*
	Based on BIS's coin by: Karel Moricky
	
	Author: Shay_Gman 01/2011

	Description:
		3D placer for MCC Sandbox

	Parameter(s):
		_this slect 0 - the vehicle to spawn.

	Returned value(s):
		position/direction
*/
private ["_logic", "_camera","_logicGrp","_logicASL","_nvgstate","_preview","_pos"];

preview3DClass 	= _this select 0;
_pos 			= _this select 1;

if (isnil "MCC_Camera") then {
	createcenter sidelogic;
	_logicGrp = creategroup sidelogic;
	_logicASL = _logicGrp createunit ["Logic",position player,[],0,"none"];
	MCC_Camera = _logicASL;
};

_logic = MCC_Camera;

uinamespace setvariable ["MCC_3D_displayMain",finddisplay 46];

debuglog format ["Log: [3D] %1 executed 3D",player];

//--- Terminate of system is already running
if !(isnil {player getvariable "3D_isRuning"}) exitwith {debuglog "Log: [3D] Camera script is already running"};
player setvariable ["3D_isRuning",0];
DOperator = player;
DOperator setvariable ["MCC_3D_logic",_logic];

//////////////////////////////////////////////////
startLoadingScreen ["3D Placing","RscDisplayLoadMission"];
//////////////////////////////////////////////////

_camera = BIS_CONTROL_CAM;
if (isnil "BIS_CONTROL_CAM") then {
	_camera = "camconstruct" camcreate [_pos select 0, _pos select 1,((getpos player) select 2) +15];
	_camera cameraeffect ["internal","back"];
	_camera camPrepareFOV 0.900;
	_camera campreparefocus [-1,-1];
	_camera camCommitPrepared 0;
	cameraEffectEnableHUD true;
	_camera setdir direction player;
	[_camera,-30,0] call BIS_fnc_setPitchBank;
	_camera camConstuctionSetParams ([position _logic]+[20000,500]);
};

//_camera camConstructionSetParams [[position player select 0,position player select 1,(position player select 2)+15],5000, 300];
BIS_CONTROL_CAM = _camera;
BIS_CONTROL_CAM_LMB = false;
BIS_CONTROL_CAM_RMB = false;
showcinemaborder false;

1122 cutrsc ["constructioninterface","plain"];

(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["KeyDown",		"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['keydown',_this,commandingmenu] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil;}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["KeyUp",		"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['keyup',_this] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil;}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseButtonDown",	"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['mousedown',_this,commandingmenu] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil; BIS_CONTROL_CAM_onMouseButtonDown = _this; if (_this select 1 == 1) then {BIS_CONTROL_CAM_RMB = true}; if (_this select 1 == 0) then {BIS_CONTROL_CAM_LMB = true};}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseButtonUp",	"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_CONTROL_CAM_RMB = false; BIS_CONTROL_CAM_LMB = false;}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["mousemoving",	"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['mousemoving',_this,commandingmenu] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil;}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["mouseholding",	"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['mouseholding',_this,commandingmenu] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil;}"];
(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseZChanged",	"if !(isnil 'BIS_CONTROL_CAM_Handler') then {BIS_temp = ['MouseZChanged',_this,commandingmenu] spawn BIS_CONTROL_CAM_Handler; BIS_temp = nil;}"];

BIS_CONTROL_CAM_keys = [];

if (isnil "BIS_CONTROL_CAM_ASL") then {
	createcenter sidelogic;
	_logicGrp = creategroup sidelogic;
	_logicASL = _logicGrp createunit ["Logic",position player,[],0,"none"];
	BIS_CONTROL_CAM_ASL = _logicASL;
};

_logic setvariable ["MCC_3D_menu","#USER:BIS_Coin_categories_0"];

_nvgstate = if (daytime > 18.5 || daytime < 5.5) then {true} else {false};
camusenvg _nvgstate;
_logic setvariable ["MCC_3D_nvg",_nvgstate];

dummyObject =  "Sign_sphere10cm_EP1" createvehicle (screentoworld [0.5,0.5]);
z3DHight = (getpos dummyObject) select 2;

debugLog format ["MCC_3D cam handler %1",_logic];
//--- This block is pretty important
if !(isnil "BIS_CONTROL_CAM_Handler") exitwith {hint "BIS_CONTROL_CAM_Handler is nill";endLoadingScreen};

BIS_CONTROL_CAM_Handler =
	{
	private ["_mode", "_input", "_camera", "_logic", "_terminate", "_keysCancel", "_keysUpObj", "_keysDownObj", "_keysUp", "_keysDown" ,"_keysShift"
			,"_keysBanned", "_keyNightVision","_finished", "_keyplace","_objectPos","_objectDir","_keyalt","_nearObjects", "_vehicleclass"];
			
	_mode = _this select 0;
	_input = _this select 1;
	_camera = BIS_CONTROL_CAM;
	_logic = DOperator getvariable "MCC_3D_logic";
	_terminate = false;
	
	if (isnil "_logic") exitwith {};

	_keysCancel		= actionKeys "MenuBack";
	_keysUpObj		= [45];
	_keysDownObj	= [46];
	_keysUp			= actionKeys "nextAction";
	_keysDown		= actionKeys "prevAction";
	_keysShift		= [42];
	_keysBanned		= [1];
	_keyNightVision	= actionKeys "NightVision";
	_keyplace 		= [57];
	_keyalt 		= [56];
	_keydelete 		= [211];
		
	//--- Mouse Moving/Holding
	if (_mode in ["mousemoving", "mouseholding"]) then 
		{
		_key = _input select 1;
		BIS_CONTROL_CAM camsettarget dummyObject;
		BIS_CONTROL_CAM camcommit 0;
		Object3D setpos [getpos dummyObject select 0, getpos dummyObject select 1, z3DHight];
		Object3D setdir (getdir dummyObject);
		};

	//--- Key DOWN
	if (_mode == "keydown") then
		{
		_key = _input select 1;
		//--- Terminate 
		if (_key in _keysCancel || _key in _keysBanned) then {_terminate = true};
		//--- Start NVG
		if (_key in _keyNightVision) then 
			{
			_NVGstate = !(_logic getvariable "MCC_3D_nvg");
			_logic setvariable ["MCC_3D_nvg",_NVGstate];
			camusenvg _NVGstate;
			};
		//Place
		if (_key in _keyplace) then 
			{
			_finished = true;
			};
		//open menu
		if (_key in _keysUpObj && !(dialog)) then {_ok = createDialog "MCC3D_Dialog";};
		//Delete object
		if (_key in _keydelete) then 
			{
			deletevehicle Object3D;
			_nearObjects = (getpos dummyObject) nearobjects 5; 
			hint format ["%1", _nearObjects];
			if ((count _nearObjects)>1 && ((_nearObjects select 0) != dummyObject)) then {deletevehicle (_nearObjects select 0);}; 
			};
		};
		
	if (_mode == "MouseZChanged") then
		{
		_key = _input select 1;
		//raise
		if (_key < 0) then 
			{
			z3DHight =z3DHight + 0.5;
			Object3D setpos [getpos Object3D select 0, getpos Object3D select 1,z3DHight];
			};
		//Lower	
		if (_key > 0) then 
			{
			z3DHight =z3DHight - 0.5;
			Object3D setpos [getpos Object3D select 0, getpos Object3D select 1,z3DHight];
			};
		};
		
	//--- Key UP
	if (_mode == "keyup") then 
		{
		_key = _input select 1;
		if (_key in _keyplace) then 
			{
			hint "Object placed";
			deletevehicle Object3D;
			Object3D = mcc_spawnname createvehicle [0,0,500];	
			Object3D enableSimulation false;
			};
		if (_key in BIS_CONTROL_CAM_keys) then {BIS_CONTROL_CAM_keys = BIS_CONTROL_CAM_keys - [_key]};
		};
	
	//Mouse down
	if (_mode == "mousedown") then 
		{
		_key = _input select 1;
		if (_key ==1) then {deletevehicle Object3D;};
		};

	//--- Deselect or CloseTerminate 
	if (_terminate) then 
		{
		mcc_screen=0;
		_menu = _this select 2;
		//--- Close
		MCC3DRuning = false; 
		BIS_CONTROL_CAM cameraeffect ["terminate","back"];
		camdestroy BIS_CONTROL_CAM;
		BIS_CONTROL_CAM = nil;
		deletevehicle Object3D;
		deletevehicle dummyObject;
		player setvariable ["3D_isRuning",nil];
		};
	
	//--- Finished
	if (_finished) then 
		{
		_objectPos = [getpos Object3D select 0, getpos Object3D select 1, z3DHight] ;
		_objectDir = getdir Object3D;
		MCC3DgotValue = true; 
		MCC3DValue = [_objectPos,_objectDir]; 
		deletevehicle Object3D;
		};
		
	//--- Camera no longer exists - terminate and start cleanup	
	if (isnil "BIS_CONTROL_CAM" || player != DOperator || !isnil "BIS_COIN_QUIT") exitwith
		{
		//////////////////////////////////////////////////
		startLoadingScreen ["MCC 3D","RscDisplayLoadMission"];
		//////////////////////////////////////////////////

		if !(isnil "BIS_CONTROL_CAM") then {BIS_CONTROL_CAM cameraeffect ["terminate","back"];camdestroy BIS_CONTROL_CAM;};
		BIS_CONTROL_CAM = nil;
		BIS_CONTROL_CAM_Handler = nil;
		1122 cuttext ["","plain"];
		_player = DOperator;
		_player setvariable ["MCC_3D_logic",nil];
		DOperator = objnull;
		_preview = _logic getvariable "MCC_3D_preview";
		if !(isnil "_preview") then {deletevehicle _preview};
		//_logic setvariable ["BIS_COIN_mousepos",nil];
		_logic setvariable ["MCC_3D_preview",nil];
		_logic setvariable ["MCC_3D_selected",nil];
		_logic setvariable ["MCC_3D_params",nil];
		_logic setvariable ["BIS_COIN_lastdir",nil];
		_logic setvariable ["MCC_3D_tooltip",nil];
		_logic setvariable ["BIS_COIN_fundsOld",nil];
		_logic setvariable ["MCC_3D_restart",nil];
		_logic setvariable ["MCC_3D_nvg",nil];
		showcommandingmenu "";

		//_display = finddisplay 46;
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["KeyDown",		""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["KeyUp",		""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseButtonDown",	""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseButtonUp",	""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseMoving",		""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseHolding",	""];
		(uinamespace getvariable "MCC_3D_displayMain") displayseteventhandler ["MouseZChanged",	""];

		//--- Behold the placeholders
		BIS_COIN_QUIT = nil;
		missionnamespace setvariable ["BIS_COIN_border",nil];
	
		debuglog format ["Log: [3D] %1 terminated %2",player,_logic getvariable "BIS_COIN_name"];

		//////////////////////////////////////////////////
		endLoadingScreen;
		//////////////////////////////////////////////////
		};
	};

//////////////////////////////////////////////////
endLoadingScreen;
//////////////////////////////////////////////////
