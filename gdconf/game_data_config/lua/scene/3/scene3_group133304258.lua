-- 基础信息
local base_info = {
	group_id = 133304258
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
	{ config_id = 258001, gadget_id = 70500000, pos = { x = -1230.580, y = 268.485, z = 2674.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258002, gadget_id = 70500000, pos = { x = -1153.716, y = 232.976, z = 2954.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258003, gadget_id = 70500000, pos = { x = -1292.317, y = 194.567, z = 3057.906 }, rot = { x = 0.000, y = 317.103, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258004, gadget_id = 70500000, pos = { x = -1647.901, y = 237.040, z = 2876.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258005, gadget_id = 70500000, pos = { x = -1703.487, y = 236.817, z = 2720.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258006, gadget_id = 70500000, pos = { x = -1952.314, y = 215.528, z = 2882.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258007, gadget_id = 70500000, pos = { x = -1327.300, y = 294.000, z = 2865.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258008, gadget_id = 70500000, pos = { x = -1739.020, y = 186.772, z = 3004.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 },
	{ config_id = 258009, gadget_id = 70500000, pos = { x = -1707.406, y = 202.835, z = 2609.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 21 }
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
		gadgets = { 258001, 258002, 258003, 258004, 258005, 258006, 258007, 258008, 258009 },
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