-- 基础信息
local base_info = {
	group_id = 133303004
}

-- Trigger变量
local defs = {
	operator_1 = 4007,
	operator_2 = 4008,
	chest = 4009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25210202, pos = { x = -1318.452, y = 181.784, z = 3463.173 }, rot = { x = 0.000, y = 32.686, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 4002, monster_id = 25210401, pos = { x = -1315.813, y = 182.625, z = 3463.015 }, rot = { x = 0.000, y = 334.627, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 4003, monster_id = 25210302, pos = { x = -1319.708, y = 182.136, z = 3465.520 }, rot = { x = 0.000, y = 57.582, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 4004, monster_id = 25210103, pos = { x = -1314.127, y = 184.269, z = 3468.113 }, rot = { x = 0.000, y = 258.756, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 4005, monster_id = 25210501, pos = { x = -1316.094, y = 184.114, z = 3470.622 }, rot = { x = 0.000, y = 180.769, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 4006, monster_id = 25210302, pos = { x = -1314.582, y = 184.503, z = 3470.300 }, rot = { x = 0.000, y = 200.443, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4007, gadget_id = 70360056, pos = { x = -1316.965, y = 183.034, z = 3465.971 }, rot = { x = 341.651, y = 3.278, z = 17.160 }, level = 1, area_id = 23 },
	{ config_id = 4008, gadget_id = 70360057, pos = { x = -1316.737, y = 183.043, z = 3465.915 }, rot = { x = 343.535, y = 357.230, z = 18.972 }, level = 1, area_id = 23 },
	{ config_id = 4009, gadget_id = 70210106, pos = { x = -1317.229, y = 182.960, z = 3465.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 4001, 4002, 4003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4004, 4005, 4006 },
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