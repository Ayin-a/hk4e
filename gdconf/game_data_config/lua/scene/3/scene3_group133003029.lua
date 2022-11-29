-- 基础信息
local base_info = {
	group_id = 133003029
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
	{ config_id = 29001, gadget_id = 70500000, pos = { x = 2786.679, y = 269.731, z = -1184.807 }, rot = { x = 0.000, y = 119.875, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29002, gadget_id = 70500000, pos = { x = 2713.990, y = 245.147, z = -1117.554 }, rot = { x = 0.000, y = 247.207, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29003, gadget_id = 70500000, pos = { x = 2717.818, y = 244.605, z = -1118.026 }, rot = { x = 0.000, y = 55.436, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29004, gadget_id = 70500000, pos = { x = 2805.680, y = 244.900, z = -1078.488 }, rot = { x = 0.000, y = 216.127, z = 0.000 }, level = 2, point_type = 2007, area_id = 1 },
	{ config_id = 29005, gadget_id = 70500000, pos = { x = 2732.868, y = 250.765, z = -1237.890 }, rot = { x = 0.000, y = 45.108, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29006, gadget_id = 70290002, pos = { x = 2580.855, y = 217.501, z = -1229.259 }, rot = { x = 0.000, y = 17.272, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 29007, gadget_id = 70500000, pos = { x = 2580.044, y = 219.119, z = -1228.260 }, rot = { x = 0.000, y = 17.272, z = 0.000 }, level = 2, point_type = 3011, owner = 29006, area_id = 1 },
	{ config_id = 29008, gadget_id = 70500000, pos = { x = 2581.385, y = 220.129, z = -1230.483 }, rot = { x = 0.000, y = 17.272, z = 0.000 }, level = 2, point_type = 3011, owner = 29006, area_id = 1 },
	{ config_id = 29009, gadget_id = 70500000, pos = { x = 2581.306, y = 220.409, z = -1227.953 }, rot = { x = 0.000, y = 17.272, z = 0.000 }, level = 2, point_type = 3011, owner = 29006, area_id = 1 },
	{ config_id = 29010, gadget_id = 70500000, pos = { x = 2587.223, y = 218.128, z = -1261.953 }, rot = { x = 11.697, y = 1.810, z = 12.474 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 29011, gadget_id = 70500000, pos = { x = 2569.458, y = 213.439, z = -1203.957 }, rot = { x = 12.135, y = 2.697, z = 22.173 }, level = 2, point_type = 2002, area_id = 1 },
	{ config_id = 29012, gadget_id = 70290002, pos = { x = 2586.617, y = 217.831, z = -1262.515 }, rot = { x = 0.000, y = 211.009, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 29013, gadget_id = 70500000, pos = { x = 2587.167, y = 219.449, z = -1263.678 }, rot = { x = 0.000, y = 211.009, z = 0.000 }, level = 2, point_type = 3011, owner = 29012, area_id = 1 },
	{ config_id = 29014, gadget_id = 70500000, pos = { x = 2586.393, y = 220.459, z = -1261.200 }, rot = { x = 0.000, y = 211.009, z = 0.000 }, level = 2, point_type = 3011, owner = 29012, area_id = 1 },
	{ config_id = 29015, gadget_id = 70500000, pos = { x = 2585.869, y = 220.739, z = -1263.676 }, rot = { x = 0.000, y = 211.009, z = 0.000 }, level = 2, point_type = 3011, owner = 29012, area_id = 1 },
	{ config_id = 29016, gadget_id = 70500000, pos = { x = 2585.158, y = 223.019, z = -1152.925 }, rot = { x = 0.000, y = 34.572, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29017, gadget_id = 70500000, pos = { x = 2646.583, y = 230.920, z = -1146.283 }, rot = { x = 0.000, y = 155.908, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29018, gadget_id = 70290002, pos = { x = 2770.041, y = 274.871, z = -1155.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29019, gadget_id = 70500000, pos = { x = 2768.970, y = 276.489, z = -1155.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29018, area_id = 1 },
	{ config_id = 29020, gadget_id = 70500000, pos = { x = 2770.911, y = 277.499, z = -1156.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29018, area_id = 1 },
	{ config_id = 29021, gadget_id = 70500000, pos = { x = 2770.084, y = 277.779, z = -1154.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29018, area_id = 1 },
	{ config_id = 29022, gadget_id = 70500000, pos = { x = 2730.845, y = 253.313, z = -1273.098 }, rot = { x = 0.000, y = 205.306, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29023, gadget_id = 70290002, pos = { x = 2634.689, y = 236.809, z = -1193.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29024, gadget_id = 70500000, pos = { x = 2633.618, y = 238.427, z = -1192.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29023, area_id = 1 },
	{ config_id = 29025, gadget_id = 70500000, pos = { x = 2635.559, y = 239.437, z = -1194.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29023, area_id = 1 },
	{ config_id = 29026, gadget_id = 70500000, pos = { x = 2634.732, y = 239.717, z = -1191.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3011, owner = 29023, area_id = 1 },
	{ config_id = 29027, gadget_id = 70500000, pos = { x = 2749.118, y = 262.086, z = -1199.892 }, rot = { x = 0.000, y = 268.729, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29028, gadget_id = 70500000, pos = { x = 2621.432, y = 228.776, z = -1129.783 }, rot = { x = 0.000, y = 56.225, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29029, gadget_id = 70290002, pos = { x = 2660.327, y = 233.311, z = -1082.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29030, gadget_id = 70500000, pos = { x = 2659.256, y = 234.929, z = -1081.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29029, area_id = 1 },
	{ config_id = 29031, gadget_id = 70500000, pos = { x = 2661.198, y = 235.939, z = -1083.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29029, area_id = 1 },
	{ config_id = 29032, gadget_id = 70500000, pos = { x = 2660.370, y = 236.219, z = -1081.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29029, area_id = 1 },
	{ config_id = 29033, gadget_id = 70290002, pos = { x = 2725.854, y = 250.698, z = -1224.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29034, gadget_id = 70500000, pos = { x = 2724.782, y = 252.316, z = -1223.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29033, area_id = 1 },
	{ config_id = 29035, gadget_id = 70500000, pos = { x = 2726.724, y = 253.326, z = -1225.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29033, area_id = 1 },
	{ config_id = 29036, gadget_id = 70500000, pos = { x = 2725.896, y = 253.606, z = -1223.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29033, area_id = 1 },
	{ config_id = 29037, gadget_id = 70500000, pos = { x = 2641.586, y = 248.682, z = -1225.113 }, rot = { x = 0.000, y = 294.894, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29038, gadget_id = 70500000, pos = { x = 2641.770, y = 248.794, z = -1226.291 }, rot = { x = 0.000, y = 17.196, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29039, gadget_id = 70500000, pos = { x = 2652.298, y = 248.177, z = -1224.434 }, rot = { x = 0.000, y = 168.335, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29040, gadget_id = 70290002, pos = { x = 2801.320, y = 259.814, z = -1257.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29041, gadget_id = 70500000, pos = { x = 2800.249, y = 261.432, z = -1256.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29040, area_id = 1 },
	{ config_id = 29042, gadget_id = 70500000, pos = { x = 2802.190, y = 262.442, z = -1258.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29040, area_id = 1 },
	{ config_id = 29043, gadget_id = 70500000, pos = { x = 2801.363, y = 262.722, z = -1256.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3001, owner = 29040, area_id = 1 },
	{ config_id = 29044, gadget_id = 70290001, pos = { x = 2653.256, y = 247.753, z = -1259.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 29045, gadget_id = 70500000, pos = { x = 2653.273, y = 248.322, z = -1258.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 29044, area_id = 1 },
	{ config_id = 29046, gadget_id = 70500000, pos = { x = 2653.191, y = 248.608, z = -1259.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 29044, area_id = 1 },
	{ config_id = 29047, gadget_id = 70500000, pos = { x = 2653.524, y = 249.020, z = -1259.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 29044, area_id = 1 },
	{ config_id = 29048, gadget_id = 70500000, pos = { x = 2808.750, y = 270.054, z = -1192.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29049, gadget_id = 70500000, pos = { x = 2806.906, y = 270.050, z = -1193.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29050, gadget_id = 70500000, pos = { x = 2744.061, y = 274.361, z = -1149.155 }, rot = { x = 0.000, y = 254.489, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29051, gadget_id = 70500000, pos = { x = 2766.733, y = 271.947, z = -1165.735 }, rot = { x = 0.000, y = 9.787, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29052, gadget_id = 70500000, pos = { x = 2666.296, y = 246.604, z = -1278.744 }, rot = { x = 0.000, y = 202.676, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29053, gadget_id = 70500000, pos = { x = 2726.209, y = 271.846, z = -1152.333 }, rot = { x = 0.000, y = 340.842, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29054, gadget_id = 70500000, pos = { x = 2782.580, y = 257.589, z = -1255.277 }, rot = { x = 0.000, y = 249.442, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29055, gadget_id = 70500000, pos = { x = 2746.213, y = 237.918, z = -1074.403 }, rot = { x = 0.000, y = 341.996, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29056, gadget_id = 70500000, pos = { x = 2810.232, y = 262.123, z = -1251.433 }, rot = { x = 0.000, y = 128.363, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29057, gadget_id = 70500000, pos = { x = 2685.973, y = 232.118, z = -1095.280 }, rot = { x = 0.000, y = 351.581, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29058, gadget_id = 70500000, pos = { x = 2575.841, y = 220.116, z = -1163.827 }, rot = { x = 0.000, y = 266.521, z = 0.000 }, level = 30, point_type = 1001, area_id = 1 },
	{ config_id = 29059, gadget_id = 70500000, pos = { x = 2680.778, y = 240.170, z = -1174.031 }, rot = { x = 0.000, y = 330.187, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29060, gadget_id = 70500000, pos = { x = 2800.360, y = 259.556, z = -1260.226 }, rot = { x = 0.000, y = 228.488, z = 0.000 }, level = 30, point_type = 2006, area_id = 1 },
	{ config_id = 29061, gadget_id = 70500000, pos = { x = 2800.144, y = 259.550, z = -1260.096 }, rot = { x = 0.000, y = 316.345, z = 0.000 }, level = 30, point_type = 2006, area_id = 1 },
	{ config_id = 29062, gadget_id = 70500000, pos = { x = 2800.453, y = 259.592, z = -1259.870 }, rot = { x = 0.000, y = 27.743, z = 0.000 }, level = 30, point_type = 2006, area_id = 1 },
	{ config_id = 29063, gadget_id = 70500000, pos = { x = 2795.404, y = 270.069, z = -1199.712 }, rot = { x = 0.000, y = 172.374, z = 0.000 }, level = 30, point_type = 2002, area_id = 1 },
	{ config_id = 29064, gadget_id = 70500000, pos = { x = 2734.604, y = 251.241, z = -1232.460 }, rot = { x = 0.000, y = 175.637, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29065, gadget_id = 70500000, pos = { x = 2734.193, y = 251.262, z = -1233.809 }, rot = { x = 0.000, y = 198.452, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29066, gadget_id = 70500000, pos = { x = 2734.084, y = 251.254, z = -1233.277 }, rot = { x = 0.000, y = 47.484, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29067, gadget_id = 70500000, pos = { x = 2736.962, y = 251.291, z = -1235.084 }, rot = { x = 0.000, y = 324.392, z = 0.000 }, level = 30, point_type = 2007, area_id = 1 },
	{ config_id = 29068, gadget_id = 70500000, pos = { x = 2668.463, y = 237.398, z = -1116.992 }, rot = { x = 0.000, y = 222.870, z = 0.000 }, level = 30, point_type = 2001, area_id = 1 },
	{ config_id = 29069, gadget_id = 70500000, pos = { x = 2686.649, y = 234.352, z = -1124.676 }, rot = { x = 0.000, y = 15.522, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29070, gadget_id = 70500000, pos = { x = 2683.074, y = 235.132, z = -1133.984 }, rot = { x = 0.000, y = 334.176, z = 0.000 }, level = 30, point_type = 1001, area_id = 1 },
	{ config_id = 29071, gadget_id = 70500000, pos = { x = 2684.745, y = 234.611, z = -1131.381 }, rot = { x = 339.483, y = 154.695, z = 342.221 }, level = 30, point_type = 1001, area_id = 1 },
	{ config_id = 29072, gadget_id = 70500000, pos = { x = 2631.083, y = 228.903, z = -1104.360 }, rot = { x = 0.000, y = 97.667, z = 0.000 }, level = 30, point_type = 2004, area_id = 1 },
	{ config_id = 29073, gadget_id = 70500000, pos = { x = 2765.357, y = 242.508, z = -1065.323 }, rot = { x = 0.000, y = 206.824, z = 0.000 }, level = 2, point_type = 2009, area_id = 1 },
	{ config_id = 29074, gadget_id = 70500000, pos = { x = 2703.380, y = 248.472, z = -1220.617 }, rot = { x = 0.000, y = 185.990, z = 0.000 }, level = 30, point_type = 2009, area_id = 1 },
	{ config_id = 29075, gadget_id = 70500000, pos = { x = 2756.167, y = 258.529, z = -1240.109 }, rot = { x = 0.000, y = 5.892, z = 0.000 }, level = 30, point_type = 2009, area_id = 1 }
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29007, 29008, 29009, 29010, 29011, 29012, 29013, 29014, 29015, 29016, 29017, 29018, 29019, 29020, 29021, 29022, 29023, 29024, 29025, 29026, 29027, 29028, 29029, 29030, 29031, 29032, 29033, 29034, 29035, 29036, 29037, 29038, 29039, 29040, 29041, 29042, 29043, 29044, 29045, 29046, 29047, 29048, 29049, 29050, 29051, 29052, 29053, 29054, 29055, 29056, 29057, 29058, 29059, 29060, 29061, 29062, 29063, 29064, 29065, 29066, 29067, 29068, 29069, 29070, 29071, 29072, 29073, 29074, 29075 },
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