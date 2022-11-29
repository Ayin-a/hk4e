-- 基础信息
local base_info = {
	group_id = 133001115
}

-- Trigger变量
local defs = {
	state_change_condition_num = 6,
	gallery_id = 21003,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010038,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 115003,
	control_group_id = 133001101,
	inner_region = 115022,
	outer_region = 115023,
	related_region = 115024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34029, total_num = 999, min = 3,max = 3},
    [2] = {pool_id = 34029, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {115001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 24010201, pos = { x = 1892.312, y = 196.727, z = -1556.095 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4161, 1045, 9009, 4056 }, pose_id = 100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115003, gadget_id = 70380234, pos = { x = 1882.051, y = 195.889, z = -1550.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 115022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.051, y = 195.889, z = -1550.827 }, area_id = 2 },
	{ config_id = 115023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.051, y = 195.889, z = -1550.827 }, area_id = 2 },
	{ config_id = 115024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.051, y = 195.889, z = -1550.827 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 115004, pos = { x = 1888.092, y = 196.256, z = -1554.993 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115005, pos = { x = 1886.311, y = 196.024, z = -1557.627 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115006, pos = { x = 1888.925, y = 196.331, z = -1553.186 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115007, pos = { x = 1887.217, y = 196.165, z = -1556.435 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115008, pos = { x = 1887.344, y = 196.135, z = -1551.882 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115009, pos = { x = 1886.575, y = 196.154, z = -1553.495 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115010, pos = { x = 1885.768, y = 196.107, z = -1554.931 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115011, pos = { x = 1884.999, y = 196.014, z = -1556.543 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 115012, pos = { x = 1892.491, y = 196.713, z = -1551.301 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 115013, pos = { x = 1891.823, y = 196.666, z = -1554.787 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 115014, pos = { x = 1889.282, y = 196.287, z = -1559.271 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 115015, pos = { x = 1886.004, y = 195.429, z = -1561.695 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 115016, pos = { x = 1890.931, y = 196.595, z = -1557.209 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 115017, pos = { x = 1884.109, y = 195.971, z = -1544.453 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 115018, pos = { x = 1881.946, y = 195.906, z = -1544.108 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 115019, pos = { x = 1879.010, y = 195.829, z = -1545.219 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 115020, pos = { x = 1876.652, y = 195.928, z = -1547.425 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 115021, pos = { x = 1876.304, y = 196.017, z = -1549.875 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 115002, monster_id = 24010201, pos = { x = 1875.380, y = 195.842, z = -1560.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4161 }, pose_id = 100, area_id = 2 }
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
		regions = { 115022, 115023, 115024 },
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