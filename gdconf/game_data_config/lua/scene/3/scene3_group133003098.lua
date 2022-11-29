-- 基础信息
local base_info = {
	group_id = 133003098
}

-- Trigger变量
local defs = {
	gadget_id_1 = 2432,
	gadget_id_2 = 2519,
	monster_id_1 = 568,
	monster_id_2 = 569,
	monster_id_3 = 567,
	monster_id_4 = 1102,
	gadget_id_3 = 2575,
	gadget_id_4 = 2713,
	gadget_id_5 = 2714
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2575, gadget_id = 70350006, pos = { x = 2400.362, y = 284.926, z = -1755.441 }, rot = { x = 0.000, y = 289.195, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	{ config_id = 2576, gadget_id = 70350006, pos = { x = 2399.653, y = 284.953, z = -1716.329 }, rot = { x = 0.000, y = 246.904, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	{ config_id = 2577, gadget_id = 70350006, pos = { x = 2371.571, y = 284.931, z = -1689.289 }, rot = { x = 0.000, y = 20.977, z = 0.000 }, level = 15, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isoff", value = 0, no_refresh = true },
	{ config_id = 2, name = "door1", value = 0, no_refresh = false },
	{ config_id = 3, name = "door2", value = 0, no_refresh = false },
	{ config_id = 4, name = "door3", value = 0, no_refresh = false }
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
		gadgets = { 2575, 2576, 2577 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2575, 2576, 2577 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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