-- 基础信息
local base_info = {
	group_id = 133003797
}

-- Trigger变量
local defs = {
	timer_region = 797010,
	challenge_region = 797004,
	monster_hilichurl = 797001,
	exist_hour = {0,6}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 797001, monster_id = 21011501, pos = { x = 2874.551, y = 286.986, z = -1187.952 }, rot = { x = 0.000, y = 186.019, z = 0.000 }, level = 15, drop_id = 200050003, affix = { 4117, 1035 }, pose_id = 9004, guest_ban_drop = 63, area_id = 1, guest_ban_drop = 63 },
	{ config_id = 797002, monster_id = 21011001, pos = { x = 2867.462, y = 290.368, z = -1175.835 }, rot = { x = 0.000, y = 147.437, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 797003, monster_id = 21030301, pos = { x = 2875.331, y = 291.013, z = -1175.670 }, rot = { x = 0.000, y = 189.714, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 797005, monster_id = 21010501, pos = { x = 2881.655, y = 291.020, z = -1177.171 }, rot = { x = 0.000, y = 210.447, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 797006, monster_id = 21010701, pos = { x = 2883.219, y = 286.986, z = -1188.325 }, rot = { x = 0.000, y = 291.214, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 },
	{ config_id = 797007, monster_id = 21020201, pos = { x = 2872.502, y = 286.986, z = -1189.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 797008, gadget_id = 70360001, pos = { x = 2872.842, y = 286.723, z = -1200.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 797004, shape = RegionShape.SPHERE, radius = 45, pos = { x = 2874.632, y = 278.868, z = -1214.227 }, area_id = 1 },
	{ config_id = 797010, shape = RegionShape.SPHERE, radius = 55, pos = { x = 2874.632, y = 278.868, z = -1214.227 }, area_id = 1 }
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
		gadgets = { 797008 },
		regions = { 797004, 797010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 797002, 797003, 797005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 797006, 797007 },
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