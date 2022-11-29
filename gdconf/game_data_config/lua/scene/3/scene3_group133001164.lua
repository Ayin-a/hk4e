-- 基础信息
local base_info = {
	group_id = 133001164
}

-- Trigger变量
local defs = {
	state_change_condition_num = 15,
	gallery_id = 21027,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010044,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 164003,
	control_group_id = 133001101,
	inner_region = 164022,
	outer_region = 164023,
	related_region = 164024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34041, total_num = 999, min = 5,max = 5},
    [2] = {pool_id = 34041, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {164001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 26040102, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4161, 1045, 9009, 4056 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164003, gadget_id = 70380234, pos = { x = 1882.068, y = 195.878, z = -1550.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 164022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.021, y = 195.878, z = -1550.678 }, area_id = 2 },
	{ config_id = 164023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.021, y = 195.878, z = -1550.678 }, area_id = 2 },
	{ config_id = 164024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1882.021, y = 195.878, z = -1550.678 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 164004, pos = { x = 1888.109, y = 196.245, z = -1554.857 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164005, pos = { x = 1886.328, y = 196.013, z = -1557.491 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164006, pos = { x = 1888.942, y = 196.320, z = -1553.050 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164007, pos = { x = 1887.234, y = 196.154, z = -1556.299 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164008, pos = { x = 1887.361, y = 196.125, z = -1551.746 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164009, pos = { x = 1886.592, y = 196.144, z = -1553.358 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164010, pos = { x = 1885.785, y = 196.096, z = -1554.795 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164011, pos = { x = 1885.016, y = 196.003, z = -1556.407 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 164012, pos = { x = 1892.508, y = 196.702, z = -1551.165 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 164013, pos = { x = 1891.840, y = 196.655, z = -1554.651 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 164014, pos = { x = 1889.299, y = 196.277, z = -1559.135 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 164015, pos = { x = 1886.021, y = 195.418, z = -1561.559 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 164016, pos = { x = 1890.948, y = 196.584, z = -1557.073 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 164017, pos = { x = 1884.126, y = 195.960, z = -1544.317 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 164018, pos = { x = 1881.963, y = 195.895, z = -1543.972 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 164019, pos = { x = 1879.027, y = 195.818, z = -1545.082 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 164020, pos = { x = 1876.669, y = 195.917, z = -1547.289 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 164021, pos = { x = 1876.321, y = 196.007, z = -1549.739 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 164002, monster_id = 24010201, pos = { x = 1875.397, y = 195.843, z = -1560.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", affix = { 4161 }, pose_id = 100, area_id = 2 }
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
		regions = { 164022, 164023, 164024 },
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