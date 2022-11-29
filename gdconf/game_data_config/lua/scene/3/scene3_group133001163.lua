-- 基础信息
local base_info = {
	group_id = 133001163
}

-- Trigger变量
local defs = {
	state_change_condition_num = 15,
	gallery_id = 21026,
	father_challenge_id = 2010034,
	kill_monster_challenge_id = 2010035,
	time_challenge_id = 2010036,
	state_change_challenge_id = 2010044,
	worktop_id = 101001,
	elite_interval = 2,
	challenge_time = 180,
	is_easy_mode = 0,
	change_stage_interval = 20,
	airwall = 163003,
	control_group_id = 133001101,
	inner_region = 163022,
	outer_region = 163023,
	related_region = 163024
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 34025, total_num = 999, min = 4,max = 4},
    [2] = {pool_id = 34025, total_num = 999, min = 2,max = 2}
}

local elite_list = 
{
    [1] = {163001}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 26040102, pos = { x = 1885.031, y = 195.497, z = -1560.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163003, gadget_id = 70380234, pos = { x = 1882.034, y = 195.878, z = -1550.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 163022, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.987, y = 195.877, z = -1550.673 }, area_id = 2 },
	{ config_id = 163023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.987, y = 195.877, z = -1550.673 }, area_id = 2 },
	{ config_id = 163024, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1881.987, y = 195.877, z = -1550.673 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 163004, pos = { x = 1888.075, y = 196.245, z = -1554.852 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163005, pos = { x = 1886.294, y = 196.013, z = -1557.486 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163006, pos = { x = 1888.908, y = 196.320, z = -1553.045 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163007, pos = { x = 1887.200, y = 196.154, z = -1556.294 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163008, pos = { x = 1887.327, y = 196.124, z = -1551.741 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163009, pos = { x = 1886.558, y = 196.143, z = -1553.354 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163010, pos = { x = 1885.751, y = 196.096, z = -1554.790 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163011, pos = { x = 1884.982, y = 196.003, z = -1556.402 }, rot = { x = 0.000, y = 306.893, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 163012, pos = { x = 1892.474, y = 196.702, z = -1551.160 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 163013, pos = { x = 1891.806, y = 196.655, z = -1554.646 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 163014, pos = { x = 1889.265, y = 196.276, z = -1559.130 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 163015, pos = { x = 1885.987, y = 195.418, z = -1561.554 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 163016, pos = { x = 1890.914, y = 196.584, z = -1557.068 }, rot = { x = 0.000, y = 306.365, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 163017, pos = { x = 1884.092, y = 195.960, z = -1544.313 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 163018, pos = { x = 1881.929, y = 195.895, z = -1543.967 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 163019, pos = { x = 1878.993, y = 195.818, z = -1545.078 }, rot = { x = 359.967, y = 145.753, z = 0.052 }, area_id = 2, tag = 3 },
	{ config_id = 163020, pos = { x = 1876.635, y = 195.917, z = -1547.284 }, rot = { x = 0.000, y = 146.703, z = 0.000 }, area_id = 2, tag = 3 },
	{ config_id = 163021, pos = { x = 1876.287, y = 196.006, z = -1549.734 }, rot = { x = 0.000, y = 145.703, z = 0.000 }, area_id = 2, tag = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 163002, monster_id = 24010201, pos = { x = 1875.363, y = 195.845, z = -1560.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", pose_id = 100, area_id = 2 }
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
		regions = { 163022, 163023, 163024 },
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