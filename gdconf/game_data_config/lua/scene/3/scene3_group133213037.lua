-- 基础信息
local base_info = {
	group_id = 133213037
}

-- Trigger变量
local defs = {
	operator_1 = 37007,
	operator_2 = 37008,
	chest = 37009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 25080101, pos = { x = -3239.365, y = 200.561, z = -3343.332 }, rot = { x = 0.000, y = 116.766, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 37002, monster_id = 25010601, pos = { x = -3236.502, y = 200.973, z = -3344.385 }, rot = { x = 0.000, y = 313.457, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 37003, monster_id = 25010401, pos = { x = -3240.475, y = 200.321, z = -3342.113 }, rot = { x = 0.000, y = 48.642, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 37004, monster_id = 25100101, pos = { x = -3235.249, y = 200.521, z = -3340.654 }, rot = { x = 0.000, y = 274.728, z = 0.000 }, level = 1, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 37005, monster_id = 25100101, pos = { x = -3223.324, y = 200.044, z = -3313.045 }, rot = { x = 0.000, y = 170.740, z = 0.000 }, level = 1, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 37006, monster_id = 25030301, pos = { x = -3220.160, y = 200.040, z = -3316.382 }, rot = { x = 0.000, y = 190.825, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37007, gadget_id = 70360056, pos = { x = -3237.246, y = 200.453, z = -3340.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 37008, gadget_id = 70360057, pos = { x = -3237.018, y = 200.464, z = -3340.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 37009, gadget_id = 70210106, pos = { x = -3237.510, y = 200.462, z = -3340.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 12 }
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
		monsters = { 37001, 37002, 37003, 37004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 37005, 37006 },
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