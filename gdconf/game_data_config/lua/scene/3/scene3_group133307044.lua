-- 基础信息
local base_info = {
	group_id = 133307044
}

-- Trigger变量
local defs = {
	operator_1 = 44007,
	operator_2 = 44008,
	chest = 44009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 25210201, pos = { x = -1957.098, y = 155.445, z = 5547.928 }, rot = { x = 0.000, y = 25.213, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 44002, monster_id = 25210302, pos = { x = -1953.944, y = 156.205, z = 5550.870 }, rot = { x = 0.000, y = 328.267, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 44003, monster_id = 25210102, pos = { x = -1966.246, y = 153.858, z = 5554.452 }, rot = { x = 0.000, y = 148.920, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 44004, monster_id = 25210402, pos = { x = -1952.853, y = 156.447, z = 5556.195 }, rot = { x = 0.000, y = 234.421, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 27 },
	{ config_id = 44006, monster_id = 25410201, pos = { x = -1965.793, y = 153.662, z = 5560.100 }, rot = { x = 0.000, y = 108.707, z = 0.000 }, level = 1, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44007, gadget_id = 70360056, pos = { x = -1958.774, y = 155.092, z = 5554.944 }, rot = { x = 359.610, y = 4.327, z = 15.954 }, level = 1, area_id = 27 },
	{ config_id = 44008, gadget_id = 70360057, pos = { x = -1958.556, y = 155.140, z = 5554.871 }, rot = { x = 359.610, y = 4.327, z = 15.954 }, level = 1, area_id = 27 },
	{ config_id = 44009, gadget_id = 70210106, pos = { x = -1958.674, y = 155.134, z = 5554.846 }, rot = { x = 0.000, y = 0.000, z = 19.780 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 44001, 44002, 44003, 44004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 44006 },
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

require "V2_0/BlossomGroup"