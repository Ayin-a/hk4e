-- 基础信息
local base_info = {
	group_id = 133315154
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
	{ config_id = 154001, gadget_id = 70290002, pos = { x = 158.126, y = 254.607, z = 2867.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154002, gadget_id = 70500000, pos = { x = 157.055, y = 256.225, z = 2867.865 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 154001, area_id = 20 },
	{ config_id = 154003, gadget_id = 70500000, pos = { x = 158.996, y = 257.235, z = 2866.140 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 154001, area_id = 20 },
	{ config_id = 154004, gadget_id = 70500000, pos = { x = 158.169, y = 257.515, z = 2868.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 154001, area_id = 20 },
	{ config_id = 154005, gadget_id = 70540041, pos = { x = 91.550, y = 269.339, z = 2979.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154006, gadget_id = 70500000, pos = { x = 91.818, y = 270.321, z = 2979.667 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 154005, area_id = 20 },
	{ config_id = 154007, gadget_id = 70500000, pos = { x = 91.630, y = 270.210, z = 2979.458 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 154005, area_id = 20 },
	{ config_id = 154008, gadget_id = 70500000, pos = { x = 91.849, y = 269.962, z = 2979.289 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 154005, area_id = 20 },
	{ config_id = 154009, gadget_id = 70500000, pos = { x = 91.269, y = 269.865, z = 2979.374 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 154005, area_id = 20 },
	{ config_id = 154010, gadget_id = 70540041, pos = { x = 92.118, y = 247.292, z = 2835.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154011, gadget_id = 70500000, pos = { x = 92.386, y = 248.274, z = 2836.026 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 154010, area_id = 20 },
	{ config_id = 154012, gadget_id = 70500000, pos = { x = 92.199, y = 248.164, z = 2835.816 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 154010, area_id = 20 },
	{ config_id = 154013, gadget_id = 70500000, pos = { x = 92.417, y = 247.915, z = 2835.647 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 154010, area_id = 20 },
	{ config_id = 154014, gadget_id = 70500000, pos = { x = 91.837, y = 247.819, z = 2835.732 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 154010, area_id = 20 },
	{ config_id = 154015, gadget_id = 70540041, pos = { x = 183.273, y = 272.165, z = 2875.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154016, gadget_id = 70500000, pos = { x = 183.541, y = 273.147, z = 2876.140 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 154015, area_id = 20 },
	{ config_id = 154017, gadget_id = 70500000, pos = { x = 183.354, y = 273.037, z = 2875.931 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 154015, area_id = 20 },
	{ config_id = 154018, gadget_id = 70500000, pos = { x = 183.572, y = 272.789, z = 2875.762 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 154015, area_id = 20 },
	{ config_id = 154019, gadget_id = 70500000, pos = { x = 182.992, y = 272.692, z = 2875.847 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 154015, area_id = 20 },
	{ config_id = 154020, gadget_id = 70500000, pos = { x = 178.120, y = 277.951, z = 2858.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 154021, gadget_id = 70500000, pos = { x = 196.047, y = 254.483, z = 2954.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 154022, gadget_id = 70500000, pos = { x = 9.137, y = 247.233, z = 2947.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 },
	{ config_id = 154024, gadget_id = 70500000, pos = { x = 33.322, y = 249.385, z = 2922.026 }, rot = { x = 0.000, y = 13.016, z = 0.000 }, level = 27, point_type = 2045, area_id = 20 },
	{ config_id = 154025, gadget_id = 70500000, pos = { x = 138.746, y = 247.846, z = 2810.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2045, area_id = 20 },
	{ config_id = 154026, gadget_id = 70500000, pos = { x = 105.312, y = 246.874, z = 2858.201 }, rot = { x = 0.000, y = 345.027, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
	{ config_id = 154027, gadget_id = 70500000, pos = { x = 60.683, y = 247.368, z = 2841.457 }, rot = { x = 0.000, y = 123.624, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
	{ config_id = 154028, gadget_id = 70540041, pos = { x = 82.866, y = 246.682, z = 2801.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154029, gadget_id = 70500000, pos = { x = 83.134, y = 247.664, z = 2801.488 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 154028, area_id = 20 },
	{ config_id = 154030, gadget_id = 70500000, pos = { x = 82.946, y = 247.554, z = 2801.278 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 154028, area_id = 20 },
	{ config_id = 154031, gadget_id = 70500000, pos = { x = 83.165, y = 247.305, z = 2801.109 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 154028, area_id = 20 },
	{ config_id = 154032, gadget_id = 70500000, pos = { x = 82.585, y = 247.208, z = 2801.194 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 154028, area_id = 20 },
	{ config_id = 154033, gadget_id = 70540041, pos = { x = 141.996, y = 250.090, z = 2781.833 }, rot = { x = 0.000, y = 189.737, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 154034, gadget_id = 70500000, pos = { x = 141.693, y = 251.072, z = 2781.653 }, rot = { x = 15.327, y = 194.662, z = 348.403 }, level = 27, point_type = 2051, owner = 154033, area_id = 20 },
	{ config_id = 154035, gadget_id = 70500000, pos = { x = 141.914, y = 250.962, z = 2781.827 }, rot = { x = 13.908, y = 197.061, z = 13.424 }, level = 27, point_type = 2051, owner = 154033, area_id = 20 },
	{ config_id = 154036, gadget_id = 70500000, pos = { x = 141.727, y = 250.713, z = 2782.031 }, rot = { x = 351.843, y = 197.665, z = 343.706 }, level = 27, point_type = 2051, owner = 154033, area_id = 20 },
	{ config_id = 154037, gadget_id = 70500000, pos = { x = 142.284, y = 250.616, z = 2781.850 }, rot = { x = 357.460, y = 189.567, z = 17.832 }, level = 27, point_type = 2051, owner = 154033, area_id = 20 },
	{ config_id = 154038, gadget_id = 70500000, pos = { x = 142.696, y = 259.023, z = 2888.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
	{ config_id = 154039, gadget_id = 70500000, pos = { x = 145.274, y = 259.389, z = 2890.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 }
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
		{ config_id = 154023, gadget_id = 70500000, pos = { x = -19.570, y = 248.122, z = 2914.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 20 }
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
		gadgets = { 154001, 154002, 154003, 154004, 154005, 154006, 154007, 154008, 154009, 154010, 154011, 154012, 154013, 154014, 154015, 154016, 154017, 154018, 154019, 154020, 154021, 154022, 154024, 154025, 154026, 154027, 154028, 154029, 154030, 154031, 154032, 154033, 154034, 154035, 154036, 154037, 154038, 154039 },
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