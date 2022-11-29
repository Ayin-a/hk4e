-- 基础信息
local base_info = {
	group_id = 133103654
}

-- Trigger变量
local defs = {
	timer_region = 654010,
	challenge_region = 654002,
	monster_hilichurl = 654001,
	exist_hour = {18,24}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 654001, monster_id = 21011501, pos = { x = 157.060, y = 188.488, z = 1323.411 }, rot = { x = 0.000, y = 355.947, z = 0.000 }, level = 15, drop_id = 200050005, affix = { 4117, 1035 }, pose_id = 9005, guest_ban_drop = 63, area_id = 6, guest_ban_drop = 63 },
	{ config_id = 654003, monster_id = 21010901, pos = { x = 154.367, y = 188.416, z = 1335.200 }, rot = { x = 0.000, y = 147.437, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 654004, monster_id = 21030101, pos = { x = 157.327, y = 188.488, z = 1321.347 }, rot = { x = 0.000, y = 7.711, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 654005, monster_id = 21010901, pos = { x = 159.738, y = 188.416, z = 1335.506 }, rot = { x = 0.000, y = 210.447, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 },
	{ config_id = 654006, monster_id = 21020501, pos = { x = 157.471, y = 188.488, z = 1320.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 654007, gadget_id = 70360001, pos = { x = 159.648, y = 188.488, z = 1322.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 654002, shape = RegionShape.SPHERE, radius = 45, pos = { x = 156.619, y = 185.894, z = 1303.515 }, area_id = 6 },
	{ config_id = 654010, shape = RegionShape.SPHERE, radius = 55, pos = { x = 156.619, y = 185.894, z = 1303.515 }, area_id = 6 }
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
		gadgets = { 654007 },
		regions = { 654002, 654010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 654003, 654004, 654005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 654006 },
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