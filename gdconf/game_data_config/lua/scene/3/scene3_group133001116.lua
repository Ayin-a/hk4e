-- 基础信息
local base_info = {
	group_id = 133001116
}

-- Trigger变量
local defs = {
	state_change_condition_num = 6,
	gallery_id = 21004,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010069,
	state_change_challenge_id = 2010038,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 150,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 116003,
	control_group_id = 133001101,
	inner_region = 116022,
	outer_region = 116023,
	related_region = 116024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34003, total_num = 999, min = 3,max = 3},
    [2] = {pool_id = 34003, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {116001},
    [2] = {116002}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116001, monster_id = 24010301, pos = { x = 1892.309, y = 196.727, z = -1556.098 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6108, 9009, 1045 }, pose_id = 100, area_id = 2 },
	{ config_id = 116002, monster_id = 24010301, pos = { x = 1875.377, y = 195.842, z = -1560.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6108, 9009, 1045 }, pose_id = 100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 116003, gadget_id = 70380234, pos = { x = 1882.048, y = 195.889, z = -1550.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 116022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.001, y = 195.888, z = -1550.817 }, area_id = 2 },
	{ config_id = 116023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.001, y = 195.888, z = -1550.817 }, area_id = 2 },
	{ config_id = 116024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.001, y = 195.888, z = -1550.817 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 116004, pos = { x = 1888.089, y = 196.256, z = -1554.996 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116005, pos = { x = 1886.308, y = 196.024, z = -1557.630 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116006, pos = { x = 1888.922, y = 196.331, z = -1553.189 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116007, pos = { x = 1887.214, y = 196.165, z = -1556.438 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116008, pos = { x = 1887.341, y = 196.135, z = -1551.885 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116009, pos = { x = 1886.572, y = 196.155, z = -1553.497 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116010, pos = { x = 1885.765, y = 196.107, z = -1554.934 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116011, pos = { x = 1884.996, y = 196.014, z = -1556.546 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 116012, pos = { x = 1892.488, y = 196.713, z = -1551.304 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 116013, pos = { x = 1891.820, y = 196.666, z = -1554.790 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 116014, pos = { x = 1889.279, y = 196.287, z = -1559.274 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 116015, pos = { x = 1886.001, y = 195.429, z = -1561.698 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 116016, pos = { x = 1890.928, y = 196.595, z = -1557.212 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 116017, pos = { x = 1884.106, y = 195.971, z = -1544.456 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 116018, pos = { x = 1881.943, y = 195.906, z = -1544.111 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 116019, pos = { x = 1879.007, y = 195.829, z = -1545.221 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 116020, pos = { x = 1876.649, y = 195.928, z = -1547.428 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 116021, pos = { x = 1876.301, y = 196.018, z = -1549.878 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 116022, 116023, 116024 },
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