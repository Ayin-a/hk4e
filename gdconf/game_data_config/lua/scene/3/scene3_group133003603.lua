-- 基础信息
local base_info = {
	group_id = 133003603
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
	{ config_id = 603001, gadget_id = 70500000, pos = { x = 2901.385, y = 230.736, z = -1105.160 }, rot = { x = 0.000, y = 272.365, z = 0.000 }, level = 30, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603002, gadget_id = 70500000, pos = { x = 2958.055, y = 229.428, z = -1804.631 }, rot = { x = 0.000, y = 177.522, z = 0.000 }, level = 15, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603003, gadget_id = 70500000, pos = { x = 2623.562, y = 206.975, z = -2393.270 }, rot = { x = 0.000, y = 175.090, z = 0.000 }, level = 30, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603004, gadget_id = 70500000, pos = { x = 2330.738, y = 313.695, z = -1761.174 }, rot = { x = 0.000, y = 175.090, z = 0.000 }, level = 15, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603005, gadget_id = 70500000, pos = { x = 2311.601, y = 253.592, z = -1262.322 }, rot = { x = 0.000, y = 175.090, z = 0.000 }, level = 5, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603006, gadget_id = 70500000, pos = { x = 2502.371, y = 308.215, z = -1632.933 }, rot = { x = 0.000, y = 350.816, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603007, gadget_id = 70500000, pos = { x = 2239.071, y = 274.306, z = -1560.656 }, rot = { x = 0.000, y = 192.768, z = 0.000 }, level = 15, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603008, gadget_id = 70500000, pos = { x = 2814.838, y = 312.552, z = -1585.917 }, rot = { x = 0.000, y = 134.621, z = 0.000 }, level = 30, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 },
	{ config_id = 603009, gadget_id = 70500000, pos = { x = 2769.672, y = 277.020, z = -1195.891 }, rot = { x = 0.000, y = 217.488, z = 0.000 }, level = 30, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 }
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
		gadgets = { 603001, 603002, 603003, 603004, 603005, 603006, 603007, 603008, 603009 },
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