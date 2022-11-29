-- 基础信息
local base_info = {
	group_id = 133315115
}

-- Trigger变量
local defs = {
	operator_1 = 115007,
	operator_2 = 115008,
	chest = 115009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 26090501, pos = { x = -82.005, y = 269.382, z = 2370.993 }, rot = { x = 0.000, y = 218.919, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 115002, monster_id = 20011001, pos = { x = -82.682, y = 268.350, z = 2376.531 }, rot = { x = 0.000, y = 314.348, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 115003, monster_id = 26090501, pos = { x = -91.907, y = 270.383, z = 2373.383 }, rot = { x = 0.000, y = 108.643, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 115004, monster_id = 20011001, pos = { x = -86.187, y = 268.350, z = 2378.377 }, rot = { x = 0.000, y = 203.203, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 115006, monster_id = 26120201, pos = { x = -82.249, y = 268.350, z = 2380.182 }, rot = { x = 0.000, y = 218.123, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115005, gadget_id = 70220103, pos = { x = -68.763, y = 272.710, z = 2372.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 115007, gadget_id = 70360056, pos = { x = -91.877, y = 270.822, z = 2367.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 115008, gadget_id = 70360057, pos = { x = -91.890, y = 270.841, z = 2367.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 115009, gadget_id = 70210106, pos = { x = -91.255, y = 271.001, z = 2367.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 20 },
	{ config_id = 115010, gadget_id = 70220103, pos = { x = -24.736, y = 271.067, z = 2363.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 115011, gadget_id = 70690010, pos = { x = -125.801, y = 224.561, z = 2378.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 115012, gadget_id = 70220103, pos = { x = -44.888, y = 270.431, z = 2363.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
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
		gadgets = { 115005, 115010, 115012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 115001, 115002, 115003, 115004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 115006 },
		gadgets = { 115011 },
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