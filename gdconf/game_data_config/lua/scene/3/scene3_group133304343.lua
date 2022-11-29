-- 基础信息
local base_info = {
	group_id = 133304343
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
	{ config_id = 343001, gadget_id = 70500000, pos = { x = -1277.923, y = 177.576, z = 3066.298 }, rot = { x = 359.704, y = 6.330, z = 2.668 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 343002, gadget_id = 70500000, pos = { x = -1257.880, y = 180.402, z = 3047.638 }, rot = { x = 4.912, y = 3.029, z = 63.300 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 343003, gadget_id = 70500000, pos = { x = -1256.801, y = 180.512, z = 3045.415 }, rot = { x = 355.091, y = 358.972, z = 23.631 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 343004, gadget_id = 70500000, pos = { x = -1263.812, y = 178.891, z = 3053.811 }, rot = { x = 355.541, y = 359.861, z = 3.577 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 343005, gadget_id = 70360001, pos = { x = -1265.164, y = 177.675, z = 3046.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 343001, 343002, 343003, 343004, 343005 },
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