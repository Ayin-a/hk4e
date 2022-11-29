-- 基础信息
local base_info = {
	group_id = 133106241
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 10,
	group_id = 133106241,
	gadget_1 = 241001,
	gadget_2 = 241002,
	gadget_3 = 241003,
	gadget_chest = 241004,
	gadget_4 = 0
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
	{ config_id = 241001, gadget_id = 70900008, pos = { x = -329.189, y = 223.580, z = 1074.614 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 8 },
	{ config_id = 241002, gadget_id = 70900008, pos = { x = -313.605, y = 223.581, z = 1071.031 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 8 },
	{ config_id = 241003, gadget_id = 70900008, pos = { x = -320.777, y = 223.580, z = 1077.218 }, rot = { x = 0.000, y = 86.215, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 8 },
	{ config_id = 241004, gadget_id = 70211111, pos = { x = -321.608, y = 223.580, z = 1080.861 }, rot = { x = 0.000, y = 191.256, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1241006, name = "GADGET_STATE_CHANGE_241006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_241006", action = "action_EVENT_GADGET_STATE_CHANGE_241006", trigger_count = 0 },
	{ config_id = 1241007, name = "TIMER_EVENT_241007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_241007", action = "action_EVENT_TIMER_EVENT_241007", trigger_count = 0 },
	{ config_id = 1241008, name = "VARIABLE_CHANGE_241008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_241008", action = "action_EVENT_VARIABLE_CHANGE_241008", trigger_count = 0 }
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
		gadgets = { 241001, 241002, 241003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_241006", "TIMER_EVENT_241007", "VARIABLE_CHANGE_241008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_241006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_241006(context, evt)
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
function condition_EVENT_TIMER_EVENT_241007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_241007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_241008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_241008(context, evt)
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