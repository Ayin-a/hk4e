-- 基础信息
local base_info = {
	group_id = 133001124
}

-- Trigger变量
local defs = {
	state_change_condition_num = 20,
	gallery_id = 21012,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010069,
	state_change_challenge_id = 2010040,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 150,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 124003,
	control_group_id = 133001101,
	inner_region = 124028,
	outer_region = 124029,
	related_region = 124030
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34007, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34007, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {124001,124002,124024},
    [2] = {124025,124026,124027},
    [3] = {124031,124032,124033},
    [4] = {124034,124035,124036}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 21020202, pos = { x = 1887.113, y = 196.103, z = -1551.145 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124002, monster_id = 21020202, pos = { x = 1883.607, y = 196.097, z = -1555.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124024, monster_id = 21020202, pos = { x = 1889.463, y = 196.538, z = -1557.228 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124025, monster_id = 26010201, pos = { x = 1889.463, y = 196.538, z = -1557.228 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6105, 1045, 9009 }, area_id = 2 },
	{ config_id = 124026, monster_id = 21020201, pos = { x = 1887.113, y = 196.103, z = -1551.145 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124027, monster_id = 26010101, pos = { x = 1883.607, y = 196.097, z = -1555.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124031, monster_id = 21020201, pos = { x = 1886.727, y = 196.103, z = -1553.779 }, rot = { x = 0.000, y = 306.705, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124032, monster_id = 21020202, pos = { x = 1889.743, y = 196.538, z = -1555.537 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124033, monster_id = 21020202, pos = { x = 1883.887, y = 196.097, z = -1554.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124034, monster_id = 26010201, pos = { x = 1885.682, y = 196.538, z = -1553.808 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6105, 1045, 9009 }, area_id = 2 },
	{ config_id = 124035, monster_id = 26010201, pos = { x = 1889.859, y = 196.538, z = -1548.943 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 124036, monster_id = 26010101, pos = { x = 1890.952, y = 196.103, z = -1553.847 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124003, gadget_id = 70380234, pos = { x = 1881.897, y = 195.877, z = -1550.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 124028, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.850, y = 195.876, z = -1550.697 }, area_id = 2 },
	{ config_id = 124029, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.850, y = 195.876, z = -1550.697 }, area_id = 2 },
	{ config_id = 124030, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.850, y = 195.876, z = -1550.697 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 124004, pos = { x = 1887.938, y = 196.243, z = -1554.876 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124005, pos = { x = 1886.157, y = 196.012, z = -1557.510 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124006, pos = { x = 1888.771, y = 196.318, z = -1553.069 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124007, pos = { x = 1887.063, y = 196.152, z = -1556.318 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124008, pos = { x = 1887.190, y = 196.123, z = -1551.765 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124009, pos = { x = 1886.421, y = 196.142, z = -1553.377 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124010, pos = { x = 1885.614, y = 196.095, z = -1554.814 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124011, pos = { x = 1884.845, y = 196.002, z = -1556.426 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 124012, pos = { x = 1892.337, y = 196.700, z = -1551.184 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 124013, pos = { x = 1891.669, y = 196.653, z = -1554.670 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 124014, pos = { x = 1889.128, y = 196.275, z = -1559.154 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 124015, pos = { x = 1885.850, y = 195.416, z = -1561.578 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 124016, pos = { x = 1890.777, y = 196.582, z = -1557.092 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 124017, pos = { x = 1883.955, y = 195.958, z = -1544.336 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 124018, pos = { x = 1881.792, y = 195.894, z = -1543.991 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 124019, pos = { x = 1878.856, y = 195.816, z = -1545.101 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 124020, pos = { x = 1876.498, y = 195.915, z = -1547.308 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 124021, pos = { x = 1876.150, y = 196.005, z = -1549.758 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 124022, monster_id = 25100101, pos = { x = 1885.893, y = 196.048, z = -1552.705 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162 }, pose_id = 1, area_id = 2 },
		{ config_id = 124023, monster_id = 25100201, pos = { x = 1881.457, y = 196.083, z = -1556.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162 }, pose_id = 1, area_id = 2 }
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
		regions = { 124028, 124029, 124030 },
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