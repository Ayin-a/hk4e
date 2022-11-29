-- 基础信息
local base_info = {
	group_id = 133310264
}

-- Trigger变量
local defs = {
	operator_1 = 264007,
	operator_2 = 264008,
	chest = 264009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 25210402, pos = { x = -2935.662, y = 314.261, z = 4883.676 }, rot = { x = 0.000, y = 281.488, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 264002, monster_id = 25210502, pos = { x = -2935.116, y = 314.390, z = 4891.927 }, rot = { x = 0.000, y = 243.767, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 264003, monster_id = 25210302, pos = { x = -2935.232, y = 314.339, z = 4887.540 }, rot = { x = 0.000, y = 290.757, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 264005, monster_id = 25210301, pos = { x = -2939.893, y = 313.972, z = 4891.523 }, rot = { x = 0.000, y = 169.211, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 264006, monster_id = 25310301, pos = { x = -2931.942, y = 314.601, z = 4887.613 }, rot = { x = 0.000, y = 276.413, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 264010, monster_id = 25210303, pos = { x = -2939.794, y = 313.893, z = 4883.634 }, rot = { x = 0.000, y = 2.369, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 264007, gadget_id = 70360056, pos = { x = -2939.770, y = 313.948, z = 4887.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 264008, gadget_id = 70360057, pos = { x = -2939.542, y = 313.969, z = 4887.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 264009, gadget_id = 70210106, pos = { x = -2940.033, y = 313.920, z = 4887.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 28 }
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
		monsters = { 264001, 264002, 264003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 264005, 264006, 264010 },
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