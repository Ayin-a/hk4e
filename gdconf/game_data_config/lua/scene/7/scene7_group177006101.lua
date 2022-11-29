-- 基础信息
local base_info = {
	group_id = 177006101
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 25,
	group_id = 177006101,
	gadget_1 = 101001,
	gadget_2 = 101002,
	gadget_3 = 101003,
	gadget_4 = 0,
	gadget_chest = 101004
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
	{ config_id = 101001, gadget_id = 70900008, pos = { x = 402.489, y = 173.422, z = -220.949 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 210 },
	{ config_id = 101002, gadget_id = 70900008, pos = { x = 395.463, y = 168.712, z = -197.827 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 210 },
	{ config_id = 101003, gadget_id = 70900008, pos = { x = 379.349, y = 167.565, z = -217.855 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 210 },
	{ config_id = 101004, gadget_id = 70211156, pos = { x = 390.358, y = 169.767, z = -209.502 }, rot = { x = 2.835, y = 55.799, z = 11.453 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101006, name = "GADGET_STATE_CHANGE_101006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101006", action = "action_EVENT_GADGET_STATE_CHANGE_101006", trigger_count = 0 },
	{ config_id = 1101007, name = "TIMER_EVENT_101007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_101007", action = "action_EVENT_TIMER_EVENT_101007", trigger_count = 0 },
	{ config_id = 1101008, name = "VARIABLE_CHANGE_101008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101008", action = "action_EVENT_VARIABLE_CHANGE_101008", trigger_count = 0 }
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
		gadgets = { 101001, 101002, 101003, 101004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101006", "TIMER_EVENT_101007", "VARIABLE_CHANGE_101008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
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
function condition_EVENT_TIMER_EVENT_101007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_101007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_101008(context, evt)
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
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101004, GadgetState.Default) then
		return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end