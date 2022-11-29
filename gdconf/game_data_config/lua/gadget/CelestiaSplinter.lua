function OnClientExecuteReq(context, param1, param2, param3)
	local group_id=ScriptLib.GetContextGroupId(context)
	if group_id ~= nil and group_id ~= -1 then
		if param1==0 then
			ScriptLib.SetGadgetEnableInteract(context, group_id, ScriptLib.GetContextGadgetConfigId(context), false)
		elseif param1==1 then
			ScriptLib.SetGadgetEnableInteract(context, group_id, ScriptLib.GetContextGadgetConfigId(context), true)
		end
	end
end