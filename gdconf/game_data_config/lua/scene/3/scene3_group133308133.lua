-- 基础信息
local base_info = {
	group_id = 133308133
}

-- Trigger变量
local defs = {
	operator_1 = 133007,
	operator_2 = 133008,
	chest = 133009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 25210502, pos = { x = -2021.799, y = 349.151, z = 4142.352 }, rot = { x = 0.000, y = 46.713, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 133002, monster_id = 25210303, pos = { x = -2016.524, y = 348.554, z = 4150.616 }, rot = { x = 0.000, y = 129.446, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 133003, monster_id = 25210202, pos = { x = -2025.415, y = 348.685, z = 4151.899 }, rot = { x = 0.000, y = 107.164, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 133004, monster_id = 25310201, pos = { x = -2021.074, y = 349.032, z = 4146.671 }, rot = { x = 0.000, y = 146.616, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 133005, monster_id = 25210401, pos = { x = -2019.288, y = 348.938, z = 4146.976 }, rot = { x = 0.000, y = 109.437, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 133006, monster_id = 25210103, pos = { x = -2022.747, y = 349.327, z = 4144.506 }, rot = { x = 0.000, y = 90.743, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 133007, gadget_id = 70360056, pos = { x = -2014.062, y = 348.606, z = 4144.483 }, rot = { x = 0.846, y = 0.193, z = 351.479 }, level = 1, area_id = 26 },
	{ config_id = 133008, gadget_id = 70360057, pos = { x = -2013.833, y = 348.572, z = 4144.428 }, rot = { x = 0.846, y = 0.193, z = 351.479 }, level = 1, area_id = 26 },
	{ config_id = 133009, gadget_id = 70210106, pos = { x = -2015.113, y = 348.763, z = 4144.501 }, rot = { x = 8.329, y = 98.069, z = 1.993 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 26 }
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
		monsters = { 133001, 133003, 133005, 133006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 133002, 133004 },
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