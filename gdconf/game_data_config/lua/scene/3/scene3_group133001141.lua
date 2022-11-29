-- 基础信息
local base_info = {
	group_id = 133001141
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21021,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010043,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 1,
	change_stage_interval = 20,
	airwall = 141003,
	control_group_id = 133001101,
	inner_region = 141023,
	outer_region = 141024,
	related_region = 141025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34021, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34021, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {141001,141002,141022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 21020701, pos = { x = 1892.304, y = 196.726, z = -1556.131 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 141002, monster_id = 21020701, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 141022, monster_id = 21020701, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141003, gadget_id = 70380234, pos = { x = 1882.067, y = 195.881, z = -1550.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 141023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.020, y = 195.880, z = -1550.708 }, area_id = 2 },
	{ config_id = 141024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.020, y = 195.880, z = -1550.708 }, area_id = 2 },
	{ config_id = 141025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.020, y = 195.880, z = -1550.708 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 141004, pos = { x = 1888.108, y = 196.247, z = -1554.887 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141005, pos = { x = 1886.327, y = 196.016, z = -1557.521 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141006, pos = { x = 1888.941, y = 196.322, z = -1553.080 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141007, pos = { x = 1887.233, y = 196.156, z = -1556.329 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141008, pos = { x = 1887.360, y = 196.127, z = -1551.776 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141009, pos = { x = 1886.591, y = 196.146, z = -1553.388 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141010, pos = { x = 1885.784, y = 196.099, z = -1554.825 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141011, pos = { x = 1885.015, y = 196.006, z = -1556.437 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 141012, pos = { x = 1892.507, y = 196.704, z = -1551.195 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 141013, pos = { x = 1891.839, y = 196.657, z = -1554.681 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 141014, pos = { x = 1889.298, y = 196.279, z = -1559.165 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 141015, pos = { x = 1886.020, y = 195.420, z = -1561.589 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 141016, pos = { x = 1890.947, y = 196.586, z = -1557.103 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 141017, pos = { x = 1884.125, y = 195.962, z = -1544.347 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 141018, pos = { x = 1881.962, y = 195.898, z = -1544.002 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 141019, pos = { x = 1879.026, y = 195.820, z = -1545.112 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 141020, pos = { x = 1876.668, y = 195.919, z = -1547.319 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 141021, pos = { x = 1876.320, y = 196.009, z = -1549.769 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 141023, 141024, 141025 },
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