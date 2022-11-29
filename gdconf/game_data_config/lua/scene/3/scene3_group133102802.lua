-- 基础信息
local base_info = {
	group_id = 133102802
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 802008, monster_id = 28020301, pos = { x = 1366.542, y = 200.437, z = 193.960 }, rot = { x = 5.932, y = 151.992, z = 357.860 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802013, monster_id = 28030502, pos = { x = 1165.045, y = 200.000, z = 218.142 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802016, monster_id = 28020301, pos = { x = 1482.646, y = 200.668, z = 327.432 }, rot = { x = 0.000, y = 171.609, z = 0.000 }, level = 16, drop_tag = "走兽", disableWander = true, area_id = 5 },
	{ config_id = 802024, monster_id = 28030101, pos = { x = 1727.839, y = 202.778, z = 129.581 }, rot = { x = 0.000, y = 242.700, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802031, monster_id = 28020102, pos = { x = 1623.420, y = 210.009, z = 122.685 }, rot = { x = 0.000, y = 328.224, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802034, monster_id = 28030401, pos = { x = 1335.925, y = 201.575, z = 286.658 }, rot = { x = 0.000, y = 178.329, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802036, monster_id = 28030401, pos = { x = 1616.158, y = 220.949, z = 177.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802040, monster_id = 28030404, pos = { x = 1569.741, y = 227.614, z = 211.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802041, monster_id = 28030401, pos = { x = 1569.488, y = 227.614, z = 209.072 }, rot = { x = 0.000, y = 303.568, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802043, monster_id = 28020102, pos = { x = 1456.444, y = 206.215, z = -11.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802049, monster_id = 28030101, pos = { x = 1303.483, y = 201.577, z = 287.720 }, rot = { x = 0.000, y = 288.473, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 5 },
	{ config_id = 802050, monster_id = 28030101, pos = { x = 1294.417, y = 200.066, z = 331.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802052, monster_id = 28030101, pos = { x = 1255.621, y = 201.932, z = 394.015 }, rot = { x = 0.000, y = 220.674, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 5 },
	{ config_id = 802056, monster_id = 28030101, pos = { x = 1114.616, y = 201.214, z = 246.701 }, rot = { x = 3.355, y = 102.818, z = 346.430 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 5 },
	{ config_id = 802058, monster_id = 28020201, pos = { x = 1857.481, y = 221.112, z = 806.346 }, rot = { x = 0.000, y = 286.721, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802059, monster_id = 28030502, pos = { x = 1433.988, y = 200.000, z = 276.362 }, rot = { x = 0.000, y = 322.756, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802060, monster_id = 28030502, pos = { x = 1361.368, y = 200.000, z = 326.400 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802063, monster_id = 28030502, pos = { x = 1191.842, y = 200.000, z = 297.571 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802064, monster_id = 28030502, pos = { x = 1190.696, y = 200.000, z = 300.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802068, monster_id = 28020201, pos = { x = 1856.110, y = 221.072, z = 806.221 }, rot = { x = 0.000, y = 55.023, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802069, monster_id = 28030502, pos = { x = 1049.158, y = 200.000, z = 311.118 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802071, monster_id = 28030502, pos = { x = 1393.554, y = 200.000, z = 256.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", pose_id = 2, area_id = 5 },
	{ config_id = 802081, monster_id = 28030101, pos = { x = 1199.952, y = 200.567, z = -162.213 }, rot = { x = 0.000, y = 288.473, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 5 },
	{ config_id = 802086, monster_id = 28030401, pos = { x = 1240.955, y = 200.541, z = -164.694 }, rot = { x = 0.000, y = 6.912, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802087, monster_id = 28030401, pos = { x = 1242.997, y = 200.614, z = -161.509 }, rot = { x = 0.000, y = 181.524, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802088, monster_id = 28030401, pos = { x = 1245.589, y = 200.676, z = -164.034 }, rot = { x = 0.000, y = 31.758, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802093, monster_id = 28030404, pos = { x = 998.794, y = 207.502, z = 336.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802095, monster_id = 28030301, pos = { x = 1044.036, y = 206.391, z = 377.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802097, monster_id = 28030402, pos = { x = 993.959, y = 207.418, z = 342.285 }, rot = { x = 359.387, y = -0.001, z = 0.241 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802098, monster_id = 28030301, pos = { x = 1042.052, y = 206.433, z = 376.185 }, rot = { x = 2.950, y = 298.567, z = 0.120 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802099, monster_id = 28020102, pos = { x = 1076.174, y = 204.783, z = 383.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802103, monster_id = 28030301, pos = { x = 997.503, y = 216.760, z = 332.089 }, rot = { x = 19.312, y = 97.293, z = 21.357 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802105, monster_id = 28030301, pos = { x = 990.747, y = 216.516, z = 340.220 }, rot = { x = 23.189, y = 84.368, z = 16.172 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802108, monster_id = 28030402, pos = { x = 994.104, y = 202.576, z = 364.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802111, monster_id = 28030301, pos = { x = 1541.985, y = 218.756, z = 259.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802112, monster_id = 28030301, pos = { x = 1541.190, y = 218.756, z = 262.798 }, rot = { x = 0.000, y = 259.717, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802113, monster_id = 28020201, pos = { x = 1856.594, y = 221.113, z = 807.304 }, rot = { x = 0.000, y = 177.399, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802124, monster_id = 28020102, pos = { x = 1311.167, y = 200.461, z = 259.196 }, rot = { x = 356.037, y = 82.783, z = 1.408 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802126, monster_id = 28020102, pos = { x = 1255.251, y = 200.412, z = 220.212 }, rot = { x = 6.564, y = 72.354, z = 354.203 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802130, monster_id = 28020201, pos = { x = 1165.976, y = 209.251, z = 297.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802133, monster_id = 28030101, pos = { x = 1163.908, y = 215.461, z = 556.397 }, rot = { x = 0.000, y = 318.300, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802134, monster_id = 28020301, pos = { x = 1135.458, y = 203.208, z = 364.363 }, rot = { x = 0.000, y = 187.386, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802136, monster_id = 28030501, pos = { x = 1423.630, y = 200.000, z = -48.388 }, rot = { x = 0.000, y = 342.218, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802137, monster_id = 28030501, pos = { x = 1417.337, y = 200.000, z = -48.863 }, rot = { x = 0.000, y = 30.214, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802138, monster_id = 28020301, pos = { x = 1420.665, y = 217.616, z = 73.592 }, rot = { x = 355.395, y = 359.579, z = 1.871 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802139, monster_id = 28020301, pos = { x = 1492.735, y = 238.606, z = 86.232 }, rot = { x = 1.709, y = 0.261, z = 17.355 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802146, monster_id = 28020102, pos = { x = 1508.760, y = 246.755, z = 113.743 }, rot = { x = 349.531, y = 358.259, z = 18.831 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802147, monster_id = 28020102, pos = { x = 1524.601, y = 243.150, z = 84.257 }, rot = { x = 0.000, y = 242.243, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802148, monster_id = 28020102, pos = { x = 1532.283, y = 258.576, z = 135.056 }, rot = { x = 0.000, y = 242.243, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802149, monster_id = 28020102, pos = { x = 1560.426, y = 251.376, z = 74.343 }, rot = { x = 356.938, y = 238.575, z = 20.896 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802150, monster_id = 28020301, pos = { x = 1651.765, y = 247.848, z = 40.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802151, monster_id = 28020301, pos = { x = 1653.115, y = 248.196, z = 46.995 }, rot = { x = 0.000, y = 292.691, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802154, monster_id = 28030101, pos = { x = 1427.689, y = 215.005, z = 30.783 }, rot = { x = 0.000, y = 165.197, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802160, monster_id = 28020102, pos = { x = 1574.899, y = 267.358, z = 111.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802161, monster_id = 28020102, pos = { x = 1758.857, y = 252.953, z = 220.088 }, rot = { x = 19.073, y = 1.072, z = 6.374 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802162, monster_id = 28020102, pos = { x = 1805.524, y = 266.400, z = 161.904 }, rot = { x = 2.667, y = 359.967, z = 358.600 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802163, monster_id = 28020301, pos = { x = 1770.399, y = 258.236, z = 200.110 }, rot = { x = 0.000, y = 52.867, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802164, monster_id = 28030402, pos = { x = 1674.153, y = 251.861, z = 247.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802165, monster_id = 28030402, pos = { x = 1672.958, y = 251.938, z = 248.244 }, rot = { x = 0.000, y = 149.019, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802166, monster_id = 28030402, pos = { x = 1674.295, y = 251.611, z = 249.633 }, rot = { x = 0.000, y = 330.653, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802167, monster_id = 28030101, pos = { x = 1718.395, y = 257.593, z = 236.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802169, monster_id = 28020301, pos = { x = 1714.708, y = 251.723, z = 206.518 }, rot = { x = 4.684, y = 108.529, z = 352.435 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802170, monster_id = 28020201, pos = { x = 1508.915, y = 252.893, z = -173.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802171, monster_id = 28020201, pos = { x = 1531.376, y = 272.703, z = -78.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802172, monster_id = 28020102, pos = { x = 1514.377, y = 269.033, z = -39.281 }, rot = { x = 1.933, y = 0.211, z = 12.436 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802173, monster_id = 28020102, pos = { x = 1509.921, y = 268.060, z = -39.692 }, rot = { x = 349.503, y = 65.986, z = 7.384 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802174, monster_id = 28020102, pos = { x = 1514.739, y = 269.186, z = -41.405 }, rot = { x = 0.000, y = 66.665, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802175, monster_id = 28020102, pos = { x = 1522.797, y = 271.824, z = -95.330 }, rot = { x = 0.000, y = 66.665, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802176, monster_id = 28020102, pos = { x = 1525.450, y = 261.516, z = -126.626 }, rot = { x = 0.000, y = 66.665, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802177, monster_id = 28020102, pos = { x = 1507.542, y = 255.564, z = -147.681 }, rot = { x = 0.000, y = 34.089, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802178, monster_id = 28020301, pos = { x = 1500.457, y = 260.209, z = -128.622 }, rot = { x = 350.112, y = 359.212, z = 8.669 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802179, monster_id = 28020301, pos = { x = 1509.755, y = 269.525, z = -78.941 }, rot = { x = 17.163, y = 292.195, z = 9.554 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802180, monster_id = 28020301, pos = { x = 1488.420, y = 250.427, z = -196.347 }, rot = { x = 0.000, y = 290.750, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802181, monster_id = 28030402, pos = { x = 1520.638, y = 250.389, z = -198.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802182, monster_id = 28030402, pos = { x = 1523.440, y = 249.290, z = -201.444 }, rot = { x = 0.000, y = 93.918, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802184, monster_id = 28030402, pos = { x = 1495.631, y = 253.569, z = -154.541 }, rot = { x = 0.000, y = 93.918, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802185, monster_id = 28030402, pos = { x = 1493.313, y = 253.382, z = -154.399 }, rot = { x = 0.000, y = 294.441, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802188, monster_id = 28020301, pos = { x = 1776.533, y = 216.746, z = 711.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802189, monster_id = 28030402, pos = { x = 1496.986, y = 201.061, z = 299.279 }, rot = { x = 358.564, y = 359.951, z = 3.943 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802191, monster_id = 28020301, pos = { x = 1748.476, y = 217.293, z = 706.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802193, monster_id = 28020102, pos = { x = 1447.616, y = 200.303, z = 354.441 }, rot = { x = 0.000, y = 189.001, z = 0.000 }, level = 16, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802195, monster_id = 28030402, pos = { x = 1417.510, y = 205.814, z = -20.594 }, rot = { x = 0.000, y = 69.731, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802198, monster_id = 28030402, pos = { x = 1406.711, y = 216.981, z = 43.874 }, rot = { x = 0.000, y = 84.015, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802202, monster_id = 28030301, pos = { x = 1468.264, y = 235.808, z = 104.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802203, monster_id = 28030301, pos = { x = 1469.786, y = 235.745, z = 101.929 }, rot = { x = 0.000, y = 203.252, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 802208, monster_id = 28020301, pos = { x = 1821.680, y = 207.516, z = 738.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802209, monster_id = 28020301, pos = { x = 1910.209, y = 216.488, z = 653.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802210, monster_id = 28020301, pos = { x = 1852.272, y = 214.020, z = 559.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802211, monster_id = 28020301, pos = { x = 1906.299, y = 214.729, z = 706.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 },
	{ config_id = 802212, monster_id = 28020301, pos = { x = 1950.307, y = 227.813, z = 644.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 5 }
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
		{ config_id = 802001, monster_id = 28040101, pos = { x = 1728.190, y = 200.000, z = 119.759 }, rot = { x = 0.000, y = 28.747, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802002, monster_id = 28010205, pos = { x = 1080.844, y = 200.085, z = 314.284 }, rot = { x = 350.377, y = 210.673, z = 355.951 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802003, monster_id = 28040101, pos = { x = 1418.192, y = 200.000, z = 303.052 }, rot = { x = 0.000, y = 10.687, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802004, monster_id = 28040101, pos = { x = 1421.413, y = 200.000, z = 307.081 }, rot = { x = 0.000, y = 29.741, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802005, monster_id = 28010205, pos = { x = 1080.570, y = 200.000, z = 319.804 }, rot = { x = 0.000, y = 253.368, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802006, monster_id = 28040103, pos = { x = 1313.271, y = 200.000, z = 176.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802007, monster_id = 28040103, pos = { x = 1323.610, y = 200.000, z = 179.927 }, rot = { x = 0.000, y = 326.735, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802009, monster_id = 28010301, pos = { x = 1747.617, y = 200.952, z = 137.058 }, rot = { x = 0.000, y = 57.965, z = 0.000 }, level = 16, drop_tag = "采集动物", disableWander = true, area_id = 5 },
		{ config_id = 802010, monster_id = 28010205, pos = { x = 1050.023, y = 200.000, z = 328.898 }, rot = { x = 0.000, y = 211.913, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802011, monster_id = 28010205, pos = { x = 1055.796, y = 200.000, z = 334.214 }, rot = { x = 0.000, y = 177.034, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802012, monster_id = 28010205, pos = { x = 1178.044, y = 200.000, z = 459.286 }, rot = { x = 0.000, y = 115.140, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802017, monster_id = 28040102, pos = { x = 1776.021, y = 200.000, z = 107.696 }, rot = { x = 0.000, y = 57.965, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802018, monster_id = 28040102, pos = { x = 1771.034, y = 200.000, z = 106.477 }, rot = { x = 0.000, y = 299.852, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802020, monster_id = 28040102, pos = { x = 1773.632, y = 200.000, z = 93.882 }, rot = { x = 0.000, y = 71.202, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802021, monster_id = 28040102, pos = { x = 1722.786, y = 200.000, z = 121.672 }, rot = { x = 0.000, y = 57.965, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802022, monster_id = 28010303, pos = { x = 1756.734, y = 201.409, z = 142.605 }, rot = { x = 0.000, y = 242.700, z = 0.000 }, level = 16, drop_tag = "采集动物", disableWander = true, area_id = 5 },
		{ config_id = 802046, monster_id = 28040103, pos = { x = 1394.669, y = 156.880, z = -263.362 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802047, monster_id = 28040103, pos = { x = 1389.951, y = 156.880, z = -262.027 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802074, monster_id = 28040103, pos = { x = 1760.626, y = 200.000, z = 125.484 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802075, monster_id = 28040103, pos = { x = 1751.836, y = 200.000, z = 133.038 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802078, monster_id = 28040101, pos = { x = 1754.752, y = 200.000, z = 119.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 5 },
		{ config_id = 802089, monster_id = 28010301, pos = { x = 1251.597, y = 202.150, z = -134.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802092, monster_id = 28010301, pos = { x = 1297.172, y = 200.000, z = -142.273 }, rot = { x = 0.000, y = 342.828, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802107, monster_id = 28040103, pos = { x = 1372.237, y = 156.880, z = -262.775 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802109, monster_id = 28040103, pos = { x = 1366.483, y = 156.880, z = -266.719 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802110, monster_id = 28040103, pos = { x = 1372.612, y = 156.880, z = -270.849 }, rot = { x = 0.000, y = 197.901, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802118, monster_id = 28010202, pos = { x = 1671.430, y = 204.544, z = 89.967 }, rot = { x = 0.000, y = 306.120, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802119, monster_id = 28010202, pos = { x = 1634.395, y = 211.717, z = 151.164 }, rot = { x = 0.000, y = 306.120, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802120, monster_id = 28010202, pos = { x = 1634.654, y = 211.787, z = 151.542 }, rot = { x = 0.000, y = 51.654, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802121, monster_id = 28010202, pos = { x = 1562.811, y = 212.641, z = 240.618 }, rot = { x = 0.000, y = 51.654, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802127, monster_id = 28010201, pos = { x = 1229.225, y = 204.257, z = 237.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802129, monster_id = 28010205, pos = { x = 1163.594, y = 205.563, z = 276.870 }, rot = { x = 0.000, y = 76.638, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802142, monster_id = 28040101, pos = { x = 1437.535, y = 214.000, z = 37.933 }, rot = { x = 0.000, y = 101.292, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802144, monster_id = 28040101, pos = { x = 1459.751, y = 214.000, z = 37.329 }, rot = { x = 0.000, y = 302.643, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802145, monster_id = 28040101, pos = { x = 1446.781, y = 214.000, z = 52.083 }, rot = { x = 0.000, y = 302.643, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
		{ config_id = 802155, monster_id = 28010202, pos = { x = 1019.068, y = 206.511, z = 365.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802205, monster_id = 28010101, pos = { x = 1221.220, y = 200.000, z = 159.422 }, rot = { x = 0.000, y = 147.647, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802207, monster_id = 28010205, pos = { x = 1181.654, y = 200.220, z = 265.513 }, rot = { x = 0.000, y = 121.724, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
		{ config_id = 802213, monster_id = 28050102, pos = { x = 1370.546, y = 201.205, z = 278.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "魔法生物", area_id = 5 },
		{ config_id = 802214, monster_id = 28050102, pos = { x = 1365.108, y = 202.670, z = 279.162 }, rot = { x = 0.000, y = 211.980, z = 0.000 }, level = 16, drop_tag = "魔法生物", area_id = 5 }
	},
	gadgets = {
		{ config_id = 802114, gadget_id = 70500000, pos = { x = 1856.470, y = 221.161, z = 806.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2007, area_id = 5 },
		{ config_id = 802115, gadget_id = 70500000, pos = { x = 1856.814, y = 221.161, z = 806.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2007, area_id = 5 },
		{ config_id = 802122, gadget_id = 70500000, pos = { x = 1856.632, y = 221.161, z = 806.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2007, area_id = 5 }
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
		monsters = { 802008, 802013, 802016, 802024, 802031, 802034, 802036, 802040, 802041, 802043, 802049, 802050, 802052, 802056, 802058, 802059, 802060, 802063, 802064, 802068, 802069, 802071, 802081, 802086, 802087, 802088, 802093, 802095, 802097, 802098, 802099, 802103, 802105, 802108, 802111, 802112, 802113, 802124, 802126, 802130, 802133, 802134, 802136, 802137, 802138, 802139, 802146, 802147, 802148, 802149, 802150, 802151, 802154, 802160, 802161, 802162, 802163, 802164, 802165, 802166, 802167, 802169, 802170, 802171, 802172, 802173, 802174, 802175, 802176, 802177, 802178, 802179, 802180, 802181, 802182, 802184, 802185, 802188, 802189, 802191, 802193, 802195, 802198, 802202, 802203, 802208, 802209, 802210, 802211, 802212 },
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