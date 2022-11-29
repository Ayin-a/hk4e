-- 基础信息
local base_info = {
	group_id = 133302381
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
	{ config_id = 381001, gadget_id = 70500000, pos = { x = -135.853, y = 200.274, z = 2644.686 }, rot = { x = 351.035, y = 29.556, z = 4.450 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 381002, gadget_id = 70500000, pos = { x = -128.967, y = 201.462, z = 2654.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 381003, gadget_id = 70500000, pos = { x = -117.175, y = 201.142, z = 2639.959 }, rot = { x = 0.000, y = 272.403, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 381004, gadget_id = 70500000, pos = { x = -122.749, y = 202.162, z = 2652.069 }, rot = { x = 0.000, y = 80.762, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 20 },
	{ config_id = 381005, gadget_id = 70360001, pos = { x = -125.153, y = 202.003, z = 2652.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 381001, 381002, 381003, 381004, 381005 },
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

require "V2_0/OreBlossomGroup"