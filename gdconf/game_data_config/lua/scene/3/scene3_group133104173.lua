-- 基础信息
local base_info = {
	group_id = 133104173
}

-- Trigger变量
local defs = {
	timer_region = 173010,
	challenge_region = 173002,
	monster_hilichurl = 173001,
	exist_hour = {6,12}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173001, monster_id = 21011501, pos = { x = 405.816, y = 180.646, z = 865.129 }, rot = { x = 0.000, y = 8.366, z = 0.000 }, level = 15, drop_id = 200050007, affix = { 4117, 1035 }, pose_id = 9005, guest_ban_drop = 63, area_id = 6, guest_ban_drop = 63 },
	{ config_id = 173003, monster_id = 21030301, pos = { x = 396.772, y = 180.647, z = 874.484 }, rot = { x = 0.000, y = 147.437, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 173004, monster_id = 21030301, pos = { x = 404.154, y = 180.500, z = 879.443 }, rot = { x = 0.000, y = 150.855, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 173005, monster_id = 21010701, pos = { x = 402.011, y = 180.500, z = 873.561 }, rot = { x = 0.000, y = 150.766, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 173006, monster_id = 21020301, pos = { x = 404.760, y = 180.830, z = 856.530 }, rot = { x = 0.000, y = 7.841, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 173007, monster_id = 21020301, pos = { x = 414.648, y = 180.744, z = 862.144 }, rot = { x = 0.000, y = 294.370, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173008, gadget_id = 70360001, pos = { x = 408.178, y = 180.754, z = 861.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 173002, shape = RegionShape.SPHERE, radius = 45, pos = { x = 403.013, y = 180.595, z = 852.717 }, area_id = 6 },
	{ config_id = 173010, shape = RegionShape.SPHERE, radius = 55, pos = { x = 403.013, y = 180.595, z = 852.717 }, area_id = 6 }
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
		gadgets = { 173008 },
		regions = { 173002, 173010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 173003, 173004, 173005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 173006, 173007 },
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