-- 基础信息
local base_info = {
	group_id = 133223494
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 14,
	group_id = 133223494,
	gadget_1 = 494001,
	gadget_2 = 494002,
	gadget_3 = 494003,
	gadget_4 = 494005,
	gadget_chest = 494004
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
	{ config_id = 494001, gadget_id = 70900008, pos = { x = -6721.133, y = 209.571, z = -2682.991 }, rot = { x = 343.955, y = 330.044, z = 2.732 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 494002, gadget_id = 70900008, pos = { x = -6716.179, y = 210.213, z = -2680.866 }, rot = { x = 348.254, y = 337.564, z = 8.144 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 494003, gadget_id = 70900008, pos = { x = -6711.895, y = 213.463, z = -2637.934 }, rot = { x = 344.202, y = 59.100, z = 341.973 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 18 },
	{ config_id = 494004, gadget_id = 70211111, pos = { x = -6719.756, y = 211.513, z = -2677.932 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 494005, gadget_id = 70900008, pos = { x = -6717.930, y = 216.106, z = -2633.619 }, rot = { x = 340.277, y = 10.186, z = 353.532 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494006, name = "GADGET_STATE_CHANGE_494006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494006", action = "action_EVENT_GADGET_STATE_CHANGE_494006", trigger_count = 0 },
	{ config_id = 1494007, name = "TIMER_EVENT_494007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_494007", action = "action_EVENT_TIMER_EVENT_494007", trigger_count = 0 },
	{ config_id = 1494008, name = "VARIABLE_CHANGE_494008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_494008", action = "action_EVENT_VARIABLE_CHANGE_494008", trigger_count = 0 }
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
		gadgets = { 494001, 494002, 494003, 494005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_494006", "TIMER_EVENT_494007", "VARIABLE_CHANGE_494008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494006(context, evt)
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
function condition_EVENT_TIMER_EVENT_494007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_494007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_494008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_494008(context, evt)
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