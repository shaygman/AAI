if !mcc_isloading then 
	{
	if (mcc_missionmaker == (name player)) then
	{	
		hint "click on map where you want to put hostage"; 
		
		onMapSingleClick " 	hint ""hostage inbound.""; 
							_pos execVm ""mcc\general_scripts\hostages\create_hostage.sqf"";
							onMapSingleClick """";
							nul=[0] execVM 'mcc\Pop_menu\mcc_ActivatePopupMenuViaAction.sqf';";
		
	}	
		else { player globalchat "Access Denied"};
	};