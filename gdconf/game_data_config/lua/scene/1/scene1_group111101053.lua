-- 基础信息
local base_info = {
	group_id = 111101053
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 5,
	group_id = 111101053,
	gadget_1 = 53001,
	gadget_2 = 53002,
	gadget_3 = 53003,
	gadget_4 = 0,
	gadget_chest = 53004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70900009, pos = { x = 2519.332, y = 206.050, z = -1213.760 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 53002, gadget_id = 70900009, pos = { x = 2529.632, y = 206.050, z = -1208.960 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 53003, gadget_id = 70900009, pos = { x = 2521.037, y = 206.050, z = -1204.919 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 53004, gadget_id = 70211111, pos = { x = 2526.788, y = 206.050, z = -1215.111 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 53005, gadget_id = 70900209, pos = { x = 2525.400, y = 206.289, z = -1217.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053006, name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53006", action = "action_EVENT_GADGET_STATE_CHANGE_53006", trigger_count = 0 },
	{ config_id = 1053007, name = "TIMER_EVENT_53007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_53007", action = "action_EVENT_TIMER_EVENT_53007", trigger_count = 0 },
	{ config_id = 1053008, name = "VARIABLE_CHANGE_53008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53008", action = "action_EVENT_VARIABLE_CHANGE_53008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 53001, 53002, 53003, 53005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53006", "TIMER_EVENT_53007", "VARIABLE_CHANGE_53008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_53007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_53007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
	return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end