-- 基础信息
local base_info = {
	group_id = 133103816
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
	{ config_id = 816001, gadget_id = 70290013, pos = { x = 282.508, y = 207.907, z = 1508.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816002, gadget_id = 70500000, pos = { x = 282.508, y = 207.907, z = 1508.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2016, owner = 816001, area_id = 6 },
	{ config_id = 816003, gadget_id = 70500000, pos = { x = 283.272, y = 208.456, z = 1508.487 }, rot = { x = 80.732, y = 197.769, z = 283.477 }, level = 24, point_type = 2016, owner = 816001, area_id = 6 },
	{ config_id = 816004, gadget_id = 70500000, pos = { x = 282.227, y = 207.780, z = 1508.469 }, rot = { x = 343.642, y = 330.700, z = 341.572 }, level = 24, point_type = 2016, owner = 816001, area_id = 6 },
	{ config_id = 816072, gadget_id = 70500000, pos = { x = 305.800, y = 210.679, z = 1318.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 6 },
	{ config_id = 816073, gadget_id = 70500000, pos = { x = 305.069, y = 209.636, z = 1323.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 6 },
	{ config_id = 816103, gadget_id = 70290008, pos = { x = 245.878, y = 185.620, z = 1389.921 }, rot = { x = 335.881, y = 1.901, z = 351.119 }, level = 24, area_id = 6 },
	{ config_id = 816104, gadget_id = 70500000, pos = { x = 245.878, y = 185.620, z = 1389.921 }, rot = { x = 335.881, y = 1.901, z = 351.119 }, level = 24, point_type = 3008, owner = 816103, area_id = 6 },
	{ config_id = 816105, gadget_id = 70290008, pos = { x = 230.819, y = 198.189, z = 1409.107 }, rot = { x = 0.000, y = 233.572, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816106, gadget_id = 70500000, pos = { x = 230.819, y = 198.189, z = 1409.107 }, rot = { x = 0.000, y = 233.572, z = 0.000 }, level = 24, point_type = 3008, owner = 816105, area_id = 6 },
	{ config_id = 816110, gadget_id = 70500000, pos = { x = 75.722, y = 205.588, z = 1401.867 }, rot = { x = 340.212, y = 8.514, z = 344.599 }, level = 24, point_type = 1002, area_id = 6 },
	{ config_id = 816111, gadget_id = 70500000, pos = { x = 72.756, y = 205.758, z = 1396.465 }, rot = { x = 346.733, y = 326.881, z = 346.783 }, level = 24, point_type = 1002, area_id = 6 },
	{ config_id = 816112, gadget_id = 70500000, pos = { x = 63.469, y = 206.598, z = 1385.758 }, rot = { x = 342.609, y = 2.674, z = 342.645 }, level = 24, point_type = 1003, area_id = 6 },
	{ config_id = 816120, gadget_id = 70290016, pos = { x = 205.316, y = 185.859, z = 1284.797 }, rot = { x = 0.000, y = 142.944, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816121, gadget_id = 70500000, pos = { x = 205.316, y = 185.859, z = 1284.797 }, rot = { x = 0.000, y = 142.944, z = 0.000 }, level = 24, point_type = 3010, owner = 816120, area_id = 6 },
	{ config_id = 816133, gadget_id = 70500000, pos = { x = 358.618, y = 266.822, z = 1630.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1003, area_id = 6 },
	{ config_id = 816196, gadget_id = 70500000, pos = { x = 261.998, y = 264.115, z = 1183.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2028, area_id = 6 },
	{ config_id = 816205, gadget_id = 70500000, pos = { x = 150.783, y = 204.372, z = 1168.711 }, rot = { x = 7.489, y = 356.994, z = 334.720 }, level = 24, point_type = 1002, area_id = 6 },
	{ config_id = 816206, gadget_id = 70290009, pos = { x = 195.940, y = 216.263, z = 1124.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816207, gadget_id = 70500000, pos = { x = 195.940, y = 216.263, z = 1124.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 816206, area_id = 6 },
	{ config_id = 816208, gadget_id = 70290009, pos = { x = 187.563, y = 215.647, z = 1122.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816209, gadget_id = 70500000, pos = { x = 187.563, y = 215.647, z = 1122.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 816208, area_id = 6 },
	{ config_id = 816210, gadget_id = 70290009, pos = { x = 190.086, y = 214.898, z = 1130.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816211, gadget_id = 70500000, pos = { x = 190.086, y = 214.898, z = 1130.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 816210, area_id = 6 },
	{ config_id = 816213, gadget_id = 70290016, pos = { x = 231.856, y = 224.099, z = 1106.116 }, rot = { x = 29.223, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 816214, gadget_id = 70500000, pos = { x = 231.856, y = 224.099, z = 1106.116 }, rot = { x = 29.223, y = 0.000, z = 0.000 }, level = 19, point_type = 3010, owner = 816213, area_id = 6 },
	{ config_id = 816215, gadget_id = 70290016, pos = { x = 225.915, y = 223.070, z = 1110.088 }, rot = { x = 0.000, y = 144.454, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816216, gadget_id = 70500000, pos = { x = 225.915, y = 223.070, z = 1110.088 }, rot = { x = 0.000, y = 144.435, z = 0.000 }, level = 24, point_type = 3010, owner = 816215, area_id = 6 },
	{ config_id = 816221, gadget_id = 70500000, pos = { x = 250.980, y = 229.803, z = 1100.992 }, rot = { x = 0.000, y = 0.000, z = 341.121 }, level = 19, point_type = 1003, area_id = 6 },
	{ config_id = 816233, gadget_id = 70290016, pos = { x = 471.494, y = 219.962, z = 1078.631 }, rot = { x = 0.000, y = 255.005, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 816234, gadget_id = 70500000, pos = { x = 471.494, y = 219.962, z = 1078.631 }, rot = { x = 0.000, y = 255.016, z = 0.000 }, level = 19, point_type = 3010, owner = 816233, area_id = 6 },
	{ config_id = 816235, gadget_id = 70500000, pos = { x = 468.852, y = 257.542, z = 1038.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2028, area_id = 6 },
	{ config_id = 816238, gadget_id = 70290013, pos = { x = 284.376, y = 197.246, z = 1496.162 }, rot = { x = 0.000, y = 84.083, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 816239, gadget_id = 70500000, pos = { x = 284.376, y = 197.246, z = 1496.162 }, rot = { x = 0.000, y = 84.054, z = 0.000 }, level = 24, point_type = 2016, owner = 816238, area_id = 6 },
	{ config_id = 816240, gadget_id = 70500000, pos = { x = 284.451, y = 197.794, z = 1495.402 }, rot = { x = 80.732, y = 281.823, z = 283.477 }, level = 24, point_type = 2016, owner = 816238, area_id = 6 },
	{ config_id = 816241, gadget_id = 70500000, pos = { x = 284.326, y = 197.118, z = 1496.440 }, rot = { x = 343.642, y = 54.754, z = 341.572 }, level = 24, point_type = 2016, owner = 816238, area_id = 6 }
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
		{ config_id = 816005, gadget_id = 70500000, pos = { x = 307.209, y = 187.819, z = 1445.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816006, gadget_id = 70500000, pos = { x = 309.995, y = 187.623, z = 1431.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816007, gadget_id = 70290001, pos = { x = 275.524, y = 196.491, z = 1319.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 816008, gadget_id = 70500000, pos = { x = 275.541, y = 197.060, z = 1319.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816007, area_id = 6 },
		{ config_id = 816009, gadget_id = 70500000, pos = { x = 275.459, y = 197.346, z = 1318.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816007, area_id = 6 },
		{ config_id = 816010, gadget_id = 70500000, pos = { x = 275.792, y = 197.758, z = 1319.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816007, area_id = 6 },
		{ config_id = 816011, gadget_id = 70500000, pos = { x = 43.835, y = 223.195, z = 1158.208 }, rot = { x = 0.000, y = 293.315, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816012, gadget_id = 70500000, pos = { x = 133.744, y = 213.290, z = 1161.493 }, rot = { x = 0.000, y = 314.934, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816013, gadget_id = 70500000, pos = { x = 207.707, y = 235.030, z = 1042.278 }, rot = { x = 0.000, y = 239.527, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816014, gadget_id = 70500000, pos = { x = 66.117, y = 228.578, z = 1059.948 }, rot = { x = 0.000, y = 39.510, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816015, gadget_id = 70500000, pos = { x = 21.147, y = 223.515, z = 1206.291 }, rot = { x = 0.000, y = 239.903, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816016, gadget_id = 70500000, pos = { x = 136.935, y = 232.458, z = 1065.444 }, rot = { x = 357.738, y = 113.270, z = 22.193 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816017, gadget_id = 70500000, pos = { x = 226.780, y = 224.825, z = 1137.476 }, rot = { x = 350.438, y = 127.715, z = 336.245 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816018, gadget_id = 70500000, pos = { x = 160.258, y = 199.100, z = 1215.463 }, rot = { x = 1.774, y = 18.139, z = 14.395 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816019, gadget_id = 70500000, pos = { x = 74.310, y = 208.571, z = 1202.787 }, rot = { x = 13.462, y = 80.445, z = 15.877 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816020, gadget_id = 70500000, pos = { x = 274.675, y = 236.708, z = 1045.688 }, rot = { x = 2.444, y = 66.700, z = 2.198 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816021, gadget_id = 70500000, pos = { x = 263.137, y = 227.494, z = 1103.032 }, rot = { x = 0.000, y = 228.802, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816022, gadget_id = 70500000, pos = { x = 89.838, y = 225.357, z = 1098.125 }, rot = { x = 0.000, y = 183.412, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816023, gadget_id = 70500000, pos = { x = 199.024, y = 218.496, z = 1115.594 }, rot = { x = 0.000, y = 54.911, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816024, gadget_id = 70500000, pos = { x = 279.466, y = 250.230, z = 1198.673 }, rot = { x = 0.000, y = 18.950, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816025, gadget_id = 70500000, pos = { x = 68.042, y = 229.540, z = 1036.348 }, rot = { x = 0.000, y = 352.951, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816026, gadget_id = 70500000, pos = { x = 222.422, y = 209.517, z = 1223.794 }, rot = { x = 0.000, y = 41.020, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816027, gadget_id = 70500000, pos = { x = 9.971, y = 232.472, z = 1040.550 }, rot = { x = 0.000, y = 14.119, z = 0.000 }, level = 32, point_type = 2001, area_id = 6 },
		{ config_id = 816028, gadget_id = 70500000, pos = { x = 185.272, y = 219.487, z = 1175.876 }, rot = { x = 0.000, y = 349.358, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816029, gadget_id = 70500000, pos = { x = 206.310, y = 219.893, z = 1154.878 }, rot = { x = 355.148, y = 358.919, z = 25.116 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816030, gadget_id = 70500000, pos = { x = 226.919, y = 230.503, z = 1159.831 }, rot = { x = 358.777, y = 306.284, z = 33.530 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816031, gadget_id = 70500000, pos = { x = 210.979, y = 225.519, z = 1176.268 }, rot = { x = 25.232, y = 298.509, z = 355.763 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816032, gadget_id = 70500000, pos = { x = 242.297, y = 230.342, z = 1136.384 }, rot = { x = 0.000, y = 89.573, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816033, gadget_id = 70500000, pos = { x = 12.523, y = 243.617, z = 1073.890 }, rot = { x = 0.000, y = 321.869, z = 0.000 }, level = 32, point_type = 2004, area_id = 6 },
		{ config_id = 816034, gadget_id = 70500000, pos = { x = 163.727, y = 205.050, z = 1165.195 }, rot = { x = 0.000, y = 252.514, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816035, gadget_id = 70500000, pos = { x = 73.088, y = 226.431, z = 1091.222 }, rot = { x = 0.000, y = 124.318, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816036, gadget_id = 70500000, pos = { x = 63.279, y = 246.116, z = 1583.324 }, rot = { x = 0.000, y = 278.855, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816037, gadget_id = 70500000, pos = { x = 69.832, y = 250.056, z = 1467.466 }, rot = { x = 0.000, y = 254.267, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816038, gadget_id = 70500000, pos = { x = 171.887, y = 219.484, z = 1108.511 }, rot = { x = 0.000, y = 106.053, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816039, gadget_id = 70500000, pos = { x = 252.603, y = 247.452, z = 1445.879 }, rot = { x = 0.000, y = 275.100, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816040, gadget_id = 70500000, pos = { x = 96.217, y = 195.733, z = 1238.839 }, rot = { x = 0.000, y = 265.713, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816041, gadget_id = 70500000, pos = { x = 75.289, y = 229.854, z = 1033.542 }, rot = { x = 0.000, y = 215.909, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816042, gadget_id = 70290002, pos = { x = 381.872, y = 226.915, z = 1039.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
		{ config_id = 816043, gadget_id = 70500000, pos = { x = 2.893, y = 245.557, z = 1138.195 }, rot = { x = 0.000, y = 144.730, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816044, gadget_id = 70500000, pos = { x = 179.421, y = 202.308, z = 1222.992 }, rot = { x = 0.000, y = 168.222, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816045, gadget_id = 70500000, pos = { x = 56.961, y = 189.922, z = 1322.574 }, rot = { x = 0.000, y = 116.601, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816046, gadget_id = 70500000, pos = { x = 155.684, y = 247.969, z = 1033.186 }, rot = { x = 0.000, y = 36.675, z = 0.000 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816047, gadget_id = 70500000, pos = { x = 49.123, y = 216.193, z = 1182.010 }, rot = { x = 0.000, y = 161.546, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816048, gadget_id = 70500000, pos = { x = 134.878, y = 186.772, z = 1311.227 }, rot = { x = 0.000, y = 90.094, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816049, gadget_id = 70500000, pos = { x = 203.465, y = 234.443, z = 1071.251 }, rot = { x = 0.000, y = 139.068, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816050, gadget_id = 70500000, pos = { x = 35.841, y = 197.775, z = 1258.018 }, rot = { x = 0.000, y = 104.673, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816051, gadget_id = 70500000, pos = { x = 61.557, y = 203.252, z = 1376.654 }, rot = { x = 0.000, y = 217.967, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816052, gadget_id = 70500000, pos = { x = 102.044, y = 213.624, z = 1172.966 }, rot = { x = 0.000, y = 342.628, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816053, gadget_id = 70500000, pos = { x = 380.801, y = 228.533, z = 1039.783 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 19, point_type = 3011, owner = 816042, area_id = 6 },
		{ config_id = 816054, gadget_id = 70500000, pos = { x = 382.742, y = 229.543, z = 1038.058 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 19, point_type = 3011, owner = 816042, area_id = 6 },
		{ config_id = 816055, gadget_id = 70500000, pos = { x = 62.303, y = 257.296, z = 1667.519 }, rot = { x = 0.000, y = 324.015, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816056, gadget_id = 70500000, pos = { x = 275.868, y = 234.964, z = 1703.384 }, rot = { x = 356.188, y = 351.226, z = 347.245 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816057, gadget_id = 70500000, pos = { x = 368.282, y = 232.758, z = 1713.568 }, rot = { x = 0.000, y = 84.089, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816058, gadget_id = 70500000, pos = { x = 180.801, y = 307.587, z = 1812.318 }, rot = { x = 0.000, y = 88.692, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816059, gadget_id = 70500000, pos = { x = 381.915, y = 229.823, z = 1040.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3011, owner = 816042, area_id = 6 },
		{ config_id = 816060, gadget_id = 70290001, pos = { x = 170.025, y = 208.271, z = 1193.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 816061, gadget_id = 70500000, pos = { x = 297.402, y = 290.977, z = 1749.110 }, rot = { x = 0.000, y = 167.637, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816062, gadget_id = 70500000, pos = { x = 12.488, y = 257.647, z = 1677.819 }, rot = { x = 0.000, y = 252.136, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816063, gadget_id = 70500000, pos = { x = 304.319, y = 296.869, z = 1806.937 }, rot = { x = 0.000, y = 201.126, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816064, gadget_id = 70500000, pos = { x = 22.767, y = 270.870, z = 1732.484 }, rot = { x = 0.000, y = 235.837, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816065, gadget_id = 70500000, pos = { x = 135.734, y = 289.013, z = 1682.273 }, rot = { x = 0.000, y = 187.649, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816066, gadget_id = 70500000, pos = { x = 170.042, y = 208.840, z = 1193.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816060, area_id = 6 },
		{ config_id = 816067, gadget_id = 70500000, pos = { x = 316.878, y = 232.476, z = 1701.520 }, rot = { x = 0.000, y = 184.204, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816068, gadget_id = 70500000, pos = { x = 439.758, y = 234.110, z = 1684.592 }, rot = { x = 0.000, y = 195.002, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816069, gadget_id = 70500000, pos = { x = 453.739, y = 301.562, z = 1907.656 }, rot = { x = 0.000, y = 228.240, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816070, gadget_id = 70500000, pos = { x = 169.960, y = 209.126, z = 1193.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816060, area_id = 6 },
		{ config_id = 816071, gadget_id = 70500000, pos = { x = 170.293, y = 209.538, z = 1193.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 816060, area_id = 6 },
		{ config_id = 816074, gadget_id = 70500000, pos = { x = 257.357, y = 247.431, z = 1520.331 }, rot = { x = 0.000, y = 65.164, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816075, gadget_id = 70500000, pos = { x = 103.188, y = 287.267, z = 1697.426 }, rot = { x = 0.000, y = 148.433, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816076, gadget_id = 70500000, pos = { x = 112.414, y = 353.655, z = 2020.452 }, rot = { x = 0.000, y = 53.632, z = 0.000 }, level = 24, point_type = 2001, area_id = 20 },
		{ config_id = 816077, gadget_id = 70500000, pos = { x = 277.150, y = 231.863, z = 1630.216 }, rot = { x = 0.000, y = 260.900, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816126, gadget_id = 70500000, pos = { x = 65.538, y = 228.471, z = 1061.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816079, gadget_id = 70500000, pos = { x = 172.584, y = 283.029, z = 1625.735 }, rot = { x = 0.000, y = 114.920, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816080, gadget_id = 70500000, pos = { x = 466.935, y = 305.267, z = 1901.804 }, rot = { x = 0.000, y = 244.428, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816081, gadget_id = 70500000, pos = { x = 33.904, y = 259.484, z = 1469.210 }, rot = { x = 0.000, y = 291.762, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816127, gadget_id = 70500000, pos = { x = 64.873, y = 228.606, z = 1059.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816137, gadget_id = 70500000, pos = { x = 65.866, y = 228.675, z = 1058.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816086, gadget_id = 70500000, pos = { x = 14.221, y = 254.835, z = 1615.672 }, rot = { x = 0.000, y = 319.615, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816087, gadget_id = 70500000, pos = { x = 452.889, y = 231.021, z = 1738.213 }, rot = { x = 0.000, y = 86.884, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816088, gadget_id = 70500000, pos = { x = 296.651, y = 198.998, z = 1343.670 }, rot = { x = 0.000, y = 231.507, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816089, gadget_id = 70500000, pos = { x = 275.178, y = 253.380, z = 1181.177 }, rot = { x = 0.000, y = 18.325, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816090, gadget_id = 70500000, pos = { x = 327.272, y = 272.604, z = 1185.451 }, rot = { x = 0.000, y = 42.588, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816091, gadget_id = 70500000, pos = { x = 308.272, y = 259.489, z = 1265.682 }, rot = { x = 0.000, y = 113.984, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816092, gadget_id = 70500000, pos = { x = 343.650, y = 253.931, z = 1075.674 }, rot = { x = 0.000, y = 5.098, z = 0.000 }, level = 19, point_type = 2001, area_id = 6 },
		{ config_id = 816093, gadget_id = 70500000, pos = { x = 388.758, y = 260.861, z = 1125.524 }, rot = { x = 0.000, y = 333.990, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816094, gadget_id = 70500000, pos = { x = 332.056, y = 266.341, z = 1140.550 }, rot = { x = 0.000, y = 36.111, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816095, gadget_id = 70500000, pos = { x = 236.911, y = 236.564, z = 1042.185 }, rot = { x = 0.000, y = 344.456, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816096, gadget_id = 70500000, pos = { x = 399.549, y = 224.691, z = 1024.814 }, rot = { x = 0.000, y = 38.756, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816097, gadget_id = 70500000, pos = { x = 1.380, y = 212.931, z = 1330.374 }, rot = { x = 0.000, y = 128.176, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816098, gadget_id = 70500000, pos = { x = 293.152, y = 221.028, z = 1034.937 }, rot = { x = 0.000, y = 180.203, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816099, gadget_id = 70500000, pos = { x = 260.369, y = 196.665, z = 1284.564 }, rot = { x = 0.000, y = 188.787, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816100, gadget_id = 70500000, pos = { x = 419.705, y = 282.851, z = 1644.014 }, rot = { x = 0.000, y = 359.775, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816101, gadget_id = 70500000, pos = { x = 359.128, y = 276.812, z = 1627.662 }, rot = { x = 0.000, y = 42.575, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816102, gadget_id = 70500000, pos = { x = 420.475, y = 291.476, z = 1587.467 }, rot = { x = 0.000, y = 49.516, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816107, gadget_id = 70500000, pos = { x = 220.940, y = 197.458, z = 1404.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816108, gadget_id = 70500000, pos = { x = 202.584, y = 196.987, z = 1408.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816109, gadget_id = 70500000, pos = { x = 217.808, y = 197.454, z = 1414.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816113, gadget_id = 70500000, pos = { x = 192.441, y = 193.306, z = 1254.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816114, gadget_id = 70500000, pos = { x = 159.001, y = 186.246, z = 1264.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816115, gadget_id = 70500000, pos = { x = 154.953, y = 191.200, z = 1236.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816116, gadget_id = 70500000, pos = { x = 141.391, y = 186.456, z = 1263.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816117, gadget_id = 70500000, pos = { x = 182.094, y = 185.377, z = 1278.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816128, gadget_id = 70500000, pos = { x = 375.643, y = 246.387, z = 1638.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816129, gadget_id = 70500000, pos = { x = 357.813, y = 253.688, z = 1638.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816130, gadget_id = 70500000, pos = { x = 346.235, y = 254.532, z = 1637.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816131, gadget_id = 70500000, pos = { x = 253.396, y = 240.602, z = 1697.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816132, gadget_id = 70500000, pos = { x = 254.955, y = 242.242, z = 1704.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816134, gadget_id = 70500000, pos = { x = 420.851, y = 231.233, z = 1701.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816135, gadget_id = 70500000, pos = { x = 426.683, y = 231.139, z = 1701.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816136, gadget_id = 70500000, pos = { x = 408.997, y = 230.932, z = 1726.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816138, gadget_id = 70500000, pos = { x = 405.101, y = 234.978, z = 1672.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816139, gadget_id = 70500000, pos = { x = 407.320, y = 234.448, z = 1676.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816140, gadget_id = 70500000, pos = { x = 402.584, y = 233.780, z = 1676.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816141, gadget_id = 70500000, pos = { x = 371.423, y = 230.963, z = 1681.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2005, area_id = 6 },
		{ config_id = 816142, gadget_id = 70500000, pos = { x = 333.735, y = 235.819, z = 1631.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816143, gadget_id = 70500000, pos = { x = 285.824, y = 231.856, z = 1669.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816144, gadget_id = 70500000, pos = { x = 257.454, y = 239.902, z = 1067.983 }, rot = { x = 3.470, y = 359.573, z = 345.963 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816145, gadget_id = 70500000, pos = { x = 233.945, y = 236.580, z = 1045.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2007, area_id = 6 },
		{ config_id = 816146, gadget_id = 70500000, pos = { x = 232.723, y = 235.600, z = 1043.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2007, area_id = 6 },
		{ config_id = 816147, gadget_id = 70500000, pos = { x = 161.094, y = 212.192, z = 1129.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
		{ config_id = 816148, gadget_id = 70500000, pos = { x = 158.917, y = 213.250, z = 1126.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
		{ config_id = 816149, gadget_id = 70500000, pos = { x = -9.733, y = 244.980, z = 1170.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816150, gadget_id = 70500000, pos = { x = 46.405, y = 232.076, z = 1074.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816151, gadget_id = 70500000, pos = { x = 56.274, y = 229.607, z = 1086.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816152, gadget_id = 70500000, pos = { x = 53.630, y = 231.300, z = 1123.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816153, gadget_id = 70500000, pos = { x = -15.678, y = 244.941, z = 1180.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816154, gadget_id = 70500000, pos = { x = -16.115, y = 244.886, z = 1175.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816155, gadget_id = 70500000, pos = { x = 21.281, y = 236.626, z = 1092.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816156, gadget_id = 70500000, pos = { x = 121.943, y = 238.127, z = 1052.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 1001, area_id = 6 },
		{ config_id = 816157, gadget_id = 70500000, pos = { x = 99.874, y = 219.856, z = 1151.629 }, rot = { x = 20.412, y = 358.716, z = 352.875 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816158, gadget_id = 70500000, pos = { x = 97.470, y = 211.427, z = 1186.317 }, rot = { x = 9.753, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816159, gadget_id = 70500000, pos = { x = 67.555, y = 220.176, z = 1156.872 }, rot = { x = 10.615, y = 359.834, z = 358.210 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816160, gadget_id = 70500000, pos = { x = 11.142, y = 239.645, z = 1178.328 }, rot = { x = 12.410, y = 357.839, z = 340.317 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816161, gadget_id = 70500000, pos = { x = -4.163, y = 223.427, z = 1229.365 }, rot = { x = 9.660, y = 359.323, z = 351.995 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816162, gadget_id = 70500000, pos = { x = 20.533, y = 238.272, z = 1109.210 }, rot = { x = 353.226, y = 1.084, z = 341.833 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816163, gadget_id = 70500000, pos = { x = 56.110, y = 228.770, z = 1066.488 }, rot = { x = 0.885, y = 359.931, z = 351.119 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816164, gadget_id = 70500000, pos = { x = 77.425, y = 225.727, z = 1107.135 }, rot = { x = 354.620, y = 0.777, z = 1.710 }, level = 24, point_type = 2019, area_id = 6 },
		{ config_id = 816165, gadget_id = 70290001, pos = { x = 19.243, y = 203.218, z = 1255.317 }, rot = { x = 20.293, y = 356.347, z = 346.016 }, level = 24, area_id = 6 },
		{ config_id = 816166, gadget_id = 70500000, pos = { x = 19.260, y = 203.787, z = 1255.718 }, rot = { x = 20.293, y = 356.347, z = 346.016 }, level = 24, point_type = 3002, owner = 816165, area_id = 6 },
		{ config_id = 816167, gadget_id = 70500000, pos = { x = 19.178, y = 204.073, z = 1254.921 }, rot = { x = 20.293, y = 356.347, z = 346.016 }, level = 24, point_type = 3002, owner = 816165, area_id = 6 },
		{ config_id = 816168, gadget_id = 70500000, pos = { x = 19.511, y = 204.485, z = 1255.214 }, rot = { x = 20.293, y = 356.347, z = 346.016 }, level = 24, point_type = 3002, owner = 816165, area_id = 6 },
		{ config_id = 816169, gadget_id = 70500000, pos = { x = 252.839, y = 235.618, z = 1642.478 }, rot = { x = 13.369, y = 4.293, z = 336.251 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816170, gadget_id = 70500000, pos = { x = 293.353, y = 233.631, z = 1599.952 }, rot = { x = 344.484, y = 5.109, z = 347.569 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816171, gadget_id = 70500000, pos = { x = 271.733, y = 245.478, z = 1557.869 }, rot = { x = 1.773, y = 359.786, z = 355.528 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816172, gadget_id = 70500000, pos = { x = 251.212, y = 248.615, z = 1519.913 }, rot = { x = 0.000, y = 0.000, z = 344.291 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816173, gadget_id = 70500000, pos = { x = 256.758, y = 244.131, z = 1483.943 }, rot = { x = 4.650, y = 359.949, z = 3.887 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816174, gadget_id = 70500000, pos = { x = 213.904, y = 251.618, z = 1482.361 }, rot = { x = 358.231, y = 0.585, z = 351.795 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816175, gadget_id = 70500000, pos = { x = 213.536, y = 260.042, z = 1530.616 }, rot = { x = 0.478, y = 180.865, z = 25.821 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816176, gadget_id = 70500000, pos = { x = 214.086, y = 259.802, z = 1532.234 }, rot = { x = 24.990, y = 107.470, z = 6.735 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816177, gadget_id = 70290001, pos = { x = 18.952, y = 240.249, z = 1148.967 }, rot = { x = 5.394, y = 358.859, z = 336.124 }, level = 24, area_id = 6 },
		{ config_id = 816178, gadget_id = 70500000, pos = { x = 18.969, y = 240.818, z = 1149.368 }, rot = { x = 5.394, y = 358.859, z = 336.124 }, level = 24, point_type = 3002, owner = 816177, area_id = 6 },
		{ config_id = 816179, gadget_id = 70500000, pos = { x = 18.887, y = 241.104, z = 1148.571 }, rot = { x = 5.394, y = 358.859, z = 336.124 }, level = 24, point_type = 3002, owner = 816177, area_id = 6 },
		{ config_id = 816180, gadget_id = 70500000, pos = { x = 19.220, y = 241.516, z = 1148.864 }, rot = { x = 5.394, y = 358.859, z = 336.124 }, level = 24, point_type = 3002, owner = 816177, area_id = 6 },
		{ config_id = 816181, gadget_id = 70500000, pos = { x = 42.517, y = 195.413, z = 1280.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
		{ config_id = 816182, gadget_id = 70500000, pos = { x = 45.646, y = 194.510, z = 1280.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
		{ config_id = 816183, gadget_id = 70500000, pos = { x = 47.813, y = 194.200, z = 1282.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
		{ config_id = 816184, gadget_id = 70500000, pos = { x = 87.288, y = 200.294, z = 1231.439 }, rot = { x = 19.549, y = 358.467, z = 351.119 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816185, gadget_id = 70500000, pos = { x = 109.191, y = 185.374, z = 1278.924 }, rot = { x = 8.872, y = 359.806, z = 357.318 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816186, gadget_id = 70500000, pos = { x = 84.332, y = 186.199, z = 1301.577 }, rot = { x = 12.936, y = 358.694, z = 348.517 }, level = 24, point_type = 2001, area_id = 6 },
		{ config_id = 816187, gadget_id = 70500000, pos = { x = 120.947, y = 189.670, z = 1252.222 }, rot = { x = 3.576, y = 359.972, z = 359.105 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816188, gadget_id = 70500000, pos = { x = 82.913, y = 187.680, z = 1274.520 }, rot = { x = 1.789, y = 0.028, z = 1.790 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816189, gadget_id = 70500000, pos = { x = 73.758, y = 188.456, z = 1293.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816190, gadget_id = 70500000, pos = { x = 23.590, y = 200.466, z = 1318.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816201, gadget_id = 70500000, pos = { x = 206.564, y = 218.670, z = 1207.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816202, gadget_id = 70500000, pos = { x = 204.634, y = 219.214, z = 1207.315 }, rot = { x = 36.269, y = 357.436, z = 352.183 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816203, gadget_id = 70500000, pos = { x = 148.053, y = 203.469, z = 1177.547 }, rot = { x = 354.665, y = 1.928, z = 320.288 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816204, gadget_id = 70500000, pos = { x = 162.525, y = 204.979, z = 1169.265 }, rot = { x = 4.226, y = 350.072, z = 13.508 }, level = 24, point_type = 1001, area_id = 6 },
		{ config_id = 816212, gadget_id = 70500000, pos = { x = 226.760, y = 230.229, z = 1158.310 }, rot = { x = 310.628, y = 100.198, z = 292.485 }, level = 24, point_type = 2002, area_id = 6 },
		{ config_id = 816217, gadget_id = 70500000, pos = { x = 268.129, y = 230.164, z = 1088.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2002, area_id = 6 },
		{ config_id = 816218, gadget_id = 70500000, pos = { x = 248.628, y = 231.700, z = 1137.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 816219, gadget_id = 70500000, pos = { x = 316.209, y = 225.536, z = 1054.472 }, rot = { x = 354.973, y = 359.788, z = 4.827 }, level = 19, point_type = 2009, area_id = 6 },
		{ config_id = 816220, gadget_id = 70500000, pos = { x = 316.739, y = 225.473, z = 1052.964 }, rot = { x = 357.144, y = 359.881, z = 4.767 }, level = 19, point_type = 2009, area_id = 6 },
		{ config_id = 816222, gadget_id = 70290002, pos = { x = 363.260, y = 220.183, z = 1043.613 }, rot = { x = 7.005, y = 0.652, z = 10.620 }, level = 19, area_id = 6 },
		{ config_id = 816223, gadget_id = 70500000, pos = { x = 362.189, y = 219.933, z = 1044.327 }, rot = { x = 9.881, y = 264.306, z = 351.981 }, level = 19, point_type = 3011, owner = 816222, area_id = 6 },
		{ config_id = 816224, gadget_id = 70500000, pos = { x = 365.219, y = 220.339, z = 1044.579 }, rot = { x = 12.492, y = 314.253, z = 48.462 }, level = 19, point_type = 3011, owner = 816222, area_id = 6 },
		{ config_id = 816225, gadget_id = 70500000, pos = { x = 362.737, y = 222.809, z = 1044.923 }, rot = { x = 7.005, y = 0.652, z = 10.620 }, level = 19, point_type = 3011, owner = 816222, area_id = 6 },
		{ config_id = 816230, gadget_id = 70500000, pos = { x = 484.601, y = 218.139, z = 1056.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816231, gadget_id = 70500000, pos = { x = 489.657, y = 216.515, z = 1068.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816232, gadget_id = 70500000, pos = { x = 483.980, y = 221.860, z = 1087.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2004, area_id = 6 },
		{ config_id = 816236, gadget_id = 70500000, pos = { x = 285.927, y = 185.422, z = 1435.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816237, gadget_id = 70500000, pos = { x = 287.754, y = 185.449, z = 1434.394 }, rot = { x = 0.000, y = 285.613, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
		{ config_id = 816242, gadget_id = 70290003, pos = { x = 349.596, y = 221.084, z = 1555.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 816243, gadget_id = 70500000, pos = { x = 349.596, y = 221.187, z = 1555.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 816242, area_id = 6 },
		{ config_id = 816244, gadget_id = 70500000, pos = { x = 349.596, y = 221.187, z = 1555.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 816242, area_id = 6 },
		{ config_id = 816245, gadget_id = 70290003, pos = { x = 347.875, y = 219.936, z = 1550.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 816246, gadget_id = 70500000, pos = { x = 347.875, y = 220.039, z = 1550.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 816245, area_id = 6 },
		{ config_id = 816247, gadget_id = 70500000, pos = { x = 347.875, y = 220.039, z = 1550.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 816245, area_id = 6 }
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
		gadgets = { 816001, 816002, 816003, 816004, 816072, 816073, 816103, 816104, 816105, 816106, 816110, 816111, 816112, 816120, 816121, 816133, 816196, 816205, 816206, 816207, 816208, 816209, 816210, 816211, 816213, 816214, 816215, 816216, 816221, 816233, 816234, 816235, 816238, 816239, 816240, 816241 },
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