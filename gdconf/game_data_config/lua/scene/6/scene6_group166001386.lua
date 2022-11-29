-- 基础信息
local base_info = {
	group_id = 166001386
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 386030, monster_id = 20011501, pos = { x = 814.198, y = 719.278, z = 169.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 386038, monster_id = 28050301, pos = { x = 852.428, y = 712.410, z = 246.938 }, rot = { x = 0.000, y = 288.255, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 386039, monster_id = 28010201, pos = { x = 856.935, y = 714.490, z = 258.134 }, rot = { x = 0.000, y = 279.278, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 386040, monster_id = 28020605, pos = { x = 899.451, y = 707.036, z = 228.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 },
	{ config_id = 386072, monster_id = 28020605, pos = { x = 738.087, y = 706.886, z = 245.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 }
}

-- NPC
npcs = {
	{ config_id = 386078, npc_id = 2227, pos = { x = 970.649, y = 732.256, z = 229.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 386002, gadget_id = 70210101, pos = { x = 944.374, y = 725.844, z = 345.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器璃月", persistent = true, area_id = 300 },
	{ config_id = 386006, gadget_id = 70290347, pos = { x = 985.953, y = 736.391, z = 295.405 }, rot = { x = 0.000, y = 29.709, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 386012, gadget_id = 70290309, pos = { x = 970.482, y = 731.492, z = 222.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386014, gadget_id = 70290309, pos = { x = 970.414, y = 733.112, z = 213.463 }, rot = { x = 357.848, y = 37.248, z = 358.364 }, level = 36, area_id = 300 },
	{ config_id = 386015, gadget_id = 70290309, pos = { x = 977.176, y = 731.101, z = 221.344 }, rot = { x = 0.000, y = 255.722, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386016, gadget_id = 70290309, pos = { x = 967.656, y = 730.804, z = 233.199 }, rot = { x = 0.000, y = 92.991, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386017, gadget_id = 70290309, pos = { x = 965.090, y = 731.679, z = 217.383 }, rot = { x = 0.000, y = 259.879, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386021, gadget_id = 70290200, pos = { x = 922.180, y = 708.912, z = 258.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386022, gadget_id = 70210101, pos = { x = 873.673, y = 724.834, z = 161.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 386023, gadget_id = 70290309, pos = { x = 831.578, y = 721.813, z = 162.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386024, gadget_id = 70290324, pos = { x = 871.837, y = 723.425, z = 169.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386025, gadget_id = 70290323, pos = { x = 877.125, y = 723.416, z = 167.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386026, gadget_id = 70290324, pos = { x = 833.664, y = 722.232, z = 155.583 }, rot = { x = 0.000, y = 257.964, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386027, gadget_id = 70290324, pos = { x = 844.704, y = 742.838, z = 190.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386028, gadget_id = 70290324, pos = { x = 807.861, y = 717.412, z = 169.402 }, rot = { x = 0.000, y = 0.000, z = 10.007 }, level = 36, area_id = 300 },
	{ config_id = 386029, gadget_id = 70290324, pos = { x = 820.252, y = 718.277, z = 170.415 }, rot = { x = 11.331, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386041, gadget_id = 70290308, pos = { x = 860.081, y = 722.694, z = 332.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386045, gadget_id = 70290324, pos = { x = 861.029, y = 717.916, z = 297.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386046, gadget_id = 70290200, pos = { x = 872.781, y = 723.939, z = 335.606 }, rot = { x = 347.684, y = 359.614, z = 3.577 }, level = 36, area_id = 300 },
	{ config_id = 386047, gadget_id = 70290200, pos = { x = 873.153, y = 735.844, z = 345.675 }, rot = { x = 339.433, y = 357.884, z = 6.939 }, level = 36, area_id = 300 },
	{ config_id = 386048, gadget_id = 70220062, pos = { x = 838.738, y = 709.811, z = 269.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386049, gadget_id = 70220062, pos = { x = 840.451, y = 709.779, z = 270.225 }, rot = { x = 0.000, y = 0.000, z = 287.786 }, level = 36, area_id = 300 },
	{ config_id = 386050, gadget_id = 70220063, pos = { x = 839.648, y = 710.001, z = 269.344 }, rot = { x = 0.000, y = 310.554, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386051, gadget_id = 70210101, pos = { x = 830.150, y = 706.926, z = 228.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 386052, gadget_id = 70220062, pos = { x = 835.348, y = 707.990, z = 252.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386053, gadget_id = 70290200, pos = { x = 709.417, y = 730.610, z = 227.570 }, rot = { x = 353.852, y = 353.257, z = 358.153 }, level = 36, area_id = 300 },
	{ config_id = 386054, gadget_id = 70220048, pos = { x = 833.627, y = 707.565, z = 252.223 }, rot = { x = 350.266, y = 39.066, z = 349.399 }, level = 36, area_id = 300 },
	{ config_id = 386055, gadget_id = 70220048, pos = { x = 837.100, y = 708.143, z = 252.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386056, gadget_id = 70220048, pos = { x = 835.640, y = 707.997, z = 253.819 }, rot = { x = 0.000, y = 20.830, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386057, gadget_id = 70220048, pos = { x = 835.289, y = 707.539, z = 250.644 }, rot = { x = 12.051, y = 34.958, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386058, gadget_id = 70210101, pos = { x = 818.548, y = 707.238, z = 253.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 386059, gadget_id = 70210101, pos = { x = 818.743, y = 707.455, z = 254.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 386060, gadget_id = 70290347, pos = { x = 778.374, y = 705.950, z = 216.680 }, rot = { x = 0.000, y = 0.478, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 386061, gadget_id = 70290324, pos = { x = 797.969, y = 706.720, z = 194.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386062, gadget_id = 70290324, pos = { x = 781.641, y = 706.070, z = 190.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 386063, gadget_id = 70290323, pos = { x = 775.298, y = 706.059, z = 182.160 }, rot = { x = 356.780, y = 0.471, z = 343.374 }, level = 36, area_id = 300 },
	{ config_id = 386064, gadget_id = 70290323, pos = { x = 784.359, y = 705.878, z = 190.926 }, rot = { x = 5.632, y = 306.722, z = 1.938 }, level = 36, area_id = 300 },
	{ config_id = 386068, gadget_id = 70290200, pos = { x = 758.686, y = 712.100, z = 171.555 }, rot = { x = 353.496, y = 0.812, z = 345.788 }, level = 36, area_id = 300 },
	{ config_id = 386069, gadget_id = 70210101, pos = { x = 741.358, y = 733.088, z = 182.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 386070, gadget_id = 70210101, pos = { x = 765.198, y = 707.960, z = 206.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 386071, gadget_id = 70290347, pos = { x = 719.384, y = 730.006, z = 203.580 }, rot = { x = 0.000, y = 338.721, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 386073, gadget_id = 70290200, pos = { x = 779.939, y = 725.688, z = 282.410 }, rot = { x = 349.006, y = 47.171, z = 341.853 }, level = 36, area_id = 300 },
	{ config_id = 386074, gadget_id = 70210101, pos = { x = 866.865, y = 724.788, z = 183.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 386075, gadget_id = 70290347, pos = { x = 949.602, y = 714.678, z = 271.060 }, rot = { x = 0.000, y = 353.603, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 386076, gadget_id = 70290347, pos = { x = 828.115, y = 707.419, z = 245.740 }, rot = { x = 0.000, y = 14.967, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 386077, gadget_id = 70710153, pos = { x = 970.797, y = 731.454, z = 229.385 }, rot = { x = 0.000, y = 317.309, z = 0.000 }, level = 36, area_id = 300 }
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
		{ config_id = 386037, monster_id = 28050301, pos = { x = 864.324, y = 712.227, z = 247.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
	},
	gadgets = {
		{ config_id = 386001, gadget_id = 70500000, pos = { x = 701.943, y = 733.959, z = 213.652 }, rot = { x = 0.000, y = 264.456, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386003, gadget_id = 70500000, pos = { x = 921.301, y = 726.208, z = 328.743 }, rot = { x = 26.390, y = 348.816, z = 314.668 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386004, gadget_id = 70500000, pos = { x = 933.798, y = 725.409, z = 327.491 }, rot = { x = 354.159, y = 240.399, z = 349.805 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386005, gadget_id = 70500000, pos = { x = 927.342, y = 724.742, z = 338.645 }, rot = { x = 3.877, y = 78.439, z = 348.063 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386007, gadget_id = 70500000, pos = { x = 983.945, y = 718.763, z = 287.289 }, rot = { x = 0.000, y = 60.740, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386008, gadget_id = 70500000, pos = { x = 990.552, y = 723.042, z = 274.600 }, rot = { x = 12.695, y = 3.655, z = 32.007 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386009, gadget_id = 70500000, pos = { x = 993.668, y = 724.064, z = 278.078 }, rot = { x = 12.824, y = 223.826, z = 323.598 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386010, gadget_id = 70500000, pos = { x = 991.022, y = 723.316, z = 293.264 }, rot = { x = 0.000, y = 284.320, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386011, gadget_id = 70500000, pos = { x = 1028.802, y = 733.974, z = 292.344 }, rot = { x = 5.312, y = 287.619, z = 17.058 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 386013, gadget_id = 70290309, pos = { x = 965.633, y = 731.251, z = 224.844 }, rot = { x = 357.131, y = 150.889, z = 358.527 }, level = 36, area_id = 300 },
		{ config_id = 386018, gadget_id = 70500000, pos = { x = 918.833, y = 721.503, z = 163.272 }, rot = { x = 359.330, y = 34.250, z = 355.028 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386019, gadget_id = 70500000, pos = { x = 919.589, y = 723.224, z = 155.937 }, rot = { x = 0.000, y = 83.341, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386020, gadget_id = 70500000, pos = { x = 916.956, y = 721.777, z = 162.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 386031, gadget_id = 70500000, pos = { x = 894.323, y = 714.561, z = 278.112 }, rot = { x = 2.101, y = 359.699, z = 343.696 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386032, gadget_id = 70500000, pos = { x = 885.377, y = 716.248, z = 268.010 }, rot = { x = 11.994, y = 118.034, z = 9.235 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386033, gadget_id = 70500000, pos = { x = 882.247, y = 715.672, z = 282.193 }, rot = { x = 0.000, y = 257.688, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386034, gadget_id = 70500000, pos = { x = 896.533, y = 713.565, z = 276.447 }, rot = { x = 18.061, y = 129.847, z = 352.038 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386035, gadget_id = 70500000, pos = { x = 891.493, y = 714.728, z = 278.132 }, rot = { x = 338.664, y = 0.169, z = 359.105 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386036, gadget_id = 70500000, pos = { x = 883.313, y = 716.033, z = 286.257 }, rot = { x = 359.021, y = 17.627, z = 358.391 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386042, gadget_id = 70500000, pos = { x = 706.249, y = 733.887, z = 205.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386043, gadget_id = 70500000, pos = { x = 710.499, y = 732.539, z = 207.256 }, rot = { x = 9.318, y = 357.671, z = 331.990 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386044, gadget_id = 70500000, pos = { x = 708.333, y = 732.885, z = 209.478 }, rot = { x = 0.000, y = 249.280, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 386065, gadget_id = 70500000, pos = { x = 795.082, y = 708.701, z = 177.416 }, rot = { x = 11.427, y = 296.025, z = 356.757 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386066, gadget_id = 70500000, pos = { x = 800.634, y = 709.774, z = 178.050 }, rot = { x = 4.248, y = 336.129, z = 354.700 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 386067, gadget_id = 70500000, pos = { x = 793.391, y = 708.452, z = 177.790 }, rot = { x = 0.000, y = 222.405, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 }
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
		monsters = { 386030, 386038, 386039, 386040, 386072 },
		gadgets = { 386002, 386006, 386012, 386014, 386015, 386016, 386017, 386021, 386022, 386023, 386024, 386025, 386026, 386027, 386028, 386029, 386041, 386045, 386046, 386047, 386048, 386049, 386050, 386051, 386052, 386053, 386054, 386055, 386056, 386057, 386058, 386059, 386060, 386061, 386062, 386063, 386064, 386068, 386069, 386070, 386071, 386073, 386074, 386075, 386076, 386077 },
		regions = { },
		triggers = { },
		npcs = { 386078 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================