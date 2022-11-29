-- 基础信息
local base_info = {
	group_id = 133003013
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
	{ config_id = 13004, gadget_id = 70290001, pos = { x = 2496.063, y = 203.513, z = -1187.719 }, rot = { x = 350.253, y = 107.541, z = 4.329 }, level = 2, area_id = 1 },
	{ config_id = 13005, gadget_id = 70500000, pos = { x = 2496.356, y = 204.141, z = -1187.784 }, rot = { x = 350.253, y = 107.541, z = 4.329 }, level = 2, point_type = 3002, owner = 13004, area_id = 1 },
	{ config_id = 13006, gadget_id = 70500000, pos = { x = 2495.593, y = 204.281, z = -1187.434 }, rot = { x = 350.253, y = 107.541, z = 4.329 }, level = 2, point_type = 3002, owner = 13004, area_id = 1 },
	{ config_id = 13007, gadget_id = 70500000, pos = { x = 2495.708, y = 204.760, z = -1187.786 }, rot = { x = 350.253, y = 107.541, z = 4.329 }, level = 2, point_type = 3002, owner = 13004, area_id = 1 },
	{ config_id = 13008, gadget_id = 70290002, pos = { x = 2419.571, y = 206.008, z = -1251.659 }, rot = { x = 0.000, y = 358.173, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13009, gadget_id = 70500000, pos = { x = 2418.477, y = 207.626, z = -1250.979 }, rot = { x = 0.000, y = 358.173, z = 0.000 }, level = 2, point_type = 3011, owner = 13008, area_id = 1 },
	{ config_id = 13010, gadget_id = 70500000, pos = { x = 2420.472, y = 208.636, z = -1252.641 }, rot = { x = 0.000, y = 358.173, z = 0.000 }, level = 2, point_type = 3011, owner = 13008, area_id = 1 },
	{ config_id = 13011, gadget_id = 70500000, pos = { x = 2419.570, y = 208.916, z = -1250.277 }, rot = { x = 0.000, y = 358.173, z = 0.000 }, level = 2, point_type = 3011, owner = 13008, area_id = 1 },
	{ config_id = 13012, gadget_id = 70290002, pos = { x = 2414.582, y = 209.444, z = -1236.967 }, rot = { x = 0.000, y = 264.219, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13013, gadget_id = 70500000, pos = { x = 2413.979, y = 211.062, z = -1238.105 }, rot = { x = 0.000, y = 264.219, z = 0.000 }, level = 2, point_type = 3011, owner = 13012, area_id = 1 },
	{ config_id = 13014, gadget_id = 70500000, pos = { x = 2415.500, y = 212.072, z = -1236.000 }, rot = { x = 0.000, y = 264.219, z = 0.000 }, level = 2, point_type = 3011, owner = 13012, area_id = 1 },
	{ config_id = 13015, gadget_id = 70500000, pos = { x = 2413.203, y = 212.352, z = -1237.064 }, rot = { x = 0.000, y = 264.219, z = 0.000 }, level = 2, point_type = 3011, owner = 13012, area_id = 1 },
	{ config_id = 13016, gadget_id = 70290002, pos = { x = 2521.657, y = 205.150, z = -1157.967 }, rot = { x = 0.000, y = 302.240, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13017, gadget_id = 70500000, pos = { x = 2520.482, y = 206.768, z = -1158.492 }, rot = { x = 0.000, y = 302.240, z = 0.000 }, level = 2, point_type = 3011, owner = 13016, area_id = 1 },
	{ config_id = 13018, gadget_id = 70500000, pos = { x = 2522.977, y = 207.778, z = -1157.770 }, rot = { x = 0.000, y = 302.240, z = 0.000 }, level = 2, point_type = 3011, owner = 13016, area_id = 1 },
	{ config_id = 13019, gadget_id = 70500000, pos = { x = 2520.512, y = 208.058, z = -1157.194 }, rot = { x = 0.000, y = 302.240, z = 0.000 }, level = 2, point_type = 3011, owner = 13016, area_id = 1 },
	{ config_id = 13020, gadget_id = 70500000, pos = { x = 2341.594, y = 207.637, z = -1126.022 }, rot = { x = 0.164, y = 80.935, z = 0.589 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13021, gadget_id = 70500000, pos = { x = 2310.452, y = 210.211, z = -1178.736 }, rot = { x = 3.905, y = 190.584, z = 3.897 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13022, gadget_id = 70500000, pos = { x = 2317.512, y = 208.362, z = -1134.499 }, rot = { x = 356.437, y = 39.733, z = 349.042 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13023, gadget_id = 70500000, pos = { x = 2536.568, y = 208.032, z = -1223.182 }, rot = { x = 0.000, y = 351.464, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13024, gadget_id = 70500000, pos = { x = 2418.374, y = 210.063, z = -1242.012 }, rot = { x = 354.649, y = 0.168, z = 358.202 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13025, gadget_id = 70500000, pos = { x = 2392.302, y = 212.513, z = -1203.895 }, rot = { x = 351.283, y = 288.714, z = 329.488 }, level = 2, point_type = 1001, area_id = 1 },
	{ config_id = 13026, gadget_id = 70500000, pos = { x = 2307.868, y = 217.667, z = -1076.262 }, rot = { x = 357.746, y = 359.087, z = 9.871 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13027, gadget_id = 70500000, pos = { x = 2316.828, y = 212.267, z = -1158.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13028, gadget_id = 70500000, pos = { x = 2460.176, y = 208.927, z = -1122.846 }, rot = { x = 347.679, y = 337.239, z = 355.641 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13029, gadget_id = 70500000, pos = { x = 2523.024, y = 205.434, z = -1158.609 }, rot = { x = 352.862, y = 356.905, z = 15.972 }, level = 2, point_type = 3011, area_id = 1 },
	{ config_id = 13030, gadget_id = 70500000, pos = { x = 2327.283, y = 208.213, z = -1119.129 }, rot = { x = 0.193, y = 356.916, z = 3.571 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13031, gadget_id = 70500000, pos = { x = 2507.573, y = 203.337, z = -1235.102 }, rot = { x = 3.507, y = 91.416, z = 355.749 }, level = 2, point_type = 2001, area_id = 1 },
	{ config_id = 13032, gadget_id = 70500000, pos = { x = 2406.042, y = 203.402, z = -1159.500 }, rot = { x = 0.000, y = 91.546, z = 0.000 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13033, gadget_id = 70500000, pos = { x = 2433.856, y = 212.399, z = -1096.854 }, rot = { x = 3.507, y = 91.416, z = 355.749 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13034, gadget_id = 70500000, pos = { x = 2371.113, y = 255.404, z = -1235.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 13035, gadget_id = 70500000, pos = { x = 2512.049, y = 204.072, z = -1158.709 }, rot = { x = 16.500, y = 0.796, z = 2.799 }, level = 2, point_type = 3011, area_id = 1 },
	{ config_id = 13036, gadget_id = 70500000, pos = { x = 2512.820, y = 204.121, z = -1159.898 }, rot = { x = 42.699, y = 12.274, z = 3.870 }, level = 2, point_type = 3011, area_id = 1 },
	{ config_id = 13037, gadget_id = 70500000, pos = { x = 2512.299, y = 204.089, z = -1158.400 }, rot = { x = 47.736, y = 9.011, z = 15.000 }, level = 2, point_type = 3011, area_id = 1 },
	{ config_id = 13038, gadget_id = 70500000, pos = { x = 2511.697, y = 204.147, z = -1158.563 }, rot = { x = 64.812, y = 335.977, z = 315.849 }, level = 2, point_type = 3011, area_id = 1 },
	{ config_id = 13039, gadget_id = 70290001, pos = { x = 2306.880, y = 250.005, z = -1275.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 13040, gadget_id = 70500000, pos = { x = 2306.897, y = 250.574, z = -1275.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 13039, area_id = 1 },
	{ config_id = 13041, gadget_id = 70500000, pos = { x = 2306.815, y = 250.860, z = -1276.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 13039, area_id = 1 },
	{ config_id = 13042, gadget_id = 70500000, pos = { x = 2307.148, y = 251.272, z = -1275.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 13039, area_id = 1 },
	{ config_id = 13043, gadget_id = 70500000, pos = { x = 2326.762, y = 208.171, z = -1119.269 }, rot = { x = 0.193, y = 356.916, z = 3.571 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13044, gadget_id = 70500000, pos = { x = 2327.139, y = 208.129, z = -1119.746 }, rot = { x = 0.193, y = 356.916, z = 3.571 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13045, gadget_id = 70500000, pos = { x = 2459.116, y = 199.618, z = -1219.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13046, gadget_id = 70500000, pos = { x = 2437.560, y = 205.008, z = -1249.812 }, rot = { x = 3.507, y = 91.416, z = 355.749 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13047, gadget_id = 70500000, pos = { x = 2537.149, y = 214.007, z = -1273.254 }, rot = { x = 11.548, y = 103.006, z = 345.670 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13048, gadget_id = 70290002, pos = { x = 2475.480, y = 199.386, z = -1179.620 }, rot = { x = 0.000, y = 316.637, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13049, gadget_id = 70500000, pos = { x = 2474.212, y = 201.004, z = -1179.838 }, rot = { x = 0.000, y = 316.637, z = 0.000 }, level = 2, point_type = 3011, owner = 13048, area_id = 1 },
	{ config_id = 13050, gadget_id = 70500000, pos = { x = 2476.807, y = 202.014, z = -1179.760 }, rot = { x = 0.000, y = 316.637, z = 0.000 }, level = 2, point_type = 3011, owner = 13048, area_id = 1 },
	{ config_id = 13051, gadget_id = 70500000, pos = { x = 2474.564, y = 202.294, z = -1178.588 }, rot = { x = 0.000, y = 316.637, z = 0.000 }, level = 2, point_type = 3011, owner = 13048, area_id = 1 },
	{ config_id = 13052, gadget_id = 70500000, pos = { x = 2424.162, y = 210.116, z = -1127.069 }, rot = { x = 3.507, y = 91.416, z = 334.851 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 13053, gadget_id = 70500000, pos = { x = 2495.601, y = 208.200, z = -1257.431 }, rot = { x = 2.399, y = 49.219, z = 352.563 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 13054, gadget_id = 70290002, pos = { x = 2447.749, y = 209.798, z = -1120.495 }, rot = { x = 0.000, y = 54.760, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13055, gadget_id = 70500000, pos = { x = 2447.714, y = 211.416, z = -1119.209 }, rot = { x = 0.000, y = 54.760, z = 0.000 }, level = 2, point_type = 3001, owner = 13054, area_id = 1 },
	{ config_id = 13056, gadget_id = 70500000, pos = { x = 2447.425, y = 212.426, z = -1121.790 }, rot = { x = 0.000, y = 54.760, z = 0.000 }, level = 2, point_type = 3001, owner = 13054, area_id = 1 },
	{ config_id = 13057, gadget_id = 70500000, pos = { x = 2448.902, y = 212.706, z = -1119.734 }, rot = { x = 0.000, y = 54.760, z = 0.000 }, level = 2, point_type = 3001, owner = 13054, area_id = 1 },
	{ config_id = 13058, gadget_id = 70290003, pos = { x = 2535.556, y = 219.044, z = -1111.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13059, gadget_id = 70500000, pos = { x = 2535.556, y = 219.147, z = -1111.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 3003, owner = 13058, area_id = 1 },
	{ config_id = 13060, gadget_id = 70500000, pos = { x = 2535.556, y = 219.147, z = -1111.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 3003, owner = 13058, area_id = 1 },
	{ config_id = 13061, gadget_id = 70500000, pos = { x = 2467.036, y = 207.105, z = -1226.955 }, rot = { x = 304.847, y = 336.601, z = 347.308 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13062, gadget_id = 70500000, pos = { x = 2466.621, y = 207.140, z = -1226.610 }, rot = { x = 7.786, y = 325.138, z = 346.772 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13063, gadget_id = 70500000, pos = { x = 2542.996, y = 205.537, z = -1201.197 }, rot = { x = 7.786, y = 325.138, z = 302.033 }, level = 2, point_type = 3002, area_id = 1 },
	{ config_id = 13064, gadget_id = 70500000, pos = { x = 2548.858, y = 205.559, z = -1203.736 }, rot = { x = 7.786, y = 325.138, z = 76.029 }, level = 2, point_type = 2006, area_id = 1 },
	{ config_id = 13065, gadget_id = 70500000, pos = { x = 2542.392, y = 205.488, z = -1201.439 }, rot = { x = 29.064, y = 1.954, z = 65.794 }, level = 2, point_type = 3002, area_id = 1 },
	{ config_id = 13066, gadget_id = 70290003, pos = { x = 2435.932, y = 215.345, z = -1118.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 13067, gadget_id = 70500000, pos = { x = 2435.932, y = 215.448, z = -1118.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 3003, owner = 13066, area_id = 1 },
	{ config_id = 13068, gadget_id = 70500000, pos = { x = 2435.932, y = 215.448, z = -1118.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 3003, owner = 13066, area_id = 1 },
	{ config_id = 13069, gadget_id = 70500000, pos = { x = 2331.998, y = 233.638, z = -1229.705 }, rot = { x = 0.000, y = 5.106, z = 0.000 }, level = 5, point_type = 1001, area_id = 1 },
	{ config_id = 13070, gadget_id = 70500000, pos = { x = 2334.951, y = 234.518, z = -1230.566 }, rot = { x = 0.000, y = 121.500, z = 0.000 }, level = 5, point_type = 1001, area_id = 1 },
	{ config_id = 13071, gadget_id = 70500000, pos = { x = 2374.251, y = 252.197, z = -1279.202 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 5, point_type = 2001, area_id = 1 },
	{ config_id = 13072, gadget_id = 70500000, pos = { x = 2358.699, y = 252.830, z = -1242.654 }, rot = { x = 0.000, y = 3.108, z = 0.000 }, level = 5, point_type = 2009, area_id = 1 }
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
		{ config_id = 13001, gadget_id = 70500000, pos = { x = 2389.407, y = 211.125, z = -1109.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
		{ config_id = 13002, gadget_id = 70500000, pos = { x = 2385.550, y = 211.602, z = -1106.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
		{ config_id = 13003, gadget_id = 70500000, pos = { x = 2395.003, y = 212.110, z = -1099.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 }
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
		gadgets = { 13004, 13005, 13006, 13007, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13016, 13017, 13018, 13019, 13020, 13021, 13022, 13023, 13024, 13025, 13026, 13027, 13028, 13029, 13030, 13031, 13032, 13033, 13034, 13035, 13036, 13037, 13038, 13039, 13040, 13041, 13042, 13043, 13044, 13045, 13046, 13047, 13048, 13049, 13050, 13051, 13052, 13053, 13054, 13055, 13056, 13057, 13058, 13059, 13060, 13061, 13062, 13063, 13064, 13065, 13066, 13067, 13068, 13069, 13070, 13071, 13072 },
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