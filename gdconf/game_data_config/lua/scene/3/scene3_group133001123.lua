-- 基础信息
local base_info = {
	group_id = 133001123
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21011,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010040,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 123003,
	control_group_id = 133001101,
	inner_region = 123023,
	outer_region = 123024,
	related_region = 123025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34031, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34031, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {123001,123002,123022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123001, monster_id = 26010101, pos = { x = 1892.312, y = 196.727, z = -1556.130 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009 }, area_id = 2 },
	{ config_id = 123002, monster_id = 26010201, pos = { x = 1875.380, y = 195.841, z = -1560.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009 }, area_id = 2 },
	{ config_id = 123022, monster_id = 21020202, pos = { x = 1883.056, y = 195.714, z = -1559.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 123003, gadget_id = 70380234, pos = { x = 1882.051, y = 195.892, z = -1550.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 123023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.004, y = 195.891, z = -1550.849 }, area_id = 2 },
	{ config_id = 123024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.004, y = 195.891, z = -1550.849 }, area_id = 2 },
	{ config_id = 123025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.004, y = 195.891, z = -1550.849 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 123004, pos = { x = 1888.092, y = 196.258, z = -1555.028 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123005, pos = { x = 1886.311, y = 196.027, z = -1557.662 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123006, pos = { x = 1888.925, y = 196.333, z = -1553.221 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123007, pos = { x = 1887.217, y = 196.167, z = -1556.470 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123008, pos = { x = 1887.344, y = 196.138, z = -1551.917 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123009, pos = { x = 1886.575, y = 196.157, z = -1553.529 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123010, pos = { x = 1885.768, y = 196.110, z = -1554.966 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123011, pos = { x = 1884.999, y = 196.017, z = -1556.578 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 123012, pos = { x = 1892.491, y = 196.715, z = -1551.336 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 123013, pos = { x = 1891.823, y = 196.668, z = -1554.822 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 123014, pos = { x = 1889.282, y = 196.290, z = -1559.306 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 123015, pos = { x = 1886.004, y = 195.431, z = -1561.730 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 123016, pos = { x = 1890.931, y = 196.597, z = -1557.244 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 123017, pos = { x = 1884.109, y = 195.973, z = -1544.488 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 123018, pos = { x = 1881.946, y = 195.909, z = -1544.143 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 123019, pos = { x = 1879.010, y = 195.831, z = -1545.253 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 123020, pos = { x = 1876.652, y = 195.930, z = -1547.460 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 123021, pos = { x = 1876.304, y = 196.020, z = -1549.910 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 123023, 123024, 123025 },
		triggers = { },
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

require "V2_8/V2_8ArenaChallenge"
require "V2_0/SetPerformanceOptimizationWithRegion_V3.0"