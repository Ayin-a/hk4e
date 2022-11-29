-- 基础信息
local base_info = {
	group_id = 133315286
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
	{ config_id = 286001, gadget_id = 70290002, pos = { x = 162.692, y = 286.788, z = 2471.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286002, gadget_id = 70500000, pos = { x = 161.621, y = 288.406, z = 2472.089 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 286001, area_id = 20 },
	{ config_id = 286003, gadget_id = 70500000, pos = { x = 163.562, y = 289.416, z = 2470.364 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 286001, area_id = 20 },
	{ config_id = 286004, gadget_id = 70500000, pos = { x = 162.735, y = 289.696, z = 2472.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 286001, area_id = 20 },
	{ config_id = 286005, gadget_id = 70290002, pos = { x = 206.961, y = 299.915, z = 2534.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286006, gadget_id = 70500000, pos = { x = 205.890, y = 301.533, z = 2535.155 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286005, area_id = 20 },
	{ config_id = 286007, gadget_id = 70500000, pos = { x = 207.831, y = 302.543, z = 2533.430 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286005, area_id = 20 },
	{ config_id = 286008, gadget_id = 70500000, pos = { x = 207.004, y = 302.823, z = 2535.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286005, area_id = 20 },
	{ config_id = 286009, gadget_id = 70290002, pos = { x = 97.758, y = 262.353, z = 2457.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286010, gadget_id = 70500000, pos = { x = 96.687, y = 263.971, z = 2458.050 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286009, area_id = 20 },
	{ config_id = 286011, gadget_id = 70500000, pos = { x = 98.628, y = 264.981, z = 2456.325 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286009, area_id = 20 },
	{ config_id = 286012, gadget_id = 70500000, pos = { x = 97.801, y = 265.261, z = 2458.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 286009, area_id = 20 },
	{ config_id = 286013, gadget_id = 70540037, pos = { x = 120.223, y = 284.715, z = 2439.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286014, gadget_id = 70500000, pos = { x = 120.609, y = 285.091, z = 2439.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 286013, area_id = 20 },
	{ config_id = 286015, gadget_id = 70500000, pos = { x = 120.054, y = 285.436, z = 2440.266 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 286013, area_id = 20 },
	{ config_id = 286016, gadget_id = 70540041, pos = { x = 130.197, y = 250.370, z = 2505.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286017, gadget_id = 70500000, pos = { x = 130.465, y = 251.352, z = 2505.949 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 286016, area_id = 20 },
	{ config_id = 286018, gadget_id = 70500000, pos = { x = 130.277, y = 251.241, z = 2505.740 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 286016, area_id = 20 },
	{ config_id = 286019, gadget_id = 70500000, pos = { x = 130.496, y = 250.993, z = 2505.571 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 286016, area_id = 20 },
	{ config_id = 286020, gadget_id = 70500000, pos = { x = 129.916, y = 250.896, z = 2505.656 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 286016, area_id = 20 },
	{ config_id = 286021, gadget_id = 70290001, pos = { x = 99.942, y = 246.160, z = 2485.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286022, gadget_id = 70500000, pos = { x = 99.959, y = 246.729, z = 2486.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286021, area_id = 20 },
	{ config_id = 286023, gadget_id = 70500000, pos = { x = 99.877, y = 247.015, z = 2485.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286021, area_id = 20 },
	{ config_id = 286024, gadget_id = 70500000, pos = { x = 100.210, y = 247.427, z = 2485.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286021, area_id = 20 },
	{ config_id = 286025, gadget_id = 70500000, pos = { x = 31.321, y = 242.768, z = 2379.937 }, rot = { x = 0.000, y = 24.372, z = 0.000 }, level = 27, point_type = 2052, area_id = 20 },
	{ config_id = 286026, gadget_id = 70500000, pos = { x = 34.008, y = 235.608, z = 2420.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 20 },
	{ config_id = 286027, gadget_id = 70290001, pos = { x = 46.134, y = 244.298, z = 2416.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286028, gadget_id = 70500000, pos = { x = 46.151, y = 244.867, z = 2417.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286027, area_id = 20 },
	{ config_id = 286029, gadget_id = 70500000, pos = { x = 46.069, y = 245.153, z = 2416.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286027, area_id = 20 },
	{ config_id = 286030, gadget_id = 70500000, pos = { x = 46.402, y = 245.565, z = 2416.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 286027, area_id = 20 },
	{ config_id = 286031, gadget_id = 70540037, pos = { x = 31.438, y = 235.672, z = 2435.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 286032, gadget_id = 70500000, pos = { x = 31.824, y = 236.047, z = 2434.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 286031, area_id = 20 },
	{ config_id = 286033, gadget_id = 70500000, pos = { x = 31.269, y = 236.393, z = 2435.466 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 286031, area_id = 20 },
	{ config_id = 286034, gadget_id = 70500000, pos = { x = 71.060, y = 243.697, z = 2498.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
	{ config_id = 286035, gadget_id = 70500000, pos = { x = 74.617, y = 244.151, z = 2497.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 }
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
		gadgets = { 286001, 286002, 286003, 286004, 286005, 286006, 286007, 286008, 286009, 286010, 286011, 286012, 286013, 286014, 286015, 286016, 286017, 286018, 286019, 286020, 286021, 286022, 286023, 286024, 286025, 286026, 286027, 286028, 286029, 286030, 286031, 286032, 286033, 286034, 286035 },
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