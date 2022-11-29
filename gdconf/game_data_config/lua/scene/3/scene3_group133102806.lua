-- 基础信息
local base_info = {
	group_id = 133102806
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
	{ config_id = 806033, gadget_id = 70290013, pos = { x = 1647.060, y = 233.461, z = 751.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 806034, gadget_id = 70500000, pos = { x = 1647.060, y = 233.461, z = 751.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2016, owner = 806033, area_id = 5 },
	{ config_id = 806035, gadget_id = 70500000, pos = { x = 1647.824, y = 234.010, z = 751.247 }, rot = { x = 80.732, y = 197.769, z = 283.477 }, level = 18, point_type = 2016, owner = 806033, area_id = 5 },
	{ config_id = 806036, gadget_id = 70500000, pos = { x = 1646.779, y = 233.334, z = 751.229 }, rot = { x = 343.642, y = 330.700, z = 341.572 }, level = 18, point_type = 2016, owner = 806033, area_id = 5 },
	{ config_id = 806037, gadget_id = 70290016, pos = { x = 1650.374, y = 202.569, z = 268.568 }, rot = { x = 18.721, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 806038, gadget_id = 70500000, pos = { x = 1650.374, y = 202.569, z = 268.568 }, rot = { x = 18.721, y = 0.000, z = 0.000 }, level = 16, point_type = 3010, owner = 806037, area_id = 5 },
	{ config_id = 806039, gadget_id = 70290016, pos = { x = 1644.475, y = 200.078, z = 277.400 }, rot = { x = 0.000, y = 166.659, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 806040, gadget_id = 70500000, pos = { x = 1644.475, y = 200.078, z = 277.400 }, rot = { x = 0.000, y = 166.660, z = 0.000 }, level = 16, point_type = 3010, owner = 806039, area_id = 5 },
	{ config_id = 806041, gadget_id = 70500000, pos = { x = 1640.940, y = 201.373, z = 268.382 }, rot = { x = 0.000, y = 279.887, z = 0.000 }, level = 16, point_type = 1002, area_id = 5 },
	{ config_id = 806042, gadget_id = 70500000, pos = { x = 1642.401, y = 201.095, z = 268.249 }, rot = { x = 0.000, y = 15.156, z = 0.000 }, level = 16, point_type = 1002, area_id = 5 },
	{ config_id = 806043, gadget_id = 70500000, pos = { x = 1631.622, y = 202.353, z = 281.940 }, rot = { x = 0.000, y = 187.399, z = 0.000 }, level = 16, point_type = 1004, area_id = 5 },
	{ config_id = 806057, gadget_id = 70290013, pos = { x = 1799.390, y = 222.940, z = 821.940 }, rot = { x = 0.000, y = 310.115, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 806058, gadget_id = 70500000, pos = { x = 1799.390, y = 222.940, z = 821.940 }, rot = { x = 0.000, y = 310.119, z = 0.000 }, level = 18, point_type = 2016, owner = 806057, area_id = 5 },
	{ config_id = 806059, gadget_id = 70500000, pos = { x = 1799.885, y = 223.489, z = 822.521 }, rot = { x = 80.732, y = 147.888, z = 283.477 }, level = 18, point_type = 2016, owner = 806057, area_id = 5 },
	{ config_id = 806060, gadget_id = 70500000, pos = { x = 1799.224, y = 222.813, z = 821.710 }, rot = { x = 343.642, y = 280.819, z = 341.572 }, level = 18, point_type = 2016, owner = 806057, area_id = 5 }
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
		{ config_id = 806001, gadget_id = 70290001, pos = { x = 1586.274, y = 318.810, z = 618.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806002, gadget_id = 70500000, pos = { x = 1586.291, y = 319.379, z = 618.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806001, area_id = 5 },
		{ config_id = 806003, gadget_id = 70500000, pos = { x = 1586.209, y = 319.665, z = 617.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806001, area_id = 5 },
		{ config_id = 806004, gadget_id = 70500000, pos = { x = 1586.542, y = 320.077, z = 618.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806001, area_id = 5 },
		{ config_id = 806005, gadget_id = 70290001, pos = { x = 1645.617, y = 285.718, z = 601.369 }, rot = { x = 0.000, y = 78.508, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806006, gadget_id = 70500000, pos = { x = 1646.014, y = 286.287, z = 601.432 }, rot = { x = 0.000, y = 78.508, z = 0.000 }, level = 18, point_type = 3002, owner = 806005, area_id = 5 },
		{ config_id = 806007, gadget_id = 70500000, pos = { x = 1645.216, y = 286.574, z = 601.354 }, rot = { x = 0.000, y = 78.508, z = 0.000 }, level = 18, point_type = 3002, owner = 806005, area_id = 5 },
		{ config_id = 806008, gadget_id = 70500000, pos = { x = 1645.570, y = 286.985, z = 601.086 }, rot = { x = 0.000, y = 78.508, z = 0.000 }, level = 18, point_type = 3002, owner = 806005, area_id = 5 },
		{ config_id = 806009, gadget_id = 70290001, pos = { x = 1682.855, y = 229.229, z = 749.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806010, gadget_id = 70500000, pos = { x = 1682.872, y = 229.798, z = 749.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806009, area_id = 5 },
		{ config_id = 806011, gadget_id = 70500000, pos = { x = 1682.791, y = 230.084, z = 749.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806009, area_id = 5 },
		{ config_id = 806012, gadget_id = 70500000, pos = { x = 1683.123, y = 230.496, z = 749.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806009, area_id = 5 },
		{ config_id = 806013, gadget_id = 70290001, pos = { x = 1745.036, y = 247.273, z = 570.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806014, gadget_id = 70500000, pos = { x = 1745.053, y = 247.842, z = 570.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806013, area_id = 5 },
		{ config_id = 806015, gadget_id = 70500000, pos = { x = 1744.971, y = 248.128, z = 569.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806013, area_id = 5 },
		{ config_id = 806016, gadget_id = 70500000, pos = { x = 1745.304, y = 248.540, z = 570.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806013, area_id = 5 },
		{ config_id = 806017, gadget_id = 70290001, pos = { x = 1797.615, y = 223.085, z = 661.223 }, rot = { x = 0.000, y = 67.828, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806018, gadget_id = 70500000, pos = { x = 1797.992, y = 223.654, z = 661.359 }, rot = { x = 0.000, y = 67.825, z = 0.000 }, level = 18, point_type = 3002, owner = 806017, area_id = 5 },
		{ config_id = 806019, gadget_id = 70500000, pos = { x = 1797.224, y = 223.940, z = 661.134 }, rot = { x = 0.000, y = 67.825, z = 0.000 }, level = 18, point_type = 3002, owner = 806017, area_id = 5 },
		{ config_id = 806020, gadget_id = 70500000, pos = { x = 1797.621, y = 224.352, z = 660.936 }, rot = { x = 0.000, y = 67.825, z = 0.000 }, level = 18, point_type = 3002, owner = 806017, area_id = 5 },
		{ config_id = 806021, gadget_id = 70290001, pos = { x = 1737.367, y = 233.632, z = 666.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806022, gadget_id = 70500000, pos = { x = 1737.426, y = 234.201, z = 666.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806021, area_id = 5 },
		{ config_id = 806023, gadget_id = 70500000, pos = { x = 1737.344, y = 234.487, z = 665.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806021, area_id = 5 },
		{ config_id = 806024, gadget_id = 70500000, pos = { x = 1737.677, y = 234.899, z = 666.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806021, area_id = 5 },
		{ config_id = 806025, gadget_id = 70290001, pos = { x = 1960.602, y = 243.567, z = 609.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806026, gadget_id = 70500000, pos = { x = 1960.619, y = 244.136, z = 609.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806025, area_id = 5 },
		{ config_id = 806027, gadget_id = 70500000, pos = { x = 1960.537, y = 244.422, z = 609.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806025, area_id = 5 },
		{ config_id = 806028, gadget_id = 70500000, pos = { x = 1960.870, y = 244.834, z = 609.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806025, area_id = 5 },
		{ config_id = 806029, gadget_id = 70290001, pos = { x = 1930.770, y = 225.322, z = 662.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
		{ config_id = 806030, gadget_id = 70500000, pos = { x = 1930.786, y = 225.891, z = 662.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806029, area_id = 5 },
		{ config_id = 806031, gadget_id = 70500000, pos = { x = 1930.705, y = 226.177, z = 662.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806029, area_id = 5 },
		{ config_id = 806032, gadget_id = 70500000, pos = { x = 1931.037, y = 226.589, z = 662.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 806029, area_id = 5 },
		{ config_id = 806044, gadget_id = 70500000, pos = { x = 1596.311, y = 202.854, z = 855.307 }, rot = { x = 343.612, y = 351.493, z = 20.947 }, level = 18, point_type = 2030, area_id = 5 },
		{ config_id = 806045, gadget_id = 70500000, pos = { x = 1587.127, y = 202.194, z = 847.271 }, rot = { x = 11.898, y = 293.821, z = 352.804 }, level = 18, point_type = 2030, area_id = 5 },
		{ config_id = 806046, gadget_id = 70500000, pos = { x = 1633.654, y = 210.785, z = 834.320 }, rot = { x = 11.477, y = 359.820, z = 358.210 }, level = 18, point_type = 2030, area_id = 5 },
		{ config_id = 806047, gadget_id = 70500000, pos = { x = 1622.255, y = 209.531, z = 836.324 }, rot = { x = 359.955, y = 195.550, z = 353.510 }, level = 18, point_type = 2030, area_id = 5 }
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
		gadgets = { 806033, 806034, 806035, 806036, 806037, 806038, 806039, 806040, 806041, 806042, 806043, 806057, 806058, 806059, 806060 },
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