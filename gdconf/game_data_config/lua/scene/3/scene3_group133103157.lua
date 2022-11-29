-- 基础信息
local base_info = {
	group_id = 133103157
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 10,
	group_id = 133103157,
	gadget_1 = 157001,
	gadget_2 = 157002,
	gadget_3 = 157003,
	gadget_4 = 0,
	gadget_chest = 157004
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
	{ config_id = 157001, gadget_id = 70900051, pos = { x = 850.813, y = 244.579, z = 1659.707 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 24, state = GadgetState.Action01, persistent = true, area_id = 6 },
	{ config_id = 157002, gadget_id = 70900051, pos = { x = 847.207, y = 245.169, z = 1656.918 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 24, state = GadgetState.Action01, persistent = true, area_id = 6 },
	{ config_id = 157003, gadget_id = 70900051, pos = { x = 851.486, y = 244.893, z = 1656.508 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 24, state = GadgetState.Action01, persistent = true, area_id = 6 },
	{ config_id = 157004, gadget_id = 70211111, pos = { x = 850.653, y = 244.956, z = 1654.419 }, rot = { x = 350.018, y = 255.343, z = 0.183 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157005, name = "GADGET_CREATE_157005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_157005", action = "action_EVENT_GADGET_CREATE_157005", trigger_count = 0 },
	{ config_id = 1157006, name = "GADGET_STATE_CHANGE_157006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_157006", action = "action_EVENT_GADGET_STATE_CHANGE_157006", trigger_count = 0 },
	{ config_id = 1157007, name = "TIMER_EVENT_157007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_157007", action = "action_EVENT_TIMER_EVENT_157007", trigger_count = 0 },
	{ config_id = 1157008, name = "VARIABLE_CHANGE_157008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_157008", action = "action_EVENT_VARIABLE_CHANGE_157008", trigger_count = 0 },
	{ config_id = 1157009, name = "GROUP_REFRESH_157009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_157009", trigger_count = 0 }
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
		gadgets = { 157001, 157002, 157003 },
		regions = { },
		triggers = { "GADGET_CREATE_157005", "GADGET_STATE_CHANGE_157006", "TIMER_EVENT_157007", "VARIABLE_CHANGE_157008", "GROUP_REFRESH_157009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_157005(context, evt)
	if 157001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"active_count"为0
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_157005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103157, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_157006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_157006(context, evt)
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
function condition_EVENT_TIMER_EVENT_157007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_157007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_157008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_157008(context, evt)
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

-- 触发操作
function action_EVENT_GROUP_REFRESH_157009(context, evt)
	-- 将本组内变量名为 "active_count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "active_count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end