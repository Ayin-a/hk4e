-- 基础信息
local base_info = {
	group_id = 133212081
}

-- Trigger变量
local defs = {
	operator_1 = 81007,
	operator_2 = 81008,
	chest = 81009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 25100101, pos = { x = -4069.007, y = 273.336, z = -2276.661 }, rot = { x = 0.000, y = 26.231, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 13 },
	{ config_id = 81002, monster_id = 25100201, pos = { x = -4074.194, y = 274.588, z = -2271.580 }, rot = { x = 0.000, y = 66.064, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81007, gadget_id = 70360056, pos = { x = -4068.323, y = 272.399, z = -2270.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 81008, gadget_id = 70360057, pos = { x = -4068.323, y = 272.399, z = -2270.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 81009, gadget_id = 70210106, pos = { x = -4068.323, y = 272.399, z = -2270.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 13 }
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
		monsters = { 81001, 81002 },
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