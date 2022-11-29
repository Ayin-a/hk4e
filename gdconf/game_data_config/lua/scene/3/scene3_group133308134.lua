-- 基础信息
local base_info = {
	group_id = 133308134
}

-- Trigger变量
local defs = {
	operator_1 = 134007,
	operator_2 = 134008,
	chest = 134009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 26090701, pos = { x = -2169.960, y = 325.028, z = 4211.496 }, rot = { x = 0.000, y = 76.195, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 134002, monster_id = 26090601, pos = { x = -2166.717, y = 323.872, z = 4216.731 }, rot = { x = 0.000, y = 173.909, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 134003, monster_id = 26090901, pos = { x = -2170.494, y = 324.772, z = 4216.188 }, rot = { x = 0.000, y = 129.548, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 134004, monster_id = 26090901, pos = { x = -2168.107, y = 324.383, z = 4214.093 }, rot = { x = 0.000, y = 139.791, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 134005, monster_id = 26120401, pos = { x = -2170.554, y = 324.936, z = 4214.222 }, rot = { x = 0.000, y = 128.481, z = 0.000 }, level = 1, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 134006, monster_id = 26120401, pos = { x = -2167.976, y = 324.079, z = 4217.967 }, rot = { x = 0.000, y = 187.119, z = 0.000 }, level = 1, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 134007, gadget_id = 70360056, pos = { x = -2166.394, y = 324.277, z = 4211.330 }, rot = { x = 6.984, y = 359.297, z = 348.516 }, level = 1, area_id = 26 },
	{ config_id = 134008, gadget_id = 70360057, pos = { x = -2166.166, y = 324.238, z = 4211.274 }, rot = { x = 6.984, y = 359.297, z = 348.516 }, level = 1, area_id = 26 },
	{ config_id = 134009, gadget_id = 70210106, pos = { x = -2171.825, y = 324.995, z = 4217.653 }, rot = { x = 12.920, y = 62.361, z = 356.252 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 26 }
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
		monsters = { 134001, 134002, 134003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 134004, 134005, 134006 },
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