-- 基础信息
local base_info = {
	group_id = 133303378
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
	{ config_id = 378001, gadget_id = 70500000, pos = { x = -1964.469, y = 428.376, z = 3684.486 }, rot = { x = 31.210, y = 354.656, z = 341.029 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 378002, gadget_id = 70500000, pos = { x = -1966.565, y = 426.848, z = 3687.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 378003, gadget_id = 70500000, pos = { x = -1956.228, y = 426.747, z = 3682.621 }, rot = { x = 32.772, y = 353.895, z = 339.443 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 378004, gadget_id = 70500000, pos = { x = -1961.022, y = 426.985, z = 3684.742 }, rot = { x = 34.076, y = 353.887, z = 340.232 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 378005, gadget_id = 70360001, pos = { x = -1959.640, y = 428.704, z = 3683.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 378001, 378002, 378003, 378004, 378005 },
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