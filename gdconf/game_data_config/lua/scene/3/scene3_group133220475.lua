-- 基础信息
local base_info = {
	group_id = 133220475
}

-- Trigger变量
local defs = {
	operator_1 = 475007,
	operator_2 = 475008,
	chest = 475009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475001, monster_id = 24020101, pos = { x = -2284.058, y = 231.306, z = -4304.824 }, rot = { x = 359.856, y = 281.201, z = 358.231 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 475002, monster_id = 24020101, pos = { x = -2287.823, y = 231.726, z = -4304.032 }, rot = { x = 358.403, y = 359.446, z = 11.333 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 475004, monster_id = 24020201, pos = { x = -2289.601, y = 232.585, z = -4312.484 }, rot = { x = 0.000, y = 268.766, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
	{ config_id = 475005, monster_id = 24020201, pos = { x = -2285.514, y = 231.948, z = -4312.530 }, rot = { x = 0.000, y = 2.501, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 475003, gadget_id = 70220010, pos = { x = -2285.812, y = 231.259, z = -4301.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 475007, gadget_id = 70360056, pos = { x = -2288.387, y = 232.080, z = -4308.986 }, rot = { x = 0.000, y = 39.233, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 475008, gadget_id = 70360057, pos = { x = -2288.387, y = 232.080, z = -4308.986 }, rot = { x = 0.000, y = 39.233, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 475009, gadget_id = 70210106, pos = { x = -2288.387, y = 232.080, z = -4308.986 }, rot = { x = 0.000, y = 39.233, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 11 }
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
		gadgets = { 475003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 475001, 475002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 475004, 475005 },
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