-- 基础信息
local base_info = {
	group_id = 133103466
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466001, monster_id = 21010401, pos = { x = 652.221, y = 191.380, z = 1245.696 }, rot = { x = 358.362, y = 228.881, z = 357.996 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466002, monster_id = 21010401, pos = { x = 636.392, y = 192.208, z = 1232.112 }, rot = { x = 356.491, y = 148.082, z = 1.131 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 6 },
	{ config_id = 466003, monster_id = 21010401, pos = { x = 636.291, y = 197.468, z = 1277.238 }, rot = { x = 0.000, y = 116.157, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466004, monster_id = 21010401, pos = { x = 631.664, y = 205.430, z = 1292.182 }, rot = { x = 0.000, y = 140.798, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466005, monster_id = 21010201, pos = { x = 635.533, y = 205.964, z = 1295.070 }, rot = { x = 359.530, y = 154.689, z = 3.190 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 6 },
	{ config_id = 466006, monster_id = 21010401, pos = { x = 640.420, y = 206.261, z = 1295.580 }, rot = { x = 0.000, y = 140.798, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466007, monster_id = 21010401, pos = { x = 666.617, y = 218.877, z = 1329.008 }, rot = { x = 11.714, y = 187.008, z = 358.780 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466008, monster_id = 21010201, pos = { x = 667.893, y = 212.115, z = 1324.144 }, rot = { x = 16.191, y = 199.458, z = 3.815 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466009, monster_id = 21010201, pos = { x = 669.509, y = 211.451, z = 1320.932 }, rot = { x = 11.045, y = 250.783, z = 10.029 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466010, monster_id = 21010401, pos = { x = 711.803, y = 226.854, z = 1330.217 }, rot = { x = 0.000, y = 296.305, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 402, area_id = 6 },
	{ config_id = 466011, monster_id = 21010201, pos = { x = 712.921, y = 221.742, z = 1335.671 }, rot = { x = 344.302, y = 66.829, z = 354.464 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 },
	{ config_id = 466012, monster_id = 21010201, pos = { x = 714.088, y = 222.076, z = 1338.960 }, rot = { x = 356.389, y = 163.750, z = 350.891 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 },
	{ config_id = 466015, monster_id = 21010401, pos = { x = 676.284, y = 217.626, z = 1321.124 }, rot = { x = 6.248, y = 251.316, z = 10.002 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 466016, monster_id = 21010201, pos = { x = 716.239, y = 222.186, z = 1333.650 }, rot = { x = 358.518, y = 13.813, z = 9.681 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 466013, gadget_id = 70300090, pos = { x = 676.658, y = 211.942, z = 1321.432 }, rot = { x = 0.000, y = 62.355, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466014, gadget_id = 70300090, pos = { x = 666.729, y = 213.082, z = 1329.930 }, rot = { x = 0.000, y = 22.083, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466017, gadget_id = 70300105, pos = { x = 742.633, y = 228.113, z = 1332.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466018, gadget_id = 70220011, pos = { x = 648.448, y = 196.094, z = 1252.135 }, rot = { x = 0.000, y = 198.339, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466019, gadget_id = 70690006, pos = { x = 648.120, y = 195.664, z = 1252.194 }, rot = { x = 0.000, y = 190.007, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 466020, gadget_id = 70690013, pos = { x = 644.299, y = 199.779, z = 1286.687 }, rot = { x = 0.000, y = 190.007, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466021, gadget_id = 70380019, pos = { x = 636.300, y = 189.100, z = 1203.000 }, rot = { x = 0.000, y = 9.939, z = 0.000 }, level = 1, route_id = 310300170, start_route = false, persistent = true, area_id = 6 },
	{ config_id = 466022, gadget_id = 70360001, pos = { x = 636.300, y = 189.100, z = 1203.000 }, rot = { x = 0.000, y = 297.514, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466023, gadget_id = 70360046, pos = { x = 652.172, y = 190.509, z = 1245.948 }, rot = { x = 0.000, y = 77.305, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466025, gadget_id = 70710126, pos = { x = 738.085, y = 227.587, z = 1327.339 }, rot = { x = 0.000, y = 1.822, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466026, gadget_id = 70360046, pos = { x = 636.668, y = 191.330, z = 1232.523 }, rot = { x = 0.000, y = 79.396, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466027, gadget_id = 70360046, pos = { x = 636.074, y = 196.604, z = 1277.180 }, rot = { x = 0.000, y = 267.942, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466028, gadget_id = 70300083, pos = { x = 634.157, y = 205.864, z = 1298.012 }, rot = { x = 6.164, y = 168.641, z = 355.334 }, level = 1, area_id = 6 },
	{ config_id = 466029, gadget_id = 70300101, pos = { x = 715.380, y = 221.598, z = 1336.627 }, rot = { x = 0.000, y = 246.688, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466030, gadget_id = 70360046, pos = { x = 738.371, y = 227.330, z = 1303.693 }, rot = { x = 359.009, y = 5.079, z = 3.390 }, level = 1, area_id = 6 },
	{ config_id = 466031, gadget_id = 70300090, pos = { x = 712.401, y = 221.215, z = 1330.062 }, rot = { x = 0.000, y = 111.527, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466032, gadget_id = 70300083, pos = { x = 671.907, y = 212.477, z = 1326.212 }, rot = { x = 8.919, y = 224.017, z = 7.314 }, level = 1, area_id = 6 },
	{ config_id = 466033, gadget_id = 70300094, pos = { x = 739.671, y = 227.649, z = 1330.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 466064, gadget_id = 70300092, pos = { x = 738.610, y = 227.555, z = 1334.239 }, rot = { x = 0.000, y = 227.600, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1466034, name = "GADGET_CREATE_466034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_466034", action = "action_EVENT_GADGET_CREATE_466034", trigger_count = 0 },
	{ config_id = 1466035, name = "SELECT_OPTION_466035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_466035", action = "action_EVENT_SELECT_OPTION_466035" },
	{ config_id = 1466036, name = "CHALLENGE_SUCCESS_466036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_466036", trigger_count = 0 },
	{ config_id = 1466037, name = "PLATFORM_REACH_POINT_466037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466037", action = "action_EVENT_PLATFORM_REACH_POINT_466037", trigger_count = 0, tag = "888" },
	{ config_id = 1466038, name = "CHALLENGE_FAIL_466038", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_466038", trigger_count = 0 },
	{ config_id = 1466039, name = "ANY_GADGET_DIE_466039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466039", action = "action_EVENT_ANY_GADGET_DIE_466039" },
	{ config_id = 1466040, name = "PLATFORM_REACH_POINT_466040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466040", action = "action_EVENT_PLATFORM_REACH_POINT_466040", trigger_count = 0 },
	{ config_id = 1466041, name = "ANY_GADGET_DIE_466041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466041", action = "action_EVENT_ANY_GADGET_DIE_466041", trigger_count = 0 },
	{ config_id = 1466042, name = "PLATFORM_REACH_POINT_466042", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466042", action = "action_EVENT_PLATFORM_REACH_POINT_466042", trigger_count = 0 },
	{ config_id = 1466043, name = "PLATFORM_REACH_POINT_466043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466043", action = "action_EVENT_PLATFORM_REACH_POINT_466043", trigger_count = 0 },
	{ config_id = 1466044, name = "PLATFORM_REACH_POINT_466044", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466044", action = "action_EVENT_PLATFORM_REACH_POINT_466044", trigger_count = 0 },
	{ config_id = 1466045, name = "PLATFORM_REACH_POINT_466045", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466045", action = "action_EVENT_PLATFORM_REACH_POINT_466045", trigger_count = 0 },
	{ config_id = 1466046, name = "PLATFORM_REACH_POINT_466046", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466046", action = "action_EVENT_PLATFORM_REACH_POINT_466046", trigger_count = 0 },
	{ config_id = 1466047, name = "PLATFORM_REACH_POINT_466047", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466047", action = "action_EVENT_PLATFORM_REACH_POINT_466047", trigger_count = 0 },
	{ config_id = 1466048, name = "PLATFORM_REACH_POINT_466048", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466048", action = "action_EVENT_PLATFORM_REACH_POINT_466048", trigger_count = 0 },
	{ config_id = 1466049, name = "PLATFORM_REACH_POINT_466049", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466049", action = "action_EVENT_PLATFORM_REACH_POINT_466049", trigger_count = 0 },
	{ config_id = 1466050, name = "ANY_GADGET_DIE_466050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466050", action = "action_EVENT_ANY_GADGET_DIE_466050", trigger_count = 0 },
	{ config_id = 1466051, name = "ANY_GADGET_DIE_466051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466051", action = "action_EVENT_ANY_GADGET_DIE_466051", trigger_count = 0 },
	{ config_id = 1466052, name = "ANY_GADGET_DIE_466052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466052", action = "action_EVENT_ANY_GADGET_DIE_466052", trigger_count = 0 },
	{ config_id = 1466053, name = "ANY_GADGET_DIE_466053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_466053", action = "action_EVENT_ANY_GADGET_DIE_466053", trigger_count = 0 },
	{ config_id = 1466054, name = "PLATFORM_REACH_POINT_466054", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466054", action = "action_EVENT_PLATFORM_REACH_POINT_466054", trigger_count = 0 },
	{ config_id = 1466055, name = "PLATFORM_REACH_POINT_466055", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466055", action = "action_EVENT_PLATFORM_REACH_POINT_466055", trigger_count = 0 },
	{ config_id = 1466056, name = "PLATFORM_REACH_POINT_466056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466056", action = "action_EVENT_PLATFORM_REACH_POINT_466056", trigger_count = 0 },
	{ config_id = 1466057, name = "PLATFORM_REACH_POINT_466057", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466057", action = "action_EVENT_PLATFORM_REACH_POINT_466057", trigger_count = 0 },
	{ config_id = 1466058, name = "PLATFORM_REACH_POINT_466058", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_466058", action = "action_EVENT_PLATFORM_REACH_POINT_466058", trigger_count = 0 },
	{ config_id = 1466059, name = "VARIABLE_CHANGE_466059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_466059", action = "action_EVENT_VARIABLE_CHANGE_466059", trigger_count = 0 },
	{ config_id = 1466060, name = "VARIABLE_CHANGE_466060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_466060", action = "action_EVENT_VARIABLE_CHANGE_466060", trigger_count = 0 },
	{ config_id = 1466061, name = "VARIABLE_CHANGE_466061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_466061", action = "action_EVENT_VARIABLE_CHANGE_466061", trigger_count = 0 },
	{ config_id = 1466062, name = "VARIABLE_CHANGE_466062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_466062", action = "action_EVENT_VARIABLE_CHANGE_466062", trigger_count = 0 },
	{ config_id = 1466063, name = "VARIABLE_CHANGE_466063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_466063", action = "action_EVENT_VARIABLE_CHANGE_466063", trigger_count = 0 }
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
		gadgets = { 466017, 466021, 466022, 466033, 466064 },
		regions = { },
		triggers = { "GADGET_CREATE_466034", "SELECT_OPTION_466035", "CHALLENGE_SUCCESS_466036", "CHALLENGE_FAIL_466038", "ANY_GADGET_DIE_466039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 全部Gadgets,
		monsters = { },
		gadgets = { 466013, 466014, 466018, 466020, 466023, 466025, 466026, 466027, 466028, 466029, 466030, 466031, 466032 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466042", "PLATFORM_REACH_POINT_466043", "PLATFORM_REACH_POINT_466044", "PLATFORM_REACH_POINT_466045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 障碍物1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466040", "ANY_GADGET_DIE_466041", "PLATFORM_REACH_POINT_466058", "VARIABLE_CHANGE_466060" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 障碍物2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466046", "ANY_GADGET_DIE_466050", "PLATFORM_REACH_POINT_466054", "VARIABLE_CHANGE_466059" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 障碍物3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466047", "ANY_GADGET_DIE_466051", "PLATFORM_REACH_POINT_466055", "VARIABLE_CHANGE_466061" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 障碍物4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466048", "ANY_GADGET_DIE_466052", "PLATFORM_REACH_POINT_466056", "VARIABLE_CHANGE_466062" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 障碍物5,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466049", "ANY_GADGET_DIE_466053", "PLATFORM_REACH_POINT_466057", "VARIABLE_CHANGE_466063" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 终点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_466037" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Monster1,
		monsters = { 466001, 466002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Monster2,
		monsters = { 466003, 466004, 466005, 466006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = Monster3,
		monsters = { 466007, 466008, 466009, 466015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = Monster4,
		monsters = { 466010, 466011, 466012, 466016 },
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
function condition_EVENT_GADGET_CREATE_466034(context, evt)
	if 466022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_466034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103466, 466022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_466035(context, evt)
	-- 判断是gadgetid 466022 option_id 7
	if 466022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_466035(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 9)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_466036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 12)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103466, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466037(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 36 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466037(context, evt)
	-- 将configid为 466021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_466038(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103466, EntityType.GADGET, 466021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 466019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 11)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 12)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103466, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466039(context, evt)
	if 466021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466039(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103466, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466040(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 7 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466040(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466041(context, evt)
	if 466018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466041(context, evt)
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为466019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 466019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466042(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 9 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466042(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466043(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 11 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 11 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466043(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466044(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 21 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466044(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466045(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 26 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 26 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466045(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103466, 11)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103466, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466046(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 16 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466046(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466047(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 23 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 23 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466047(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466048(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 30 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle4Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466048(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466049(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 30 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle5Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle5Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466049(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 466021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466050(context, evt)
	if 466028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466050(context, evt)
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466051(context, evt)
	if 466032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466051(context, evt)
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466052(context, evt)
	if 466029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466052(context, evt)
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_466053(context, evt)
	if 466033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_466053(context, evt)
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466054(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 16 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466054(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466055(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 23 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 23 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466055(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466056(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 30 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466056(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466057(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 30 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466057(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_466058(context, evt)
	-- 判断是gadgetid 为 466021的移动平台，是否到达了310300170 的路线中的 7 点
	
	if 466021 ~= evt.param1 then
	  return false
	end
	
	if 310300170 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_466058(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_466059(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_466059(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
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
function condition_EVENT_VARIABLE_CHANGE_466060(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_466060(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
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
function condition_EVENT_VARIABLE_CHANGE_466061(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_466061(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
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
function condition_EVENT_VARIABLE_CHANGE_466062(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_466062(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
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
function condition_EVENT_VARIABLE_CHANGE_466063(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_466063(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 466021) then
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