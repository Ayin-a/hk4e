-- 基础信息
local base_info = {
	group_id = 155007087
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 15,
	group_id = 155007087,
	gadget_1 = 87001,
	gadget_2 = 87002,
	gadget_3 = 87003,
	gadget_4 = 87005,
	gadget_chest = 87004
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
	{ config_id = 87001, gadget_id = 70900008, pos = { x = -157.681, y = 218.051, z = 1502.552 }, rot = { x = 346.288, y = 330.800, z = 356.737 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 87002, gadget_id = 70900008, pos = { x = -166.533, y = 216.121, z = 1483.971 }, rot = { x = 352.214, y = 329.786, z = 0.029 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 87003, gadget_id = 70900008, pos = { x = -178.184, y = 221.346, z = 1502.214 }, rot = { x = 0.000, y = 59.100, z = 348.010 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
	{ config_id = 87004, gadget_id = 70211101, pos = { x = -165.025, y = 217.804, z = 1494.936 }, rot = { x = 347.830, y = 297.116, z = 4.252 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 87005, gadget_id = 70900008, pos = { x = -177.342, y = 221.321, z = 1486.291 }, rot = { x = 353.890, y = 3.867, z = 336.347 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087006, name = "GADGET_STATE_CHANGE_87006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87006", action = "action_EVENT_GADGET_STATE_CHANGE_87006", trigger_count = 0 },
	{ config_id = 1087007, name = "TIMER_EVENT_87007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_87007", action = "action_EVENT_TIMER_EVENT_87007", trigger_count = 0 },
	{ config_id = 1087008, name = "VARIABLE_CHANGE_87008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_87008", action = "action_EVENT_VARIABLE_CHANGE_87008", trigger_count = 0 }
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
		gadgets = { 87001, 87002, 87003, 87005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_87006", "TIMER_EVENT_87007", "VARIABLE_CHANGE_87008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_87006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87006(context, evt)
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
function condition_EVENT_TIMER_EVENT_87007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_87007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_87008(context, evt)
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