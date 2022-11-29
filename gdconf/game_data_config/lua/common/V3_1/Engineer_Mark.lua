function SLC_EngineerMark( context )

	local eid = context.source_entity_id

	ScriptLib.MarkGroupLuaAction(context, "getengineer", "", {group_id = base_info.group_id ,config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = eid }) })

	return 0
end