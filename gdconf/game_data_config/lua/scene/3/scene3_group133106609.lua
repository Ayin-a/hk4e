-- 基础信息
local base_info = {
	group_id = 133106609
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 2,
	group_id = 133106609,
	gadget_1 = 609001,
	gadget_2 = 609002,
	gadget_3 = 609003,
	gadget_4 = 609005,
	gadget_chest = 609004
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
	{ config_id = 609001, gadget_id = 70900102, pos = { x = -427.857, y = 301.226, z = 1684.563 }, rot = { x = 6.905, y = 332.441, z = 22.749 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 19 },
	{ config_id = 609002, gadget_id = 70900102, pos = { x = -410.870, y = 310.064, z = 1699.755 }, rot = { x = 6.557, y = 330.331, z = 23.202 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 19 },
	{ config_id = 609003, gadget_id = 70900102, pos = { x = -419.958, y = 306.698, z = 1703.906 }, rot = { x = 337.913, y = 57.650, z = 7.075 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 19 },
	{ config_id = 609004, gadget_id = 70211111, pos = { x = -414.876, y = 308.726, z = 1703.398 }, rot = { x = 8.532, y = 187.329, z = 339.055 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 609005, gadget_id = 70900102, pos = { x = -422.285, y = 303.437, z = 1681.017 }, rot = { x = 357.600, y = 0.093, z = 24.411 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1609006, name = "GADGET_STATE_CHANGE_609006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_609006", action = "action_EVENT_GADGET_STATE_CHANGE_609006", trigger_count = 0 },
	{ config_id = 1609007, name = "TIMER_EVENT_609007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_609007", action = "action_EVENT_TIMER_EVENT_609007", trigger_count = 0 },
	{ config_id = 1609008, name = "VARIABLE_CHANGE_609008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_609008", action = "action_EVENT_VARIABLE_CHANGE_609008", trigger_count = 0 }
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
		gadgets = { 609001, 609002, 609003, 609005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_609006", "TIMER_EVENT_609007", "VARIABLE_CHANGE_609008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_609006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_609006(context, evt)
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
function condition_EVENT_TIMER_EVENT_609007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_609007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_609008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_609008(context, evt)
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