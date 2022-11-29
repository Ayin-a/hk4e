-- 基础信息
local base_info = {
	group_id = 133304340
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
	{ config_id = 340001, gadget_id = 70500000, pos = { x = -1237.083, y = 210.294, z = 2107.469 }, rot = { x = 0.000, y = 63.767, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 340002, gadget_id = 70500000, pos = { x = -1237.923, y = 210.575, z = 2108.748 }, rot = { x = 4.251, y = 239.915, z = 0.389 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 340003, gadget_id = 70360001, pos = { x = -1242.434, y = 207.523, z = 2109.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 340001, 340002, 340003 },
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