-- 基础信息
local base_info = {
	group_id = 133302507
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
	{ config_id = 507001, gadget_id = 70540037, pos = { x = -99.654, y = 218.192, z = 2447.271 }, rot = { x = 0.000, y = 254.758, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 507002, gadget_id = 70500000, pos = { x = -99.583, y = 218.568, z = 2447.691 }, rot = { x = 0.000, y = 254.759, z = 0.000 }, level = 27, point_type = 2049, owner = 507001, area_id = 20 },
	{ config_id = 507003, gadget_id = 70500000, pos = { x = -99.912, y = 218.913, z = 2447.025 }, rot = { x = 0.000, y = 164.780, z = 0.000 }, level = 27, point_type = 2049, owner = 507001, area_id = 20 },
	{ config_id = 507004, gadget_id = 70540037, pos = { x = -87.529, y = 265.882, z = 2498.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 507005, gadget_id = 70500000, pos = { x = -87.143, y = 266.258, z = 2498.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 507004, area_id = 20 },
	{ config_id = 507006, gadget_id = 70500000, pos = { x = -87.698, y = 266.603, z = 2498.538 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 507004, area_id = 20 },
	{ config_id = 507007, gadget_id = 70540037, pos = { x = -267.296, y = 213.466, z = 2335.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 507008, gadget_id = 70500000, pos = { x = -266.910, y = 213.841, z = 2335.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 507007, area_id = 24 },
	{ config_id = 507009, gadget_id = 70500000, pos = { x = -267.465, y = 214.187, z = 2335.529 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 507007, area_id = 24 },
	{ config_id = 507010, gadget_id = 70540037, pos = { x = -128.127, y = 311.891, z = 2173.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 507011, gadget_id = 70500000, pos = { x = -127.740, y = 312.266, z = 2172.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 507010, area_id = 20 },
	{ config_id = 507012, gadget_id = 70500000, pos = { x = -128.296, y = 312.612, z = 2173.393 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 507010, area_id = 20 },
	{ config_id = 507013, gadget_id = 70540041, pos = { x = -21.355, y = 269.216, z = 2404.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 507014, gadget_id = 70500000, pos = { x = -21.088, y = 270.198, z = 2405.066 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 507013, area_id = 20 },
	{ config_id = 507015, gadget_id = 70500000, pos = { x = -21.275, y = 270.087, z = 2404.856 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 507013, area_id = 20 },
	{ config_id = 507016, gadget_id = 70500000, pos = { x = -21.056, y = 269.839, z = 2404.687 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 507013, area_id = 20 },
	{ config_id = 507017, gadget_id = 70500000, pos = { x = -21.637, y = 269.742, z = 2404.772 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 507013, area_id = 20 },
	{ config_id = 507018, gadget_id = 70540041, pos = { x = -239.467, y = 243.316, z = 2258.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 507019, gadget_id = 70500000, pos = { x = -239.199, y = 244.298, z = 2258.639 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 507018, area_id = 24 },
	{ config_id = 507020, gadget_id = 70500000, pos = { x = -239.386, y = 244.188, z = 2258.430 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 507018, area_id = 24 },
	{ config_id = 507021, gadget_id = 70500000, pos = { x = -239.168, y = 243.940, z = 2258.261 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 507018, area_id = 24 },
	{ config_id = 507022, gadget_id = 70500000, pos = { x = -239.748, y = 243.843, z = 2258.346 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 507018, area_id = 24 },
	{ config_id = 507023, gadget_id = 70540041, pos = { x = -106.409, y = 326.658, z = 2231.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 507024, gadget_id = 70500000, pos = { x = -106.141, y = 327.640, z = 2231.609 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 507023, area_id = 20 },
	{ config_id = 507025, gadget_id = 70500000, pos = { x = -106.329, y = 327.530, z = 2231.400 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 507023, area_id = 20 },
	{ config_id = 507026, gadget_id = 70500000, pos = { x = -106.110, y = 327.282, z = 2231.231 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 507023, area_id = 20 },
	{ config_id = 507027, gadget_id = 70500000, pos = { x = -106.691, y = 327.185, z = 2231.315 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 507023, area_id = 20 },
	{ config_id = 507028, gadget_id = 70500000, pos = { x = 5.744, y = 306.520, z = 2274.379 }, rot = { x = 0.000, y = 57.155, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
	{ config_id = 507033, gadget_id = 70500000, pos = { x = -73.467, y = 299.873, z = 2277.125 }, rot = { x = 3.170, y = 359.877, z = 355.566 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 507034, gadget_id = 70500000, pos = { x = -150.646, y = 208.563, z = 2414.181 }, rot = { x = 8.588, y = 1.123, z = 14.877 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 507035, gadget_id = 70500000, pos = { x = -111.431, y = 200.845, z = 2635.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 507036, gadget_id = 70500000, pos = { x = -70.919, y = 201.772, z = 2590.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 507037, gadget_id = 70500000, pos = { x = -302.301, y = 222.781, z = 2286.652 }, rot = { x = 0.875, y = 0.095, z = 12.340 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 507038, gadget_id = 70500000, pos = { x = -465.345, y = 277.651, z = 2231.945 }, rot = { x = 11.456, y = 2.026, z = 12.539 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 507039, gadget_id = 70500000, pos = { x = -25.188, y = 263.493, z = 2521.262 }, rot = { x = 17.272, y = 1.181, z = 7.767 }, level = 27, point_type = 2045, area_id = 20 },
	{ config_id = 507040, gadget_id = 70500000, pos = { x = -67.375, y = 201.520, z = 2593.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2045, area_id = 20 },
	{ config_id = 507041, gadget_id = 70500000, pos = { x = -261.503, y = 206.289, z = 2596.930 }, rot = { x = 359.027, y = 359.837, z = 18.984 }, level = 27, point_type = 2045, area_id = 20 },
	{ config_id = 507042, gadget_id = 70500000, pos = { x = -149.355, y = 306.760, z = 2119.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2045, area_id = 20 }
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
		gadgets = { 507001, 507002, 507003, 507004, 507005, 507006, 507007, 507008, 507009, 507010, 507011, 507012, 507013, 507014, 507015, 507016, 507017, 507018, 507019, 507020, 507021, 507022, 507023, 507024, 507025, 507026, 507027, 507028, 507033, 507034, 507035, 507036, 507037, 507038, 507039, 507040, 507041, 507042 },
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