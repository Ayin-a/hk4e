-- 基础信息
local base_info = {
	group_id = 133104072
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
	{ config_id = 157, gadget_id = 70500000, pos = { x = 538.884, y = 203.250, z = 69.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 158, gadget_id = 70500000, pos = { x = 332.973, y = 233.985, z = 214.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 159, gadget_id = 70500000, pos = { x = 109.122, y = 208.723, z = 724.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 160, gadget_id = 70500000, pos = { x = 237.007, y = 260.697, z = 136.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 161, gadget_id = 70500000, pos = { x = 126.202, y = 293.920, z = 333.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 162, gadget_id = 70500000, pos = { x = 830.088, y = 203.473, z = 272.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 163, gadget_id = 70500000, pos = { x = 896.710, y = 287.147, z = 338.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 164, gadget_id = 70500000, pos = { x = 29.401, y = 284.628, z = 221.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 177, gadget_id = 70500000, pos = { x = 901.701, y = 242.195, z = 365.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 184, gadget_id = 70500000, pos = { x = 404.434, y = 207.518, z = 814.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 6 },
	{ config_id = 532, gadget_id = 70500000, pos = { x = 279.015, y = 227.282, z = 465.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 72001, gadget_id = 70500000, pos = { x = 452.949, y = 230.420, z = 476.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 9 },
	{ config_id = 72002, gadget_id = 70500000, pos = { x = -122.942, y = 308.377, z = 245.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 7 }
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
		gadgets = { 157, 158, 159, 160, 161, 162, 163, 164, 177, 184, 532, 72001, 72002 },
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