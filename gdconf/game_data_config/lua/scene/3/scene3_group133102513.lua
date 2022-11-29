-- 基础信息
local base_info = {
	group_id = 133102513
}

-- Trigger变量
local defs = {
	max_gear = 2,
	timer = 10,
	group_id = 133102513,
	gadget_1 = 513001,
	gadget_2 = 513002,
	gadget_3 = 0,
	gadget_4 = 0,
	gadget_chest = 513004
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
	{ config_id = 513001, gadget_id = 70900007, pos = { x = 1516.581, y = 238.044, z = 42.904 }, rot = { x = 6.264, y = 330.345, z = 357.356 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 5 },
	{ config_id = 513002, gadget_id = 70900007, pos = { x = 1533.251, y = 233.820, z = 44.555 }, rot = { x = 13.014, y = 328.492, z = 354.485 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 5 },
	{ config_id = 513004, gadget_id = 70211111, pos = { x = 1517.507, y = 237.738, z = 46.269 }, rot = { x = 351.474, y = 270.173, z = 353.988 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1513006, name = "GADGET_STATE_CHANGE_513006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513006", action = "action_EVENT_GADGET_STATE_CHANGE_513006", trigger_count = 0 },
	{ config_id = 1513007, name = "TIMER_EVENT_513007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_513007", action = "action_EVENT_TIMER_EVENT_513007", trigger_count = 0 },
	{ config_id = 1513008, name = "VARIABLE_CHANGE_513008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_513008", action = "action_EVENT_VARIABLE_CHANGE_513008", trigger_count = 0 }
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
		gadgets = { 513001, 513002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_513006", "TIMER_EVENT_513007", "VARIABLE_CHANGE_513008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Action01  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_513007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_513007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_513008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_513008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if defs.gadget_4 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStart)
	end
	
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
		return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end