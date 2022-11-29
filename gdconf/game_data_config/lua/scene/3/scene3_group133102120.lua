-- 基础信息
local base_info = {
	group_id = 133102120
}

-- Trigger变量
local defs = {
	timer_region = 120010,
	challenge_region = 120002,
	monster_hilichurl = 120001,
	exist_hour = {12,18}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 21011501, pos = { x = 1583.790, y = 298.364, z = 160.742 }, rot = { x = 0.000, y = 313.836, z = 0.000 }, level = 15, drop_id = 200050004, affix = { 4117, 1035 }, pose_id = 9005, guest_ban_drop = 63, area_id = 5, guest_ban_drop = 63 },
	{ config_id = 120003, monster_id = 21010601, pos = { x = 1582.776, y = 300.041, z = 165.930 }, rot = { x = 0.000, y = 148.341, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 },
	{ config_id = 120004, monster_id = 21010601, pos = { x = 1587.473, y = 299.722, z = 165.088 }, rot = { x = 0.000, y = 199.689, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 },
	{ config_id = 120005, monster_id = 21030401, pos = { x = 1584.962, y = 299.889, z = 164.748 }, rot = { x = 0.000, y = 189.483, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 },
	{ config_id = 120006, monster_id = 21020301, pos = { x = 1580.870, y = 295.984, z = 154.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 },
	{ config_id = 120007, monster_id = 21020301, pos = { x = 1587.430, y = 300.090, z = 166.856 }, rot = { x = 0.000, y = 210.860, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120008, gadget_id = 70360001, pos = { x = 1586.811, y = 298.276, z = 159.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 120002, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1577.817, y = 282.314, z = 150.595 }, area_id = 5 },
	{ config_id = 120010, shape = RegionShape.SPHERE, radius = 55, pos = { x = 1577.817, y = 282.314, z = 150.595 }, area_id = 5 }
}

-- 触发器
triggers = {
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
		gadgets = { 120008 },
		regions = { 120002, 120010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120003, 120004, 120005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 120006, 120007 },
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

require "V1_5/HilichurlLevel"