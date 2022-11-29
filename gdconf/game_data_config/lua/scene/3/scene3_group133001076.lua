-- 基础信息
local base_info = {
	group_id = 133001076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281, monster_id = 28030101, pos = { x = 2053.573, y = 229.182, z = -1213.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 282, monster_id = 28030101, pos = { x = 2035.626, y = 198.886, z = -1210.566 }, rot = { x = 0.000, y = 64.240, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 283, monster_id = 28030101, pos = { x = 1915.296, y = 195.437, z = -1207.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 284, monster_id = 28030101, pos = { x = 1913.573, y = 195.289, z = -1201.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 285, monster_id = 28030101, pos = { x = 1931.040, y = 220.549, z = -1363.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 291, monster_id = 28030101, pos = { x = 1975.587, y = 195.936, z = -1269.815 }, rot = { x = 0.000, y = 320.549, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 1971.502, y = 195.669, z = -1270.532 }, rot = { x = 0.000, y = 52.752, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 293, monster_id = 28030101, pos = { x = 1977.149, y = 196.556, z = -1272.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 296, monster_id = 28030101, pos = { x = 1937.365, y = 218.689, z = -1346.704 }, rot = { x = 0.000, y = 51.421, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 325, monster_id = 28030401, pos = { x = 2109.670, y = 210.587, z = -1236.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 334, monster_id = 28020301, pos = { x = 1770.539, y = 205.355, z = -1296.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 343, monster_id = 28030101, pos = { x = 1886.497, y = 223.212, z = -1096.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 344, monster_id = 28030101, pos = { x = 1881.652, y = 223.577, z = -1100.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 345, monster_id = 28030101, pos = { x = 1825.924, y = 205.624, z = -1221.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 346, monster_id = 28030101, pos = { x = 1826.963, y = 204.877, z = -1215.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 347, monster_id = 28030101, pos = { x = 1728.328, y = 214.335, z = -1340.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 348, monster_id = 28030101, pos = { x = 1742.554, y = 214.055, z = -1409.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 358, monster_id = 28030101, pos = { x = 1732.004, y = 214.061, z = -1340.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 376, monster_id = 28030401, pos = { x = 1799.086, y = 196.347, z = -1335.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 403, monster_id = 28020102, pos = { x = 1869.925, y = 196.587, z = -1392.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 404, monster_id = 28020102, pos = { x = 1908.601, y = 197.862, z = -1431.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 2 },
	{ config_id = 405, monster_id = 28020102, pos = { x = 1907.620, y = 198.192, z = -1439.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 2 },
	{ config_id = 408, monster_id = 28030101, pos = { x = 1810.950, y = 194.993, z = -1408.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 409, monster_id = 28030101, pos = { x = 1807.322, y = 194.946, z = -1408.928 }, rot = { x = 0.000, y = 278.394, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 412, monster_id = 28030101, pos = { x = 1994.130, y = 216.607, z = -1100.677 }, rot = { x = 0.000, y = 278.394, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 413, monster_id = 28030101, pos = { x = 1991.430, y = 216.721, z = -1101.788 }, rot = { x = 0.000, y = 278.394, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 414, monster_id = 28020102, pos = { x = 1966.733, y = 196.094, z = -1277.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 2 },
	{ config_id = 455, monster_id = 28030401, pos = { x = 1992.344, y = 193.782, z = -1184.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 456, monster_id = 28020102, pos = { x = 1994.264, y = 194.244, z = -1184.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 469, monster_id = 28030401, pos = { x = 1993.531, y = 194.008, z = -1183.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 472, monster_id = 28030401, pos = { x = 1794.505, y = 197.215, z = -1335.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 565, monster_id = 28020102, pos = { x = 2136.654, y = 203.664, z = -1110.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 566, monster_id = 28020102, pos = { x = 2161.154, y = 223.665, z = -1181.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 567, monster_id = 28020102, pos = { x = 2093.101, y = 212.297, z = -1087.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 568, monster_id = 28030401, pos = { x = 2104.960, y = 205.419, z = -1117.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 569, monster_id = 28030401, pos = { x = 2106.861, y = 205.773, z = -1118.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 570, monster_id = 28030401, pos = { x = 2105.337, y = 205.137, z = -1118.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 571, monster_id = 28030401, pos = { x = 2164.130, y = 208.500, z = -1104.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 572, monster_id = 28030401, pos = { x = 2164.755, y = 208.597, z = -1105.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 573, monster_id = 28030401, pos = { x = 2162.389, y = 208.423, z = -1105.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 574, monster_id = 28030101, pos = { x = 2112.472, y = 235.775, z = -1169.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 575, monster_id = 28020102, pos = { x = 2051.275, y = 197.608, z = -1144.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 687, monster_id = 28030101, pos = { x = 1725.181, y = 197.839, z = -1596.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 688, monster_id = 28030101, pos = { x = 1725.756, y = 197.944, z = -1599.774 }, rot = { x = 0.000, y = 87.150, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 689, monster_id = 28030101, pos = { x = 1728.976, y = 196.132, z = -1589.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 710, monster_id = 28030101, pos = { x = 2007.973, y = 240.540, z = -1425.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 711, monster_id = 28030101, pos = { x = 2011.541, y = 241.262, z = -1424.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 712, monster_id = 28030101, pos = { x = 2003.531, y = 239.922, z = -1438.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 1 },
	{ config_id = 740, monster_id = 28030101, pos = { x = 1687.089, y = 254.671, z = -1434.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 741, monster_id = 28030101, pos = { x = 1687.341, y = 254.984, z = -1437.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 742, monster_id = 28030101, pos = { x = 1684.950, y = 255.119, z = -1435.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 747, monster_id = 28030101, pos = { x = 1663.206, y = 256.507, z = -1362.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 748, monster_id = 28030101, pos = { x = 1684.471, y = 264.987, z = -1336.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 749, monster_id = 28030101, pos = { x = 1682.579, y = 264.869, z = -1332.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 750, monster_id = 28030101, pos = { x = 1653.234, y = 274.039, z = -1440.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 751, monster_id = 28030101, pos = { x = 1647.382, y = 273.959, z = -1442.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 752, monster_id = 20011201, pos = { x = 1652.346, y = 254.645, z = -1370.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 761, monster_id = 28030101, pos = { x = 1907.007, y = 195.137, z = -1574.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 803, monster_id = 28030101, pos = { x = 2037.057, y = 199.040, z = -1212.552 }, rot = { x = 0.000, y = 64.240, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 810, monster_id = 28020102, pos = { x = 2143.378, y = 204.675, z = -1138.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 1 },
	{ config_id = 811, monster_id = 28030101, pos = { x = 2056.870, y = 229.360, z = -1212.496 }, rot = { x = 0.000, y = 32.687, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 817, monster_id = 28030101, pos = { x = 1739.264, y = 214.157, z = -1408.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 821, monster_id = 28030101, pos = { x = 1934.251, y = 246.520, z = -1588.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 822, monster_id = 28030101, pos = { x = 1936.101, y = 246.506, z = -1594.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 2 },
	{ config_id = 830, monster_id = 28030101, pos = { x = 1970.540, y = 231.175, z = -1574.569 }, rot = { x = 0.000, y = 334.167, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 842, monster_id = 28030101, pos = { x = 2094.089, y = 206.808, z = -1220.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1035, monster_id = 28020102, pos = { x = 1981.969, y = 221.557, z = -1081.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1036, monster_id = 28020102, pos = { x = 1950.696, y = 220.352, z = -1097.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1037, monster_id = 28020102, pos = { x = 1842.979, y = 225.014, z = -1121.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1038, monster_id = 28020102, pos = { x = 1824.382, y = 227.975, z = -1091.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1067, monster_id = 20011201, pos = { x = 1650.641, y = 254.464, z = -1370.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 1068, monster_id = 20011001, pos = { x = 1596.585, y = 250.109, z = -1411.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "史莱姆", pose_id = 901, area_id = 2 },
	{ config_id = 1069, monster_id = 20011001, pos = { x = 1594.742, y = 249.480, z = -1409.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "史莱姆", pose_id = 901, area_id = 2 },
	{ config_id = 1101, monster_id = 28020201, pos = { x = 1423.256, y = 310.045, z = -1935.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1102, monster_id = 28020201, pos = { x = 1450.607, y = 275.853, z = -1387.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1103, monster_id = 28020201, pos = { x = 1179.957, y = 273.058, z = -1879.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1104, monster_id = 28020201, pos = { x = 1102.834, y = 307.608, z = -1516.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1105, monster_id = 28020201, pos = { x = 1403.585, y = 301.597, z = -1854.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1106, monster_id = 28020201, pos = { x = 1551.895, y = 292.402, z = -1241.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1107, monster_id = 28020201, pos = { x = 1789.807, y = 259.877, z = -1027.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1108, monster_id = 28020201, pos = { x = 1480.981, y = 263.740, z = -1701.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1109, monster_id = 28020201, pos = { x = 1713.679, y = 210.931, z = -1410.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1110, monster_id = 28020201, pos = { x = 1334.028, y = 265.521, z = -1477.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1111, monster_id = 28020201, pos = { x = 1214.198, y = 257.913, z = -1428.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1112, monster_id = 28020201, pos = { x = 1434.142, y = 310.476, z = -1938.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1113, monster_id = 28020201, pos = { x = 1220.443, y = 258.807, z = -1551.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1114, monster_id = 28020201, pos = { x = 1293.540, y = 311.815, z = -1842.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1115, monster_id = 28020201, pos = { x = 1506.680, y = 257.929, z = -1683.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1116, monster_id = 28020201, pos = { x = 1326.166, y = 265.336, z = -1478.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1117, monster_id = 28020201, pos = { x = 1493.666, y = 265.788, z = -1731.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1118, monster_id = 28020201, pos = { x = 1468.941, y = 254.295, z = -1476.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1119, monster_id = 28020201, pos = { x = 1387.883, y = 283.222, z = -1389.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1120, monster_id = 28020201, pos = { x = 1459.855, y = 257.919, z = -1427.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1121, monster_id = 28020201, pos = { x = 1244.938, y = 310.782, z = -1797.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1122, monster_id = 28020201, pos = { x = 1999.741, y = 224.389, z = -1046.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1123, monster_id = 28020201, pos = { x = 1325.856, y = 250.470, z = -1573.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1124, monster_id = 28020201, pos = { x = 1635.417, y = 284.061, z = -1152.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 1125, monster_id = 28020201, pos = { x = 1407.964, y = 307.462, z = -1256.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1126, monster_id = 28020201, pos = { x = 1318.235, y = 266.086, z = -1464.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1127, monster_id = 28020201, pos = { x = 1627.755, y = 275.992, z = -1514.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1128, monster_id = 28020201, pos = { x = 1327.589, y = 294.250, z = -1355.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1129, monster_id = 28020201, pos = { x = 1642.520, y = 274.175, z = -1483.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1130, monster_id = 28020201, pos = { x = 1328.573, y = 330.473, z = -2032.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 2 },
	{ config_id = 1230, monster_id = 28030101, pos = { x = 1675.452, y = 244.351, z = -1359.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 1231, monster_id = 28030101, pos = { x = 1674.283, y = 244.449, z = -1361.677 }, rot = { x = 0.000, y = 109.770, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 2 },
	{ config_id = 1232, monster_id = 28020301, pos = { x = 1940.433, y = 202.423, z = -1479.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1754, gadget_id = 70680001, pos = { x = 1651.772, y = 197.055, z = -1659.055 }, rot = { x = 0.000, y = 187.541, z = 0.000 }, level = 5, arguments = { 5, 10, 5 }, area_id = 2 }
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
		{ config_id = 491, monster_id = 28010103, pos = { x = 1684.251, y = 195.483, z = -1552.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 492, monster_id = 28010103, pos = { x = 1690.087, y = 195.303, z = -1553.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 493, monster_id = 28010103, pos = { x = 1689.811, y = 194.970, z = -1557.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 494, monster_id = 28010103, pos = { x = 1799.019, y = 194.762, z = -1554.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 495, monster_id = 28010103, pos = { x = 1868.058, y = 194.854, z = -1577.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 496, monster_id = 28010103, pos = { x = 1870.815, y = 194.784, z = -1588.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 497, monster_id = 28010103, pos = { x = 1870.121, y = 194.954, z = -1581.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 498, monster_id = 28010103, pos = { x = 1871.802, y = 195.099, z = -1575.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 499, monster_id = 28010103, pos = { x = 1874.721, y = 195.137, z = -1576.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 846, monster_id = 28010103, pos = { x = 1676.753, y = 195.486, z = -1556.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 847, monster_id = 28010103, pos = { x = 1678.255, y = 195.656, z = -1553.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1138, monster_id = 28010103, pos = { x = 1969.531, y = 196.401, z = -1612.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1139, monster_id = 28010102, pos = { x = 1984.765, y = 198.966, z = -1612.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1140, monster_id = 28010103, pos = { x = 2004.850, y = 198.400, z = -1624.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1141, monster_id = 28010102, pos = { x = 1988.619, y = 195.874, z = -1629.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1142, monster_id = 28010103, pos = { x = 1960.651, y = 195.074, z = -1620.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1143, monster_id = 28010103, pos = { x = 1975.885, y = 196.153, z = -1619.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1144, monster_id = 28010102, pos = { x = 1995.970, y = 195.856, z = -1631.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 },
		{ config_id = 1145, monster_id = 28010103, pos = { x = 1877.664, y = 195.112, z = -1589.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 2 }
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
		monsters = { 281, 282, 283, 284, 285, 291, 292, 293, 296, 334, 343, 344, 345, 346, 347, 348, 358, 376, 403, 404, 405, 408, 409, 412, 413, 414, 455, 456, 472, 565, 566, 567, 569, 571, 572, 574, 575, 687, 688, 689, 710, 711, 712, 740, 741, 742, 747, 748, 749, 750, 751, 752, 761, 803, 810, 811, 817, 821, 822, 830, 842, 1035, 1036, 1037, 1038, 1067, 1068, 1069, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1230, 1231, 1232 },
		gadgets = { 1754 },
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