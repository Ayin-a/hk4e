local t = { config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0}

function Initialize()
	table.insert(triggers,t)
	table.insert(suites[1].triggers, t.name)
end 

Initialize()

function action_group_load(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 1 then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	return 0	
end


