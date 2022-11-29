-- abilityRequest
function OnClientExecuteReq(context, param1, param2, param3)

	 local this_target = ScriptLib.GetContextGadgetConfigId(context)
	 	--ScriptLib.PrintLog("##config="..this_target)
	 local this_group = ScriptLib.GetContextGroupId(context)
 		--ScriptLib.PrintLog("##config="..this_group)
	-- 获取机关当前状态
	if param1 == 0 then
		--[[local this_config = ScriptLib.GetGadgetConfigId(context, {gadget_eid = source_entity_id})
		local this_group = ScriptLib.GetContextGroupId(context)
		ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, this_config, GadgetState.Default)]]
		if this_target == 7 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, 9, GadgetState.chestOpened) 
		end

		if this_target == 9 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, 10, GadgetState.chestOpened)
		end

		if this_target == 10 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, 11, GadgetState.chestOpened)
		end

		if this_target == 11 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, 7, GadgetState.chestOpened)
		end

		ScriptLib.ChangeGroupVariableValue(context,"count",1)

	end 

	
	
end


