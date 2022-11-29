-- 基础信息
local base_info = {
	group_id = 155005257
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 45,
	group_id = 155005257,
	gadget_1 = 257001,
	gadget_2 = 257002,
	gadget_3 = 257003,
	gadget_chest = 257004
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
	{ config_id = 257001, gadget_id = 70900049, pos = { x = 402.155, y = 293.921, z = 273.651 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 257002, gadget_id = 70900049, pos = { x = 396.490, y = 293.908, z = 280.974 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 257003, gadget_id = 70900049, pos = { x = 407.812, y = 293.610, z = 285.193 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 257004, gadget_id = 70211101, pos = { x = 405.352, y = 293.660, z = 282.807 }, rot = { x = 0.000, y = 49.281, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257006, name = "GADGET_STATE_CHANGE_257006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_257006", action = "action_EVENT_GADGET_STATE_CHANGE_257006", trigger_count = 0 },
	{ config_id = 1257007, name = "TIMER_EVENT_257007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_257007", action = "action_EVENT_TIMER_EVENT_257007", trigger_count = 0 },
	{ config_id = 1257008, name = "VARIABLE_CHANGE_257008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_257008", action = "action_EVENT_VARIABLE_CHANGE_257008", trigger_count = 0 }
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
		gadgets = { 257001, 257002, 257003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_257006", "TIMER_EVENT_257007", "VARIABLE_CHANGE_257008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_257006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2  then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257006(context, evt)
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
function condition_EVENT_TIMER_EVENT_257007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_257007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_257008(context, evt)
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