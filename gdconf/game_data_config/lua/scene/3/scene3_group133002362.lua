-- 基础信息
local base_info = {
	group_id = 133002362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 21010201, pos = { x = 1715.209, y = 204.760, z = 91.845 }, rot = { x = 0.000, y = 88.003, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362002, monster_id = 21010201, pos = { x = 1761.452, y = 201.440, z = 81.099 }, rot = { x = 0.000, y = 147.595, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 362004, monster_id = 21010401, pos = { x = 1754.535, y = 208.088, z = 80.692 }, rot = { x = 354.591, y = 120.043, z = 356.880 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 362006, monster_id = 21010201, pos = { x = 1716.206, y = 204.782, z = 86.792 }, rot = { x = 0.000, y = 52.345, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362007, monster_id = 21010301, pos = { x = 1683.048, y = 204.546, z = 87.625 }, rot = { x = 359.109, y = 84.775, z = 0.082 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362008, monster_id = 21010201, pos = { x = 1712.056, y = 204.676, z = 88.938 }, rot = { x = 357.547, y = 59.206, z = 359.379 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362009, monster_id = 21010301, pos = { x = 1681.293, y = 204.487, z = 89.434 }, rot = { x = 359.699, y = 148.753, z = 1.230 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362010, monster_id = 21010101, pos = { x = 1678.931, y = 204.551, z = 83.477 }, rot = { x = 358.914, y = 59.408, z = 355.742 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362011, monster_id = 21010101, pos = { x = 1681.478, y = 204.502, z = 85.604 }, rot = { x = 0.088, y = 109.021, z = 359.961 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362012, monster_id = 21010201, pos = { x = 1639.755, y = 204.527, z = 98.317 }, rot = { x = 0.070, y = 350.225, z = 359.962 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362013, monster_id = 21010201, pos = { x = 1642.862, y = 204.216, z = 103.150 }, rot = { x = 359.266, y = 224.485, z = 351.801 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 362014, monster_id = 21020201, pos = { x = 1638.506, y = 204.752, z = 94.554 }, rot = { x = 0.048, y = 71.630, z = 0.064 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362005, gadget_id = 70220005, pos = { x = 1678.047, y = 204.543, z = 88.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 362021, gadget_id = 70380019, pos = { x = 1771.413, y = 200.632, z = 49.456 }, rot = { x = 0.000, y = 327.312, z = 0.000 }, level = 1, route_id = 300200239, start_route = false, persistent = true, area_id = 5 },
	{ config_id = 362022, gadget_id = 70360001, pos = { x = 1771.422, y = 200.632, z = 49.451 }, rot = { x = 1.023, y = 327.312, z = 358.280 }, level = 1, area_id = 5 },
	{ config_id = 362023, gadget_id = 70300083, pos = { x = 1758.969, y = 201.284, z = 83.675 }, rot = { x = 0.102, y = 159.507, z = 2.827 }, level = 1, area_id = 5 },
	{ config_id = 362024, gadget_id = 70300094, pos = { x = 1627.338, y = 208.135, z = 117.843 }, rot = { x = 355.640, y = 0.532, z = 348.510 }, level = 1, area_id = 5 },
	{ config_id = 362025, gadget_id = 70710126, pos = { x = 1628.490, y = 207.264, z = 122.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 362026, gadget_id = 70300083, pos = { x = 1709.610, y = 204.306, z = 88.125 }, rot = { x = 1.738, y = 76.597, z = 359.535 }, level = 1, area_id = 5 },
	{ config_id = 362027, gadget_id = 70300083, pos = { x = 1675.919, y = 204.267, z = 86.593 }, rot = { x = 359.981, y = 100.366, z = 0.074 }, level = 1, area_id = 5 },
	{ config_id = 362028, gadget_id = 70220013, pos = { x = 1675.794, y = 204.520, z = 82.341 }, rot = { x = 0.073, y = 13.555, z = 0.023 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 362029, gadget_id = 70220013, pos = { x = 1677.553, y = 204.581, z = 90.620 }, rot = { x = 0.065, y = 27.005, z = 0.040 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 362030, gadget_id = 70300101, pos = { x = 1640.741, y = 203.831, z = 100.973 }, rot = { x = 0.000, y = 5.079, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 362033, gadget_id = 70300090, pos = { x = 1753.669, y = 202.404, z = 80.339 }, rot = { x = 0.000, y = 300.555, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 362042, gadget_id = 70300092, pos = { x = 1625.573, y = 208.513, z = 119.315 }, rot = { x = 0.155, y = 78.657, z = 2.502 }, level = 1, area_id = 5 },
	{ config_id = 362043, gadget_id = 70300094, pos = { x = 1626.187, y = 208.338, z = 121.501 }, rot = { x = 346.396, y = 298.566, z = 355.644 }, level = 1, area_id = 5 },
	{ config_id = 362044, gadget_id = 70220013, pos = { x = 1711.076, y = 204.554, z = 83.342 }, rot = { x = 0.073, y = 337.858, z = 359.977 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 362045, gadget_id = 70220013, pos = { x = 1708.865, y = 204.545, z = 92.716 }, rot = { x = 359.760, y = 353.900, z = 358.217 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1362003, name = "PLATFORM_REACH_POINT_362003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362003", action = "action_EVENT_PLATFORM_REACH_POINT_362003", trigger_count = 0 },
	{ config_id = 1362015, name = "PLATFORM_REACH_POINT_362015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362015", action = "action_EVENT_PLATFORM_REACH_POINT_362015", trigger_count = 0 },
	{ config_id = 1362016, name = "PLATFORM_REACH_POINT_362016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362016", action = "action_EVENT_PLATFORM_REACH_POINT_362016", trigger_count = 0 },
	{ config_id = 1362034, name = "GADGET_CREATE_362034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_362034", action = "action_EVENT_GADGET_CREATE_362034", trigger_count = 0 },
	{ config_id = 1362035, name = "SELECT_OPTION_362035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_362035", action = "action_EVENT_SELECT_OPTION_362035" },
	{ config_id = 1362036, name = "CHALLENGE_SUCCESS_362036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_362036", trigger_count = 0 },
	{ config_id = 1362037, name = "PLATFORM_REACH_POINT_362037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362037", action = "action_EVENT_PLATFORM_REACH_POINT_362037", trigger_count = 0, tag = "888" },
	{ config_id = 1362038, name = "CHALLENGE_FAIL_362038", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_362038", trigger_count = 0 },
	{ config_id = 1362039, name = "ANY_GADGET_DIE_362039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362039", action = "action_EVENT_ANY_GADGET_DIE_362039" },
	{ config_id = 1362040, name = "PLATFORM_REACH_POINT_362040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362040", action = "action_EVENT_PLATFORM_REACH_POINT_362040", trigger_count = 0 },
	{ config_id = 1362041, name = "ANY_GADGET_DIE_362041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362041", action = "action_EVENT_ANY_GADGET_DIE_362041", trigger_count = 0 },
	{ config_id = 1362046, name = "PLATFORM_REACH_POINT_362046", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362046", action = "action_EVENT_PLATFORM_REACH_POINT_362046", trigger_count = 0 },
	{ config_id = 1362047, name = "PLATFORM_REACH_POINT_362047", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362047", action = "action_EVENT_PLATFORM_REACH_POINT_362047", trigger_count = 0 },
	{ config_id = 1362048, name = "PLATFORM_REACH_POINT_362048", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362048", action = "action_EVENT_PLATFORM_REACH_POINT_362048", trigger_count = 0 },
	{ config_id = 1362049, name = "PLATFORM_REACH_POINT_362049", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362049", action = "action_EVENT_PLATFORM_REACH_POINT_362049", trigger_count = 0 },
	{ config_id = 1362050, name = "ANY_GADGET_DIE_362050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362050", action = "action_EVENT_ANY_GADGET_DIE_362050", trigger_count = 0 },
	{ config_id = 1362051, name = "ANY_GADGET_DIE_362051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362051", action = "action_EVENT_ANY_GADGET_DIE_362051", trigger_count = 0 },
	{ config_id = 1362052, name = "ANY_GADGET_DIE_362052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362052", action = "action_EVENT_ANY_GADGET_DIE_362052", trigger_count = 0 },
	{ config_id = 1362053, name = "ANY_GADGET_DIE_362053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362053", action = "action_EVENT_ANY_GADGET_DIE_362053", trigger_count = 0 },
	{ config_id = 1362054, name = "PLATFORM_REACH_POINT_362054", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362054", action = "action_EVENT_PLATFORM_REACH_POINT_362054", trigger_count = 0 },
	{ config_id = 1362055, name = "PLATFORM_REACH_POINT_362055", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362055", action = "action_EVENT_PLATFORM_REACH_POINT_362055", trigger_count = 0 },
	{ config_id = 1362056, name = "PLATFORM_REACH_POINT_362056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362056", action = "action_EVENT_PLATFORM_REACH_POINT_362056", trigger_count = 0 },
	{ config_id = 1362057, name = "PLATFORM_REACH_POINT_362057", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362057", action = "action_EVENT_PLATFORM_REACH_POINT_362057", trigger_count = 0 },
	{ config_id = 1362058, name = "PLATFORM_REACH_POINT_362058", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_362058", action = "action_EVENT_PLATFORM_REACH_POINT_362058", trigger_count = 0 },
	{ config_id = 1362059, name = "VARIABLE_CHANGE_362059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_362059", action = "action_EVENT_VARIABLE_CHANGE_362059", trigger_count = 0 },
	{ config_id = 1362060, name = "VARIABLE_CHANGE_362060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_362060", action = "action_EVENT_VARIABLE_CHANGE_362060", trigger_count = 0 },
	{ config_id = 1362061, name = "VARIABLE_CHANGE_362061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_362061", action = "action_EVENT_VARIABLE_CHANGE_362061", trigger_count = 0 },
	{ config_id = 1362062, name = "VARIABLE_CHANGE_362062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_362062", action = "action_EVENT_VARIABLE_CHANGE_362062", trigger_count = 0 },
	{ config_id = 1362063, name = "VARIABLE_CHANGE_362063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_362063", action = "action_EVENT_VARIABLE_CHANGE_362063", trigger_count = 0 }
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
	end_suite = 9,
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
		gadgets = { 362021, 362022, 362024, 362042, 362043 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362003", "PLATFORM_REACH_POINT_362015", "PLATFORM_REACH_POINT_362016", "GADGET_CREATE_362034", "SELECT_OPTION_362035", "CHALLENGE_SUCCESS_362036", "CHALLENGE_FAIL_362038", "ANY_GADGET_DIE_362039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 全部Gadgets,
		monsters = { },
		gadgets = { 362005, 362023, 362025, 362026, 362027, 362028, 362029, 362030, 362033, 362044, 362045 },
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
		triggers = { "PLATFORM_REACH_POINT_362040", "ANY_GADGET_DIE_362041", "PLATFORM_REACH_POINT_362058", "VARIABLE_CHANGE_362060" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 障碍物2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362046", "ANY_GADGET_DIE_362050", "PLATFORM_REACH_POINT_362054", "VARIABLE_CHANGE_362059" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 障碍物3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362047", "ANY_GADGET_DIE_362051", "PLATFORM_REACH_POINT_362055", "VARIABLE_CHANGE_362061" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 障碍物4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362048", "ANY_GADGET_DIE_362052", "PLATFORM_REACH_POINT_362056", "VARIABLE_CHANGE_362062" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 障碍物5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362049", "ANY_GADGET_DIE_362053", "PLATFORM_REACH_POINT_362057", "VARIABLE_CHANGE_362063" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 终点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_362037" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 事件完成空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Monster1,
		monsters = { 362002, 362004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = Monster2,
		monsters = { 362001, 362006, 362008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = Monster3,
		monsters = { 362007, 362009, 362010, 362011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = Monster4,
		monsters = { 362012, 362013, 362014 },
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
function condition_EVENT_PLATFORM_REACH_POINT_362003(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 9 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362003(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362015(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 21 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362015(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 11)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362016(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 25 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362016(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 12)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_362034(context, evt)
	if 362022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_362034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002362, 362022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_362035(context, evt)
	-- 判断是gadgetid 362022 option_id 7
	if 362022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_362035(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 362022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 8)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002362, 10)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_362036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 8)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 13)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133002362, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362037(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 32 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362037(context, evt)
	-- 将configid为 362021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_362038(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133002362, EntityType.GADGET, 362021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 8)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002362, 13)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002362, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362039(context, evt)
	if 362021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362039(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002362, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362040(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 6 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362040(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362041(context, evt)
	if 362023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362041(context, evt)
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362046(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 20 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362046(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362047(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 24 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362047(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362048(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 28 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_362048(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362049(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 40 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 40 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle5Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle5Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362049(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 362021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362050(context, evt)
	if 362026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362050(context, evt)
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362051(context, evt)
	if 362027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362051(context, evt)
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362052(context, evt)
	if 362030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362052(context, evt)
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362053(context, evt)
	if 362031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362053(context, evt)
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362054(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 20 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362054(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362055(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 24 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362055(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362056(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 28 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362056(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362057(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 40 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 40 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362057(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_362058(context, evt)
	-- 判断是gadgetid 为 362021的移动平台，是否到达了300200239 的路线中的 6 点
	
	if 362021 ~= evt.param1 then
	  return false
	end
	
	if 300200239 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_362058(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_362059(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_362059(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
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
function condition_EVENT_VARIABLE_CHANGE_362060(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_362060(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
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
function condition_EVENT_VARIABLE_CHANGE_362061(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_362061(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
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
function condition_EVENT_VARIABLE_CHANGE_362062(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_362062(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
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
function condition_EVENT_VARIABLE_CHANGE_362063(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_362063(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 362021) then
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