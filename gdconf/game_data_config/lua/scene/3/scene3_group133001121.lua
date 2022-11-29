-- 基础信息
local base_info = {
	group_id = 133001121
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21009,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010040,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 1,
	change_stage_interval = 20,
	airwall = 121003,
	control_group_id = 133001101,
	inner_region = 121023,
	outer_region = 121024,
	related_region = 121025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34005, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34005, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {121001,121002,121022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 26010101, pos = { x = 1892.301, y = 196.726, z = -1556.098 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 },
	{ config_id = 121002, monster_id = 26010201, pos = { x = 1876.749, y = 195.760, z = -1561.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 },
	{ config_id = 121022, monster_id = 21020202, pos = { x = 1883.230, y = 195.749, z = -1559.430 }, rot = { x = 0.000, y = 343.604, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121003, gadget_id = 70380234, pos = { x = 1882.040, y = 195.889, z = -1550.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 121023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.993, y = 195.888, z = -1550.817 }, area_id = 2 },
	{ config_id = 121024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.993, y = 195.888, z = -1550.817 }, area_id = 2 },
	{ config_id = 121025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.993, y = 195.888, z = -1550.817 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 121004, pos = { x = 1888.081, y = 196.256, z = -1554.996 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121005, pos = { x = 1886.300, y = 196.024, z = -1557.630 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121006, pos = { x = 1888.914, y = 196.331, z = -1553.189 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121007, pos = { x = 1887.206, y = 196.165, z = -1556.438 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121008, pos = { x = 1887.333, y = 196.135, z = -1551.885 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121009, pos = { x = 1886.564, y = 196.155, z = -1553.497 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121010, pos = { x = 1885.757, y = 196.107, z = -1554.934 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121011, pos = { x = 1884.988, y = 196.014, z = -1556.546 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 121012, pos = { x = 1892.480, y = 196.713, z = -1551.304 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 121013, pos = { x = 1891.812, y = 196.666, z = -1554.790 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 121014, pos = { x = 1889.271, y = 196.287, z = -1559.274 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 121015, pos = { x = 1885.993, y = 195.429, z = -1561.698 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 121016, pos = { x = 1890.920, y = 196.595, z = -1557.212 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 121017, pos = { x = 1884.098, y = 195.971, z = -1544.456 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 121018, pos = { x = 1881.935, y = 195.906, z = -1544.111 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 121019, pos = { x = 1878.999, y = 195.829, z = -1545.221 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 121020, pos = { x = 1876.641, y = 195.928, z = -1547.428 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 121021, pos = { x = 1876.293, y = 196.018, z = -1549.878 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 121023, 121024, 121025 },
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