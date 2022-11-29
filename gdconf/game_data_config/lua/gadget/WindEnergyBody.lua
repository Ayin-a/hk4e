function OnClientExecuteReq(context, param1, param2, param3)

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
end

-- 能量体被攻击
function OnBeHurt(context, element_type, strike_type, is_host)
	if is_host == true then
		-- 获取机关当前状态
		local state = ScriptLib.GetGadgetState(context)
		if state == GadgetState.GearStart then
			if element_type == ElementType.Wind then
				local groupId = ScriptLib.GetContextGroupId(context)
				local configId = ScriptLib.GetContextGadgetConfigId(context)
				ScriptLib.KillEntityByConfigId(context, { group_id = groupId, config_id = configId, entity_type=EntityType.GADGET }) 
			end
		end
	end
end