-- 基础信息
local base_info = {
	group_id = 133105275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275001, monster_id = 21010201, pos = { x = 645.402, y = 206.286, z = -103.369 }, rot = { x = 9.686, y = 301.928, z = 2.885 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275002, monster_id = 21010401, pos = { x = 651.670, y = 210.991, z = -105.501 }, rot = { x = 3.056, y = 311.914, z = 357.937 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 9 },
	{ config_id = 275003, monster_id = 21010201, pos = { x = 684.939, y = 222.059, z = -145.578 }, rot = { x = 0.000, y = 286.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275004, monster_id = 21010201, pos = { x = 643.075, y = 206.106, z = -105.962 }, rot = { x = 8.747, y = 337.379, z = 0.204 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 9 },
	{ config_id = 275005, monster_id = 21010201, pos = { x = 684.059, y = 221.978, z = -142.140 }, rot = { x = 0.000, y = 257.820, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275006, monster_id = 21010201, pos = { x = 683.880, y = 222.573, z = -149.170 }, rot = { x = 0.000, y = 303.455, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275007, monster_id = 21020201, pos = { x = 713.671, y = 223.878, z = -196.331 }, rot = { x = 358.586, y = 341.621, z = 358.584 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275008, monster_id = 21010201, pos = { x = 717.785, y = 223.962, z = -195.888 }, rot = { x = 357.500, y = 306.023, z = 0.395 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275009, monster_id = 21010201, pos = { x = 710.752, y = 224.043, z = -197.296 }, rot = { x = 357.693, y = 339.304, z = 358.959 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 9 },
	{ config_id = 275010, monster_id = 21011201, pos = { x = 734.193, y = 222.525, z = -237.734 }, rot = { x = 1.988, y = 213.240, z = 0.233 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 9 },
	{ config_id = 275011, monster_id = 21011201, pos = { x = 731.459, y = 222.434, z = -238.027 }, rot = { x = 358.961, y = 144.528, z = 358.542 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 9 },
	{ config_id = 275012, monster_id = 21020301, pos = { x = 736.261, y = 223.190, z = -231.341 }, rot = { x = 358.224, y = 306.724, z = 5.358 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 275013, gadget_id = 70300092, pos = { x = 713.605, y = 226.142, z = -272.042 }, rot = { x = 12.632, y = 356.479, z = 4.472 }, level = 1, area_id = 9 },
	{ config_id = 275014, gadget_id = 70220005, pos = { x = 730.031, y = 222.272, z = -239.461 }, rot = { x = 358.984, y = 342.429, z = 7.225 }, level = 1, area_id = 9 },
	{ config_id = 275015, gadget_id = 70300104, pos = { x = 717.012, y = 227.846, z = -276.647 }, rot = { x = 339.793, y = 175.807, z = 357.993 }, level = 1, area_id = 9 },
	{ config_id = 275016, gadget_id = 70300094, pos = { x = 711.402, y = 226.684, z = -274.767 }, rot = { x = 358.203, y = 57.580, z = 13.601 }, level = 1, area_id = 9 },
	{ config_id = 275021, gadget_id = 70380019, pos = { x = 631.772, y = 203.062, z = -72.806 }, rot = { x = 0.000, y = 163.300, z = 0.000 }, level = 1, route_id = 310500086, start_route = false, persistent = true, area_id = 9 },
	{ config_id = 275022, gadget_id = 70360001, pos = { x = 631.772, y = 203.062, z = -72.806 }, rot = { x = 0.000, y = 297.514, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 275023, gadget_id = 70300091, pos = { x = 688.110, y = 222.028, z = -145.343 }, rot = { x = 0.000, y = 79.077, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 275025, gadget_id = 70710126, pos = { x = 718.497, y = 226.949, z = -272.685 }, rot = { x = 0.000, y = 359.958, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 275026, gadget_id = 70300083, pos = { x = 715.965, y = 223.300, z = -202.260 }, rot = { x = 358.809, y = 334.827, z = 359.571 }, level = 1, area_id = 9 },
	{ config_id = 275027, gadget_id = 70300101, pos = { x = 733.205, y = 221.903, z = -240.733 }, rot = { x = 358.666, y = 202.507, z = 354.212 }, level = 1, area_id = 9 },
	{ config_id = 275030, gadget_id = 70300083, pos = { x = 644.726, y = 206.334, z = -108.991 }, rot = { x = 347.065, y = 146.931, z = 357.323 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1275019, name = "PLATFORM_REACH_POINT_275019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275019", action = "action_EVENT_PLATFORM_REACH_POINT_275019", trigger_count = 0 },
	{ config_id = 1275020, name = "PLATFORM_REACH_POINT_275020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275020", action = "action_EVENT_PLATFORM_REACH_POINT_275020", trigger_count = 0 },
	{ config_id = 1275024, name = "PLATFORM_REACH_POINT_275024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275024", action = "action_EVENT_PLATFORM_REACH_POINT_275024", trigger_count = 0 },
	{ config_id = 1275037, name = "GADGET_CREATE_275037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_275037", action = "action_EVENT_GADGET_CREATE_275037", trigger_count = 0 },
	{ config_id = 1275038, name = "SELECT_OPTION_275038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_275038", action = "action_EVENT_SELECT_OPTION_275038" },
	{ config_id = 1275039, name = "CHALLENGE_SUCCESS_275039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_275039", trigger_count = 0 },
	{ config_id = 1275040, name = "PLATFORM_REACH_POINT_275040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275040", action = "action_EVENT_PLATFORM_REACH_POINT_275040", trigger_count = 0, tag = "888" },
	{ config_id = 1275041, name = "CHALLENGE_FAIL_275041", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_275041", trigger_count = 0 },
	{ config_id = 1275042, name = "ANY_GADGET_DIE_275042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275042", action = "action_EVENT_ANY_GADGET_DIE_275042" },
	{ config_id = 1275043, name = "PLATFORM_REACH_POINT_275043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275043", action = "action_EVENT_PLATFORM_REACH_POINT_275043", trigger_count = 0 },
	{ config_id = 1275044, name = "ANY_GADGET_DIE_275044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275044", action = "action_EVENT_ANY_GADGET_DIE_275044", trigger_count = 0 },
	{ config_id = 1275049, name = "PLATFORM_REACH_POINT_275049", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275049", action = "action_EVENT_PLATFORM_REACH_POINT_275049", trigger_count = 0 },
	{ config_id = 1275050, name = "PLATFORM_REACH_POINT_275050", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275050", action = "action_EVENT_PLATFORM_REACH_POINT_275050", trigger_count = 0 },
	{ config_id = 1275051, name = "PLATFORM_REACH_POINT_275051", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275051", action = "action_EVENT_PLATFORM_REACH_POINT_275051", trigger_count = 0 },
	{ config_id = 1275052, name = "PLATFORM_REACH_POINT_275052", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275052", action = "action_EVENT_PLATFORM_REACH_POINT_275052", trigger_count = 0 },
	{ config_id = 1275053, name = "ANY_GADGET_DIE_275053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275053", action = "action_EVENT_ANY_GADGET_DIE_275053", trigger_count = 0 },
	{ config_id = 1275054, name = "ANY_GADGET_DIE_275054", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275054", action = "action_EVENT_ANY_GADGET_DIE_275054", trigger_count = 0 },
	{ config_id = 1275055, name = "ANY_GADGET_DIE_275055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275055", action = "action_EVENT_ANY_GADGET_DIE_275055", trigger_count = 0 },
	{ config_id = 1275056, name = "ANY_GADGET_DIE_275056", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_275056", trigger_count = 0 },
	{ config_id = 1275057, name = "PLATFORM_REACH_POINT_275057", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275057", action = "action_EVENT_PLATFORM_REACH_POINT_275057", trigger_count = 0 },
	{ config_id = 1275058, name = "PLATFORM_REACH_POINT_275058", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275058", action = "action_EVENT_PLATFORM_REACH_POINT_275058", trigger_count = 0 },
	{ config_id = 1275059, name = "PLATFORM_REACH_POINT_275059", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275059", action = "action_EVENT_PLATFORM_REACH_POINT_275059", trigger_count = 0 },
	{ config_id = 1275060, name = "PLATFORM_REACH_POINT_275060", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275060", action = "action_EVENT_PLATFORM_REACH_POINT_275060", trigger_count = 0 },
	{ config_id = 1275061, name = "PLATFORM_REACH_POINT_275061", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_275061", action = "action_EVENT_PLATFORM_REACH_POINT_275061", trigger_count = 0 },
	{ config_id = 1275062, name = "VARIABLE_CHANGE_275062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275062", action = "action_EVENT_VARIABLE_CHANGE_275062", trigger_count = 0 },
	{ config_id = 1275063, name = "VARIABLE_CHANGE_275063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275063", action = "action_EVENT_VARIABLE_CHANGE_275063", trigger_count = 0 },
	{ config_id = 1275064, name = "VARIABLE_CHANGE_275064", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275064", action = "action_EVENT_VARIABLE_CHANGE_275064", trigger_count = 0 },
	{ config_id = 1275065, name = "VARIABLE_CHANGE_275065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275065", action = "action_EVENT_VARIABLE_CHANGE_275065", trigger_count = 0 },
	{ config_id = 1275066, name = "VARIABLE_CHANGE_275066", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275066", action = "action_EVENT_VARIABLE_CHANGE_275066", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 1, no_refresh = false },
	{ config_id = 4, name = "isObstacle4Available", value = 1, no_refresh = false },
	{ config_id = 5, name = "isObstacle5Available", value = 1, no_refresh = false },
	{ config_id = 6, name = "hasReachedObstacle1", value = 0, no_refresh = false },
	{ config_id = 7, name = "hasReachedObstacle2", value = 0, no_refresh = false },
	{ config_id = 8, name = "hasReachedObstacle3", value = 0, no_refresh = false },
	{ config_id = 9, name = "hasReachedObstacle4", value = 0, no_refresh = false },
	{ config_id = 10, name = "hasReachedObstacle5", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 13,
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
		gadgets = { 275013, 275015, 275016, 275021, 275022 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275019", "PLATFORM_REACH_POINT_275020", "PLATFORM_REACH_POINT_275024", "GADGET_CREATE_275037", "SELECT_OPTION_275038", "CHALLENGE_SUCCESS_275039", "CHALLENGE_FAIL_275041", "ANY_GADGET_DIE_275042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 全部Gadgets,
		monsters = { },
		gadgets = { 275014, 275023, 275025, 275026, 275027, 275030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 障碍物1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275043", "ANY_GADGET_DIE_275044", "PLATFORM_REACH_POINT_275061", "VARIABLE_CHANGE_275063" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 障碍物2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275049", "ANY_GADGET_DIE_275053", "PLATFORM_REACH_POINT_275057", "VARIABLE_CHANGE_275062" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 障碍物3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275050", "ANY_GADGET_DIE_275054", "PLATFORM_REACH_POINT_275058", "VARIABLE_CHANGE_275064" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 障碍物4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275051", "ANY_GADGET_DIE_275055", "PLATFORM_REACH_POINT_275059", "VARIABLE_CHANGE_275065" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 障碍物5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275052", "ANY_GADGET_DIE_275056", "PLATFORM_REACH_POINT_275060", "VARIABLE_CHANGE_275066" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 终点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_275040" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Monster1,
		monsters = { 275001, 275002, 275004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Monster2,
		monsters = { 275003, 275005, 275006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = Monster3,
		monsters = { 275007, 275008, 275009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = Monster4,
		monsters = { 275010, 275011, 275012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 事件完成空Suite,
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
function condition_EVENT_PLATFORM_REACH_POINT_275019(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 7 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275019(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275020(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 17 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275020(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275024(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 26 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 26 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275024(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 11)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_275037(context, evt)
	if 275022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_275037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105275, 275022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_275038(context, evt)
	-- 判断是gadgetid 275022 option_id 7
	if 275022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_275038(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105275, 9)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_275039(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 12)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105275, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275040(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 36 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275040(context, evt)
	-- 将configid为 275021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_275041(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133105275, EntityType.GADGET, 275021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105275, 12)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105275, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275042(context, evt)
	if 275021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275042(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105275, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275043(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 2 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275043(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275044(context, evt)
	if 275030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275044(context, evt)
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275049(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 12 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275049(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275050(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 22 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275050(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275051(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 28 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle4Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275051(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275052(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 19 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle5Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle5Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275052(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275053(context, evt)
	if 275023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275053(context, evt)
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275054(context, evt)
	if 275026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275054(context, evt)
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275055(context, evt)
	if 275027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275055(context, evt)
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275056(context, evt)
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275057(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 12 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275057(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275058(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 22 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275058(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275059(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 28 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275059(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275060(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 19 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275060(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_275061(context, evt)
	-- 判断是gadgetid 为 275021的移动平台，是否到达了310500086 的路线中的 2 点
	
	if 275021 ~= evt.param1 then
	  return false
	end
	
	if 310500086 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_275061(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedObstacle2"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedObstacle2") ~= 1 then
			return false
	end
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275062(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "hasReachedObstacle2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasReachedObstacle2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedObstacle1"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedObstacle1") ~= 1 then
			return false
	end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275063(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "hasReachedObstacle1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasReachedObstacle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275064(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedObstacle3"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedObstacle3") ~= 1 then
			return false
	end
	
	-- 判断变量"isObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275064(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "hasReachedObstacle3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasReachedObstacle3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275065(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedObstacle4"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedObstacle4") ~= 1 then
			return false
	end
	
	-- 判断变量"isObstacle4Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275065(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "hasReachedObstacle4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasReachedObstacle4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275066(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasReachedObstacle5"为1
	if ScriptLib.GetGroupVariableValue(context, "hasReachedObstacle5") ~= 1 then
			return false
	end
	
	-- 判断变量"isObstacle5Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle5Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275066(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 275021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "hasReachedObstacle5" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasReachedObstacle5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end