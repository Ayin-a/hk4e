
-- local defs_floor_groups = {
-- 	[1] = {invisible_suites = 2, visible_suites = 3},
-- 	[2] = {invisible_suites = 4, visible_suites = 5},
-- 	[3] = {invisible_suites = 6, visible_suites = 7},
-- 	[4] = {invisible_suites = 8, visible_suites = 9},
-- 	[5] = {invisible_suites = 10, visible_suites = 11},
-- 	[6] = {invisible_suites = 12, visible_suites = 13}
-- }

local Tri = {
	{name = "timer_event", config_id = 860001, event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_timer_event", trigger_count = 0},
	{name = "gadget_state_change", config_id = 860002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 1}
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

function action_gadget_state_change(context, evt)
	--临时处理关卡开始
	if evt.param2 == 6001 and evt.param1 == 201 then
		LF_Create_Floor_Group(context)
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : LF_Create_Floor_Group !!! ")
	end
	return 0
end

function action_timer_event(context, evt)
	--处理地板的显示和隐藏交替循环
	if evt.source_name == "SwitchToInvisible" then
		local suites_index = ScriptLib.GetGroupVariableValue(context, "suites_index")
		local gadget_list = suites[defs_floor_groups[suites_index].invisible_suites].gadgets
		for i, v in ipairs(gadget_list) do
		        ScriptLib.SetGroupGadgetStateByConfigId(context, 235800006, v, 901)
		end
		ScriptLib.CreateGroupTimerEvent(context, 235800006, "SwitchToVisible", 10)
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : action_timer_event >>> SwitchToVisible"..suites_index)
	elseif evt.source_name == "SwitchToVisible" then
		local suites_index = ScriptLib.GetGroupVariableValue(context, "suites_index")
		local gadget_list = suites[defs_floor_groups[suites_index].invisible_suites].gadgets
		for i, v in ipairs(gadget_list) do
		        ScriptLib.SetGroupGadgetStateByConfigId(context, 235800006, v, 902)
		end
		ScriptLib.CreateGroupTimerEvent(context, 235800006, "SwitchToInvisible", 3)
		ScriptLib.PrintContextLog(context, "@@ Require_WARNING : action_timer_event >>> SwitchToInvisible"..suites_index)		
	end	
	return 0
end

function LF_Create_Floor_Group(context)
	--随机选择一条路线
	local randomIdx = math.random(1,#defs_floor_groups)
	ScriptLib.SetGroupVariableValue(context, "suites_index", randomIdx)
	ScriptLib.AddExtraGroupSuite(context, 235800006, defs_floor_groups[randomIdx].invisible_suites)
	ScriptLib.AddExtraGroupSuite(context, 235800006, defs_floor_groups[randomIdx].visible_suites)
	ScriptLib.CreateGroupTimerEvent(context, 235800006, "SwitchToInvisible", 3)
	ScriptLib.PrintContextLog(context, "@@ Require_WARNING : Create_Routes_Index >>> "..randomIdx)
end

Initialize()

-- function PlayStart(context)
-- 	LF_Create_Floor_Group(context)
-- end

-- function LF_Initialize_Level(context)

-- end

--LF_Initialize_Level()