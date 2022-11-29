function OnClientExecuteReq(context, param1, param2, param3)
		local this_config = ScriptLib.GetContextGadgetConfigId(context)
        local this_group = ScriptLib.GetContextGroupId(context)
	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
		ScriptLib.SetGadgetState(context, param1)
		if param1==0 then
			ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, false)
		end
		if param1==201 then
			ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, true)
		end
		return 0
end