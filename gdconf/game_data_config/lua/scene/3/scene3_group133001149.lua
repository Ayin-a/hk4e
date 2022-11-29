-- 基础信息
local base_info = {
	group_id = 133001149
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21023,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010043,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 149003,
	control_group_id = 133001101,
	inner_region = 149023,
	outer_region = 149024,
	related_region = 149025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34039, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34039, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {149001,149002,149022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149001, monster_id = 21020701, pos = { x = 1892.304, y = 196.726, z = -1556.131 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009, 4056 }, area_id = 2 },
	{ config_id = 149002, monster_id = 21020701, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009, 4056 }, area_id = 2 },
	{ config_id = 149022, monster_id = 21020701, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009, 4056 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149003, gadget_id = 70380234, pos = { x = 1882.008, y = 195.876, z = -1550.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 149023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.961, y = 195.875, z = -1550.645 }, area_id = 2 },
	{ config_id = 149024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.961, y = 195.875, z = -1550.645 }, area_id = 2 },
	{ config_id = 149025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.961, y = 195.875, z = -1550.645 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 149004, pos = { x = 1888.049, y = 196.242, z = -1554.824 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149005, pos = { x = 1886.268, y = 196.011, z = -1557.458 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149006, pos = { x = 1888.882, y = 196.317, z = -1553.017 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149007, pos = { x = 1887.174, y = 196.152, z = -1556.266 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149008, pos = { x = 1887.301, y = 196.122, z = -1551.713 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149009, pos = { x = 1886.532, y = 196.141, z = -1553.325 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149010, pos = { x = 1885.725, y = 196.094, z = -1554.762 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149011, pos = { x = 1884.956, y = 196.001, z = -1556.374 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 149012, pos = { x = 1892.448, y = 196.700, z = -1551.132 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 149013, pos = { x = 1891.780, y = 196.652, z = -1554.618 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 149014, pos = { x = 1889.239, y = 196.274, z = -1559.102 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 149015, pos = { x = 1885.961, y = 195.416, z = -1561.526 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 149016, pos = { x = 1890.888, y = 196.581, z = -1557.040 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 149017, pos = { x = 1884.066, y = 195.957, z = -1544.284 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 149018, pos = { x = 1881.903, y = 195.893, z = -1543.939 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 149019, pos = { x = 1878.967, y = 195.815, z = -1545.049 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 149020, pos = { x = 1876.609, y = 195.914, z = -1547.256 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 149021, pos = { x = 1876.261, y = 196.004, z = -1549.706 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 149023, 149024, 149025 },
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