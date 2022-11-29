function OnClientExecuteReq(context, param1, param2, param3)
	--ScriptLib.PrintLog("##param1="..param1)
	-- 获取机关当前状态
	 local this_config = ScriptLib.GetContextGadgetConfigId(context)

     local this_group = ScriptLib.GetContextGroupId(context)
     if param1 == 0 then
     	ScriptLib.SetGadgetState(context, GadgetState.Default)
     	ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, false)
     end

     if param1 == 201 then
     	ScriptLib.SetGadgetState(context, GadgetState.GearStart)
        ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, true)
     end
end