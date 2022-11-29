
local tempTrigger = {
	{ config_id = 2330001, name = "Challenge_Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "",
	  condition = "", action = "action_Challenge_Enter_Region", trigger_count = 0},
	{ config_id = 2330002, name = "Challenge_LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "",
	  condition = "", action = "action_Challenge_LEAVE_REGION", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
	for k,v in pairs(tempTrigger) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for k,v in pairs(regions) do
		v.radius = 20
	end
	return 0
end

--------监听函数----------

function action_Challenge_Enter_Region(context, evt)
	ScriptLib.SetPlayerEyePoint(context, evt.param1, evt.param1)
	return 0
end

function action_Challenge_LEAVE_REGION(context, evt)
	ScriptLib.ClearPlayerEyePoint(context, evt.param1)
	return 0
end


LF_Initialize_Level()

--- ServerUploadTool Save to [/root/env/data/lua/common/V1_5]  ---
