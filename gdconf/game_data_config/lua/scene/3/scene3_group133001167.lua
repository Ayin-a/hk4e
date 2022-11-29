-- 基础信息
local base_info = {
	group_id = 133001167
}

-- Trigger变量
local defs = {
	state_change_condition_num = 15,
	gallery_id = 21028,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010069,
	state_change_challenge_id = 2010044,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 150,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 167003,
	control_group_id = 133001101,
	inner_region = 167022,
	related_region = 167024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34027, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34027, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {167001,167002},
    [2] = {167025,167026}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 26040102, pos = { x = 1892.299, y = 196.728, z = -1555.978 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6103, 1045, 9009 }, area_id = 2 },
	{ config_id = 167002, monster_id = 26040104, pos = { x = 1875.367, y = 195.844, z = -1560.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 },
	{ config_id = 167025, monster_id = 26040102, pos = { x = 1891.247, y = 196.728, z = -1555.409 }, rot = { x = 0.000, y = 281.917, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 6103, 1045, 9009 }, area_id = 2 },
	{ config_id = 167026, monster_id = 26040104, pos = { x = 1874.315, y = 195.844, z = -1560.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 95, drop_id = 1000100, disableWander = true, affix = { 4162, 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167003, gadget_id = 70380234, pos = { x = 1882.038, y = 195.880, z = -1550.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 167022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.991, y = 195.879, z = -1550.697 }, area_id = 2 },
	{ config_id = 167023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.991, y = 195.879, z = -1550.697 }, area_id = 2 },
	{ config_id = 167024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.991, y = 195.879, z = -1550.697 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 167004, pos = { x = 1888.079, y = 196.246, z = -1554.876 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167005, pos = { x = 1886.298, y = 196.015, z = -1557.510 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167006, pos = { x = 1888.912, y = 196.321, z = -1553.069 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167007, pos = { x = 1887.204, y = 196.156, z = -1556.318 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167008, pos = { x = 1887.331, y = 196.126, z = -1551.765 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167009, pos = { x = 1886.562, y = 196.145, z = -1553.377 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167010, pos = { x = 1885.755, y = 196.098, z = -1554.814 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167011, pos = { x = 1884.986, y = 196.005, z = -1556.426 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 167012, pos = { x = 1892.478, y = 196.704, z = -1551.184 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 167013, pos = { x = 1891.810, y = 196.656, z = -1554.670 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 167014, pos = { x = 1889.269, y = 196.278, z = -1559.154 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 167015, pos = { x = 1885.991, y = 195.420, z = -1561.578 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 167016, pos = { x = 1890.918, y = 196.585, z = -1557.092 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 167017, pos = { x = 1884.096, y = 195.961, z = -1544.336 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 167018, pos = { x = 1881.933, y = 195.897, z = -1543.991 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 167019, pos = { x = 1878.997, y = 195.819, z = -1545.101 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 167020, pos = { x = 1876.639, y = 195.918, z = -1547.308 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 167021, pos = { x = 1876.291, y = 196.008, z = -1549.758 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
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
		regions = { 167022, 167023, 167024 },
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