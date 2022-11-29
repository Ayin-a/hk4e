-- 基础信息
local base_info = {
	group_id = 133101183
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183001, monster_id = 21010401, pos = { x = 1199.580, y = 253.939, z = 1180.056 }, rot = { x = 358.747, y = 143.292, z = 359.817 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 183002, monster_id = 21010401, pos = { x = 1207.286, y = 253.835, z = 1179.128 }, rot = { x = 4.132, y = 216.265, z = 1.920 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 6 },
	{ config_id = 183006, monster_id = 21010101, pos = { x = 1174.683, y = 252.141, z = 1211.613 }, rot = { x = 6.168, y = 348.293, z = 342.063 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 183007, monster_id = 21010101, pos = { x = 1176.939, y = 251.949, z = 1213.942 }, rot = { x = 358.521, y = 285.176, z = 8.802 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 183008, monster_id = 21010401, pos = { x = 1172.821, y = 261.640, z = 1257.953 }, rot = { x = 0.303, y = 147.222, z = 357.222 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 6 },
	{ config_id = 183009, monster_id = 21010401, pos = { x = 1181.896, y = 262.168, z = 1255.978 }, rot = { x = 358.734, y = 223.668, z = 0.029 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9003, area_id = 6 },
	{ config_id = 183010, monster_id = 21010101, pos = { x = 1179.150, y = 256.432, z = 1253.171 }, rot = { x = 3.869, y = 194.929, z = 1.905 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 183011, monster_id = 21010101, pos = { x = 1174.598, y = 255.927, z = 1253.075 }, rot = { x = 359.217, y = 170.225, z = 354.060 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 6 },
	{ config_id = 183012, monster_id = 21010201, pos = { x = 1153.426, y = 263.697, z = 1287.776 }, rot = { x = 352.039, y = 323.298, z = 345.239 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 },
	{ config_id = 183013, monster_id = 21010201, pos = { x = 1146.267, y = 265.268, z = 1294.933 }, rot = { x = 9.073, y = 58.389, z = 354.457 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 },
	{ config_id = 183014, monster_id = 21010201, pos = { x = 1154.109, y = 264.091, z = 1290.081 }, rot = { x = 347.297, y = 274.959, z = 353.673 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 },
	{ config_id = 183015, monster_id = 21010201, pos = { x = 1149.015, y = 264.716, z = 1293.334 }, rot = { x = 359.136, y = 355.388, z = 349.415 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 9011, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 183003, gadget_id = 70220005, pos = { x = 1171.008, y = 252.915, z = 1213.245 }, rot = { x = 356.505, y = 267.859, z = 0.461 }, level = 1, area_id = 6 },
	{ config_id = 183004, gadget_id = 70220005, pos = { x = 1176.010, y = 252.211, z = 1216.715 }, rot = { x = 356.505, y = 267.859, z = 0.461 }, level = 1, area_id = 6 },
	{ config_id = 183005, gadget_id = 70220005, pos = { x = 1173.582, y = 256.441, z = 1256.057 }, rot = { x = 356.505, y = 267.859, z = 0.461 }, level = 1, area_id = 6 },
	{ config_id = 183016, gadget_id = 70300094, pos = { x = 1138.578, y = 271.116, z = 1310.473 }, rot = { x = 341.315, y = 3.242, z = 348.491 }, level = 1, area_id = 6 },
	{ config_id = 183017, gadget_id = 70300092, pos = { x = 1130.438, y = 269.745, z = 1307.041 }, rot = { x = 345.417, y = 2.717, z = 353.275 }, level = 1, area_id = 6 },
	{ config_id = 183018, gadget_id = 70300104, pos = { x = 1138.714, y = 271.525, z = 1313.057 }, rot = { x = 353.279, y = 1.337, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183021, gadget_id = 70380019, pos = { x = 1191.397, y = 243.894, z = 1149.421 }, rot = { x = 0.000, y = 25.163, z = 0.000 }, level = 1, route_id = 310100120, start_route = false, persistent = true, area_id = 6 },
	{ config_id = 183022, gadget_id = 70360001, pos = { x = 1191.400, y = 245.000, z = 1149.400 }, rot = { x = 0.000, y = 297.514, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183023, gadget_id = 70300083, pos = { x = 1203.686, y = 247.969, z = 1180.541 }, rot = { x = 359.235, y = 187.809, z = 0.352 }, level = 1, area_id = 6 },
	{ config_id = 183025, gadget_id = 70710126, pos = { x = 1134.362, y = 268.904, z = 1305.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183026, gadget_id = 70300101, pos = { x = 1173.519, y = 251.839, z = 1215.483 }, rot = { x = 0.423, y = 12.258, z = 356.500 }, level = 1, area_id = 6 },
	{ config_id = 183027, gadget_id = 70300101, pos = { x = 1149.076, y = 264.789, z = 1296.208 }, rot = { x = 0.000, y = 3.392, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183028, gadget_id = 70300101, pos = { x = 1152.111, y = 264.049, z = 1290.779 }, rot = { x = 0.000, y = 5.869, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183030, gadget_id = 70220011, pos = { x = 1199.171, y = 263.826, z = 1356.078 }, rot = { x = 3.427, y = 244.801, z = 359.146 }, level = 1, area_id = 6 },
	{ config_id = 183031, gadget_id = 70300090, pos = { x = 1199.501, y = 248.451, z = 1180.756 }, rot = { x = 0.000, y = 5.108, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 183032, gadget_id = 70300090, pos = { x = 1208.262, y = 248.343, z = 1179.855 }, rot = { x = 0.662, y = 13.460, z = 1.079 }, level = 1, area_id = 6 },
	{ config_id = 183033, gadget_id = 70300083, pos = { x = 1177.331, y = 256.296, z = 1257.496 }, rot = { x = 1.645, y = 188.545, z = 358.017 }, level = 1, area_id = 6 },
	{ config_id = 183064, gadget_id = 70300090, pos = { x = 1182.003, y = 256.768, z = 1255.891 }, rot = { x = 0.012, y = 4.045, z = 0.088 }, level = 1, area_id = 6 },
	{ config_id = 183065, gadget_id = 70300090, pos = { x = 1172.352, y = 256.170, z = 1258.430 }, rot = { x = 0.944, y = 356.756, z = 0.843 }, level = 1, area_id = 6 },
	{ config_id = 183074, gadget_id = 70220005, pos = { x = 1152.467, y = 265.417, z = 1297.300 }, rot = { x = 9.896, y = 269.325, z = 12.052 }, level = 1, area_id = 6 },
	{ config_id = 183079, gadget_id = 70220005, pos = { x = 1149.127, y = 264.863, z = 1288.897 }, rot = { x = 337.740, y = 267.488, z = 356.809 }, level = 1, area_id = 6 },
	{ config_id = 183080, gadget_id = 70300086, pos = { x = 1148.178, y = 265.680, z = 1286.049 }, rot = { x = 67.633, y = 264.517, z = 177.266 }, level = 1, area_id = 6 },
	{ config_id = 183081, gadget_id = 70300086, pos = { x = 1154.231, y = 266.450, z = 1300.358 }, rot = { x = 352.228, y = 94.765, z = 261.594 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1183024, name = "ANY_GADGET_DIE_183024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183024", action = "action_EVENT_ANY_GADGET_DIE_183024", trigger_count = 0 },
	{ config_id = 1183034, name = "GADGET_CREATE_183034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_183034", action = "action_EVENT_GADGET_CREATE_183034", trigger_count = 0 },
	{ config_id = 1183035, name = "SELECT_OPTION_183035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_183035", action = "action_EVENT_SELECT_OPTION_183035" },
	{ config_id = 1183036, name = "CHALLENGE_SUCCESS_183036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_183036", trigger_count = 0 },
	{ config_id = 1183037, name = "PLATFORM_REACH_POINT_183037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183037", action = "action_EVENT_PLATFORM_REACH_POINT_183037", trigger_count = 0, tag = "888" },
	{ config_id = 1183038, name = "CHALLENGE_FAIL_183038", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_183038", trigger_count = 0 },
	{ config_id = 1183039, name = "ANY_GADGET_DIE_183039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183039", action = "action_EVENT_ANY_GADGET_DIE_183039" },
	{ config_id = 1183040, name = "PLATFORM_REACH_POINT_183040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183040", action = "action_EVENT_PLATFORM_REACH_POINT_183040", trigger_count = 0 },
	{ config_id = 1183041, name = "ANY_GADGET_DIE_183041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183041", action = "action_EVENT_ANY_GADGET_DIE_183041", trigger_count = 0 },
	{ config_id = 1183045, name = "PLATFORM_REACH_POINT_183045", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183045", action = "action_EVENT_PLATFORM_REACH_POINT_183045", trigger_count = 0 },
	{ config_id = 1183046, name = "PLATFORM_REACH_POINT_183046", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183046", action = "action_EVENT_PLATFORM_REACH_POINT_183046", trigger_count = 0 },
	{ config_id = 1183047, name = "PLATFORM_REACH_POINT_183047", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183047", action = "action_EVENT_PLATFORM_REACH_POINT_183047", trigger_count = 0 },
	{ config_id = 1183048, name = "PLATFORM_REACH_POINT_183048", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183048", action = "action_EVENT_PLATFORM_REACH_POINT_183048", trigger_count = 0 },
	{ config_id = 1183050, name = "ANY_GADGET_DIE_183050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183050", action = "action_EVENT_ANY_GADGET_DIE_183050", trigger_count = 0 },
	{ config_id = 1183051, name = "ANY_GADGET_DIE_183051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183051", action = "action_EVENT_ANY_GADGET_DIE_183051", trigger_count = 0 },
	{ config_id = 1183052, name = "ANY_GADGET_DIE_183052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183052", action = "action_EVENT_ANY_GADGET_DIE_183052", trigger_count = 0 },
	{ config_id = 1183054, name = "PLATFORM_REACH_POINT_183054", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183054", action = "action_EVENT_PLATFORM_REACH_POINT_183054", trigger_count = 0 },
	{ config_id = 1183055, name = "PLATFORM_REACH_POINT_183055", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183055", action = "action_EVENT_PLATFORM_REACH_POINT_183055", trigger_count = 0 },
	{ config_id = 1183056, name = "PLATFORM_REACH_POINT_183056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183056", action = "action_EVENT_PLATFORM_REACH_POINT_183056", trigger_count = 0 },
	{ config_id = 1183058, name = "PLATFORM_REACH_POINT_183058", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183058", action = "action_EVENT_PLATFORM_REACH_POINT_183058", trigger_count = 0 },
	{ config_id = 1183059, name = "VARIABLE_CHANGE_183059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183059", action = "action_EVENT_VARIABLE_CHANGE_183059", trigger_count = 0 },
	{ config_id = 1183060, name = "VARIABLE_CHANGE_183060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183060", action = "action_EVENT_VARIABLE_CHANGE_183060", trigger_count = 0 },
	{ config_id = 1183061, name = "VARIABLE_CHANGE_183061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183061", action = "action_EVENT_VARIABLE_CHANGE_183061", trigger_count = 0 },
	{ config_id = 1183062, name = "VARIABLE_CHANGE_183062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183062", action = "action_EVENT_VARIABLE_CHANGE_183062", trigger_count = 0 },
	{ config_id = 1183072, name = "VARIABLE_CHANGE_183072", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_183072", action = "action_EVENT_VARIABLE_CHANGE_183072", trigger_count = 0 },
	{ config_id = 1183075, name = "PLATFORM_REACH_POINT_183075", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183075", action = "action_EVENT_PLATFORM_REACH_POINT_183075", trigger_count = 0 },
	{ config_id = 1183076, name = "PLATFORM_REACH_POINT_183076", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_183076", action = "action_EVENT_PLATFORM_REACH_POINT_183076", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 1, no_refresh = false },
	{ config_id = 4, name = "isObstacle4Available", value = 1, no_refresh = false },
	{ config_id = 5, name = "isObstacle4_1Available", value = 1, no_refresh = false },
	{ config_id = 6, name = "isObstacle4_2Available", value = 1, no_refresh = false },
	{ config_id = 7, name = "isObstacle5Available", value = 1, no_refresh = false },
	{ config_id = 8, name = "isObstacle6Available", value = 1, no_refresh = false },
	{ config_id = 9, name = "hasReachedObstacle1", value = 0, no_refresh = false },
	{ config_id = 10, name = "hasReachedObstacle2", value = 0, no_refresh = false },
	{ config_id = 11, name = "hasReachedObstacle3", value = 0, no_refresh = false },
	{ config_id = 12, name = "hasReachedObstacle4", value = 0, no_refresh = false },
	{ config_id = 13, name = "hasReachedObstacle5", value = 0, no_refresh = false },
	{ config_id = 14, name = "hasReachedObstacle6", value = 0, no_refresh = false },
	{ config_id = 15, name = "deadTrapMonsters", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 12,
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
		gadgets = { 183016, 183017, 183018, 183021, 183022 },
		regions = { },
		triggers = { "GADGET_CREATE_183034", "SELECT_OPTION_183035", "CHALLENGE_SUCCESS_183036", "CHALLENGE_FAIL_183038", "ANY_GADGET_DIE_183039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 全部Monsters和Gadgets,
		monsters = { },
		gadgets = { 183003, 183004, 183005, 183023, 183025, 183026, 183027, 183028, 183030, 183031, 183032, 183033, 183064, 183065, 183074, 183079, 183080, 183081 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_183045", "PLATFORM_REACH_POINT_183075", "PLATFORM_REACH_POINT_183076" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 障碍物1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_183040", "ANY_GADGET_DIE_183041", "PLATFORM_REACH_POINT_183058", "VARIABLE_CHANGE_183060" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 障碍物2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_183046", "ANY_GADGET_DIE_183050", "PLATFORM_REACH_POINT_183054", "VARIABLE_CHANGE_183059" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 障碍物3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_183047", "ANY_GADGET_DIE_183051", "PLATFORM_REACH_POINT_183055", "VARIABLE_CHANGE_183061" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 障碍物4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_183024", "PLATFORM_REACH_POINT_183048", "ANY_GADGET_DIE_183052", "PLATFORM_REACH_POINT_183056", "VARIABLE_CHANGE_183062", "VARIABLE_CHANGE_183072" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 终点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_183037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Monster1,
		monsters = { 183001, 183002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Monster2,
		monsters = { 183006, 183007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Monster3,
		monsters = { 183008, 183009, 183010, 183011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = Monster4,
		monsters = { 183012, 183013, 183014, 183015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
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
function condition_EVENT_ANY_GADGET_DIE_183024(context, evt)
	if 183028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183024(context, evt)
	-- 将本组内变量名为 "isObstacle4_2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4_2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_183034(context, evt)
	if 183022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_183034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101183, 183022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_183035(context, evt)
	-- 判断是gadgetid 183022 option_id 7
	if 183022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_183035(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 183021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 183022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_183036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 11)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101183, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183037(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 34 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183037(context, evt)
	-- 将configid为 183021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_183038(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133101183, EntityType.GADGET, 183021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 11)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101183, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183039(context, evt)
	if 183021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183039(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101183, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183040(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 2 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_183040(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 183021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183041(context, evt)
	if 183023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183041(context, evt)
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183045(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 6 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183045(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183046(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 10 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183046(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 183021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183047(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 17 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183047(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 183021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183048(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 25 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle4Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183048(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 183021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183050(context, evt)
	if 183026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183050(context, evt)
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183051(context, evt)
	if 183033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183051(context, evt)
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183052(context, evt)
	if 183027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183052(context, evt)
	-- 将本组内变量名为 "isObstacle4_1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4_1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183054(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 10 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183054(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183055(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 17 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183055(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183056(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 25 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183056(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183058(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 2 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183058(context, evt)
	-- 将本组内变量名为 "hasReachedObstacle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReachedObstacle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_183059(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_183059(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 183021) then
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
function condition_EVENT_VARIABLE_CHANGE_183060(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_183060(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 183021) then
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
function condition_EVENT_VARIABLE_CHANGE_183061(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_183061(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 183021) then
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
function condition_EVENT_VARIABLE_CHANGE_183062(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_183062(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 183021) then
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
function condition_EVENT_VARIABLE_CHANGE_183072(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle4_1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4_1Available") ~= 0 then
			return false
	end
	
	-- 判断变量"isObstacle4_2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4_2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_183072(context, evt)
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183075(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 15 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 15 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183075(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_183076(context, evt)
	-- 判断是gadgetid 为 183021的移动平台，是否到达了310100120 的路线中的 21 点
	
	if 183021 ~= evt.param1 then
	  return false
	end
	
	if 310100120 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_183076(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101183, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101183, 11)
	
	return 0
end