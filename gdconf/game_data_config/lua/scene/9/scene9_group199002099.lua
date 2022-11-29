-- 基础信息
local base_info = {
	group_id = 199002099
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
	{ config_id = 99001, gadget_id = 70310332, pos = { x = 457.130, y = 135.374, z = -408.411 }, rot = { x = 0.000, y = 263.959, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 401 },
	{ config_id = 99002, gadget_id = 70310332, pos = { x = 464.248, y = 135.607, z = -410.292 }, rot = { x = 0.000, y = 261.962, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 401 },
	{ config_id = 99003, gadget_id = 70310310, pos = { x = 464.028, y = 135.579, z = -410.325 }, rot = { x = 0.430, y = 82.033, z = 1.603 }, level = 1, area_id = 401 },
	{ config_id = 99004, gadget_id = 70310310, pos = { x = 462.258, y = 135.588, z = -410.573 }, rot = { x = 0.430, y = 82.033, z = 1.603 }, level = 1, area_id = 401 },
	{ config_id = 99005, gadget_id = 70310310, pos = { x = 460.502, y = 135.601, z = -410.819 }, rot = { x = 0.430, y = 82.033, z = 1.603 }, level = 1, area_id = 401 },
	{ config_id = 99006, gadget_id = 70310310, pos = { x = 458.767, y = 135.614, z = -411.061 }, rot = { x = 0.430, y = 82.033, z = 1.603 }, level = 1, area_id = 401 },
	{ config_id = 99007, gadget_id = 70310310, pos = { x = 458.767, y = 135.614, z = -411.061 }, rot = { x = 0.430, y = 82.033, z = 1.603 }, level = 1, area_id = 401 },
	{ config_id = 99008, gadget_id = 70310312, pos = { x = 457.586, y = 135.613, z = -411.172 }, rot = { x = 0.000, y = 171.827, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 99009, gadget_id = 70310310, pos = { x = 457.356, y = 135.590, z = -410.034 }, rot = { x = 1.613, y = 353.442, z = 359.610 }, level = 1, area_id = 401 },
	{ config_id = 99010, gadget_id = 70360001, pos = { x = 464.962, y = 136.368, z = -410.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 423 } }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099011, name = "SELECT_OPTION_99011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99011", action = "action_EVENT_SELECT_OPTION_99011", trigger_count = 0 },
	{ config_id = 1099012, name = "PLATFORM_REACH_POINT_99012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_99012", action = "action_EVENT_PLATFORM_REACH_POINT_99012", trigger_count = 0 },
	{ config_id = 1099013, name = "GADGETTALK_DONE_99013", event = EventType.EVENT_GADGETTALK_DONE, source = "6800381", condition = "", action = "action_EVENT_GADGETTALK_DONE_99013", trigger_count = 0 },
	{ config_id = 1099014, name = "GADGETTALK_DONE_99014", event = EventType.EVENT_GADGETTALK_DONE, source = "6800380", condition = "", action = "action_EVENT_GADGETTALK_DONE_99014", trigger_count = 0 },
	{ config_id = 1099015, name = "VARIABLE_CHANGE_99015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99015", action = "action_EVENT_VARIABLE_CHANGE_99015", trigger_count = 0 },
	{ config_id = 1099017, name = "GROUP_LOAD_99017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_99017", action = "action_EVENT_GROUP_LOAD_99017", trigger_count = 0 },
	{ config_id = 1099018, name = "GROUP_LOAD_99018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_99018", action = "action_EVENT_GROUP_LOAD_99018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "talk1", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true },
	{ config_id = 3, name = "talk2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1099016, name = "VARIABLE_CHANGE_99016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99016", action = "action_EVENT_VARIABLE_CHANGE_99016", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 99001, 99002, 99003, 99004, 99005, 99006, 99007, 99008, 99009 },
		regions = { },
		triggers = { "SELECT_OPTION_99011", "PLATFORM_REACH_POINT_99012", "GADGETTALK_DONE_99013", "GADGETTALK_DONE_99014", "VARIABLE_CHANGE_99015", "GROUP_LOAD_99017", "GROUP_LOAD_99018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_99011(context, evt)
	-- 判断是gadgetid 99010 option_id 423
	if 99010 ~= evt.param1 then
		return false	
	end
	
	if 423 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 99002, 900200134, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 调用提示id为 1111334 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111334) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002099, EntityType.GADGET, 99010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_99012(context, evt)
	-- 判断是gadgetid 为 99002的移动平台，是否到达了900200134 的点集中的 4 点
	
	if 99002 ~= evt.param1 then
	  return false
	end
	
	if 900200134 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_99012(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1111335 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111335) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 99001, 900200135, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_99013(context, evt)
	-- 将本组内变量名为 "talk1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 99002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_99014(context, evt)
	-- 将本组内变量名为 "talk2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "talk2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 99001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_99015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"talk2"为1
	if ScriptLib.GetGroupVariableValue(context, "talk2") ~= 1 then
			return false
	end
	
	-- 判断变量"talk1"为1
	if ScriptLib.GetGroupVariableValue(context, "talk1") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_99015(context, evt)
	-- 创建id为99010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 99001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 99002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_99017(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	-- 判断变量"talk1"为1
	if ScriptLib.GetGroupVariableValue(context, "talk1") ~= 1 then
			return false
	end
	
	-- 判断变量"talk2"为1
	if ScriptLib.GetGroupVariableValue(context, "talk2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_99017(context, evt)
	-- 创建id为99010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_99018(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_99018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002099, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end