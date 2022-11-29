-- 基础信息
local base_info = {
	group_id = 199003076
}

-- DEFS_MISCS
local defs = {
    reverse_time = 10,--回溯倒计时，整数秒
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
	[76001] = { config_id = 76001, gadget_id = 70310390, pos = { x = -735.671, y = 101.319, z = 420.067 }, rot = { x = 0.000, y = 186.476, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 403 },
	[76004] = { config_id = 76004, gadget_id = 70380012, pos = { x = -721.475, y = 93.000, z = 403.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	[76006] = { config_id = 76006, gadget_id = 70211001, pos = { x = -731.955, y = 96.029, z = 409.838 }, rot = { x = 0.000, y = 90.982, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	[76007] = { config_id = 76007, gadget_id = 70220038, pos = { x = -722.669, y = 86.790, z = 407.829 }, rot = { x = 0.000, y = 75.588, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	[76012] = { config_id = 76012, gadget_id = 70310392, pos = { x = -736.438, y = 101.345, z = 417.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, mark_flag = 1, area_id = 403 },
	[76018] = { config_id = 76018, gadget_id = 70310419, pos = { x = -726.970, y = 87.099, z = 406.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开始回溯
	{ config_id = 1076002, name = "VARIABLE_CHANGE_76002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_76002", action = "action_EVENT_VARIABLE_CHANGE_76002", trigger_count = 0 },
	{ config_id = 1076008, name = "ANY_GADGET_DIE_76008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_76008", action = "action_EVENT_ANY_GADGET_DIE_76008", trigger_count = 0 },
	{ config_id = 1076009, name = "TIME_AXIS_PASS_76009", event = EventType.EVENT_TIME_AXIS_PASS, source = "reverse", condition = "", action = "action_EVENT_TIME_AXIS_PASS_76009", trigger_count = 0 },
	{ config_id = 1076010, name = "PLATFORM_REACH_POINT_76010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_76010", action = "action_EVENT_PLATFORM_REACH_POINT_76010", trigger_count = 0 },
	-- 开启回溯播reminder
	{ config_id = 1076014, name = "VARIABLE_CHANGE_76014", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_76014", action = "action_EVENT_VARIABLE_CHANGE_76014", trigger_count = 0 },
	-- 回溯完成播reminder
	{ config_id = 1076015, name = "VARIABLE_CHANGE_76015", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_76015", action = "action_EVENT_VARIABLE_CHANGE_76015", trigger_count = 0 },
	{ config_id = 1076016, name = "GADGET_STATE_CHANGE_76016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76016", action = "action_EVENT_GADGET_STATE_CHANGE_76016", trigger_count = 0 },
	{ config_id = 1076017, name = "GROUP_LOAD_76017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76017", action = "action_EVENT_GROUP_LOAD_76017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 76005, gadget_id = 70800210, pos = { x = -721.560, y = 89.615, z = 407.850 }, rot = { x = 359.102, y = 253.510, z = 356.970 }, level = 20, persistent = true, area_id = 403 }
	},
	triggers = {
		{ config_id = 1076003, name = "SELECT_OPTION_76003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76003", action = "action_EVENT_SELECT_OPTION_76003", trigger_count = 0 },
		{ config_id = 1076011, name = "PLATFORM_REACH_POINT_76011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_76011", action = "action_EVENT_PLATFORM_REACH_POINT_76011", trigger_count = 0 },
		{ config_id = 1076013, name = "PLATFORM_REACH_POINT_76013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_76013", action = "action_EVENT_PLATFORM_REACH_POINT_76013", trigger_count = 0 }
	}
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
		gadgets = { 76001, 76004, 76006, 76007, 76012, 76018 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_76002", "ANY_GADGET_DIE_76008", "TIME_AXIS_PASS_76009", "PLATFORM_REACH_POINT_76010", "VARIABLE_CHANGE_76014", "VARIABLE_CHANGE_76015", "GADGET_STATE_CHANGE_76016", "GROUP_LOAD_76017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"revert"为1
	if ScriptLib.GetGroupVariableValue(context, "revert") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 76004, 900300039, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_76008(context, evt)
	if 76007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_76008(context, evt)
	-- 将本组内变量名为 "destroy" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "destroy", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_76009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 76004, 900300039, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_76010(context, evt)
	-- 判断是gadgetid 为 76004的移动平台，是否到达了900300039 的点集中的 1 点
	
	if 76004 ~= evt.param1 then
	  return false
	end
	
	if 900300039 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_76010(context, evt)
	
	
	
	if ScriptLib.GetGroupVariableValue(context,"destroy") == 0 then
	
	local tempParam = {route_type = 0, turn_mode = false}
	 ScriptLib.SetPlatformPointArray(context, 76004, 900300039, {2}, tempParam) 
	else
	
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 76004, 900300039, {2,3}, tempParam)
	
	
	
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为1
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76014(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-735,y=101,z=420}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111350, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为0
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003076, 76001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-735,y=101,z=420}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111351, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76016(context, evt)
	if 76006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76016(context, evt)
	-- 停止标识为"reverse"的时间轴
	ScriptLib.EndTimeAxis(context, "reverse")
	
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 76001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76017(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76017(context, evt)
	local tempParam = {route_type = 0, turn_mode = false}
	ScriptLib.SetPlatformPointArray(context, 76004, 900300039, {2,3}, tempParam)
	
	ScriptLib.SetGadgetStateByConfigId(context, 76001, GadgetState.Default)
	return 0
end

require "V2_8/TimeReverser"