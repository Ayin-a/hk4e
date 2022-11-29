function OnClientExecuteReq(context, param1, param2, param3)

	local this_flower = ScriptLib.GetContextGadgetConfigId(context)
	local this_group = ScriptLib.GetContextGroupId(context)

	if param1 == 0 then
		ScriptLib.SetGadgetEnableInteract(context, this_group, this_flower, false)
	elseif param1 ==1 then
		ScriptLib.SetGadgetEnableInteract(context, this_group, this_flower, true)
	elseif param1 == 201 then
		ScriptLib.SetGadgetState(context, param1)
	end
end