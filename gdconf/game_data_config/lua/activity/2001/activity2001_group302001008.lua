-- 基础信息
local base_info = {
	group_id = 302001008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8014, monster_id = 21010101, pos = { x = 2877.693, y = 225.096, z = 91.948 }, rot = { x = 0.000, y = 303.974, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 4 },
	{ config_id = 8015, monster_id = 21010101, pos = { x = 2463.939, y = 241.804, z = 262.326 }, rot = { x = 0.000, y = 61.941, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 8016, monster_id = 21010101, pos = { x = 2466.257, y = 241.338, z = 263.946 }, rot = { x = 0.000, y = 232.107, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 8017, monster_id = 21010301, pos = { x = 2671.052, y = 211.414, z = 251.692 }, rot = { x = 0.000, y = 244.227, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 8018, monster_id = 22010201, pos = { x = 2769.695, y = 207.602, z = 312.929 }, rot = { x = 0.000, y = 7.572, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 4 },
	{ config_id = 8019, monster_id = 21010301, pos = { x = 2772.360, y = 207.519, z = 314.997 }, rot = { x = 0.000, y = 235.478, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 8020, monster_id = 21010301, pos = { x = 2770.165, y = 207.647, z = 316.417 }, rot = { x = 0.000, y = 192.507, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 8023, monster_id = 20011201, pos = { x = 2720.590, y = 207.778, z = -33.920 }, rot = { x = 0.000, y = 295.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 4 },
	{ config_id = 8024, monster_id = 20011201, pos = { x = 2719.975, y = 207.629, z = -32.532 }, rot = { x = 0.000, y = 242.679, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 4 },
	{ config_id = 8025, monster_id = 20011201, pos = { x = 2718.060, y = 207.362, z = -31.872 }, rot = { x = 0.000, y = 135.623, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70500000, pos = { x = 2651.506, y = 325.010, z = 135.224 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8002, gadget_id = 70500000, pos = { x = 2464.214, y = 262.511, z = 332.500 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8003, gadget_id = 70500000, pos = { x = 2577.732, y = 202.846, z = 401.819 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8004, gadget_id = 70500000, pos = { x = 2779.919, y = 253.151, z = 413.849 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8005, gadget_id = 70500000, pos = { x = 2857.127, y = 244.472, z = 265.362 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8006, gadget_id = 70500000, pos = { x = 2494.201, y = 218.896, z = 84.920 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8007, gadget_id = 70500000, pos = { x = 2698.332, y = 240.423, z = 27.617 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8008, gadget_id = 70500000, pos = { x = 2564.015, y = 257.447, z = 212.620 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8009, gadget_id = 70500000, pos = { x = 2876.906, y = 225.057, z = 92.632 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8010, gadget_id = 70500000, pos = { x = 2465.164, y = 241.569, z = 263.094 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8011, gadget_id = 70500000, pos = { x = 2669.757, y = 211.410, z = 251.282 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8012, gadget_id = 70500000, pos = { x = 2770.602, y = 207.671, z = 314.618 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8013, gadget_id = 70500000, pos = { x = 2423.560, y = 218.219, z = 5.281 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8021, gadget_id = 70500000, pos = { x = 2793.873, y = 249.433, z = -71.478 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 },
	{ config_id = 8022, gadget_id = 70500000, pos = { x = 2718.901, y = 207.548, z = -33.317 }, rot = { x = 0.000, y = 357.690, z = 0.000 }, level = 1, point_type = 9127, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		monsters = { 8014, 8015, 8016, 8017, 8018, 8019, 8020, 8023, 8024, 8025 },
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8021, 8022 },
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