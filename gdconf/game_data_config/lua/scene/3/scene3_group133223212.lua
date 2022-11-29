-- 基础信息
local base_info = {
	group_id = 133223212
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
	{ config_id = 212001, gadget_id = 70500000, pos = { x = -6411.212, y = 219.651, z = -2807.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212002, gadget_id = 70500000, pos = { x = -6224.563, y = 209.814, z = -2776.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212003, gadget_id = 70500000, pos = { x = -6237.118, y = 270.187, z = -2936.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212004, gadget_id = 70500000, pos = { x = -5975.332, y = 195.386, z = -2564.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212005, gadget_id = 70500000, pos = { x = -6341.173, y = 380.927, z = -2677.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212006, gadget_id = 70500000, pos = { x = -6016.614, y = 232.882, z = -2913.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212007, gadget_id = 70500000, pos = { x = -6369.683, y = 259.815, z = -2771.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212008, gadget_id = 70500000, pos = { x = -6377.740, y = 205.301, z = -2437.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212009, gadget_id = 70500000, pos = { x = -6011.566, y = 170.002, z = -2824.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212010, gadget_id = 70500000, pos = { x = -6296.899, y = 250.457, z = -2786.888 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212011, gadget_id = 70500000, pos = { x = -6344.260, y = 282.597, z = -2465.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212012, gadget_id = 70500000, pos = { x = -6219.377, y = 257.606, z = -2707.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212013, gadget_id = 70500000, pos = { x = -6292.343, y = 257.289, z = -2715.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212014, gadget_id = 70500000, pos = { x = -6332.134, y = 270.588, z = -2594.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 },
	{ config_id = 212015, gadget_id = 70500000, pos = { x = -6188.417, y = 211.075, z = -2727.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 18 }
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
		gadgets = { 212001, 212002, 212003, 212004, 212005, 212006, 212007, 212008, 212009, 212010, 212011, 212012, 212013, 212014, 212015 },
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