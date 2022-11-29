-- 基础信息
local base_info = {
	group_id = 133304006
}

-- Trigger变量
local defs = {
	operator_1 = 6007,
	operator_2 = 6008,
	chest = 6009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25210101, pos = { x = -1641.369, y = 217.041, z = 2979.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 6002, monster_id = 25210401, pos = { x = -1637.085, y = 216.905, z = 2981.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 6004, monster_id = 25210103, pos = { x = -1640.565, y = 216.981, z = 2983.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 6005, monster_id = 25210501, pos = { x = -1636.096, y = 216.876, z = 2979.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 6006, monster_id = 25210402, pos = { x = -1643.328, y = 217.022, z = 2981.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6007, gadget_id = 70360056, pos = { x = -1640.546, y = 216.972, z = 2982.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 6008, gadget_id = 70360057, pos = { x = -1640.318, y = 216.967, z = 2982.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 6009, gadget_id = 70210106, pos = { x = -1640.810, y = 216.972, z = 2982.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 21 }
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
		monsters = { 6001, 6002, 6004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6005, 6006 },
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