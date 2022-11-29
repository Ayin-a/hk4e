-- 基础信息
local base_info = {
	group_id = 133210148
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 20,
	group_id = 133210148,
	gadget_1 = 148001,
	gadget_2 = 148002,
	gadget_3 = 148003,
	gadget_4 = 148005,
	gadget_chest = 148004
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
	{ config_id = 148001, gadget_id = 70900008, pos = { x = -3958.928, y = 134.161, z = -940.059 }, rot = { x = 358.419, y = 101.245, z = 2.758 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 148002, gadget_id = 70900008, pos = { x = -3955.683, y = 132.894, z = -919.943 }, rot = { x = 2.759, y = 105.655, z = 13.915 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 148003, gadget_id = 70900008, pos = { x = -3879.655, y = 138.512, z = -992.358 }, rot = { x = 358.514, y = 59.005, z = 7.354 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 148004, gadget_id = 70211101, pos = { x = -3878.505, y = 139.314, z = -998.613 }, rot = { x = 5.665, y = 305.295, z = 354.094 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 148005, gadget_id = 70900008, pos = { x = -3887.974, y = 138.903, z = -1000.106 }, rot = { x = 357.275, y = 168.379, z = 352.525 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148006, name = "GADGET_STATE_CHANGE_148006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148006", action = "action_EVENT_GADGET_STATE_CHANGE_148006", trigger_count = 0 },
	{ config_id = 1148007, name = "TIMER_EVENT_148007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_148007", action = "action_EVENT_TIMER_EVENT_148007", trigger_count = 0 },
	{ config_id = 1148008, name = "VARIABLE_CHANGE_148008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148008", action = "action_EVENT_VARIABLE_CHANGE_148008", trigger_count = 0 }
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
		gadgets = { 148001, 148002, 148003, 148005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148006", "TIMER_EVENT_148007", "VARIABLE_CHANGE_148008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148006(context, evt)
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
function condition_EVENT_TIMER_EVENT_148007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_148008(context, evt)
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