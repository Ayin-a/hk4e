-- 基础信息
local base_info = {
	group_id = 133222152
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
	{ config_id = 152001, gadget_id = 70500000, pos = { x = -4608.001, y = 199.595, z = -4636.712 }, rot = { x = 0.000, y = 80.408, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152004, gadget_id = 70520036, pos = { x = -4840.279, y = 200.228, z = -4755.617 }, rot = { x = 348.179, y = 279.464, z = 11.292 }, level = 30, area_id = 14 },
	{ config_id = 152005, gadget_id = 70500000, pos = { x = -4846.272, y = 204.100, z = -4816.364 }, rot = { x = 14.678, y = 354.596, z = 325.315 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 152007, gadget_id = 70500000, pos = { x = -4800.566, y = 205.771, z = -4809.755 }, rot = { x = 0.000, y = 42.193, z = 0.000 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 152008, gadget_id = 70500000, pos = { x = -4802.304, y = 206.094, z = -4807.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 152009, gadget_id = 70500000, pos = { x = -4814.434, y = 202.554, z = -4618.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152010, gadget_id = 70500000, pos = { x = -4817.188, y = 202.253, z = -4757.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152011, gadget_id = 70500000, pos = { x = -4793.825, y = 202.188, z = -4790.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152012, gadget_id = 70500000, pos = { x = -4756.741, y = 204.058, z = -4686.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2001, area_id = 14 },
	{ config_id = 152013, gadget_id = 70500000, pos = { x = -4722.569, y = 201.480, z = -4649.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152020, gadget_id = 70290010, pos = { x = -4773.728, y = 201.695, z = -4726.458 }, rot = { x = 346.522, y = 1.967, z = 343.464 }, level = 30, area_id = 14 },
	{ config_id = 152021, gadget_id = 70500000, pos = { x = -4773.728, y = 201.695, z = -4726.458 }, rot = { x = 346.522, y = 1.967, z = 343.464 }, level = 30, point_type = 3006, owner = 152020, area_id = 14 },
	{ config_id = 152022, gadget_id = 70290010, pos = { x = -4724.908, y = 201.663, z = -4664.548 }, rot = { x = 358.263, y = 0.214, z = 345.963 }, level = 30, area_id = 14 },
	{ config_id = 152023, gadget_id = 70500000, pos = { x = -4724.908, y = 201.663, z = -4664.548 }, rot = { x = 358.263, y = 0.214, z = 345.963 }, level = 30, point_type = 3006, owner = 152022, area_id = 14 },
	{ config_id = 152024, gadget_id = 70290010, pos = { x = -4725.357, y = 202.272, z = -4662.208 }, rot = { x = 354.784, y = 0.604, z = 346.809 }, level = 30, area_id = 14 },
	{ config_id = 152025, gadget_id = 70500000, pos = { x = -4725.357, y = 202.272, z = -4662.208 }, rot = { x = 354.784, y = 0.604, z = 346.809 }, level = 30, point_type = 3006, owner = 152024, area_id = 14 },
	{ config_id = 152026, gadget_id = 70500000, pos = { x = -4840.141, y = 200.950, z = -4755.708 }, rot = { x = 348.179, y = 279.465, z = 5.490 }, level = 30, point_type = 2042, owner = 152004, area_id = 14 },
	{ config_id = 152027, gadget_id = 70500000, pos = { x = -4840.345, y = 200.762, z = -4755.770 }, rot = { x = 16.546, y = 254.609, z = 21.989 }, level = 30, point_type = 2042, owner = 152004, area_id = 14 },
	{ config_id = 152028, gadget_id = 70290010, pos = { x = -4837.615, y = 202.159, z = -4615.569 }, rot = { x = 13.136, y = 0.617, z = 5.356 }, level = 30, area_id = 14 },
	{ config_id = 152029, gadget_id = 70500000, pos = { x = -4837.615, y = 202.159, z = -4615.569 }, rot = { x = 13.136, y = 0.617, z = 5.356 }, level = 30, point_type = 3006, owner = 152028, area_id = 14 },
	{ config_id = 152030, gadget_id = 70520036, pos = { x = -4833.205, y = 200.149, z = -4755.111 }, rot = { x = 345.619, y = 357.282, z = 21.298 }, level = 30, area_id = 14 },
	{ config_id = 152031, gadget_id = 70500000, pos = { x = -4833.391, y = 200.840, z = -4755.298 }, rot = { x = 345.619, y = 357.282, z = 15.497 }, level = 30, point_type = 2042, owner = 152030, area_id = 14 },
	{ config_id = 152032, gadget_id = 70500000, pos = { x = -4856.849, y = 199.352, z = -4840.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 152033, gadget_id = 70500000, pos = { x = -4774.955, y = 199.408, z = -4842.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152034, gadget_id = 70500000, pos = { x = -4776.154, y = 199.204, z = -4831.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152035, gadget_id = 70500000, pos = { x = -4782.871, y = 199.193, z = -4777.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152036, gadget_id = 70500000, pos = { x = -4781.318, y = 199.018, z = -4769.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152037, gadget_id = 70500000, pos = { x = -4733.378, y = 199.341, z = -4615.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152038, gadget_id = 70500000, pos = { x = -4745.540, y = 199.405, z = -4612.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 152039, gadget_id = 70500000, pos = { x = -4833.453, y = 200.648, z = -4755.098 }, rot = { x = 17.863, y = 337.803, z = 32.448 }, level = 30, point_type = 2042, owner = 152030, area_id = 14 },
	{ config_id = 152040, gadget_id = 70520036, pos = { x = -4830.798, y = 200.115, z = -4758.890 }, rot = { x = 0.000, y = 73.768, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 152041, gadget_id = 70500000, pos = { x = -4830.776, y = 200.850, z = -4758.965 }, rot = { x = 0.000, y = 73.768, z = 354.199 }, level = 30, point_type = 2042, owner = 152040, area_id = 14 },
	{ config_id = 152042, gadget_id = 70290001, pos = { x = -4802.655, y = 204.391, z = -4739.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 152043, gadget_id = 70500000, pos = { x = -4802.639, y = 204.960, z = -4739.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152042, area_id = 14 },
	{ config_id = 152044, gadget_id = 70500000, pos = { x = -4802.721, y = 205.246, z = -4740.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152042, area_id = 14 },
	{ config_id = 152045, gadget_id = 70500000, pos = { x = -4802.388, y = 205.658, z = -4740.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152042, area_id = 14 },
	{ config_id = 152046, gadget_id = 70500000, pos = { x = -4830.671, y = 200.650, z = -4758.793 }, rot = { x = 21.666, y = 42.340, z = 5.608 }, level = 30, point_type = 2042, owner = 152040, area_id = 14 },
	{ config_id = 152047, gadget_id = 70520036, pos = { x = -4825.530, y = 200.028, z = -4777.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 152048, gadget_id = 70500000, pos = { x = -4825.452, y = 200.763, z = -4777.580 }, rot = { x = 0.000, y = 0.000, z = 354.199 }, level = 30, point_type = 2042, owner = 152047, area_id = 14 },
	{ config_id = 152049, gadget_id = 70500000, pos = { x = -4825.587, y = 200.563, z = -4777.431 }, rot = { x = 21.666, y = 328.572, z = 5.608 }, level = 30, point_type = 2042, owner = 152047, area_id = 14 },
	{ config_id = 152061, gadget_id = 70500000, pos = { x = -4774.173, y = 207.317, z = -4648.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152062, gadget_id = 70500000, pos = { x = -4751.585, y = 203.763, z = -4645.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 152063, gadget_id = 70290001, pos = { x = -4781.800, y = 202.866, z = -4626.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 152064, gadget_id = 70500000, pos = { x = -4781.782, y = 203.435, z = -4626.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152063, area_id = 14 },
	{ config_id = 152065, gadget_id = 70500000, pos = { x = -4781.864, y = 203.720, z = -4627.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152063, area_id = 14 },
	{ config_id = 152066, gadget_id = 70500000, pos = { x = -4781.531, y = 204.133, z = -4627.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152063, area_id = 14 }
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
		{ config_id = 152002, gadget_id = 70500000, pos = { x = -4767.651, y = 206.998, z = -4651.522 }, rot = { x = 15.708, y = 359.877, z = 359.105 }, level = 30, point_type = 1008, area_id = 14 },
		{ config_id = 152003, gadget_id = 70500000, pos = { x = -4768.591, y = 207.838, z = -4653.692 }, rot = { x = 19.549, y = 358.467, z = 351.119 }, level = 30, point_type = 1008, area_id = 14 },
		{ config_id = 152006, gadget_id = 70500000, pos = { x = -4844.935, y = 203.385, z = -4815.883 }, rot = { x = 11.633, y = 357.966, z = 340.232 }, level = 30, point_type = 1008, area_id = 14 },
		{ config_id = 152014, gadget_id = 70290010, pos = { x = -4781.219, y = 201.670, z = -4617.737 }, rot = { x = 6.136, y = 359.429, z = 349.380 }, level = 30, area_id = 14 },
		{ config_id = 152015, gadget_id = 70500000, pos = { x = -4781.219, y = 201.670, z = -4617.737 }, rot = { x = 6.136, y = 359.429, z = 349.380 }, level = 30, point_type = 3006, owner = 152014, area_id = 14 },
		{ config_id = 152016, gadget_id = 70290010, pos = { x = -4785.533, y = 202.192, z = -4618.582 }, rot = { x = 347.283, y = 213.368, z = 356.925 }, level = 30, area_id = 14 },
		{ config_id = 152017, gadget_id = 70500000, pos = { x = -4785.533, y = 202.192, z = -4618.582 }, rot = { x = 347.283, y = 213.368, z = 356.925 }, level = 30, point_type = 3006, owner = 152016, area_id = 14 },
		{ config_id = 152018, gadget_id = 70290010, pos = { x = -4773.255, y = 201.964, z = -4724.180 }, rot = { x = 346.004, y = 0.549, z = 355.533 }, level = 30, area_id = 14 },
		{ config_id = 152019, gadget_id = 70500000, pos = { x = -4773.255, y = 201.964, z = -4724.180 }, rot = { x = 346.004, y = 0.549, z = 355.533 }, level = 30, point_type = 3006, owner = 152018, area_id = 14 },
		{ config_id = 152050, gadget_id = 70290001, pos = { x = -4810.797, y = 203.810, z = -4623.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 152051, gadget_id = 70500000, pos = { x = -4810.780, y = 204.379, z = -4623.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152050, area_id = 14 },
		{ config_id = 152052, gadget_id = 70500000, pos = { x = -4810.862, y = 204.665, z = -4624.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152050, area_id = 14 },
		{ config_id = 152053, gadget_id = 70500000, pos = { x = -4810.529, y = 205.077, z = -4623.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 152050, area_id = 14 },
		{ config_id = 152067, gadget_id = 70500000, pos = { x = -4809.568, y = 211.953, z = -4777.330 }, rot = { x = 0.000, y = 245.280, z = 273.495 }, level = 30, point_type = 2034, area_id = 14 },
		{ config_id = 152068, gadget_id = 70500000, pos = { x = -4810.138, y = 211.953, z = -4778.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2006, area_id = 14 },
		{ config_id = 152069, gadget_id = 70500000, pos = { x = -4810.321, y = 211.953, z = -4780.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2006, area_id = 14 }
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
		gadgets = { 152001, 152004, 152005, 152007, 152008, 152009, 152010, 152011, 152012, 152013, 152020, 152021, 152022, 152023, 152024, 152025, 152026, 152027, 152028, 152029, 152030, 152031, 152032, 152033, 152034, 152035, 152036, 152037, 152038, 152039, 152040, 152041, 152042, 152043, 152044, 152045, 152046, 152047, 152048, 152049, 152061, 152062, 152063, 152064, 152065, 152066 },
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