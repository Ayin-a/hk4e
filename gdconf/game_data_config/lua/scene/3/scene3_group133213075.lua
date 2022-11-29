-- 基础信息
local base_info = {
	group_id = 133213075
}

-- Trigger变量
local defs = {
	operator_1 = 75007,
	operator_2 = 75008,
	chest = 75009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75001, monster_id = 24020401, pos = { x = -3420.157, y = 201.347, z = -3432.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 12 },
	{ config_id = 75002, monster_id = 24020301, pos = { x = -3414.216, y = 201.834, z = -3431.531 }, rot = { x = 0.000, y = 316.860, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 12 },
	{ config_id = 75005, monster_id = 24020101, pos = { x = -3422.870, y = 200.843, z = -3422.568 }, rot = { x = 0.000, y = 134.923, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 12 },
	{ config_id = 75006, monster_id = 24020201, pos = { x = -3419.129, y = 200.835, z = -3421.611 }, rot = { x = 0.000, y = 227.905, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75007, gadget_id = 70360056, pos = { x = -3419.017, y = 201.263, z = -3429.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 75008, gadget_id = 70360057, pos = { x = -3418.789, y = 201.260, z = -3429.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 75009, gadget_id = 70210106, pos = { x = -3419.281, y = 201.310, z = -3429.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 12 }
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
		monsters = { 75001, 75002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 75005, 75006 },
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