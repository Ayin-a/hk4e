-- 基础信息
local base_info = {
	group_id = 133002429
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 10,
	group_id = 133002429,
	gadget_1 = 429001,
	gadget_2 = 429002,
	gadget_3 = 429003,
	gadget_chest = 429004
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
	{ config_id = 429001, gadget_id = 70900008, pos = { x = 1592.954, y = 283.113, z = -759.227 }, rot = { x = 0.000, y = 47.644, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 3 },
	{ config_id = 429002, gadget_id = 70900007, pos = { x = 1557.371, y = 269.301, z = -731.125 }, rot = { x = 0.000, y = 0.176, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 10 },
	{ config_id = 429003, gadget_id = 70900008, pos = { x = 1601.818, y = 281.597, z = -730.164 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 3 },
	{ config_id = 429004, gadget_id = 70211111, pos = { x = 1584.046, y = 277.007, z = -747.093 }, rot = { x = 1.409, y = 283.799, z = 355.385 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1429006, name = "GADGET_STATE_CHANGE_429006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_429006", action = "action_EVENT_GADGET_STATE_CHANGE_429006", trigger_count = 0 },
	{ config_id = 1429007, name = "TIMER_EVENT_429007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_429007", action = "action_EVENT_TIMER_EVENT_429007", trigger_count = 0 },
	{ config_id = 1429008, name = "VARIABLE_CHANGE_429008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_429008", action = "action_EVENT_VARIABLE_CHANGE_429008", trigger_count = 0 }
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
		gadgets = { 429001, 429002, 429003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_429006", "TIMER_EVENT_429007", "VARIABLE_CHANGE_429008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_429006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_429006(context, evt)
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
function condition_EVENT_TIMER_EVENT_429007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_429007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_429008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_429008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
		return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end