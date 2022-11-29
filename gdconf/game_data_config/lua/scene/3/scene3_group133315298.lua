-- 基础信息
local base_info = {
	group_id = 133315298
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
	{ config_id = 298001, gadget_id = 70290003, pos = { x = 284.488, y = 259.852, z = 2292.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298002, gadget_id = 70500000, pos = { x = 446.234, y = 231.791, z = 2243.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298003, gadget_id = 70500000, pos = { x = 284.537, y = 259.929, z = 2292.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298004, gadget_id = 70290003, pos = { x = 131.520, y = 273.096, z = 2255.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298005, gadget_id = 70500000, pos = { x = 131.521, y = 273.191, z = 2255.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298006, gadget_id = 70290003, pos = { x = 355.943, y = 238.576, z = 2311.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298007, gadget_id = 70500000, pos = { x = 355.936, y = 238.654, z = 2311.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298008, gadget_id = 70290003, pos = { x = 446.279, y = 231.712, z = 2243.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298009, gadget_id = 70500000, pos = { x = 362.971, y = 252.334, z = 2370.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298011, gadget_id = 70500000, pos = { x = 431.540, y = 258.732, z = 2390.513 }, rot = { x = 0.000, y = 266.307, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298012, gadget_id = 70500000, pos = { x = 454.167, y = 255.085, z = 2382.056 }, rot = { x = 0.000, y = 5.613, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298013, gadget_id = 70500000, pos = { x = 453.584, y = 255.098, z = 2381.270 }, rot = { x = 0.000, y = 302.963, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298014, gadget_id = 70500000, pos = { x = 431.058, y = 258.934, z = 2391.135 }, rot = { x = 0.000, y = 334.822, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298025, gadget_id = 70290003, pos = { x = 493.868, y = 223.985, z = 2174.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298026, gadget_id = 70500000, pos = { x = 493.868, y = 224.088, z = 2174.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298025, area_id = 20 },
	{ config_id = 298027, gadget_id = 70500000, pos = { x = 493.868, y = 224.088, z = 2174.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298025, area_id = 20 },
	{ config_id = 298028, gadget_id = 70500000, pos = { x = 334.050, y = 261.311, z = 2206.435 }, rot = { x = 0.000, y = 338.128, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298029, gadget_id = 70290003, pos = { x = 333.625, y = 261.101, z = 2207.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298030, gadget_id = 70500000, pos = { x = 333.625, y = 261.204, z = 2207.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298029, area_id = 20 },
	{ config_id = 298031, gadget_id = 70500000, pos = { x = 333.625, y = 261.204, z = 2207.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298029, area_id = 20 },
	{ config_id = 298032, gadget_id = 70220103, pos = { x = 333.068, y = 263.721, z = 2206.725 }, rot = { x = 0.000, y = 100.473, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298033, gadget_id = 70220103, pos = { x = 294.656, y = 261.542, z = 2212.280 }, rot = { x = 0.000, y = 70.140, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298034, gadget_id = 70290003, pos = { x = 285.047, y = 255.474, z = 2209.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298035, gadget_id = 70500000, pos = { x = 285.047, y = 255.577, z = 2209.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298034, area_id = 20 },
	{ config_id = 298036, gadget_id = 70500000, pos = { x = 285.047, y = 255.577, z = 2209.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298034, area_id = 20 },
	{ config_id = 298037, gadget_id = 70500000, pos = { x = 89.567, y = 266.356, z = 2241.017 }, rot = { x = 0.000, y = 183.445, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 298038, gadget_id = 70290003, pos = { x = 120.495, y = 263.978, z = 2234.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298039, gadget_id = 70500000, pos = { x = 120.495, y = 264.081, z = 2234.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298038, area_id = 20 },
	{ config_id = 298040, gadget_id = 70500000, pos = { x = 120.495, y = 264.081, z = 2234.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 298038, area_id = 20 },
	{ config_id = 298055, gadget_id = 70540039, pos = { x = 119.499, y = 305.362, z = 2202.911 }, rot = { x = 0.000, y = 46.907, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298056, gadget_id = 70500000, pos = { x = 119.935, y = 304.906, z = 2202.954 }, rot = { x = 327.405, y = 288.777, z = 306.813 }, level = 27, point_type = 2050, owner = 298055, area_id = 20 },
	{ config_id = 298057, gadget_id = 70540039, pos = { x = 306.232, y = 298.854, z = 2162.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298058, gadget_id = 70500000, pos = { x = 306.005, y = 298.362, z = 2162.648 }, rot = { x = 48.676, y = 285.487, z = 305.374 }, level = 27, point_type = 2050, owner = 298057, area_id = 20 },
	{ config_id = 298059, gadget_id = 70540039, pos = { x = 217.431, y = 296.862, z = 2164.624 }, rot = { x = 347.999, y = 32.110, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298060, gadget_id = 70500000, pos = { x = 217.249, y = 296.469, z = 2165.013 }, rot = { x = 44.261, y = 329.421, z = 321.619 }, level = 27, point_type = 2050, owner = 298059, area_id = 20 },
	{ config_id = 298061, gadget_id = 70540037, pos = { x = 294.357, y = 277.359, z = 2175.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298062, gadget_id = 70500000, pos = { x = 294.743, y = 277.735, z = 2175.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 298061, area_id = 20 },
	{ config_id = 298063, gadget_id = 70500000, pos = { x = 294.188, y = 278.080, z = 2175.950 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 298061, area_id = 20 },
	{ config_id = 298064, gadget_id = 70540037, pos = { x = 257.991, y = 275.510, z = 2187.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298065, gadget_id = 70500000, pos = { x = 258.377, y = 275.886, z = 2187.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 298064, area_id = 20 },
	{ config_id = 298066, gadget_id = 70500000, pos = { x = 257.822, y = 276.231, z = 2187.973 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 298064, area_id = 20 },
	{ config_id = 298067, gadget_id = 70540037, pos = { x = 156.590, y = 270.566, z = 2207.447 }, rot = { x = 0.000, y = 307.602, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298068, gadget_id = 70500000, pos = { x = 156.967, y = 270.942, z = 2207.644 }, rot = { x = 0.000, y = 307.602, z = 0.000 }, level = 27, point_type = 2049, owner = 298067, area_id = 20 },
	{ config_id = 298069, gadget_id = 70500000, pos = { x = 156.238, y = 271.287, z = 2207.504 }, rot = { x = 0.000, y = 217.624, z = 0.000 }, level = 27, point_type = 2049, owner = 298067, area_id = 20 },
	{ config_id = 298070, gadget_id = 70540041, pos = { x = 428.600, y = 284.376, z = 2146.121 }, rot = { x = 0.000, y = 12.215, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298071, gadget_id = 70500000, pos = { x = 428.910, y = 285.358, z = 2146.288 }, rot = { x = 344.190, y = 17.185, z = 10.920 }, level = 27, point_type = 2051, owner = 298070, area_id = 20 },
	{ config_id = 298072, gadget_id = 70500000, pos = { x = 428.682, y = 285.248, z = 2146.123 }, rot = { x = 346.680, y = 19.538, z = 345.993 }, level = 27, point_type = 2051, owner = 298070, area_id = 20 },
	{ config_id = 298073, gadget_id = 70500000, pos = { x = 428.860, y = 284.999, z = 2145.911 }, rot = { x = 7.455, y = 20.064, z = 16.620 }, level = 27, point_type = 2051, owner = 298070, area_id = 20 },
	{ config_id = 298074, gadget_id = 70500000, pos = { x = 428.311, y = 284.903, z = 2146.117 }, rot = { x = 3.296, y = 11.930, z = 342.289 }, level = 27, point_type = 2051, owner = 298070, area_id = 20 },
	{ config_id = 298075, gadget_id = 70540041, pos = { x = 484.399, y = 303.843, z = 2138.383 }, rot = { x = 0.000, y = 94.395, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 298076, gadget_id = 70500000, pos = { x = 484.607, y = 304.825, z = 2138.099 }, rot = { x = 347.429, y = 102.497, z = 345.455 }, level = 27, point_type = 2051, owner = 298075, area_id = 20 },
	{ config_id = 298077, gadget_id = 70500000, pos = { x = 484.413, y = 304.715, z = 2138.302 }, rot = { x = 11.654, y = 98.492, z = 344.587 }, level = 27, point_type = 2051, owner = 298075, area_id = 20 },
	{ config_id = 298078, gadget_id = 70500000, pos = { x = 484.227, y = 304.466, z = 2138.096 }, rot = { x = 344.733, y = 99.813, z = 9.976 }, level = 27, point_type = 2051, owner = 298075, area_id = 20 },
	{ config_id = 298079, gadget_id = 70500000, pos = { x = 484.356, y = 304.370, z = 2138.668 }, rot = { x = 17.982, y = 94.773, z = 0.942 }, level = 27, point_type = 2051, owner = 298075, area_id = 20 },
	{ config_id = 298086, gadget_id = 70500000, pos = { x = 312.643, y = 234.456, z = 2233.687 }, rot = { x = 0.000, y = 81.246, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298087, gadget_id = 70500000, pos = { x = 458.278, y = 227.106, z = 2293.861 }, rot = { x = 0.000, y = 69.107, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298088, gadget_id = 70500000, pos = { x = 356.922, y = 238.402, z = 2314.493 }, rot = { x = 0.000, y = 348.056, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298089, gadget_id = 70500000, pos = { x = 286.678, y = 245.385, z = 2276.759 }, rot = { x = 0.000, y = 233.516, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298090, gadget_id = 70500000, pos = { x = 169.473, y = 263.948, z = 2285.759 }, rot = { x = 0.000, y = 82.473, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	{ config_id = 298091, gadget_id = 70500000, pos = { x = 270.158, y = 247.166, z = 2215.304 }, rot = { x = 0.000, y = 203.772, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
	-- 数值优化新增
	{ config_id = 298111, gadget_id = 70500000, pos = { x = 217.937, y = 296.256, z = 2164.883 }, rot = { x = 62.916, y = 0.000, z = 353.217 }, level = 27, point_type = 2050, area_id = 20 },
	-- 数值优化新增
	{ config_id = 298112, gadget_id = 70500000, pos = { x = 306.579, y = 298.119, z = 2162.796 }, rot = { x = 62.916, y = 0.000, z = 353.217 }, level = 27, point_type = 2050, area_id = 20 },
	-- 数值优化新增
	{ config_id = 298113, gadget_id = 70500000, pos = { x = 119.517, y = 305.081, z = 2203.117 }, rot = { x = 62.916, y = 0.000, z = 338.590 }, level = 27, point_type = 2050, area_id = 20 }
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
	monsters = {
		{ config_id = 298097, monster_id = 28030313, pos = { x = 278.987, y = 259.716, z = 2292.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298098, monster_id = 28030313, pos = { x = 270.413, y = 247.207, z = 2215.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298099, monster_id = 28030313, pos = { x = 312.067, y = 234.702, z = 2233.054 }, rot = { x = 0.000, y = 279.607, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298100, monster_id = 28030313, pos = { x = 443.826, y = 231.794, z = 2243.127 }, rot = { x = 0.000, y = 55.652, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298101, monster_id = 28030313, pos = { x = 404.805, y = 262.670, z = 2373.333 }, rot = { x = 0.000, y = 317.649, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298102, monster_id = 28030313, pos = { x = 511.670, y = 260.001, z = 2359.730 }, rot = { x = 0.000, y = 254.686, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298103, monster_id = 28030313, pos = { x = 332.578, y = 261.485, z = 2205.870 }, rot = { x = 0.000, y = 33.920, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
		{ config_id = 298104, monster_id = 28030313, pos = { x = 170.982, y = 264.151, z = 2285.704 }, rot = { x = 0.000, y = 173.039, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 }
	},
	gadgets = {
		{ config_id = 298010, gadget_id = 70500000, pos = { x = 404.809, y = 262.321, z = 2371.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
		{ config_id = 298015, gadget_id = 70220103, pos = { x = 362.589, y = 254.794, z = 2368.611 }, rot = { x = 0.000, y = 101.954, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298016, gadget_id = 70220103, pos = { x = 402.967, y = 264.783, z = 2374.066 }, rot = { x = 0.000, y = 96.542, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298017, gadget_id = 70220103, pos = { x = 430.550, y = 261.350, z = 2389.653 }, rot = { x = 0.000, y = 35.963, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298018, gadget_id = 70220103, pos = { x = 453.089, y = 257.331, z = 2381.852 }, rot = { x = 0.000, y = 32.562, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298019, gadget_id = 70220103, pos = { x = 509.257, y = 262.065, z = 2358.302 }, rot = { x = 0.000, y = 270.733, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298020, gadget_id = 70220103, pos = { x = 494.600, y = 262.584, z = 2361.846 }, rot = { x = 0.000, y = 350.812, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298021, gadget_id = 70220103, pos = { x = 281.650, y = 262.313, z = 2292.122 }, rot = { x = 0.000, y = 272.583, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298022, gadget_id = 70220103, pos = { x = 444.745, y = 234.235, z = 2244.350 }, rot = { x = 0.000, y = 36.011, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298023, gadget_id = 70220103, pos = { x = 494.834, y = 226.530, z = 2174.748 }, rot = { x = 0.000, y = 1.250, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298024, gadget_id = 70500000, pos = { x = 494.516, y = 223.652, z = 2172.812 }, rot = { x = 0.000, y = 34.080, z = 0.000 }, level = 27, point_type = 2046, area_id = 20 },
		{ config_id = 298041, gadget_id = 70220103, pos = { x = 89.037, y = 268.891, z = 2241.147 }, rot = { x = 0.000, y = 40.867, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298042, gadget_id = 70220103, pos = { x = 120.220, y = 266.469, z = 2234.371 }, rot = { x = 0.000, y = 356.110, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298043, gadget_id = 70330220, pos = { x = 139.725, y = 275.888, z = 2211.436 }, rot = { x = 0.000, y = 214.219, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298044, gadget_id = 70330220, pos = { x = 168.310, y = 267.724, z = 2202.633 }, rot = { x = 0.000, y = 200.030, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298045, gadget_id = 70330220, pos = { x = 210.959, y = 264.618, z = 2185.875 }, rot = { x = 0.000, y = 355.237, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298046, gadget_id = 70330220, pos = { x = 248.580, y = 274.537, z = 2189.372 }, rot = { x = 0.000, y = 277.077, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298047, gadget_id = 70330220, pos = { x = 279.383, y = 274.640, z = 2176.604 }, rot = { x = 0.000, y = 255.420, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298048, gadget_id = 70330220, pos = { x = 295.471, y = 277.536, z = 2175.108 }, rot = { x = 0.000, y = 47.380, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298049, gadget_id = 70290507, pos = { x = 120.924, y = 303.214, z = 2202.530 }, rot = { x = 0.000, y = 104.271, z = 45.964 }, level = 27, area_id = 20 },
		{ config_id = 298050, gadget_id = 70290507, pos = { x = 133.068, y = 310.209, z = 2194.642 }, rot = { x = 0.000, y = 104.086, z = 43.059 }, level = 27, area_id = 20 },
		{ config_id = 298051, gadget_id = 70290507, pos = { x = 136.913, y = 297.721, z = 2193.892 }, rot = { x = 45.539, y = 27.307, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298052, gadget_id = 70290507, pos = { x = 216.839, y = 290.660, z = 2167.660 }, rot = { x = 0.000, y = 99.820, z = 47.589 }, level = 27, area_id = 20 },
		{ config_id = 298053, gadget_id = 70290507, pos = { x = 275.789, y = 286.770, z = 2164.407 }, rot = { x = 26.608, y = 5.898, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298054, gadget_id = 70290507, pos = { x = 306.272, y = 295.604, z = 2163.415 }, rot = { x = 19.953, y = 76.306, z = 43.074 }, level = 27, area_id = 20 },
		{ config_id = 298080, gadget_id = 70290507, pos = { x = 92.990, y = 331.834, z = 2183.382 }, rot = { x = 14.260, y = 78.873, z = 27.729 }, level = 27, area_id = 20 },
		{ config_id = 298081, gadget_id = 70290507, pos = { x = 94.403, y = 345.580, z = 2179.181 }, rot = { x = 336.223, y = 230.621, z = 336.266 }, level = 27, area_id = 20 },
		{ config_id = 298082, gadget_id = 70290507, pos = { x = 143.867, y = 354.946, z = 2156.222 }, rot = { x = 34.994, y = 269.738, z = 315.098 }, level = 27, area_id = 20 },
		{ config_id = 298083, gadget_id = 70290507, pos = { x = 147.260, y = 363.790, z = 2156.976 }, rot = { x = 338.556, y = 259.860, z = 322.455 }, level = 27, area_id = 20 },
		{ config_id = 298084, gadget_id = 70220103, pos = { x = 270.074, y = 249.063, z = 2215.541 }, rot = { x = 0.000, y = 94.935, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298085, gadget_id = 70220103, pos = { x = 312.854, y = 236.546, z = 2234.427 }, rot = { x = 0.000, y = 260.073, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298092, gadget_id = 70220103, pos = { x = 334.908, y = 226.785, z = 2319.204 }, rot = { x = 0.000, y = 248.852, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298093, gadget_id = 70220103, pos = { x = 356.979, y = 241.024, z = 2313.847 }, rot = { x = 0.000, y = 278.490, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298094, gadget_id = 70220103, pos = { x = 285.745, y = 248.046, z = 2276.839 }, rot = { x = 0.000, y = 25.381, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298095, gadget_id = 70220103, pos = { x = 169.644, y = 266.665, z = 2286.437 }, rot = { x = 0.000, y = 256.855, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298096, gadget_id = 70330197, pos = { x = 358.334, y = 212.667, z = 2308.388 }, rot = { x = 0.000, y = 242.770, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298105, gadget_id = 70290507, pos = { x = 197.857, y = 324.235, z = 2143.587 }, rot = { x = 17.471, y = 111.082, z = 39.777 }, level = 27, area_id = 20 },
		{ config_id = 298106, gadget_id = 70290507, pos = { x = 199.290, y = 337.856, z = 2140.144 }, rot = { x = 74.193, y = 69.867, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 298107, gadget_id = 70290507, pos = { x = 201.638, y = 349.139, z = 2136.290 }, rot = { x = 0.000, y = 325.061, z = 291.378 }, level = 27, area_id = 20 },
		{ config_id = 298108, gadget_id = 70290507, pos = { x = 177.472, y = 319.367, z = 2175.750 }, rot = { x = 294.454, y = 308.889, z = 331.220 }, level = 27, area_id = 20 },
		{ config_id = 298109, gadget_id = 70290507, pos = { x = 175.434, y = 350.400, z = 2156.923 }, rot = { x = 356.526, y = 149.091, z = 71.544 }, level = 27, area_id = 20 },
		{ config_id = 298110, gadget_id = 70290507, pos = { x = 176.350, y = 362.796, z = 2156.261 }, rot = { x = 354.922, y = 324.370, z = 280.685 }, level = 27, area_id = 20 }
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
		gadgets = { 298001, 298002, 298003, 298004, 298005, 298006, 298007, 298008, 298009, 298011, 298012, 298013, 298014, 298025, 298026, 298027, 298028, 298029, 298030, 298031, 298032, 298033, 298034, 298035, 298036, 298037, 298038, 298039, 298040, 298055, 298056, 298057, 298058, 298059, 298060, 298061, 298062, 298063, 298064, 298065, 298066, 298067, 298068, 298069, 298070, 298071, 298072, 298073, 298074, 298075, 298076, 298077, 298078, 298079, 298086, 298087, 298088, 298089, 298090, 298091, 298111, 298112, 298113 },
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