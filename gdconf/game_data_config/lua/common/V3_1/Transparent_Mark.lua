

--- local markList = {}


local markTriggers = {
	initialtrigger = {
		["StateChange"] = { config_id = 90000001, name = "StateChange", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_state_change_transportmark", trigger_count = 0},
	}
}


function action_state_change_transportmark(context, evt)

	ScriptLib.PrintContextLog(context, "## MarkAction : StateChange")

	local markState = 0 

	for i,v in ipairs(markList) do
		if evt.param2 == v then
			if evt.param1 == 0 then
				markState = 1
			elseif evt.param3 == 0 then
				markState = 2
			else
				break
			end
			

			ScriptLib.MarkGroupLuaAction(context, "transparentstate", "", {group_id = base_info.group_id ,
			config_id = evt.param2, 
			gadget_id = ScriptLib.GetGadgetIdByEntityId(context, ScriptLib.GetEntityIdByConfigId(context, evt.param2)),
			state = markState })

			break
		end
	end


	return 0
end

function LF_Initialize_MarkGroup()
	for k,v in pairs(markTriggers.initialtrigger) do
		table.insert(triggers, v)
		for i,n in ipairs(suites) do
			table.insert(n.triggers, v.name)
		end
		
	end

	return 0
end

LF_Initialize_MarkGroup()

