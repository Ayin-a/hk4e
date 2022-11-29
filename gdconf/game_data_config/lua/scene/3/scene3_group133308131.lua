-- 基础信息
local base_info = {
	group_id = 133308131
}

-- Trigger变量
local defs = {
	operator_1 = 131007,
	operator_2 = 131008,
	chest = 131009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131002, monster_id = 26090401, pos = { x = -1906.867, y = 383.063, z = 4251.856 }, rot = { x = 0.000, y = 73.098, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 131003, monster_id = 26090901, pos = { x = -1905.518, y = 383.246, z = 4257.446 }, rot = { x = 0.000, y = 75.265, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 131004, monster_id = 26091001, pos = { x = -1909.842, y = 383.097, z = 4253.248 }, rot = { x = 0.000, y = 65.312, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 131005, monster_id = 26090801, pos = { x = -1906.991, y = 383.117, z = 4253.620 }, rot = { x = 0.000, y = 31.405, z = 0.000 }, level = 1, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 131006, monster_id = 26120401, pos = { x = -1909.817, y = 383.168, z = 4254.783 }, rot = { x = 0.000, y = 67.080, z = 0.000 }, level = 1, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131007, gadget_id = 70360056, pos = { x = -1902.616, y = 383.226, z = 4258.109 }, rot = { x = 357.485, y = 0.513, z = 359.126 }, level = 1, area_id = 26 },
	{ config_id = 131008, gadget_id = 70360057, pos = { x = -1902.397, y = 383.221, z = 4258.069 }, rot = { x = 357.707, y = 11.910, z = 358.646 }, level = 1, area_id = 26 },
	{ config_id = 131009, gadget_id = 70210106, pos = { x = -1905.601, y = 382.967, z = 4249.277 }, rot = { x = 359.383, y = 43.711, z = 358.195 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 26 }
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
		monsters = { 131002, 131003, 131004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 131005, 131006 },
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