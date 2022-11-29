-- 基础信息
local base_info = {
	group_id = 133210453
}

-- Trigger变量
local defs = {
	operator_1 = 453007,
	operator_2 = 453008,
	chest = 453009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 453001, monster_id = 20010901, pos = { x = -3897.783, y = 200.445, z = -1192.627 }, rot = { x = 0.000, y = 307.119, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 453002, monster_id = 20060301, pos = { x = -3894.427, y = 201.724, z = -1191.138 }, rot = { x = 0.000, y = 274.414, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 453003, monster_id = 20060301, pos = { x = -3900.591, y = 202.163, z = -1196.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 453004, monster_id = 20010601, pos = { x = -3897.896, y = 200.162, z = -1186.638 }, rot = { x = 0.000, y = 205.092, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 453005, monster_id = 20010701, pos = { x = -3904.697, y = 199.975, z = -1185.929 }, rot = { x = 0.000, y = 163.928, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 453006, monster_id = 20060101, pos = { x = -3900.397, y = 201.503, z = -1183.319 }, rot = { x = 0.000, y = 198.298, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 453007, gadget_id = 70360056, pos = { x = -3901.527, y = 200.255, z = -1190.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 453008, gadget_id = 70360057, pos = { x = -3901.299, y = 200.251, z = -1190.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 453009, gadget_id = 70210106, pos = { x = -3901.791, y = 200.259, z = -1190.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 17 }
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
		monsters = { 453001, 453002, 453003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 453004, 453005, 453006 },
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