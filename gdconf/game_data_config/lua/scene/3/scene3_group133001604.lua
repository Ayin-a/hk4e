-- 基础信息
local base_info = {
	group_id = 133001604
}

-- Trigger变量
local defs = {
	timer_region = 604010,
	challenge_region = 604002,
	monster_hilichurl = 604001,
	exist_hour = {12,18}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 604001, monster_id = 21011501, pos = { x = 1629.925, y = 344.893, z = -2125.377 }, rot = { x = 0.000, y = 131.498, z = 0.000 }, level = 15, drop_id = 200050006, affix = { 4117, 1035 }, pose_id = 9003, guest_ban_drop = 63, area_id = 2, guest_ban_drop = 63 },
	{ config_id = 604003, monster_id = 21030201, pos = { x = 1624.725, y = 343.999, z = -2118.521 }, rot = { x = 0.000, y = 133.511, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 604004, monster_id = 21010701, pos = { x = 1639.862, y = 345.476, z = -2119.194 }, rot = { x = 0.000, y = 198.558, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 604005, monster_id = 21010701, pos = { x = 1626.078, y = 344.701, z = -2134.064 }, rot = { x = 0.000, y = 70.126, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 604006, monster_id = 21020201, pos = { x = 1623.681, y = 344.326, z = -2124.188 }, rot = { x = 0.000, y = 118.482, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 604007, monster_id = 21020201, pos = { x = 1633.111, y = 344.923, z = -2118.873 }, rot = { x = 0.000, y = 195.327, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 604008, gadget_id = 70360001, pos = { x = 1629.846, y = 345.968, z = -2125.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 604002, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1604.129, y = 341.904, z = -2110.379 }, area_id = 2 },
	{ config_id = 604010, shape = RegionShape.SPHERE, radius = 55, pos = { x = 1604.129, y = 341.904, z = -2110.379 }, area_id = 2 }
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
		gadgets = { 604008 },
		regions = { 604002, 604010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 604003, 604004, 604005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 604006, 604007 },
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