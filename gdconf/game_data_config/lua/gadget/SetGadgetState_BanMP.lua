function OnClientExecuteReq(context, param1, param2, param3)
	--联机状态下,由于未被及时卸载时被交互的保险
	if true == ScriptLib.CheckIsInMpMode(context) then	
		ScriptLib.PrintContextLog(context, "#SetGadgetState_BanMP# Is in MP mode, refuse state change.")
		--重新设为可交互
		ScriptLib.SetGadgetEnableInteract(context, 0, ScriptLib.GetContextGadgetConfigId(context), true)	
		return 0
	end
	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	end
	if param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
	if param1 == 202 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStop)
	end
	if param1 == 203 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
	end
	if param1 == 204 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
	end
	if param1 == 901 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
	if param1 == 902 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	end
	if param1 == 903 then
		ScriptLib.SetGadgetState(context, GadgetState.Action03)
	end
	if param1 == 106 then
		ScriptLib.SetGadgetState(context, GadgetState.ChestRock)
	end
end