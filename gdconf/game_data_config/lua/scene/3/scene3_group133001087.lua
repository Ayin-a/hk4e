-- 基础信息
local base_info = {
	group_id = 133001087
}

-- Trigger变量
local defs = {
	state_change_condition_num = 6,
	gallery_id = 21001,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010038,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 1,
	change_stage_interval = 20,
	airwall = 87007,
	control_group_id = 133001101,
	inner_region = 87022,
	outer_region = 87022,
	related_region = 87024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34001, total_num = 50, min = 3,max = 3},
    [2] = {pool_id = 34001, total_num = 30, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {87001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87001, monster_id = 24010201, pos = { x = 1892.328, y = 196.034, z = -1556.135 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, pose_id = 100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87007, gadget_id = 70380234, pos = { x = 1882.067, y = 195.892, z = -1550.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 87022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.067, y = 195.892, z = -1550.867 }, area_id = 2 },
	{ config_id = 87023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.067, y = 195.892, z = -1550.867 }, area_id = 2 },
	{ config_id = 87024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.067, y = 195.892, z = -1550.867 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 87003, pos = { x = 1888.108, y = 196.259, z = -1555.033 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87004, pos = { x = 1886.327, y = 196.027, z = -1557.667 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87005, pos = { x = 1888.941, y = 196.334, z = -1553.226 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87006, pos = { x = 1887.233, y = 196.168, z = -1556.475 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87008, pos = { x = 1887.360, y = 196.138, z = -1551.922 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87009, pos = { x = 1886.591, y = 196.157, z = -1553.534 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87010, pos = { x = 1885.784, y = 196.110, z = -1554.971 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87011, pos = { x = 1885.015, y = 196.017, z = -1556.583 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 87012, pos = { x = 1892.507, y = 196.716, z = -1551.341 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 87013, pos = { x = 1891.839, y = 196.669, z = -1554.827 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 87014, pos = { x = 1889.298, y = 196.290, z = -1559.311 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 87015, pos = { x = 1886.020, y = 195.432, z = -1561.735 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 87016, pos = { x = 1890.947, y = 196.598, z = -1557.249 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 87017, pos = { x = 1884.125, y = 195.974, z = -1544.493 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 87018, pos = { x = 1881.962, y = 195.909, z = -1544.148 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 87019, pos = { x = 1879.026, y = 195.832, z = -1545.258 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 87020, pos = { x = 1876.668, y = 195.931, z = -1547.465 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 87021, pos = { x = 1876.320, y = 196.021, z = -1549.915 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 87002, monster_id = 24010201, pos = { x = 1875.396, y = 195.841, z = -1560.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 }
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
		regions = { 87022, 87023, 87024 },
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