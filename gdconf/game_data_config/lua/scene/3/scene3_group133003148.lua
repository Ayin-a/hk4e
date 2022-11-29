-- 基础信息
local base_info = {
	group_id = 133003148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 587, monster_id = 28030401, pos = { x = 2375.063, y = 255.963, z = -1390.318 }, rot = { x = 0.000, y = 50.720, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 588, monster_id = 28030401, pos = { x = 2376.430, y = 257.158, z = -1388.738 }, rot = { x = 0.000, y = 66.856, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 589, monster_id = 28030401, pos = { x = 2375.411, y = 256.855, z = -1387.405 }, rot = { x = 0.000, y = 139.036, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 590, monster_id = 28030401, pos = { x = 2379.137, y = 256.542, z = -1388.049 }, rot = { x = 0.000, y = 266.505, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 591, monster_id = 28030401, pos = { x = 2513.955, y = 267.598, z = -1431.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 595, monster_id = 28030401, pos = { x = 2354.774, y = 275.739, z = -1544.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 596, monster_id = 28030401, pos = { x = 2356.457, y = 275.969, z = -1544.799 }, rot = { x = 0.000, y = 292.906, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 597, monster_id = 28020102, pos = { x = 2080.184, y = 226.492, z = -1434.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 602, monster_id = 28020301, pos = { x = 2181.469, y = 236.665, z = -1313.641 }, rot = { x = 0.000, y = 266.749, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 603, monster_id = 28020301, pos = { x = 2162.284, y = 236.483, z = -1310.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 604, monster_id = 28030401, pos = { x = 2338.286, y = 260.693, z = -1450.355 }, rot = { x = 0.000, y = 266.505, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 661, monster_id = 28030401, pos = { x = 2178.462, y = 225.077, z = -1184.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 662, monster_id = 28030401, pos = { x = 2175.257, y = 225.470, z = -1179.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 666, monster_id = 28030101, pos = { x = 2412.516, y = 258.150, z = -1329.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 667, monster_id = 28030101, pos = { x = 2416.597, y = 257.926, z = -1333.956 }, rot = { x = 0.000, y = 158.193, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 668, monster_id = 28030401, pos = { x = 2487.411, y = 262.590, z = -1514.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 669, monster_id = 28030401, pos = { x = 2482.198, y = 265.200, z = -1502.706 }, rot = { x = 0.000, y = 276.944, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 670, monster_id = 28030401, pos = { x = 2477.007, y = 271.312, z = -1527.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 674, monster_id = 28030401, pos = { x = 2293.665, y = 274.156, z = -1615.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 675, monster_id = 28030401, pos = { x = 2294.526, y = 274.118, z = -1613.640 }, rot = { x = 0.000, y = 327.257, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 678, monster_id = 28030301, pos = { x = 2259.428, y = 271.695, z = -1670.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 679, monster_id = 28030301, pos = { x = 2256.384, y = 272.055, z = -1674.614 }, rot = { x = 0.000, y = 91.357, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 683, monster_id = 28030301, pos = { x = 2248.398, y = 271.736, z = -1563.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 1 },
	{ config_id = 695, monster_id = 28020201, pos = { x = 2253.866, y = 240.471, z = -1327.035 }, rot = { x = 0.000, y = 104.990, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 696, monster_id = 28020201, pos = { x = 2310.662, y = 268.934, z = -1566.939 }, rot = { x = 0.000, y = 104.990, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 697, monster_id = 28020201, pos = { x = 2456.501, y = 306.790, z = -1649.417 }, rot = { x = 0.000, y = 104.990, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 698, monster_id = 28020201, pos = { x = 2156.495, y = 241.118, z = -1687.471 }, rot = { x = 0.000, y = 104.990, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 699, monster_id = 28020201, pos = { x = 2123.334, y = 205.602, z = -1170.596 }, rot = { x = 0.000, y = 104.990, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 700, monster_id = 28030301, pos = { x = 2317.925, y = 295.794, z = -1686.512 }, rot = { x = 0.000, y = 122.129, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 701, monster_id = 28030301, pos = { x = 2328.945, y = 295.794, z = -1690.759 }, rot = { x = 0.000, y = 291.806, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 706, monster_id = 28030301, pos = { x = 2320.921, y = 295.794, z = -1690.839 }, rot = { x = 0.000, y = 43.397, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 709, monster_id = 28030301, pos = { x = 2411.047, y = 297.777, z = -1756.992 }, rot = { x = 0.000, y = 4.557, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 1 },
	{ config_id = 710, monster_id = 28030301, pos = { x = 2412.367, y = 297.776, z = -1755.801 }, rot = { x = 0.000, y = 310.068, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 1 },
	{ config_id = 737, monster_id = 28030301, pos = { x = 2135.746, y = 238.242, z = -1627.475 }, rot = { x = 0.000, y = 35.656, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 738, monster_id = 28030301, pos = { x = 2134.031, y = 238.286, z = -1626.974 }, rot = { x = 0.000, y = 351.094, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 739, monster_id = 28030301, pos = { x = 2134.531, y = 238.609, z = -1628.726 }, rot = { x = 0.000, y = 326.983, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 833, monster_id = 28030402, pos = { x = 2212.839, y = 230.061, z = -1151.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 834, monster_id = 28030402, pos = { x = 2210.710, y = 230.177, z = -1151.122 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 835, monster_id = 28030402, pos = { x = 2186.288, y = 228.893, z = -1230.274 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 836, monster_id = 28030402, pos = { x = 2183.923, y = 228.751, z = -1231.794 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 837, monster_id = 28030402, pos = { x = 2184.146, y = 228.714, z = -1229.409 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 838, monster_id = 28030404, pos = { x = 2146.149, y = 222.733, z = -1369.866 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 839, monster_id = 28030404, pos = { x = 2147.356, y = 222.558, z = -1369.225 }, rot = { x = 0.000, y = 59.311, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 840, monster_id = 28020201, pos = { x = 2147.774, y = 225.200, z = -1340.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 841, monster_id = 28020201, pos = { x = 2243.737, y = 226.950, z = -1164.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 842, monster_id = 28020201, pos = { x = 2310.353, y = 272.540, z = -1654.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 843, monster_id = 28020201, pos = { x = 2564.444, y = 253.333, z = -1628.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 937, monster_id = 28030401, pos = { x = 2115.511, y = 228.812, z = -1440.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 938, monster_id = 28030401, pos = { x = 2118.730, y = 229.175, z = -1441.944 }, rot = { x = 0.000, y = 50.199, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 939, monster_id = 28020201, pos = { x = 2102.935, y = 230.030, z = -1449.949 }, rot = { x = 0.000, y = 152.388, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1099, monster_id = 28030401, pos = { x = 2515.679, y = 267.595, z = -1431.454 }, rot = { x = 0.000, y = 221.658, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1187, monster_id = 28020301, pos = { x = 2567.434, y = 216.243, z = -1475.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1188, monster_id = 28020301, pos = { x = 2579.337, y = 215.844, z = -1471.295 }, rot = { x = 0.000, y = 197.662, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1189, monster_id = 28020301, pos = { x = 2566.645, y = 216.407, z = -1467.890 }, rot = { x = 0.000, y = 197.662, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1200, monster_id = 28020102, pos = { x = 2376.454, y = 253.956, z = -1411.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 148001, monster_id = 28020102, pos = { x = 2116.897, y = 234.133, z = -1682.904 }, rot = { x = 0.000, y = 320.084, z = 0.000 }, level = 5, drop_tag = "走兽", area_id = 1 },
	{ config_id = 148002, monster_id = 28020102, pos = { x = 2106.284, y = 233.296, z = -1677.792 }, rot = { x = 0.000, y = 170.688, z = 0.000 }, level = 5, drop_tag = "走兽", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		{ config_id = 598, monster_id = 28010202, pos = { x = 2341.792, y = 288.573, z = -1605.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 599, monster_id = 28010201, pos = { x = 2373.104, y = 282.100, z = -1569.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 600, monster_id = 28010201, pos = { x = 2268.982, y = 236.909, z = -1297.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 663, monster_id = 28010201, pos = { x = 2126.865, y = 210.921, z = -1219.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 665, monster_id = 28010201, pos = { x = 2330.927, y = 249.298, z = -1245.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 676, monster_id = 28010201, pos = { x = 2237.929, y = 265.639, z = -1723.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 677, monster_id = 28010201, pos = { x = 2165.177, y = 259.046, z = -1745.750 }, rot = { x = 0.000, y = 288.793, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 680, monster_id = 28010201, pos = { x = 2090.455, y = 233.172, z = -1525.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 681, monster_id = 28010301, pos = { x = 2225.530, y = 244.371, z = -1591.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 682, monster_id = 28010301, pos = { x = 2254.159, y = 244.120, z = -1569.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 684, monster_id = 28010201, pos = { x = 2395.213, y = 249.356, z = -1285.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 686, monster_id = 28010202, pos = { x = 2059.390, y = 197.609, z = -1190.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 687, monster_id = 28010202, pos = { x = 2126.798, y = 203.074, z = -1147.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 694, monster_id = 28010203, pos = { x = 2349.121, y = 250.572, z = -1303.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 703, monster_id = 28040101, pos = { x = 2281.682, y = 246.590, z = -1466.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
		{ config_id = 704, monster_id = 28040103, pos = { x = 2279.743, y = 246.590, z = -1467.737 }, rot = { x = 0.000, y = 122.085, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
		{ config_id = 844, monster_id = 28040101, pos = { x = 2082.702, y = 194.600, z = -1745.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
		{ config_id = 845, monster_id = 28040101, pos = { x = 2093.668, y = 194.600, z = -1759.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
		{ config_id = 846, monster_id = 28040101, pos = { x = 2098.916, y = 194.600, z = -1759.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
		{ config_id = 943, monster_id = 28010201, pos = { x = 2115.851, y = 226.281, z = -1365.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 },
		{ config_id = 944, monster_id = 28010201, pos = { x = 2080.316, y = 204.727, z = -1256.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 1 }
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
		monsters = { 587, 588, 589, 590, 595, 596, 597, 602, 603, 604, 661, 662, 666, 667, 668, 669, 670, 674, 675, 678, 679, 683, 695, 696, 697, 698, 699, 700, 701, 706, 709, 710, 737, 738, 834, 835, 838, 840, 842, 937, 939, 1099, 1187, 1189, 1200, 148001, 148002 },
		gadgets = { },
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