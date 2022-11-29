-- 基础信息
local base_info = {
	group_id = 133310265
}

-- Trigger变量
local defs = {
	operator_1 = 265007,
	operator_2 = 265008,
	chest = 265009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 25210102, pos = { x = -2739.447, y = 327.713, z = 4752.359 }, rot = { x = 0.000, y = 348.158, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 265002, monster_id = 25010301, pos = { x = -2743.430, y = 327.707, z = 4758.229 }, rot = { x = 0.000, y = 132.244, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 28 },
	{ config_id = 265003, monster_id = 25010501, pos = { x = -2743.505, y = 327.819, z = 4752.710 }, rot = { x = 0.000, y = 31.186, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 28 },
	{ config_id = 265004, monster_id = 25210303, pos = { x = -2738.996, y = 327.636, z = 4758.286 }, rot = { x = 0.000, y = 230.272, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 265005, monster_id = 25310101, pos = { x = -2734.003, y = 327.534, z = 4755.654 }, rot = { x = 0.000, y = 272.730, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 28 },
	{ config_id = 265006, monster_id = 25210202, pos = { x = -2736.179, y = 327.557, z = 4751.333 }, rot = { x = 0.000, y = 302.728, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 265010, monster_id = 25210203, pos = { x = -2736.137, y = 327.558, z = 4759.187 }, rot = { x = 0.000, y = 253.121, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 265007, gadget_id = 70360056, pos = { x = -2741.458, y = 327.739, z = 4755.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 265008, gadget_id = 70360057, pos = { x = -2741.229, y = 327.735, z = 4755.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 265009, gadget_id = 70210106, pos = { x = -2741.721, y = 327.749, z = 4755.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 28 }
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
		monsters = { 265001, 265002, 265003, 265004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 265005, 265006, 265010 },
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