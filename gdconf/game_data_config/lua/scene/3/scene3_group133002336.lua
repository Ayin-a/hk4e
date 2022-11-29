-- 基础信息
local base_info = {
	group_id = 133002336
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
	{ config_id = 336001, gadget_id = 70500000, pos = { x = 1777.043, y = 238.198, z = -403.230 }, rot = { x = 0.000, y = 236.489, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336002, gadget_id = 70500000, pos = { x = 1682.449, y = 203.576, z = -280.753 }, rot = { x = 0.000, y = 162.116, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336003, gadget_id = 70500000, pos = { x = 1985.592, y = 256.102, z = -547.337 }, rot = { x = 0.000, y = 260.504, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336004, gadget_id = 70500000, pos = { x = 2091.203, y = 252.954, z = -460.072 }, rot = { x = 0.000, y = 162.116, z = 0.000 }, level = 15, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336005, gadget_id = 70500000, pos = { x = 2086.089, y = 205.849, z = -745.971 }, rot = { x = 0.000, y = 162.116, z = 0.000 }, level = 2, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336006, gadget_id = 70500000, pos = { x = 1931.601, y = 264.005, z = -840.193 }, rot = { x = 0.000, y = 137.795, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336007, gadget_id = 70500000, pos = { x = 1850.403, y = 275.443, z = -695.359 }, rot = { x = 0.000, y = 261.560, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 },
	{ config_id = 336009, gadget_id = 70500000, pos = { x = 1932.800, y = 236.756, z = -950.208 }, rot = { x = 0.000, y = 123.547, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 }
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
		gadgets = { 336001, 336002, 336003, 336004, 336005, 336006, 336007, 336009 },
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