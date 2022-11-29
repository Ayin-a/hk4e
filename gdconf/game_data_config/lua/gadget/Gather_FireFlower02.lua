function OnBeHurt(context, element_type, strike_type, is_host)
	--ScriptLib.PrintLog("##BeHurt")
	local this_flower = ScriptLib.GetContextGadgetConfigId(context)
	local this_group = ScriptLib.GetContextGroupId(context)


	local state = ScriptLib.GetGadgetState(context)
	if state == GadgetState.Default then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	elseif state == GadgetState.Action01 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	elseif state == GadgetState.Action02 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
		
		--ScriptLib.KillEntityByConfigId(context, { group_id = this_group, config_id = this_flower })

end