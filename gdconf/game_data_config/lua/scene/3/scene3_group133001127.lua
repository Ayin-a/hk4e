-- 基础信息
local base_info = {
	group_id = 133001127
}

-- Trigger变量
local defs = {
	state_change_condition_num = 12,
	gallery_id = 21005,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010039,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 1,
	change_stage_interval = 20,
	airwall = 127003,
	control_group_id = 133001101,
	inner_region = 127024,
	outer_region = 127025,
	related_region = 127026
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34009, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34009, total_num = 999, min = 3,max = 3}
}

local elite_list = 
{
    [1] = {127001,127002,127022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 21020601, pos = { x = 1890.583, y = 196.582, z = -1555.582 }, rot = { x = 0.000, y = 300.075, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 127002, monster_id = 22010304, pos = { x = 1885.415, y = 195.782, z = -1559.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 127022, monster_id = 22010203, pos = { x = 1890.495, y = 196.504, z = -1551.844 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127003, gadget_id = 70380234, pos = { x = 1882.054, y = 195.895, z = -1550.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 127024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.007, y = 195.894, z = -1550.891 }, area_id = 2 },
	{ config_id = 127025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.007, y = 195.894, z = -1550.891 }, area_id = 2 },
	{ config_id = 127026, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.007, y = 195.894, z = -1550.891 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 127004, pos = { x = 1888.095, y = 196.262, z = -1555.069 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127005, pos = { x = 1886.314, y = 196.030, z = -1557.703 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127006, pos = { x = 1888.928, y = 196.337, z = -1553.262 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127007, pos = { x = 1887.220, y = 196.171, z = -1556.511 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127008, pos = { x = 1887.347, y = 196.141, z = -1551.958 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127009, pos = { x = 1886.578, y = 196.160, z = -1553.571 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127010, pos = { x = 1885.771, y = 196.113, z = -1555.007 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127011, pos = { x = 1885.002, y = 196.020, z = -1556.620 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 127012, pos = { x = 1892.494, y = 196.719, z = -1551.377 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 127013, pos = { x = 1891.826, y = 196.671, z = -1554.864 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 127014, pos = { x = 1889.285, y = 196.293, z = -1559.348 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 127015, pos = { x = 1886.007, y = 195.435, z = -1561.771 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 127016, pos = { x = 1890.934, y = 196.601, z = -1557.286 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 127017, pos = { x = 1884.112, y = 195.977, z = -1544.530 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 127018, pos = { x = 1881.949, y = 195.912, z = -1544.184 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 127019, pos = { x = 1879.013, y = 195.835, z = -1545.295 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 127020, pos = { x = 1876.655, y = 195.934, z = -1547.501 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 127021, pos = { x = 1876.307, y = 196.023, z = -1549.952 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 127027, pos = { x = 1889.851, y = 196.262, z = -1552.730 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 127023, monster_id = 22010304, pos = { x = 1885.221, y = 195.972, z = -1557.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 }
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
		regions = { 127024, 127025, 127026 },
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