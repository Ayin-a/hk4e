-- 基础信息
local base_info = {
	group_id = 133001151
}

-- Trigger变量
local defs = {
	state_change_condition_num = 15,
	gallery_id = 21025,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010044,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 1,
	change_stage_interval = 20,
	airwall = 151003,
	control_group_id = 133001101,
	inner_region = 151022,
	outer_region = 151023,
	related_region = 151024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34025, total_num = 999, min = 4,max = 4},
    [2] = {pool_id = 34025, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {151001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 26040102, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151003, gadget_id = 70380234, pos = { x = 1882.020, y = 195.879, z = -1550.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 151022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.973, y = 195.878, z = -1550.687 }, area_id = 2 },
	{ config_id = 151023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.973, y = 195.878, z = -1550.687 }, area_id = 2 },
	{ config_id = 151024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.973, y = 195.878, z = -1550.687 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 151004, pos = { x = 1888.061, y = 196.246, z = -1554.866 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151005, pos = { x = 1886.280, y = 196.014, z = -1557.500 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151006, pos = { x = 1888.894, y = 196.321, z = -1553.059 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151007, pos = { x = 1887.186, y = 196.155, z = -1556.308 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151008, pos = { x = 1887.313, y = 196.125, z = -1551.755 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151009, pos = { x = 1886.544, y = 196.144, z = -1553.367 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151010, pos = { x = 1885.737, y = 196.097, z = -1554.804 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151011, pos = { x = 1884.968, y = 196.004, z = -1556.416 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 151012, pos = { x = 1892.460, y = 196.703, z = -1551.174 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 151013, pos = { x = 1891.792, y = 196.656, z = -1554.660 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 151014, pos = { x = 1889.251, y = 196.277, z = -1559.144 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 151015, pos = { x = 1885.973, y = 195.419, z = -1561.568 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 151016, pos = { x = 1890.900, y = 196.585, z = -1557.082 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 151017, pos = { x = 1884.078, y = 195.961, z = -1544.326 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 151018, pos = { x = 1881.915, y = 195.896, z = -1543.981 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 151019, pos = { x = 1878.979, y = 195.819, z = -1545.091 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 151020, pos = { x = 1876.621, y = 195.918, z = -1547.298 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 151021, pos = { x = 1876.273, y = 196.008, z = -1549.748 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 151002, monster_id = 24010201, pos = { x = 1875.349, y = 195.845, z = -1560.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", pose_id = 100, area_id = 2 }
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
		regions = { 151022, 151023, 151024 },
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