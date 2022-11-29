function OnClientExecuteReq(context, param1, param2, param3)
	--ScriptLib.PrintLog("##param1="..param1)
	-- 获取机关当前状态
	 local this_config = ScriptLib.GetContextGadgetConfigId(context)

     local this_group = ScriptLib.GetContextGroupId(context)
     if param1 == 0 then
     	ScriptLib.SetGadgetState(context, GadgetState.Default)
     	ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, false)
     end
     if param1 == 1 then
     	ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, true)
     end
     if param1 == 201 then
     	ScriptLib.SetGadgetState(context, GadgetState.GearStart)
     end
     if param1 == 203 then
     	ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
     end
     if param1 == 204 then
     	ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
     end
end