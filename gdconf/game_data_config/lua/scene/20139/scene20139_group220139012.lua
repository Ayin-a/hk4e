-- 基础信息
local base_info = {
	group_id = 220139012
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
	{ config_id = 12001, gadget_id = 70310362, pos = { x = -23.596, y = 38.090, z = 167.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	{ config_id = 12004, gadget_id = 70310251, pos = { x = -24.027, y = 84.892, z = 90.693 }, rot = { x = 0.000, y = 176.265, z = 0.000 }, level = 1, persistent = true, arguments = { 12 } },
	{ config_id = 12005, gadget_id = 70310339, pos = { x = -24.371, y = 79.306, z = 167.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12006, gadget_id = 70310441, pos = { x = -24.380, y = 78.915, z = 167.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12009, gadget_id = 70310251, pos = { x = 35.983, y = 61.436, z = 157.403 }, rot = { x = 0.000, y = 99.939, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 13 } },
	{ config_id = 12010, gadget_id = 70310441, pos = { x = -24.230, y = 9.006, z = 168.519 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, persistent = true },
	{ config_id = 12011, gadget_id = 70310347, pos = { x = -23.071, y = 71.804, z = 167.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	{ config_id = 12014, gadget_id = 70310442, pos = { x = -14.363, y = 21.663, z = 156.111 }, rot = { x = 0.000, y = 55.556, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 14 } },
	{ config_id = 12015, gadget_id = 70310282, pos = { x = 47.247, y = 84.809, z = 168.905 }, rot = { x = 89.366, y = 0.003, z = 90.003 }, level = 1, persistent = true },
	{ config_id = 12016, gadget_id = 70310376, pos = { x = 44.255, y = 83.386, z = 168.830 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012002, name = "GADGET_STATE_CHANGE_12002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12002", action = "action_EVENT_GADGET_STATE_CHANGE_12002" },
	{ config_id = 1012003, name = "GADGET_STATE_CHANGE_12003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12003", action = "action_EVENT_GADGET_STATE_CHANGE_12003" },
	{ config_id = 1012007, name = "OBSERVATION_POINT_NOTIFY_12007", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12007", trigger_count = 0 },
	{ config_id = 1012008, name = "OBSERVATION_POINT_NOTIFY_12008", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12008", trigger_count = 0 },
	{ config_id = 1012012, name = "OBSERVATION_POINT_NOTIFY_12012", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12012", trigger_count = 0 },
	{ config_id = 1012013, name = "OBSERVATION_POINT_NOTIFY_12013", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12013", trigger_count = 0 },
	{ config_id = 1012017, name = "OBSERVATION_POINT_NOTIFY_12017", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12017", trigger_count = 0 },
	{ config_id = 1012018, name = "GADGET_STATE_CHANGE_12018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12018", action = "action_EVENT_GADGET_STATE_CHANGE_12018" },
	{ config_id = 1012019, name = "GROUP_LOAD_12019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12019", action = "action_EVENT_GROUP_LOAD_12019", trigger_count = 0 },
	{ config_id = 1012020, name = "GROUP_LOAD_12020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12020", action = "action_EVENT_GROUP_LOAD_12020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "roa1", value = 0, no_refresh = false },
	{ config_id = 2, name = "roa2", value = 0, no_refresh = false }
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
		gadgets = { 12001, 12004, 12005, 12006, 12009, 12010, 12011, 12014, 12015, 12016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12002", "GADGET_STATE_CHANGE_12003", "OBSERVATION_POINT_NOTIFY_12007", "OBSERVATION_POINT_NOTIFY_12008", "OBSERVATION_POINT_NOTIFY_12012", "OBSERVATION_POINT_NOTIFY_12013", "OBSERVATION_POINT_NOTIFY_12017", "GADGET_STATE_CHANGE_12018", "GROUP_LOAD_12019", "GROUP_LOAD_12020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 12001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12001, 1, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 12001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12001, 1, {3,4,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12007(context, evt)
	if 12004 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,12005, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,12004, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,12009, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,12006, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12008(context, evt)
	if 12004 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139012, 12001, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12012(context, evt)
	if 12009 == evt.param1 and 305 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,12011, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,12009, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,12014, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,12010, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12013(context, evt)
	if 12009 == evt.param1 and 305 == evt.param2 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139012, 12001, GadgetState.GearStop)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12017(context, evt)
	if 12014 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,12016, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,12014, 405)
		
		ScriptLib.SetGadgetStateByConfigId(context,12015, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12018(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 12001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12001, 1, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220139012, 12001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12001, 1, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12020(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220139012, 12001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12020(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 12001, 1, {3,4,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end