-- 基础信息
local base_info = {
	group_id = 133004801
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 503, monster_id = 28030401, pos = { x = 2556.526, y = 215.987, z = -452.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 506, monster_id = 28030401, pos = { x = 2558.531, y = 215.753, z = -453.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 407, gadget_id = 70290010, pos = { x = 2236.490, y = 234.873, z = -452.294 }, rot = { x = 8.157, y = 204.528, z = 0.000 }, level = 13, area_id = 3 },
	{ config_id = 408, gadget_id = 70500000, pos = { x = 2236.491, y = 234.873, z = -452.294 }, rot = { x = 8.157, y = 204.528, z = 0.000 }, level = 13, point_type = 3006, owner = 407, area_id = 3 },
	{ config_id = 413, gadget_id = 70500000, pos = { x = 2327.775, y = 285.220, z = -248.701 }, rot = { x = 0.000, y = 339.891, z = 0.000 }, level = 13, point_type = 3007, area_id = 3 },
	{ config_id = 414, gadget_id = 70500000, pos = { x = 2323.625, y = 285.830, z = -248.294 }, rot = { x = 0.000, y = 147.620, z = 0.000 }, level = 13, point_type = 3007, area_id = 3 },
	{ config_id = 415, gadget_id = 70500000, pos = { x = 2327.380, y = 285.833, z = -246.462 }, rot = { x = 0.000, y = 332.466, z = 0.000 }, level = 13, point_type = 3007, area_id = 3 },
	{ config_id = 440, gadget_id = 70500000, pos = { x = 2107.294, y = 219.637, z = -471.263 }, rot = { x = 0.000, y = 200.085, z = 0.000 }, level = 13, point_type = 3007, area_id = 3 },
	{ config_id = 459, gadget_id = 70220020, pos = { x = 2340.703, y = 252.870, z = -465.148 }, rot = { x = 10.432, y = 205.280, z = 348.583 }, level = 1, area_id = 3 },
	{ config_id = 461, gadget_id = 70290009, pos = { x = 2213.636, y = 244.764, z = -411.374 }, rot = { x = 0.000, y = 35.350, z = 0.000 }, level = 13, area_id = 3 },
	{ config_id = 462, gadget_id = 70500000, pos = { x = 2213.636, y = 244.764, z = -411.374 }, rot = { x = 0.000, y = 35.350, z = 0.000 }, level = 13, point_type = 3005, owner = 461, area_id = 3 },
	{ config_id = 467, gadget_id = 70500000, pos = { x = 2263.458, y = 261.166, z = -358.077 }, rot = { x = 14.940, y = 70.844, z = 340.060 }, level = 13, point_type = 1002, area_id = 3 },
	{ config_id = 468, gadget_id = 70500000, pos = { x = 2263.409, y = 260.586, z = -360.098 }, rot = { x = 341.677, y = 316.776, z = 0.000 }, level = 13, point_type = 1002, area_id = 3 },
	{ config_id = 487, gadget_id = 70500000, pos = { x = 2157.348, y = 213.589, z = -601.748 }, rot = { x = 348.681, y = 172.217, z = 0.000 }, level = 13, point_type = 1002, area_id = 3 },
	{ config_id = 488, gadget_id = 70500000, pos = { x = 2160.329, y = 213.453, z = -599.163 }, rot = { x = 22.797, y = 213.180, z = 313.266 }, level = 13, point_type = 1002, area_id = 3 },
	{ config_id = 489, gadget_id = 70500000, pos = { x = 2139.837, y = 213.578, z = -595.283 }, rot = { x = 341.453, y = 180.758, z = 0.000 }, level = 13, point_type = 1002, area_id = 3 },
	{ config_id = 1120, gadget_id = 70500000, pos = { x = 2640.787, y = 249.926, z = -494.281 }, rot = { x = 0.000, y = 46.284, z = 0.000 }, level = 20, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 1276, gadget_id = 70290011, pos = { x = 2327.374, y = 276.458, z = -354.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
	{ config_id = 1277, gadget_id = 70500000, pos = { x = 2327.374, y = 276.458, z = -354.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3009, owner = 1276, area_id = 3 },
	{ config_id = 1278, gadget_id = 70290011, pos = { x = 2332.038, y = 276.478, z = -356.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
	{ config_id = 1279, gadget_id = 70500000, pos = { x = 2332.038, y = 276.478, z = -356.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3009, owner = 1278, area_id = 3 },
	{ config_id = 1280, gadget_id = 70290011, pos = { x = 2058.123, y = 266.619, z = -382.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
	{ config_id = 1281, gadget_id = 70500000, pos = { x = 2058.123, y = 266.619, z = -382.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3009, owner = 1280, area_id = 3 },
	{ config_id = 1283, gadget_id = 70290011, pos = { x = 2230.141, y = 210.313, z = -976.042 }, rot = { x = 0.000, y = 354.310, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1284, gadget_id = 70500000, pos = { x = 2230.141, y = 210.313, z = -976.041 }, rot = { x = 0.000, y = 354.310, z = 0.000 }, level = 5, point_type = 3009, owner = 1283, area_id = 1 },
	{ config_id = 1285, gadget_id = 70290011, pos = { x = 2251.888, y = 209.205, z = -976.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1286, gadget_id = 70500000, pos = { x = 2251.888, y = 209.205, z = -976.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1285, area_id = 1 },
	{ config_id = 1508, gadget_id = 70290011, pos = { x = 2236.749, y = 210.075, z = -981.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1509, gadget_id = 70500000, pos = { x = 2236.749, y = 210.075, z = -981.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1508, area_id = 1 },
	{ config_id = 1510, gadget_id = 70290011, pos = { x = 2242.117, y = 210.152, z = -973.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1511, gadget_id = 70500000, pos = { x = 2242.117, y = 210.152, z = -973.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1510, area_id = 1 },
	{ config_id = 1512, gadget_id = 70290011, pos = { x = 2196.979, y = 209.899, z = -951.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1513, gadget_id = 70500000, pos = { x = 2196.979, y = 209.899, z = -951.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1512, area_id = 1 },
	{ config_id = 1514, gadget_id = 70290011, pos = { x = 2195.351, y = 210.006, z = -943.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1515, gadget_id = 70500000, pos = { x = 2195.351, y = 210.006, z = -943.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1514, area_id = 1 },
	{ config_id = 1516, gadget_id = 70290011, pos = { x = 2184.244, y = 209.534, z = -943.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 1517, gadget_id = 70500000, pos = { x = 2184.244, y = 209.534, z = -943.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3009, owner = 1516, area_id = 1 },
	{ config_id = 801001, gadget_id = 70500000, pos = { x = 2306.615, y = 237.898, z = -827.211 }, rot = { x = 47.257, y = 331.658, z = 302.548 }, level = 5, point_type = 2014, area_id = 1 },
	{ config_id = 801002, gadget_id = 70500000, pos = { x = 2338.195, y = 240.925, z = -869.116 }, rot = { x = 358.272, y = 84.611, z = 43.215 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801003, gadget_id = 70500000, pos = { x = 2343.510, y = 241.495, z = -831.124 }, rot = { x = 66.652, y = 276.035, z = 59.088 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801004, gadget_id = 70500000, pos = { x = 2293.581, y = 237.141, z = -829.047 }, rot = { x = 47.257, y = 331.658, z = 302.548 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801005, gadget_id = 70500000, pos = { x = 2203.811, y = 223.180, z = -906.724 }, rot = { x = 293.400, y = 233.835, z = 261.054 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801006, gadget_id = 70500000, pos = { x = 2198.723, y = 213.408, z = -908.392 }, rot = { x = 3.401, y = 256.422, z = 226.378 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801007, gadget_id = 70500000, pos = { x = 2192.220, y = 214.490, z = -905.793 }, rot = { x = 293.299, y = 92.296, z = 253.352 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801008, gadget_id = 70500000, pos = { x = 2200.557, y = 217.434, z = -889.251 }, rot = { x = 66.942, y = 312.183, z = 73.326 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801009, gadget_id = 70500000, pos = { x = 2200.295, y = 214.819, z = -888.086 }, rot = { x = 38.901, y = 184.248, z = 312.928 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801010, gadget_id = 70500000, pos = { x = 2190.075, y = 216.070, z = -874.527 }, rot = { x = 58.149, y = 219.530, z = 36.342 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801011, gadget_id = 70500000, pos = { x = 2188.403, y = 218.327, z = -875.135 }, rot = { x = 58.149, y = 219.530, z = 36.342 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801012, gadget_id = 70500000, pos = { x = 2186.075, y = 220.581, z = -869.717 }, rot = { x = 23.939, y = 148.203, z = 319.142 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801013, gadget_id = 70500000, pos = { x = 2215.840, y = 243.479, z = -849.104 }, rot = { x = 66.773, y = 92.825, z = 318.150 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801014, gadget_id = 70500000, pos = { x = 2222.811, y = 247.345, z = -819.564 }, rot = { x = 52.044, y = 105.871, z = 258.401 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801015, gadget_id = 70500000, pos = { x = 2199.783, y = 241.980, z = -770.802 }, rot = { x = 315.128, y = 11.635, z = 58.045 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801016, gadget_id = 70500000, pos = { x = 2201.831, y = 241.247, z = -774.127 }, rot = { x = 28.318, y = 351.750, z = 106.422 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801017, gadget_id = 70500000, pos = { x = 2205.813, y = 253.830, z = -773.841 }, rot = { x = 319.378, y = 220.120, z = 116.627 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801018, gadget_id = 70500000, pos = { x = 2207.445, y = 251.540, z = -771.137 }, rot = { x = 9.676, y = 182.358, z = 71.956 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801019, gadget_id = 70500000, pos = { x = 2200.320, y = 235.379, z = -768.000 }, rot = { x = 54.046, y = 296.099, z = 2.568 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801020, gadget_id = 70500000, pos = { x = 2199.502, y = 234.228, z = -769.793 }, rot = { x = 74.251, y = 342.105, z = 52.392 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801021, gadget_id = 70500000, pos = { x = 2315.823, y = 222.536, z = -931.595 }, rot = { x = 64.739, y = 123.828, z = 268.979 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801022, gadget_id = 70500000, pos = { x = 2303.431, y = 222.530, z = -930.164 }, rot = { x = 58.543, y = 117.081, z = 261.325 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801023, gadget_id = 70500000, pos = { x = 2296.581, y = 223.706, z = -934.808 }, rot = { x = 307.412, y = 177.463, z = 76.409 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801024, gadget_id = 70500000, pos = { x = 2280.568, y = 227.989, z = -934.440 }, rot = { x = 307.412, y = 177.463, z = 76.409 }, level = 1, point_type = 2014, area_id = 1 },
	{ config_id = 801025, gadget_id = 70500000, pos = { x = 2282.362, y = 228.013, z = -940.158 }, rot = { x = 307.412, y = 177.463, z = 76.409 }, level = 1, point_type = 2014, area_id = 1 }
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
		{ config_id = 13, gadget_id = 70500000, pos = { x = 2548.167, y = 208.044, z = -44.275 }, rot = { x = 0.000, y = 177.020, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 14, gadget_id = 70500000, pos = { x = 2595.780, y = 212.412, z = -173.459 }, rot = { x = 0.000, y = 22.973, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 15, gadget_id = 70500000, pos = { x = 2566.934, y = 218.352, z = -147.341 }, rot = { x = 0.000, y = 96.465, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 17, gadget_id = 70500000, pos = { x = 2680.358, y = 208.578, z = -117.314 }, rot = { x = 0.000, y = 326.844, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 18, gadget_id = 70500000, pos = { x = 2643.625, y = 212.736, z = -158.441 }, rot = { x = 0.000, y = 271.044, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 19, gadget_id = 70500000, pos = { x = 2772.069, y = 219.257, z = -107.076 }, rot = { x = 0.000, y = 259.473, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 20, gadget_id = 70500000, pos = { x = 2856.253, y = 226.683, z = -116.642 }, rot = { x = 0.000, y = 137.328, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 21, gadget_id = 70500000, pos = { x = 2908.987, y = 218.732, z = -111.008 }, rot = { x = 0.000, y = 55.631, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 22, gadget_id = 70500000, pos = { x = 2928.665, y = 217.888, z = -41.772 }, rot = { x = 0.000, y = 272.548, z = 0.000 }, level = 20, point_type = 2002, area_id = 4 },
		{ config_id = 403, gadget_id = 70500000, pos = { x = 2245.428, y = 236.548, z = -477.839 }, rot = { x = 0.000, y = 125.500, z = 0.000 }, level = 13, point_type = 2002, area_id = 3 },
		{ config_id = 404, gadget_id = 70500000, pos = { x = 2279.946, y = 240.280, z = -463.854 }, rot = { x = 0.000, y = 353.187, z = 0.000 }, level = 13, point_type = 2004, area_id = 3 },
		{ config_id = 405, gadget_id = 70500000, pos = { x = 2276.612, y = 257.462, z = -364.105 }, rot = { x = 0.000, y = 314.413, z = 0.000 }, level = 13, point_type = 2004, area_id = 3 },
		{ config_id = 406, gadget_id = 70500000, pos = { x = 2274.716, y = 254.339, z = -394.338 }, rot = { x = 0.000, y = 63.778, z = 0.000 }, level = 13, point_type = 2001, area_id = 3 },
		{ config_id = 409, gadget_id = 70290002, pos = { x = 2218.491, y = 236.147, z = -439.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
		{ config_id = 410, gadget_id = 70500000, pos = { x = 2217.420, y = 237.765, z = -438.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3001, owner = 409, area_id = 3 },
		{ config_id = 411, gadget_id = 70500000, pos = { x = 2219.361, y = 238.775, z = -440.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3001, owner = 409, area_id = 3 },
		{ config_id = 412, gadget_id = 70500000, pos = { x = 2218.534, y = 239.055, z = -437.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3001, owner = 409, area_id = 3 },
		{ config_id = 430, gadget_id = 70290002, pos = { x = 2421.073, y = 295.408, z = -199.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
		{ config_id = 431, gadget_id = 70500000, pos = { x = 2420.002, y = 297.026, z = -199.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 430, area_id = 3 },
		{ config_id = 432, gadget_id = 70500000, pos = { x = 2421.944, y = 298.036, z = -200.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 430, area_id = 3 },
		{ config_id = 433, gadget_id = 70500000, pos = { x = 2421.116, y = 298.316, z = -198.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 430, area_id = 3 },
		{ config_id = 444, gadget_id = 70500000, pos = { x = 2166.935, y = 209.167, z = -521.772 }, rot = { x = 0.000, y = 338.761, z = 0.000 }, level = 13, point_type = 2001, area_id = 3 },
		{ config_id = 446, gadget_id = 70500000, pos = { x = 2167.342, y = 208.632, z = -538.327 }, rot = { x = 0.000, y = 74.883, z = 0.000 }, level = 13, point_type = 2002, area_id = 3 },
		{ config_id = 452, gadget_id = 70500000, pos = { x = 2134.636, y = 225.019, z = -467.578 }, rot = { x = 0.000, y = 22.745, z = 0.000 }, level = 13, point_type = 2004, area_id = 3 },
		{ config_id = 453, gadget_id = 70500000, pos = { x = 2081.481, y = 261.997, z = -390.394 }, rot = { x = 0.000, y = 67.077, z = 0.000 }, level = 13, point_type = 2001, area_id = 3 },
		{ config_id = 454, gadget_id = 70500000, pos = { x = 2059.392, y = 260.190, z = -346.275 }, rot = { x = 0.000, y = 319.634, z = 0.000 }, level = 13, point_type = 2004, area_id = 3 },
		{ config_id = 455, gadget_id = 70500000, pos = { x = 2194.112, y = 236.652, z = -463.546 }, rot = { x = 0.000, y = 274.986, z = 0.000 }, level = 13, point_type = 2004, area_id = 3 },
		{ config_id = 460, gadget_id = 70500000, pos = { x = 2334.744, y = 250.994, z = -471.559 }, rot = { x = 0.000, y = 130.256, z = 0.000 }, level = 20, point_type = 2004, area_id = 3 },
		{ config_id = 463, gadget_id = 70290002, pos = { x = 2288.476, y = 257.364, z = -367.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, area_id = 3 },
		{ config_id = 464, gadget_id = 70500000, pos = { x = 2287.405, y = 258.982, z = -366.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 463, area_id = 3 },
		{ config_id = 465, gadget_id = 70500000, pos = { x = 2289.346, y = 259.992, z = -368.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 463, area_id = 3 },
		{ config_id = 466, gadget_id = 70500000, pos = { x = 2288.519, y = 260.272, z = -365.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, point_type = 3011, owner = 463, area_id = 3 },
		{ config_id = 1231, gadget_id = 70500000, pos = { x = 2499.293, y = 202.306, z = -573.463 }, rot = { x = 0.000, y = 124.027, z = 0.000 }, level = 20, point_type = 2005, area_id = 1 },
		{ config_id = 1232, gadget_id = 70500000, pos = { x = 2465.576, y = 202.400, z = -557.518 }, rot = { x = 0.000, y = 190.964, z = 0.000 }, level = 20, point_type = 2005, area_id = 1 },
		{ config_id = 1233, gadget_id = 70500000, pos = { x = 2511.452, y = 202.400, z = -558.743 }, rot = { x = 0.000, y = 165.043, z = 0.000 }, level = 1, point_type = 2005, area_id = 1 },
		{ config_id = 1234, gadget_id = 70500000, pos = { x = 2640.776, y = 202.469, z = -672.643 }, rot = { x = 0.000, y = 316.490, z = 0.000 }, level = 20, point_type = 2005, area_id = 1 },
		{ config_id = 1235, gadget_id = 70500000, pos = { x = 2662.605, y = 202.178, z = -678.841 }, rot = { x = 0.000, y = 21.592, z = 0.000 }, level = 20, point_type = 2005, area_id = 1 },
		{ config_id = 1236, gadget_id = 70500000, pos = { x = 2555.547, y = 202.400, z = -761.883 }, rot = { x = 0.000, y = 159.058, z = 0.000 }, level = 5, point_type = 2005, area_id = 1 },
		{ config_id = 1237, gadget_id = 70500000, pos = { x = 2519.745, y = 202.361, z = -795.264 }, rot = { x = 0.000, y = 132.251, z = 0.000 }, level = 1, point_type = 2005, area_id = 1 }
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
	rand_suite = true
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
		monsters = { 503, 506 },
		gadgets = { 407, 408, 413, 414, 415, 440, 459, 461, 462, 467, 468, 487, 488, 489, 1120, 1276, 1277, 1278, 1279, 1280, 1281, 1283, 1284, 1285, 1286, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515, 1516, 1517, 801001, 801002, 801003, 801004, 801005, 801006, 801007, 801008, 801009, 801010, 801011, 801012, 801013, 801014, 801015, 801016, 801017, 801018, 801019, 801020, 801021, 801022, 801023, 801024, 801025 },
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