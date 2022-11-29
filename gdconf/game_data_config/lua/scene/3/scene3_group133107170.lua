-- 基础信息
local base_info = {
	group_id = 133107170
}

-- Trigger变量
local defs = {
	timer_region = 170010,
	challenge_region = 170002,
	monster_hilichurl = 170001,
	exist_hour = {12,18}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170001, monster_id = 21011501, pos = { x = -169.000, y = 322.001, z = 118.000 }, rot = { x = 0.000, y = 135.972, z = 0.000 }, level = 15, drop_id = 200050002, affix = { 4117, 1035 }, pose_id = 9002, guest_ban_drop = 63, area_id = 7, guest_ban_drop = 63 },
	{ config_id = 170003, monster_id = 21010701, pos = { x = -180.504, y = 322.478, z = 122.659 }, rot = { x = 0.000, y = 97.410, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 7 },
	{ config_id = 170004, monster_id = 21010701, pos = { x = -167.653, y = 321.530, z = 116.392 }, rot = { x = 0.000, y = 304.272, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 7 },
	{ config_id = 170005, monster_id = 21010701, pos = { x = -175.289, y = 322.820, z = 127.615 }, rot = { x = 0.000, y = 186.320, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 7 },
	{ config_id = 170006, monster_id = 21020301, pos = { x = -175.984, y = 322.398, z = 120.439 }, rot = { x = 0.000, y = 117.773, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 7 },
	{ config_id = 170007, monster_id = 21030301, pos = { x = -167.859, y = 322.798, z = 124.619 }, rot = { x = 0.000, y = 173.367, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 170008, gadget_id = 70360001, pos = { x = -176.941, y = 322.396, z = 120.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 170002, shape = RegionShape.SPHERE, radius = 45, pos = { x = -198.573, y = 307.127, z = 104.453 }, area_id = 7 },
	{ config_id = 170010, shape = RegionShape.SPHERE, radius = 55, pos = { x = -198.573, y = 307.127, z = 104.453 }, area_id = 7 }
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
		gadgets = { 170008 },
		regions = { 170002, 170010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 170003, 170004, 170005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 170006, 170007 },
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