-- 基础信息
local base_info = {
	group_id = 133001111
}

-- Trigger变量
local defs = {
	state_change_condition_num = 6,
	gallery_id = 21002,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010038,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 111003,
	control_group_id = 133001101,
	inner_region = 111022,
	outer_region = 111023,
	related_region = 111024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34001, total_num = 999, min = 3,max = 3},
    [2] = {pool_id = 34001, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {111001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 24010201, pos = { x = 1892.344, y = 196.731, z = -1556.064 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, pose_id = 100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111003, gadget_id = 70380234, pos = { x = 1882.083, y = 195.887, z = -1550.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 111022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.083, y = 195.887, z = -1550.796 }, area_id = 2 },
	{ config_id = 111023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.083, y = 195.887, z = -1550.796 }, area_id = 2 },
	{ config_id = 111024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.083, y = 195.887, z = -1550.796 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 111004, pos = { x = 1888.124, y = 196.253, z = -1554.962 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111005, pos = { x = 1886.343, y = 196.021, z = -1557.596 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111006, pos = { x = 1888.957, y = 196.328, z = -1553.155 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111007, pos = { x = 1887.249, y = 196.162, z = -1556.404 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111008, pos = { x = 1887.376, y = 196.133, z = -1551.851 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111009, pos = { x = 1886.607, y = 196.152, z = -1553.463 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111010, pos = { x = 1885.800, y = 196.104, z = -1554.900 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111011, pos = { x = 1885.031, y = 196.011, z = -1556.512 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 111012, pos = { x = 1892.523, y = 196.710, z = -1551.270 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 111013, pos = { x = 1891.855, y = 196.663, z = -1554.756 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 111014, pos = { x = 1889.314, y = 196.285, z = -1559.240 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 111015, pos = { x = 1886.036, y = 195.426, z = -1561.664 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 111016, pos = { x = 1890.963, y = 196.592, z = -1557.178 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 111017, pos = { x = 1884.141, y = 195.968, z = -1544.422 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 111018, pos = { x = 1881.978, y = 195.903, z = -1544.077 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 111019, pos = { x = 1879.042, y = 195.826, z = -1545.187 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 111020, pos = { x = 1876.684, y = 195.925, z = -1547.394 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 111021, pos = { x = 1876.336, y = 196.015, z = -1549.844 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 111002, monster_id = 24010201, pos = { x = 1875.412, y = 195.841, z = -1560.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 }
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
		regions = { 111022, 111023, 111024 },
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