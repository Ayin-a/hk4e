-- 基础信息
local base_info = {
	group_id = 133303376
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
	{ config_id = 376001, gadget_id = 70500000, pos = { x = -1441.266, y = 292.593, z = 3687.476 }, rot = { x = 5.200, y = 331.772, z = 0.248 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 376002, gadget_id = 70500000, pos = { x = -1440.187, y = 292.608, z = 3687.219 }, rot = { x = 359.722, y = 204.070, z = 2.815 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 376003, gadget_id = 70500000, pos = { x = -1433.857, y = 293.421, z = 3690.414 }, rot = { x = 346.823, y = 45.731, z = 9.005 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 376004, gadget_id = 70500000, pos = { x = -1435.741, y = 292.915, z = 3688.454 }, rot = { x = 355.481, y = 0.276, z = 10.567 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 376005, gadget_id = 70360001, pos = { x = -1437.514, y = 292.861, z = 3689.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 376001, 376002, 376003, 376004, 376005 },
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