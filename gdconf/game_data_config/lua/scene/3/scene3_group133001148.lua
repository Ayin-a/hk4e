-- 基础信息
local base_info = {
	group_id = 133001148
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21022,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010043,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 148003,
	control_group_id = 133001101,
	inner_region = 148023,
	outer_region = 148024,
	related_region = 148025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34021, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34021, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {148001,148002,148022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 21020701, pos = { x = 1892.304, y = 196.726, z = -1556.131 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 148002, monster_id = 21020701, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 148022, monster_id = 21020701, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148003, gadget_id = 70380234, pos = { x = 1881.993, y = 195.872, z = -1550.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 148023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.946, y = 195.871, z = -1550.598 }, area_id = 2 },
	{ config_id = 148024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.946, y = 195.871, z = -1550.598 }, area_id = 2 },
	{ config_id = 148025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.946, y = 195.871, z = -1550.598 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 148004, pos = { x = 1888.034, y = 196.239, z = -1554.777 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148005, pos = { x = 1886.253, y = 196.007, z = -1557.411 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148006, pos = { x = 1888.867, y = 196.314, z = -1552.970 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148007, pos = { x = 1887.159, y = 196.148, z = -1556.219 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148008, pos = { x = 1887.286, y = 196.118, z = -1551.666 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148009, pos = { x = 1886.517, y = 196.137, z = -1553.278 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148010, pos = { x = 1885.710, y = 196.090, z = -1554.715 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148011, pos = { x = 1884.941, y = 195.997, z = -1556.327 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 148012, pos = { x = 1892.433, y = 196.696, z = -1551.085 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 148013, pos = { x = 1891.765, y = 196.648, z = -1554.571 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 148014, pos = { x = 1889.224, y = 196.270, z = -1559.055 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 148015, pos = { x = 1885.946, y = 195.412, z = -1561.479 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 148016, pos = { x = 1890.873, y = 196.578, z = -1556.993 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 148017, pos = { x = 1884.051, y = 195.953, z = -1544.237 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 148018, pos = { x = 1881.888, y = 195.889, z = -1543.892 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 148019, pos = { x = 1878.952, y = 195.811, z = -1545.002 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 148020, pos = { x = 1876.594, y = 195.910, z = -1547.209 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 148021, pos = { x = 1876.246, y = 196.000, z = -1549.659 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 148023, 148024, 148025 },
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