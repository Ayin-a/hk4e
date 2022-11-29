-- 基础信息
local base_info = {
	group_id = 133008606
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
	{ config_id = 606001, gadget_id = 70310015, pos = { x = 1227.301, y = 339.697, z = -1011.298 }, rot = { x = 349.664, y = 3.986, z = 354.989 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606002, gadget_id = 70310015, pos = { x = 1221.910, y = 363.308, z = -964.215 }, rot = { x = 350.691, y = 4.480, z = 352.208 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606005, gadget_id = 70310023, pos = { x = 1027.244, y = 344.021, z = -1013.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 606006, gadget_id = 70310022, pos = { x = 1025.303, y = 343.609, z = -498.749 }, rot = { x = 5.036, y = 359.491, z = 356.256 }, level = 30, area_id = 10 },
	{ config_id = 606007, gadget_id = 70310015, pos = { x = 919.246, y = 354.411, z = -567.072 }, rot = { x = 0.273, y = 74.341, z = 359.985 }, level = 30, area_id = 10 },
	{ config_id = 606008, gadget_id = 70310015, pos = { x = 1146.964, y = 349.559, z = -1050.260 }, rot = { x = 347.916, y = 228.926, z = 347.251 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606009, gadget_id = 70310015, pos = { x = 1096.817, y = 340.821, z = -515.404 }, rot = { x = 0.001, y = 4.583, z = 359.747 }, level = 30, area_id = 10 },
	{ config_id = 606010, gadget_id = 70310015, pos = { x = 993.581, y = 342.556, z = -630.194 }, rot = { x = 359.928, y = 2.256, z = 359.421 }, level = 30, area_id = 10 },
	{ config_id = 606011, gadget_id = 70310018, pos = { x = 953.495, y = 342.006, z = -595.751 }, rot = { x = 347.780, y = 1.127, z = 353.661 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606012, gadget_id = 70310015, pos = { x = 950.715, y = 341.882, z = -605.233 }, rot = { x = 0.000, y = 42.806, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606013, gadget_id = 70310015, pos = { x = 955.721, y = 343.147, z = -584.731 }, rot = { x = 0.000, y = 42.806, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 606014, gadget_id = 70310015, pos = { x = 971.447, y = 342.449, z = -588.419 }, rot = { x = 0.000, y = 42.806, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 606004, gadget_id = 70310018, pos = { x = 1263.304, y = 342.683, z = -790.881 }, rot = { x = 357.333, y = 0.217, z = 355.527 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
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
		gadgets = { 606001, 606002, 606005, 606006, 606007, 606008, 606009, 606010, 606011, 606012, 606013, 606014 },
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