-- 基础信息
local base_info = {
	group_id = 133301031
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
	{ config_id = 31001, gadget_id = 70310485, pos = { x = -792.401, y = 209.750, z = 2241.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 31002, gadget_id = 70540041, pos = { x = -790.237, y = 209.656, z = 2239.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 31003, gadget_id = 70710798, pos = { x = -789.970, y = 210.638, z = 2239.960 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, area_id = 24 },
	{ config_id = 31004, gadget_id = 70710798, pos = { x = -790.157, y = 210.528, z = 2239.751 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, area_id = 24 },
	{ config_id = 31005, gadget_id = 70710798, pos = { x = -789.938, y = 210.280, z = 2239.582 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, area_id = 24 },
	{ config_id = 31006, gadget_id = 70710798, pos = { x = -790.519, y = 210.183, z = 2239.666 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { 31001, 31002, 31003, 31004, 31005, 31006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 31001, 31002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 31001 },
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