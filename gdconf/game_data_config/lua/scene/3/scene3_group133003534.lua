-- 基础信息
local base_info = {
	group_id = 133003534
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 534001, monster_id = 21010501, pos = { x = 2093.856, y = 234.005, z = -1570.440 }, rot = { x = 0.000, y = 185.518, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 534002, monster_id = 21010101, pos = { x = 2090.298, y = 226.938, z = -1571.951 }, rot = { x = 0.000, y = 136.255, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 1 },
	{ config_id = 534003, monster_id = 21010101, pos = { x = 2102.307, y = 228.302, z = -1580.666 }, rot = { x = 0.000, y = 328.847, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 1 },
	{ config_id = 534024, monster_id = 21030301, pos = { x = 2092.295, y = 239.037, z = -1532.000 }, rot = { x = 0.000, y = 155.705, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 534025, monster_id = 21030301, pos = { x = 2110.094, y = 239.037, z = -1539.666 }, rot = { x = 0.000, y = 253.490, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 534033, monster_id = 22010101, pos = { x = 2110.485, y = 226.870, z = -1396.677 }, rot = { x = 0.000, y = 189.879, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 534038, monster_id = 21010701, pos = { x = 2121.113, y = 224.238, z = -1480.729 }, rot = { x = 0.000, y = 300.924, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 534039, monster_id = 21010701, pos = { x = 2138.644, y = 218.653, z = -1465.554 }, rot = { x = 0.000, y = 242.531, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 534040, monster_id = 21010501, pos = { x = 2112.712, y = 225.989, z = -1468.324 }, rot = { x = 0.000, y = 246.521, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 534041, monster_id = 21020201, pos = { x = 2196.544, y = 212.197, z = -1477.074 }, rot = { x = 0.000, y = 307.701, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1408 }, area_id = 1 },
	{ config_id = 534042, monster_id = 21010301, pos = { x = 2194.786, y = 212.229, z = -1474.905 }, rot = { x = 0.000, y = 315.264, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 534043, monster_id = 21010301, pos = { x = 2191.706, y = 212.339, z = -1474.645 }, rot = { x = 0.000, y = 315.264, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 534044, monster_id = 21010701, pos = { x = 2103.713, y = 227.096, z = -1410.276 }, rot = { x = 0.000, y = 231.546, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 534047, monster_id = 21010501, pos = { x = 2164.818, y = 214.070, z = -1443.635 }, rot = { x = 0.000, y = 181.610, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 534061, monster_id = 21010701, pos = { x = 2093.656, y = 226.143, z = -1407.019 }, rot = { x = 0.000, y = 231.980, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 534062, monster_id = 21011001, pos = { x = 2102.908, y = 233.860, z = -1392.443 }, rot = { x = 0.000, y = 185.967, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 534063, monster_id = 21011001, pos = { x = 2110.270, y = 232.260, z = -1404.919 }, rot = { x = 0.000, y = 266.847, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 534004, gadget_id = 70380019, pos = { x = 2131.685, y = 232.287, z = -1612.277 }, rot = { x = 0.000, y = 314.802, z = 0.000 }, level = 1, route_id = 300300305, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 534005, gadget_id = 70360001, pos = { x = 2131.685, y = 232.287, z = -1612.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534006, gadget_id = 70300083, pos = { x = 2101.325, y = 228.426, z = -1573.108 }, rot = { x = 351.920, y = 23.048, z = 3.259 }, level = 1, area_id = 1 },
	{ config_id = 534007, gadget_id = 70360001, pos = { x = 2083.360, y = 228.062, z = -1467.544 }, rot = { x = 358.841, y = 350.263, z = 3.826 }, level = 1, area_id = 1 },
	{ config_id = 534008, gadget_id = 70710126, pos = { x = 2153.910, y = 222.094, z = -1367.723 }, rot = { x = 0.000, y = 359.916, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534021, gadget_id = 70300090, pos = { x = 2094.054, y = 228.008, z = -1570.526 }, rot = { x = 0.000, y = 29.498, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534022, gadget_id = 70300105, pos = { x = 2157.585, y = 223.580, z = -1361.030 }, rot = { x = 3.520, y = 293.605, z = 1.537 }, level = 1, area_id = 1 },
	{ config_id = 534023, gadget_id = 70300092, pos = { x = 2145.043, y = 222.280, z = -1363.495 }, rot = { x = 357.048, y = 203.404, z = 5.960 }, level = 1, area_id = 1 },
	{ config_id = 534026, gadget_id = 70690006, pos = { x = 2100.603, y = 233.466, z = -1540.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534028, gadget_id = 70350007, pos = { x = 2091.556, y = 226.759, z = -1472.147 }, rot = { x = 359.967, y = 268.935, z = 358.210 }, level = 1, area_id = 1 },
	{ config_id = 534029, gadget_id = 70300083, pos = { x = 2113.712, y = 226.483, z = -1395.515 }, rot = { x = 352.446, y = 53.787, z = 351.283 }, level = 1, area_id = 1 },
	{ config_id = 534030, gadget_id = 70300090, pos = { x = 2091.270, y = 227.200, z = -1476.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534031, gadget_id = 70300089, pos = { x = 2091.521, y = 227.727, z = -1468.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534032, gadget_id = 70220011, pos = { x = 2090.821, y = 226.818, z = -1471.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534037, gadget_id = 70300118, pos = { x = 2083.448, y = 229.310, z = -1467.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534045, gadget_id = 70300083, pos = { x = 2155.390, y = 213.759, z = -1442.339 }, rot = { x = 2.367, y = 333.063, z = 354.798 }, level = 1, area_id = 1 },
	{ config_id = 534046, gadget_id = 70220035, pos = { x = 2160.500, y = 213.651, z = -1443.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534048, gadget_id = 70220020, pos = { x = 2154.196, y = 221.481, z = -1389.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534049, gadget_id = 70220020, pos = { x = 2157.987, y = 221.013, z = -1389.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534050, gadget_id = 70220020, pos = { x = 2163.667, y = 220.436, z = -1390.293 }, rot = { x = 0.000, y = 8.509, z = 8.471 }, level = 1, area_id = 1 },
	{ config_id = 534051, gadget_id = 70220020, pos = { x = 2166.629, y = 221.347, z = -1390.454 }, rot = { x = 0.000, y = 0.000, z = 18.446 }, level = 1, area_id = 1 },
	{ config_id = 534052, gadget_id = 70220020, pos = { x = 2168.767, y = 222.235, z = -1391.055 }, rot = { x = 0.000, y = 0.000, z = 30.676 }, level = 1, area_id = 1 },
	{ config_id = 534053, gadget_id = 70220020, pos = { x = 2164.353, y = 220.463, z = -1391.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534054, gadget_id = 70220020, pos = { x = 2161.453, y = 220.252, z = -1390.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534055, gadget_id = 70220020, pos = { x = 2158.029, y = 220.705, z = -1390.403 }, rot = { x = 0.000, y = 3.047, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534056, gadget_id = 70220020, pos = { x = 2154.000, y = 221.321, z = -1390.249 }, rot = { x = 0.000, y = 0.000, z = 359.627 }, level = 1, area_id = 1 },
	{ config_id = 534057, gadget_id = 70220020, pos = { x = 2156.660, y = 221.178, z = -1389.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534058, gadget_id = 70220020, pos = { x = 2161.109, y = 220.505, z = -1389.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534059, gadget_id = 70220020, pos = { x = 2167.535, y = 221.511, z = -1391.090 }, rot = { x = 0.000, y = 0.000, z = 24.703 }, level = 1, area_id = 1 },
	{ config_id = 534060, gadget_id = 70220035, pos = { x = 2166.704, y = 220.574, z = -1394.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534065, gadget_id = 70300090, pos = { x = 2103.073, y = 227.675, z = -1391.619 }, rot = { x = 0.000, y = 60.591, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534066, gadget_id = 70300090, pos = { x = 2111.116, y = 226.148, z = -1404.745 }, rot = { x = 0.000, y = 70.277, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534075, gadget_id = 70220004, pos = { x = 2122.977, y = 225.859, z = -1388.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534076, gadget_id = 70220004, pos = { x = 2132.725, y = 224.651, z = -1379.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534077, gadget_id = 70300094, pos = { x = 2157.525, y = 223.714, z = -1360.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534078, gadget_id = 70300094, pos = { x = 2166.092, y = 223.485, z = -1366.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534079, gadget_id = 70310006, pos = { x = 2152.322, y = 222.522, z = -1361.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 534080, gadget_id = 70300092, pos = { x = 2164.651, y = 223.593, z = -1365.627 }, rot = { x = 19.922, y = 205.878, z = 6.333 }, level = 5, area_id = 1 },
	{ config_id = 534081, gadget_id = 70710095, pos = { x = 2083.450, y = 227.105, z = -1467.492 }, rot = { x = 0.000, y = 199.407, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1534009, name = "GADGET_CREATE_534009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_534009", action = "action_EVENT_GADGET_CREATE_534009", trigger_count = 0 },
	{ config_id = 1534010, name = "SELECT_OPTION_534010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_534010", action = "action_EVENT_SELECT_OPTION_534010" },
	{ config_id = 1534011, name = "CHALLENGE_SUCCESS_534011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_534011", trigger_count = 0 },
	{ config_id = 1534012, name = "PLATFORM_REACH_POINT_534012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534012", action = "action_EVENT_PLATFORM_REACH_POINT_534012", trigger_count = 0, tag = "888" },
	{ config_id = 1534013, name = "CHALLENGE_FAIL_534013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_534013", trigger_count = 0 },
	{ config_id = 1534014, name = "ANY_GADGET_DIE_534014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534014", action = "action_EVENT_ANY_GADGET_DIE_534014" },
	{ config_id = 1534015, name = "PLATFORM_REACH_POINT_534015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534015", action = "action_EVENT_PLATFORM_REACH_POINT_534015", trigger_count = 0 },
	{ config_id = 1534016, name = "ANY_GADGET_DIE_534016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534016", action = "action_EVENT_ANY_GADGET_DIE_534016", trigger_count = 0 },
	{ config_id = 1534017, name = "PLATFORM_REACH_POINT_534017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534017", action = "action_EVENT_PLATFORM_REACH_POINT_534017", trigger_count = 0 },
	{ config_id = 1534018, name = "SELECT_OPTION_534018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_534018", action = "action_EVENT_SELECT_OPTION_534018", trigger_count = 0 },
	{ config_id = 1534019, name = "SELECT_OPTION_534019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_534019", action = "action_EVENT_SELECT_OPTION_534019", trigger_count = 0 },
	{ config_id = 1534020, name = "PLATFORM_REACH_POINT_534020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534020", action = "action_EVENT_PLATFORM_REACH_POINT_534020", trigger_count = 0 },
	{ config_id = 1534027, name = "PLATFORM_REACH_POINT_534027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534027", action = "action_EVENT_PLATFORM_REACH_POINT_534027", trigger_count = 0 },
	{ config_id = 1534034, name = "PLATFORM_REACH_POINT_534034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534034", action = "action_EVENT_PLATFORM_REACH_POINT_534034", trigger_count = 0, tag = "888" },
	{ config_id = 1534035, name = "PLATFORM_REACH_POINT_534035", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534035", action = "action_EVENT_PLATFORM_REACH_POINT_534035", trigger_count = 0 },
	{ config_id = 1534036, name = "ANY_MONSTER_DIE_534036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_534036", action = "action_EVENT_ANY_MONSTER_DIE_534036" },
	{ config_id = 1534064, name = "ANY_MONSTER_DIE_534064", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_534064", action = "action_EVENT_ANY_MONSTER_DIE_534064" },
	{ config_id = 1534067, name = "VARIABLE_CHANGE_534067", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_534067", action = "action_EVENT_VARIABLE_CHANGE_534067" },
	{ config_id = 1534068, name = "ANY_GADGET_DIE_534068", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534068", action = "action_EVENT_ANY_GADGET_DIE_534068", trigger_count = 0 },
	{ config_id = 1534069, name = "PLATFORM_REACH_POINT_534069", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534069", action = "action_EVENT_PLATFORM_REACH_POINT_534069", trigger_count = 0 },
	{ config_id = 1534070, name = "ANY_GADGET_DIE_534070", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534070", action = "action_EVENT_ANY_GADGET_DIE_534070", trigger_count = 0 },
	{ config_id = 1534071, name = "PLATFORM_REACH_POINT_534071", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534071", action = "action_EVENT_PLATFORM_REACH_POINT_534071", trigger_count = 0 },
	{ config_id = 1534072, name = "ANY_GADGET_DIE_534072", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534072", action = "action_EVENT_ANY_GADGET_DIE_534072", trigger_count = 0 },
	{ config_id = 1534073, name = "PLATFORM_REACH_POINT_534073", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_534073", action = "action_EVENT_PLATFORM_REACH_POINT_534073", trigger_count = 0 },
	{ config_id = 1534074, name = "ANY_GADGET_DIE_534074", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534074", action = "action_EVENT_ANY_GADGET_DIE_534074", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 2, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 1, no_refresh = false },
	{ config_id = 4, name = "isObstacle4Available", value = 1, no_refresh = false },
	{ config_id = 5, name = "isObstacle5Available", value = 1, no_refresh = false },
	{ config_id = 6, name = "isObstacle6Available", value = 1, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 534004, 534005, 534022, 534023, 534077, 534078, 534079, 534080 },
		regions = { },
		triggers = { "GADGET_CREATE_534009", "SELECT_OPTION_534010", "CHALLENGE_SUCCESS_534011", "PLATFORM_REACH_POINT_534012", "CHALLENGE_FAIL_534013", "ANY_GADGET_DIE_534014", "PLATFORM_REACH_POINT_534034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 534001, 534002, 534003, 534024, 534025, 534033, 534038, 534039, 534040, 534044, 534047, 534061, 534062, 534063 },
		gadgets = { 534006, 534007, 534008, 534021, 534026, 534028, 534029, 534030, 534031, 534032, 534037, 534045, 534046, 534048, 534049, 534050, 534051, 534052, 534053, 534054, 534055, 534056, 534057, 534058, 534059, 534060, 534065, 534066, 534075, 534076, 534081 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_534015", "ANY_GADGET_DIE_534016", "PLATFORM_REACH_POINT_534017", "SELECT_OPTION_534018", "SELECT_OPTION_534019", "PLATFORM_REACH_POINT_534020", "PLATFORM_REACH_POINT_534027", "PLATFORM_REACH_POINT_534035", "ANY_MONSTER_DIE_534036", "ANY_MONSTER_DIE_534064", "VARIABLE_CHANGE_534067", "ANY_GADGET_DIE_534068", "PLATFORM_REACH_POINT_534069", "ANY_GADGET_DIE_534070", "PLATFORM_REACH_POINT_534071", "ANY_GADGET_DIE_534072", "PLATFORM_REACH_POINT_534073", "ANY_GADGET_DIE_534074" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_534009(context, evt)
	if 534005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_534009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003534, 534005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_534010(context, evt)
	-- 判断是gadgetid 534005 option_id 7
	if 534005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_534010(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 534005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003534, 2)
	
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle6Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle6Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_534011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003534, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003534, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534012(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300306 的路线中的 20 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300306 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534012(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 534004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_534013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003534, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003534, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle2Available" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle2Available", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle6Available" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle6Available", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534014(context, evt)
	if 534004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534014(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003534, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534015(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300305 的路线中的 6 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300305 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_534015(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534016(context, evt)
	if 534006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle1Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle1Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534017(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300305 的路线中的 24 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300305 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534017(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003534, 534007, {33,34}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_534018(context, evt)
	-- 判断是gadgetid 534007 option_id 34
	if 534007 ~= evt.param1 then
		return false	
	end
	
	if 34 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_534018(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 534004, 300300306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 133003534 ；指定config：534007；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003534, 534007, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133003534 ；指定config：534007；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003534, 534007, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 534007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534033)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534063)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534062)
	
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534065 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534029 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534066 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_534019(context, evt)
	-- 判断是gadgetid 534007 option_id 33
	if 534007 ~= evt.param1 then
		return false	
	end
	
	if 33 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_534019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 534004, 300300307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 删除指定group： 133003534 ；指定config：534007；物件身上指定option：33；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003534, 534007, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133003534 ；指定config：534007；物件身上指定option：34；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003534, 534007, 34) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 534007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534049 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534050 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534051 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534052 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534053 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534054 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534055 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534056 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534058 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 534007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.GADGET, 534037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534020(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300306 的路线中的 2 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300306 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534027(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300305 的路线中的 12 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300305 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534027(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2099,y=233,z=-1542}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110170, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534003)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534001)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003534, EntityType.MONSTER, 534002)
	
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 534021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534034(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300307 的路线中的 10 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300307 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534034(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 534004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534035(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300305 的路线中的 14 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300305 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534035(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_534036(context, evt)
	if 534024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_534036(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "isObstacle2Available", -1, 133003534) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_534064(context, evt)
	if 534025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_534064(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "isObstacle2Available", -1, 133003534) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_534067(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_534067(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 534026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534068(context, evt)
	if 534032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534068(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle3Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle3Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534069(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300306 的路线中的 12 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300306 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle4Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle4Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534069(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 534041, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 534043, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 534042, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534070(context, evt)
	if 534045 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534070(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle4Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle4Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534071(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300306 的路线中的 17 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300306 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle5Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle5Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534071(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534072(context, evt)
	if 534055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534072(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle5Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle5Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_534073(context, evt)
	-- 判断是gadgetid 为 534004的移动平台，是否到达了300300307 的路线中的 4 点
	
	if 534004 ~= evt.param1 then
	  return false
	end
	
	if 300300307 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle6Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle6Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_534073(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_534074(context, evt)
	if 534029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_534074(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 534004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "isObstacle6Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle6Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end