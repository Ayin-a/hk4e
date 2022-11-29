-- 基础信息
local base_info = {
	group_id = 133220479
}

-- Trigger变量
local defs = {
	operator_1 = 479007,
	operator_2 = 479008,
	chest = 479009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 479001, monster_id = 25100101, pos = { x = -2399.401, y = 200.000, z = -4559.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 11 },
	{ config_id = 479002, monster_id = 25100201, pos = { x = -2408.349, y = 200.000, z = -4549.840 }, rot = { x = 0.000, y = 82.429, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 479007, gadget_id = 70360056, pos = { x = -2399.386, y = 200.172, z = -4549.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 479008, gadget_id = 70360057, pos = { x = -2399.158, y = 200.170, z = -4549.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 479009, gadget_id = 70210106, pos = { x = -2399.650, y = 200.219, z = -4549.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 11 }
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
		monsters = { 479001, 479002 },
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