function OnBeHurt(context, element_type, strike_type, is_host)
	local state = ScriptLib.GetGadgetState(context)
	if element_type == ElementType.Water then
		ScriptLib.DropSubfield(context, {subfield_name = "Water_Bloom"})
		local this_flower = ScriptLib.GetContextGadgetConfigId(context)
		local this_group = ScriptLib.GetContextGroupId(context)
		ScriptLib.KillEntityByConfigId(context, { group_id = this_group, config_id = this_flower })
	end
end