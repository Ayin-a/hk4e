-- 基础信息
local base_info = {
	group_id = 133304346
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
	{ config_id = 346001, gadget_id = 70500000, pos = { x = -1731.530, y = 183.950, z = 3009.801 }, rot = { x = 19.510, y = 314.510, z = 4.601 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 346002, gadget_id = 70500000, pos = { x = -1733.677, y = 183.433, z = 3009.335 }, rot = { x = 11.892, y = 1.646, z = 15.710 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 346003, gadget_id = 70360001, pos = { x = -1720.381, y = 187.081, z = 3005.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 346001, 346002, 346003 },
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