-- 基础信息
local base_info = {
	group_id = 133210455
}

-- Trigger变量
local defs = {
	operator_1 = 455007,
	operator_2 = 455008,
	chest = 455009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 455001, monster_id = 24020101, pos = { x = -3801.061, y = 201.331, z = -1323.550 }, rot = { x = 0.000, y = 272.092, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 455002, monster_id = 24020301, pos = { x = -3810.755, y = 200.210, z = -1326.311 }, rot = { x = 0.000, y = 312.261, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 455005, monster_id = 24020201, pos = { x = -3812.347, y = 200.095, z = -1317.301 }, rot = { x = 0.000, y = 213.451, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 455006, monster_id = 24020401, pos = { x = -3806.570, y = 200.604, z = -1318.612 }, rot = { x = 0.000, y = 232.719, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 455007, gadget_id = 70360056, pos = { x = -3815.218, y = 200.005, z = -1322.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 455008, gadget_id = 70360057, pos = { x = -3814.990, y = 200.015, z = -1322.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 455009, gadget_id = 70210106, pos = { x = -3815.482, y = 200.000, z = -1323.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 17 }
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
		monsters = { 455001, 455002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 455005, 455006 },
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