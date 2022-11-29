-- 基础信息
local base_info = {
	group_id = 133001140
}

-- Trigger变量
local defs = {
	state_change_condition_num = 15,
	gallery_id = 21020,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010069,
	state_change_challenge_id = 2010042,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 150,
	is_easy_mode = 0,
	change_stage_interval = 30,
	airwall = 140003,
	control_group_id = 133001101,
	inner_region = 140024,
	outer_region = 140025,
	related_region = 140026
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34019, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34019, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {140022,140027},
    [2] = {140028,140029},
    [3] = {140001,140023}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 21020201, pos = { x = 1892.304, y = 196.726, z = -1556.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 140022, monster_id = 21020301, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 140023, monster_id = 21020501, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009, 1007 }, area_id = 2 },
	{ config_id = 140027, monster_id = 21020201, pos = { x = 1883.093, y = 195.842, z = -1559.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 140028, monster_id = 21020301, pos = { x = 1878.951, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 140029, monster_id = 21020301, pos = { x = 1886.672, y = 195.842, z = -1559.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140003, gadget_id = 70380234, pos = { x = 1882.043, y = 195.892, z = -1550.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 140024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.891, z = -1550.850 }, area_id = 2 },
	{ config_id = 140025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.891, z = -1550.850 }, area_id = 2 },
	{ config_id = 140026, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.891, z = -1550.850 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 140004, pos = { x = 1888.084, y = 196.258, z = -1555.029 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140005, pos = { x = 1886.303, y = 196.027, z = -1557.663 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140006, pos = { x = 1888.917, y = 196.333, z = -1553.222 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140007, pos = { x = 1887.209, y = 196.168, z = -1556.471 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140008, pos = { x = 1887.336, y = 196.138, z = -1551.918 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140009, pos = { x = 1886.567, y = 196.157, z = -1553.530 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140010, pos = { x = 1885.760, y = 196.110, z = -1554.967 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140011, pos = { x = 1884.991, y = 196.017, z = -1556.579 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 140012, pos = { x = 1892.483, y = 196.716, z = -1551.337 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 140013, pos = { x = 1891.815, y = 196.668, z = -1554.823 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 140014, pos = { x = 1889.274, y = 196.290, z = -1559.307 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 140015, pos = { x = 1885.996, y = 195.432, z = -1561.731 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 140016, pos = { x = 1890.923, y = 196.597, z = -1557.245 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 140017, pos = { x = 1884.101, y = 195.973, z = -1544.489 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 140018, pos = { x = 1881.938, y = 195.909, z = -1544.144 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 140019, pos = { x = 1879.002, y = 195.831, z = -1545.254 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 140020, pos = { x = 1876.644, y = 195.930, z = -1547.461 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 140021, pos = { x = 1876.296, y = 196.020, z = -1549.911 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 140002, monster_id = 24010201, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_tag = "遗迹守卫", pose_id = 100, area_id = 2 }
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
		regions = { 140024, 140025, 140026 },
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