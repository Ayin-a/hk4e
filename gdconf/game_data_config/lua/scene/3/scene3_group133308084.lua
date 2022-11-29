-- 基础信息
local base_info = {
	group_id = 133308084
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
	{ config_id = 84001, gadget_id = 70500000, pos = { x = -2385.811, y = 76.255, z = 4297.902 }, rot = { x = 0.000, y = 350.086, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 84005, gadget_id = 70500000, pos = { x = -2393.651, y = 78.206, z = 4258.336 }, rot = { x = 0.000, y = 129.868, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 84006, gadget_id = 70500000, pos = { x = -2414.311, y = 66.890, z = 4269.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 84007, gadget_id = 70500000, pos = { x = -2317.423, y = 75.631, z = 4323.587 }, rot = { x = 0.000, y = 350.086, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 84008, gadget_id = 70500000, pos = { x = -2327.349, y = 70.047, z = 4445.434 }, rot = { x = 0.000, y = 350.086, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 84003, gadget_id = 70500000, pos = { x = -2335.558, y = 133.546, z = 4669.730 }, rot = { x = 0.000, y = 338.173, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 }
	}
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
		gadgets = { 84001, 84005, 84006, 84007, 84008 },
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