-- 基础信息
local base_info = {
	group_id = 133310262
}

-- Trigger变量
local defs = {
	operator_1 = 262007,
	operator_2 = 262008,
	chest = 262009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 26090401, pos = { x = -2949.348, y = 309.696, z = 4551.382 }, rot = { x = 0.000, y = 43.595, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262002, monster_id = 26090401, pos = { x = -2942.631, y = 308.943, z = 4550.224 }, rot = { x = 0.000, y = 335.156, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262003, monster_id = 26090601, pos = { x = -2948.706, y = 309.887, z = 4554.210 }, rot = { x = 0.000, y = 83.092, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262004, monster_id = 26090601, pos = { x = -2946.858, y = 309.268, z = 4549.045 }, rot = { x = 0.000, y = 29.870, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262005, monster_id = 26120401, pos = { x = -2944.621, y = 309.685, z = 4556.532 }, rot = { x = 0.000, y = 180.865, z = 0.000 }, level = 1, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262006, monster_id = 26090601, pos = { x = -2941.283, y = 309.374, z = 4557.651 }, rot = { x = 0.000, y = 194.074, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 262010, monster_id = 26090601, pos = { x = -2947.784, y = 310.119, z = 4558.220 }, rot = { x = 0.000, y = 160.672, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262007, gadget_id = 70360056, pos = { x = -2944.934, y = 309.498, z = 4553.420 }, rot = { x = 354.734, y = 0.271, z = 354.108 }, level = 1, area_id = 28 },
	{ config_id = 262008, gadget_id = 70360057, pos = { x = -2944.706, y = 309.470, z = 4553.363 }, rot = { x = 354.734, y = 0.271, z = 354.108 }, level = 1, area_id = 28 },
	{ config_id = 262009, gadget_id = 70210106, pos = { x = -2945.196, y = 309.505, z = 4553.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 28 }
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
		monsters = { 262001, 262002, 262003, 262004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 262005, 262006, 262010 },
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