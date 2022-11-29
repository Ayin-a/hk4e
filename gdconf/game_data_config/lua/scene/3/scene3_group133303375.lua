-- 基础信息
local base_info = {
	group_id = 133303375
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
	{ config_id = 375001, gadget_id = 70500000, pos = { x = -1110.126, y = 264.389, z = 3945.595 }, rot = { x = 22.868, y = 147.003, z = 12.862 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 375002, gadget_id = 70500000, pos = { x = -1108.847, y = 264.496, z = 3947.878 }, rot = { x = 341.787, y = 4.692, z = 331.325 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 375003, gadget_id = 70360001, pos = { x = -1106.976, y = 264.092, z = 3947.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 375001, 375002, 375003 },
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