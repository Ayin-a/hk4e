-- 基础信息
local base_info = {
	group_id = 133008052
}

-- Trigger变量
local defs = {
	group_id = 133008052,
	gadget_riddle_hint = 52011,
	gadget_riddle_1 = 52012,
	gadget_riddle_2 = 52013,
	gadget_riddle_3 = 52014,
	gadget_riddle_4 = 52015,
	gadget_chest = 52004
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
	{ config_id = 52001, gadget_id = 70350081, pos = { x = 876.358, y = 323.800, z = -547.858 }, rot = { x = 0.000, y = 43.911, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 52002, gadget_id = 70380022, pos = { x = 895.711, y = 319.969, z = -572.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800001, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 52004, gadget_id = 70360001, pos = { x = 876.862, y = 324.716, z = -547.554 }, rot = { x = 0.000, y = 61.327, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 52011, gadget_id = 70310012, pos = { x = 876.359, y = 323.377, z = -547.833 }, rot = { x = 0.000, y = 231.189, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 52012, gadget_id = 70900009, pos = { x = 912.161, y = 323.816, z = -558.332 }, rot = { x = 2.134, y = 254.488, z = 355.718 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 52013, gadget_id = 70900009, pos = { x = 874.961, y = 323.972, z = -572.504 }, rot = { x = 359.554, y = 317.448, z = 342.618 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 52014, gadget_id = 70900009, pos = { x = 913.211, y = 354.478, z = -564.947 }, rot = { x = 0.274, y = 257.581, z = 0.001 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 52015, gadget_id = 70900009, pos = { x = 863.349, y = 331.766, z = -567.835 }, rot = { x = 349.544, y = 338.639, z = 10.032 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052003, name = "GADGET_CREATE_52003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_52003", action = "action_EVENT_GADGET_CREATE_52003", trigger_count = 0 },
	{ config_id = 1052005, name = "SELECT_OPTION_52005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52005", action = "action_EVENT_SELECT_OPTION_52005" },
	{ config_id = 1052006, name = "GROUP_LOAD_52006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_52006", action = "action_EVENT_GROUP_LOAD_52006", trigger_count = 0 },
	{ config_id = 1052017, name = "GADGET_STATE_CHANGE_52017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52017", action = "action_EVENT_GADGET_STATE_CHANGE_52017", trigger_count = 0 },
	{ config_id = 1052018, name = "VARIABLE_CHANGE_52018", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_52018", action = "action_EVENT_VARIABLE_CHANGE_52018", trigger_count = 0 },
	{ config_id = 1052019, name = "GROUP_LOAD_52019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_52019" },
	{ config_id = 1052020, name = "PLATFORM_REACH_POINT_52020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_52020", action = "action_EVENT_PLATFORM_REACH_POINT_52020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "Finish", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 52001, 52002, 52011, 52012, 52013, 52014, 52015 },
		regions = { },
		triggers = { "GADGET_CREATE_52003", "SELECT_OPTION_52005", "GROUP_LOAD_52006", "GADGET_STATE_CHANGE_52017", "VARIABLE_CHANGE_52018", "GROUP_LOAD_52019", "PLATFORM_REACH_POINT_52020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_52003(context, evt)
	if 52004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_52003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008052, 52004, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_52005(context, evt)
	-- 判断是gadgetid 52004 option_id 24
	if 52004 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52005(context, evt)
	-- 将configid为 52001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 52004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 52002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008054, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008379, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 针对当前group内变量名为 "canopen" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "canopen", 1, 133008053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为300805201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 300805201, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_52006(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 52002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52017(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52017(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52018(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.CreateGadget(context, { config_id = 52004 })
	ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52019(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_52020(context, evt)
	-- 判断是gadgetid 为 52002的移动平台，是否到达了300800001 的路线中的 1 点
	
	if 52002 ~= evt.param1 then
	  return false
	end
	
	if 300800001 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_52020(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end