-- 基础信息
local base_info = {
	group_id = 133008361
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
	{ config_id = 361001, gadget_id = 70500000, pos = { x = 1110.496, y = 536.885, z = -796.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361002, gadget_id = 70500000, pos = { x = 1067.362, y = 507.141, z = -876.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361003, gadget_id = 70500000, pos = { x = 1045.318, y = 479.383, z = -795.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361004, gadget_id = 70500000, pos = { x = 1026.303, y = 572.287, z = -857.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361005, gadget_id = 70500000, pos = { x = 986.949, y = 603.203, z = -875.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361007, gadget_id = 70500000, pos = { x = 1060.550, y = 425.711, z = -879.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 },
	{ config_id = 361008, gadget_id = 70500000, pos = { x = 1041.434, y = 695.868, z = -821.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4003, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 10 }
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
		gadgets = { 361001, 361002, 361003, 361004, 361005, 361007, 361008 },
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