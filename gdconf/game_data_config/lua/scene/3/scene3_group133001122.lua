-- 基础信息
local base_info = {
	group_id = 133001122
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21010,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010040,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 122003,
	control_group_id = 133001101,
	inner_region = 122023,
	outer_region = 122024,
	related_region = 122025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34005, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34005, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {122001,122002,122022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122001, monster_id = 26010101, pos = { x = 1892.417, y = 196.739, z = -1555.991 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 },
	{ config_id = 122002, monster_id = 26010201, pos = { x = 1875.485, y = 195.839, z = -1560.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 },
	{ config_id = 122022, monster_id = 21020202, pos = { x = 1884.859, y = 195.575, z = -1560.414 }, rot = { x = 0.000, y = 349.587, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 9009, 1045 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 122003, gadget_id = 70380234, pos = { x = 1882.156, y = 195.881, z = -1550.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 122023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.109, y = 195.880, z = -1550.710 }, area_id = 2 },
	{ config_id = 122024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.109, y = 195.880, z = -1550.710 }, area_id = 2 },
	{ config_id = 122025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.109, y = 195.880, z = -1550.710 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 122004, pos = { x = 1888.197, y = 196.247, z = -1554.889 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122005, pos = { x = 1886.416, y = 196.016, z = -1557.523 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122006, pos = { x = 1889.030, y = 196.322, z = -1553.082 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122007, pos = { x = 1887.322, y = 196.157, z = -1556.331 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122008, pos = { x = 1887.449, y = 196.127, z = -1551.778 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122009, pos = { x = 1886.680, y = 196.146, z = -1553.390 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122010, pos = { x = 1885.873, y = 196.099, z = -1554.827 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122011, pos = { x = 1885.104, y = 196.006, z = -1556.439 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 122012, pos = { x = 1892.596, y = 196.705, z = -1551.197 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 122013, pos = { x = 1891.928, y = 196.657, z = -1554.683 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 122014, pos = { x = 1889.387, y = 196.279, z = -1559.167 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 122015, pos = { x = 1886.109, y = 195.421, z = -1561.591 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 122016, pos = { x = 1891.036, y = 196.586, z = -1557.105 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 122017, pos = { x = 1884.214, y = 195.962, z = -1544.349 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 122018, pos = { x = 1882.051, y = 195.898, z = -1544.004 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 122019, pos = { x = 1879.115, y = 195.820, z = -1545.114 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 122020, pos = { x = 1876.757, y = 195.919, z = -1547.321 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 122021, pos = { x = 1876.409, y = 196.009, z = -1549.771 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 122023, 122024, 122025 },
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