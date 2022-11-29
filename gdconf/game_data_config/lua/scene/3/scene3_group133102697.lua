-- 基础信息
local base_info = {
	group_id = 133102697
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 3,
	group_id = 133102697,
	gadget_1 = 697001,
	gadget_2 = 697002,
	gadget_3 = 697003,
	gadget_4 = 0,
	gadget_chest = 697004,
	gadget_5 = 0,
	gadget_6 = 0,
	gadget_7 = 0,
	gadget_8 = 0
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
	{ config_id = 697001, gadget_id = 70900051, pos = { x = 1164.306, y = 200.272, z = 369.385 }, rot = { x = 356.934, y = 9.841, z = 356.750 }, level = 16, state = GadgetState.Action01, persistent = true, area_id = 5 },
	{ config_id = 697002, gadget_id = 70900051, pos = { x = 1172.912, y = 200.672, z = 368.758 }, rot = { x = 358.842, y = 8.263, z = 7.922 }, level = 16, state = GadgetState.Action01, persistent = true, area_id = 5 },
	{ config_id = 697003, gadget_id = 70900051, pos = { x = 1169.274, y = 200.481, z = 375.987 }, rot = { x = 0.251, y = 98.059, z = 358.228 }, level = 16, state = GadgetState.Action01, persistent = true, area_id = 5 },
	{ config_id = 697004, gadget_id = 70211111, pos = { x = 1169.147, y = 200.321, z = 371.011 }, rot = { x = 359.075, y = 330.629, z = 5.639 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 697005, gadget_id = 70900051, pos = { x = 1168.392, y = 200.310, z = 366.501 }, rot = { x = 1.222, y = 39.027, z = 5.582 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 697009, gadget_id = 70900051, pos = { x = 1164.840, y = 200.513, z = 374.186 }, rot = { x = 1.664, y = 38.562, z = 352.219 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 697010, gadget_id = 70900051, pos = { x = 1172.987, y = 200.620, z = 373.263 }, rot = { x = 0.532, y = 38.966, z = 5.023 }, level = 16, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1697006, name = "GADGET_STATE_CHANGE_697006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_697006", action = "action_EVENT_GADGET_STATE_CHANGE_697006", trigger_count = 0 },
	{ config_id = 1697007, name = "TIMER_EVENT_697007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_697007", action = "action_EVENT_TIMER_EVENT_697007", trigger_count = 0 },
	{ config_id = 1697008, name = "VARIABLE_CHANGE_697008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_697008", action = "action_EVENT_VARIABLE_CHANGE_697008", trigger_count = 0 }
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
		gadgets = { 697001, 697002, 697003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_697006", "TIMER_EVENT_697007", "VARIABLE_CHANGE_697008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_697006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_697006(context, evt)
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
function condition_EVENT_TIMER_EVENT_697007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_697007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_697008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_697008(context, evt)
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