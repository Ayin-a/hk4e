-- 基础信息
local base_info = {
	group_id = 133002344
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 60,
	group_id = 133002344,
	gadget_1 = 344001,
	gadget_2 = 344002,
	gadget_3 = 344003,
	gadget_4 = 344005,
	gadget_chest = 344004
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
	{ config_id = 344001, gadget_id = 70900007, pos = { x = 2001.441, y = 260.756, z = -361.909 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 15, state = GadgetState.Action01, persistent = true, area_id = 3 },
	{ config_id = 344002, gadget_id = 70900007, pos = { x = 2052.500, y = 266.300, z = -374.800 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 15, state = GadgetState.Action01, persistent = true, area_id = 3 },
	{ config_id = 344003, gadget_id = 70900007, pos = { x = 2030.006, y = 262.227, z = -351.758 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 15, state = GadgetState.Action01, persistent = true, area_id = 3 },
	{ config_id = 344004, gadget_id = 70211111, pos = { x = 2031.499, y = 261.865, z = -368.830 }, rot = { x = 0.000, y = 180.704, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 344005, gadget_id = 70900007, pos = { x = 2031.938, y = 259.608, z = -386.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, state = GadgetState.Action01, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1344006, name = "GADGET_STATE_CHANGE_344006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_344006", action = "action_EVENT_GADGET_STATE_CHANGE_344006", trigger_count = 0 },
	{ config_id = 1344007, name = "TIMER_EVENT_344007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_344007", action = "action_EVENT_TIMER_EVENT_344007", trigger_count = 0 },
	{ config_id = 1344008, name = "VARIABLE_CHANGE_344008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_344008", action = "action_EVENT_VARIABLE_CHANGE_344008", trigger_count = 0 }
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
		gadgets = { 344001, 344002, 344003, 344005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_344006", "TIMER_EVENT_344007", "VARIABLE_CHANGE_344008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_344006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_344006(context, evt)
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
function condition_EVENT_TIMER_EVENT_344007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_344007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_344008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_344008(context, evt)
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