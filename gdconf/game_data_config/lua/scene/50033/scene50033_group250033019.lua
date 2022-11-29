-- 基础信息
local base_info = {
	group_id = 250033019
}

-- Trigger变量
local defs = {
	group_id = 250033019,
	gear_group_id = 250033001
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 3, max = 3,suite=2},{sum = 20, min = 6, max = 6,suite=3},},
	[2] = { {sum = 20, min = 3, max = 3,suite=4},{sum = 20, min = 6, max = 6,suite=5},},
	[3] = { {sum = 20, min = 3, max = 3,suite=6},{sum = 20, min = 6, max = 6,suite=7},},
	[4] = { {sum = 20, min = 3, max = 3,suite=8},{sum = 20, min = 6, max = 6,suite=9},},	
}

package_tide_defs={        [1]={{monster_package={12013,12015},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=24,max=5,min=5},{monster_package={12030,12031},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=24,max=5,min=5}},   
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 3-B
	[19001] = { config_id = 19001, monster_id = 22010105, pos = { x = 77.780, y = -13.378, z = -6.723 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-C
	[19002] = { config_id = 19002, monster_id = 22010205, pos = { x = 77.780, y = -13.378, z = -6.723 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19003] = { config_id = 19003, monster_id = 21010102, pos = { x = 106.970, y = -9.669, z = -53.931 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19004] = { config_id = 19004, monster_id = 21010102, pos = { x = 103.707, y = -9.668, z = -53.904 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19005] = { config_id = 19005, monster_id = 20011203, pos = { x = 106.457, y = -9.669, z = -54.014 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19006] = { config_id = 19006, monster_id = 20011203, pos = { x = 106.970, y = -9.669, z = -53.931 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19007] = { config_id = 19007, monster_id = 20011203, pos = { x = 103.707, y = -9.668, z = -53.904 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19008] = { config_id = 19008, monster_id = 20011302, pos = { x = 104.967, y = -9.669, z = -54.023 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-B
	[19009] = { config_id = 19009, monster_id = 21010102, pos = { x = 77.780, y = -13.378, z = -6.723 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-B
	[19010] = { config_id = 19010, monster_id = 21010102, pos = { x = 75.664, y = -13.399, z = -5.400 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-C
	[19011] = { config_id = 19011, monster_id = 21010102, pos = { x = 77.780, y = -13.378, z = -6.723 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-C
	[19012] = { config_id = 19012, monster_id = 21010102, pos = { x = 75.664, y = -13.399, z = -5.400 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19014] = { config_id = 19014, monster_id = 20010903, pos = { x = 104.967, y = -9.669, z = -54.023 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19015] = { config_id = 19015, monster_id = 20010803, pos = { x = 103.707, y = -9.668, z = -53.904 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19016] = { config_id = 19016, monster_id = 20010803, pos = { x = 106.970, y = -9.669, z = -53.931 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-E
	[19017] = { config_id = 19017, monster_id = 20010803, pos = { x = 106.457, y = -9.669, z = -54.014 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19018] = { config_id = 19018, monster_id = 21010102, pos = { x = 104.967, y = -9.669, z = -54.023 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-D
	[19019] = { config_id = 19019, monster_id = 21010102, pos = { x = 104.967, y = -9.669, z = -54.023 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- StartPoint1
	{ config_id = 19013, pos = { x = 108.779, y = -9.669, z = -52.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19020, pos = { x = 106.292, y = -9.668, z = -52.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19021, pos = { x = 103.666, y = -9.654, z = -52.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19022, pos = { x = 103.368, y = -9.667, z = -54.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19023, pos = { x = 106.437, y = -9.628, z = -54.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19024, pos = { x = 109.346, y = -9.668, z = -55.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19025, pos = { x = 103.570, y = -9.664, z = -56.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19026, pos = { x = 106.944, y = -9.666, z = -56.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19027, pos = { x = 109.808, y = -9.668, z = -57.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 19028, pos = { x = 74.251, y = -13.376, z = -7.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19029, pos = { x = 76.565, y = -13.377, z = -7.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19030, pos = { x = 79.162, y = -13.382, z = -7.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19031, pos = { x = 79.064, y = -13.376, z = -4.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19032, pos = { x = 76.695, y = -13.369, z = -4.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19033, pos = { x = 73.955, y = -13.382, z = -4.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19034, pos = { x = 73.966, y = -13.367, z = -2.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19035, pos = { x = 76.342, y = -13.375, z = -2.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19036, pos = { x = 79.141, y = -13.374, z = -2.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- StartPoint3
	{ config_id = 19037, pos = { x = 138.113, y = -13.401, z = -21.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19038, pos = { x = 136.151, y = -13.400, z = -21.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19039, pos = { x = 134.271, y = -13.391, z = -21.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19040, pos = { x = 134.306, y = -13.401, z = -23.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19041, pos = { x = 136.013, y = -13.402, z = -23.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19042, pos = { x = 138.411, y = -13.404, z = -23.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19043, pos = { x = 138.686, y = -13.403, z = -25.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19044, pos = { x = 136.124, y = -13.389, z = -25.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 19045, pos = { x = 134.146, y = -13.385, z = -25.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = Option1-3-B,
		monsters = { 19001, 19009, 19010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-D,
		monsters = { 19005, 19006, 19007, 19008, 19018, 19019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option2-3-C,
		monsters = { 19002, 19011, 19012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-1-D,
		monsters = { 19005, 19006, 19007, 19008, 19018, 19019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Option3-3-B,
		monsters = { 19001, 19009, 19010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option3-1-E,
		monsters = { 19003, 19004, 19014, 19015, 19016, 19017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option4-3-C,
		monsters = { 19002, 19011, 19012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option4-1-E,
		monsters = { 19003, 19004, 19014, 19015, 19016, 19017 },
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

require "TowerDefense_Monster02"