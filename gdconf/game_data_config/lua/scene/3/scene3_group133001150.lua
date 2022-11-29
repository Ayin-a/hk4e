-- 基础信息
local base_info = {
	group_id = 133001150
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21024,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010069,
	state_change_challenge_id = 2010043,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 150,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 150003,
	control_group_id = 133001101,
	inner_region = 150023,
	outer_region = 150024,
	related_region = 150025
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34023, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34023, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {150002,150026},
    [2] = {150027,150028},
    [3] = {150001,150022}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 21020701, pos = { x = 1892.304, y = 196.726, z = -1556.131 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 150002, monster_id = 21020701, pos = { x = 1875.372, y = 195.842, z = -1560.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 150022, monster_id = 21020801, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009, 1007 }, area_id = 2 },
	{ config_id = 150026, monster_id = 21020701, pos = { x = 1889.499, y = 196.726, z = -1555.586 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 150027, monster_id = 21020701, pos = { x = 1883.674, y = 195.842, z = -1560.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 150028, monster_id = 21020701, pos = { x = 1887.739, y = 195.842, z = -1558.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150003, gadget_id = 70380234, pos = { x = 1882.043, y = 195.881, z = -1550.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 150023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.880, z = -1550.713 }, area_id = 2 },
	{ config_id = 150024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.880, z = -1550.713 }, area_id = 2 },
	{ config_id = 150025, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.996, y = 195.880, z = -1550.713 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 150004, pos = { x = 1888.084, y = 196.248, z = -1554.892 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150005, pos = { x = 1886.303, y = 196.016, z = -1557.526 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150006, pos = { x = 1888.917, y = 196.323, z = -1553.085 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150007, pos = { x = 1887.209, y = 196.157, z = -1556.334 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150008, pos = { x = 1887.336, y = 196.127, z = -1551.781 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150009, pos = { x = 1886.567, y = 196.146, z = -1553.393 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150010, pos = { x = 1885.760, y = 196.099, z = -1554.830 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150011, pos = { x = 1884.991, y = 196.006, z = -1556.442 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 150012, pos = { x = 1892.483, y = 196.705, z = -1551.200 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 150013, pos = { x = 1891.815, y = 196.658, z = -1554.686 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 150014, pos = { x = 1889.274, y = 196.279, z = -1559.170 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 150015, pos = { x = 1885.996, y = 195.421, z = -1561.594 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 150016, pos = { x = 1890.923, y = 196.587, z = -1557.108 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 150017, pos = { x = 1884.101, y = 195.963, z = -1544.352 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 150018, pos = { x = 1881.938, y = 195.898, z = -1544.007 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 150019, pos = { x = 1879.002, y = 195.821, z = -1545.117 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 150020, pos = { x = 1876.644, y = 195.920, z = -1547.324 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 150021, pos = { x = 1876.296, y = 196.010, z = -1549.774 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 150023, 150024, 150025 },
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