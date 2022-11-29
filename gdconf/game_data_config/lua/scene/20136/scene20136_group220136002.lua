-- 基础信息
local base_info = {
	group_id = 220136002
}

-- Trigger变量
local defs = {
	point_sum = 43,
	route_2 = 121,
	gadget_seelie = 2081
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 2001, gadget_id = 70380301, pos = { x = 796.628, y = 67.261, z = 923.778 }, rot = { x = 0.000, y = 0.050, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 2002, gadget_id = 70380301, pos = { x = 816.266, y = 61.500, z = 905.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2003, gadget_id = 70380301, pos = { x = 826.417, y = 61.500, z = 894.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2004, gadget_id = 70380302, pos = { x = 826.414, y = 61.500, z = 884.625 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 整体移动
	{ config_id = 2005, gadget_id = 70380301, pos = { x = 826.387, y = 61.500, z = 874.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2006, gadget_id = 70380301, pos = { x = 805.668, y = 61.500, z = 905.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2007, gadget_id = 70380301, pos = { x = 805.647, y = 61.500, z = 895.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2008, gadget_id = 70380301, pos = { x = 805.852, y = 61.500, z = 885.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2009, gadget_id = 70380301, pos = { x = 805.040, y = 61.500, z = 875.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 从下往上
	{ config_id = 2010, gadget_id = 70380301, pos = { x = 806.484, y = 40.357, z = 875.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 临时占位
	{ config_id = 2011, gadget_id = 70380301, pos = { x = 796.747, y = 69.536, z = 845.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 2012, gadget_id = 70380302, pos = { x = 807.190, y = 69.614, z = 845.300 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 整体移动1
	{ config_id = 2013, gadget_id = 70380301, pos = { x = 796.815, y = 69.549, z = 865.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 往下
	{ config_id = 2015, gadget_id = 70380301, pos = { x = 775.760, y = 69.464, z = 865.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 2016, gadget_id = 70380301, pos = { x = 740.796, y = 62.603, z = 854.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 向上开门
	{ config_id = 2017, gadget_id = 70380301, pos = { x = 757.158, y = 63.608, z = 845.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 向上开门
	{ config_id = 2018, gadget_id = 70380301, pos = { x = 756.916, y = 63.752, z = 835.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 向上开门
	{ config_id = 2019, gadget_id = 70380301, pos = { x = 757.368, y = 63.758, z = 824.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 开门
	{ config_id = 2020, gadget_id = 70380301, pos = { x = 766.903, y = 66.127, z = 804.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 开门
	{ config_id = 2021, gadget_id = 70380301, pos = { x = 782.305, y = 45.704, z = 804.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	-- 开门
	{ config_id = 2022, gadget_id = 70380301, pos = { x = 793.763, y = 57.950, z = 804.342 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	-- 开门
	{ config_id = 2023, gadget_id = 70380301, pos = { x = 793.550, y = 63.000, z = 792.968 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	-- 开门
	{ config_id = 2024, gadget_id = 70380301, pos = { x = 776.277, y = 92.082, z = 785.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	-- 缩进
	{ config_id = 2025, gadget_id = 70380301, pos = { x = 759.197, y = 90.000, z = 741.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2026, gadget_id = 70380301, pos = { x = 789.954, y = 90.000, z = 741.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2027, gadget_id = 70380301, pos = { x = 759.206, y = 90.000, z = 731.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2028, gadget_id = 70380301, pos = { x = 789.962, y = 90.000, z = 731.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2029, gadget_id = 70380301, pos = { x = 759.376, y = 90.000, z = 721.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2030, gadget_id = 70380301, pos = { x = 789.894, y = 90.000, z = 721.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2031, gadget_id = 70380301, pos = { x = 789.805, y = 90.000, z = 711.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2032, gadget_id = 70380301, pos = { x = 759.104, y = 90.000, z = 711.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 缩低
	{ config_id = 2033, gadget_id = 70380301, pos = { x = 780.046, y = 110.049, z = 741.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 缩低
	{ config_id = 2034, gadget_id = 70380301, pos = { x = 769.574, y = 110.049, z = 741.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 缩低
	{ config_id = 2035, gadget_id = 70380301, pos = { x = 769.772, y = 110.436, z = 731.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 缩低
	{ config_id = 2036, gadget_id = 70380301, pos = { x = 780.272, y = 110.436, z = 731.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 缩低
	{ config_id = 2037, gadget_id = 70380301, pos = { x = 775.064, y = 109.140, z = 721.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 缩低
	{ config_id = 2038, gadget_id = 70380301, pos = { x = 775.033, y = 109.869, z = 710.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 开门
	{ config_id = 2039, gadget_id = 70380301, pos = { x = 775.201, y = 90.016, z = 701.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 掉落
	{ config_id = 2040, gadget_id = 70380301, pos = { x = 780.952, y = 64.592, z = 682.746 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 掉落
	{ config_id = 2041, gadget_id = 70380301, pos = { x = 769.630, y = 64.592, z = 682.683 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 掉落
	{ config_id = 2042, gadget_id = 70380301, pos = { x = 781.007, y = 64.592, z = 671.423 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 掉落
	{ config_id = 2043, gadget_id = 70380301, pos = { x = 769.697, y = 64.592, z = 671.354 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 2048, gadget_id = 70380301, pos = { x = 766.885, y = 63.666, z = 855.446 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 抬高
	{ config_id = 2066, gadget_id = 70380301, pos = { x = 793.667, y = 66.800, z = 781.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 2067, gadget_id = 70380301, pos = { x = 757.304, y = 63.837, z = 865.035 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 墙面推进
	{ config_id = 2071, gadget_id = 70380301, pos = { x = 739.864, y = 66.176, z = 809.311 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 墙面推进
	{ config_id = 2072, gadget_id = 70380301, pos = { x = 739.947, y = 66.186, z = 799.008 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 墙面推进
	{ config_id = 2073, gadget_id = 70380301, pos = { x = 740.021, y = 66.197, z = 788.687 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false },
	-- 缩进
	{ config_id = 2075, gadget_id = 70380301, pos = { x = 759.197, y = 90.000, z = 752.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 2079, gadget_id = 70950157, pos = { x = 793.132, y = 70.431, z = 798.728 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2081, gadget_id = 70310244, pos = { x = 775.270, y = 58.456, z = 923.598 }, rot = { x = 0.000, y = 90.505, z = 0.000 }, level = 1 },
	{ config_id = 2083, gadget_id = 70950157, pos = { x = 793.132, y = 74.099, z = 787.268 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 缩进
	{ config_id = 2084, gadget_id = 70380301, pos = { x = 789.954, y = 90.000, z = 752.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 2085, gadget_id = 70950157, pos = { x = 789.158, y = 76.289, z = 784.821 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 2086, gadget_id = 70950157, pos = { x = 789.158, y = 76.289, z = 789.233 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 2087, gadget_id = 70950157, pos = { x = 804.542, y = 62.071, z = 860.540 }, rot = { x = 270.680, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2088, gadget_id = 70950157, pos = { x = 792.583, y = 62.071, z = 860.508 }, rot = { x = 270.680, y = 0.000, z = 0.000 }, level = 1 },
	-- 掉落
	{ config_id = 2089, gadget_id = 70950157, pos = { x = 772.107, y = 4.937, z = 666.344 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2090, gadget_id = 70950157, pos = { x = 784.081, y = 4.937, z = 666.344 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2091, gadget_id = 70950157, pos = { x = 786.166, y = 5.286, z = 673.461 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2092, gadget_id = 70950157, pos = { x = 786.166, y = 5.286, z = 685.398 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2102, gadget_id = 70950157, pos = { x = 778.703, y = 5.907, z = 686.113 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2103, gadget_id = 70950157, pos = { x = 766.616, y = 5.907, z = 686.113 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2104, gadget_id = 70950157, pos = { x = 765.462, y = 6.301, z = 679.018 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2105, gadget_id = 70950157, pos = { x = 765.462, y = 6.301, z = 667.005 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	-- 掉落
	{ config_id = 2106, gadget_id = 70950157, pos = { x = 772.107, y = 46.096, z = 666.344 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2107, gadget_id = 70950157, pos = { x = 784.081, y = 46.096, z = 666.344 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2108, gadget_id = 70950157, pos = { x = 786.166, y = 46.445, z = 673.461 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2109, gadget_id = 70950157, pos = { x = 786.166, y = 46.445, z = 685.398 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2110, gadget_id = 70950157, pos = { x = 778.703, y = 47.065, z = 686.113 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2111, gadget_id = 70950157, pos = { x = 766.616, y = 47.065, z = 686.113 }, rot = { x = 272.808, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2112, gadget_id = 70950157, pos = { x = 765.462, y = 47.460, z = 679.018 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2113, gadget_id = 70950157, pos = { x = 765.462, y = 47.460, z = 667.005 }, rot = { x = 272.807, y = 90.000, z = 180.000 }, level = 1 },
	-- 掉落
	{ config_id = 2114, gadget_id = 70950157, pos = { x = 772.107, y = 40.133, z = 667.281 }, rot = { x = 284.863, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2115, gadget_id = 70950157, pos = { x = 784.081, y = 40.110, z = 667.652 }, rot = { x = 285.924, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2116, gadget_id = 70950157, pos = { x = 784.786, y = 40.336, z = 673.461 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2117, gadget_id = 70950157, pos = { x = 784.786, y = 40.336, z = 685.398 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2118, gadget_id = 70950157, pos = { x = 778.703, y = 41.044, z = 686.270 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2119, gadget_id = 70950157, pos = { x = 766.616, y = 41.044, z = 686.270 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2120, gadget_id = 70950157, pos = { x = 764.754, y = 41.335, z = 679.018 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2121, gadget_id = 70950157, pos = { x = 764.754, y = 41.335, z = 667.005 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	-- 掉落
	{ config_id = 2122, gadget_id = 70950157, pos = { x = 772.107, y = 34.372, z = 668.512 }, rot = { x = 284.863, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2123, gadget_id = 70950157, pos = { x = 784.081, y = 34.372, z = 668.989 }, rot = { x = 285.924, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2124, gadget_id = 70950157, pos = { x = 782.998, y = 34.722, z = 673.461 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2125, gadget_id = 70950157, pos = { x = 782.998, y = 34.722, z = 685.398 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2126, gadget_id = 70950157, pos = { x = 778.703, y = 35.342, z = 684.788 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2127, gadget_id = 70950157, pos = { x = 766.616, y = 35.342, z = 684.788 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2128, gadget_id = 70950157, pos = { x = 766.590, y = 35.737, z = 679.018 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2129, gadget_id = 70950157, pos = { x = 766.590, y = 35.737, z = 667.005 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	-- 掉落
	{ config_id = 2130, gadget_id = 70950157, pos = { x = 772.107, y = 28.744, z = 669.713 }, rot = { x = 284.863, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2131, gadget_id = 70950157, pos = { x = 784.081, y = 28.767, z = 670.295 }, rot = { x = 285.924, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2132, gadget_id = 70950157, pos = { x = 781.252, y = 29.239, z = 673.461 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2133, gadget_id = 70950157, pos = { x = 781.252, y = 29.239, z = 685.398 }, rot = { x = 290.471, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 2134, gadget_id = 70950157, pos = { x = 778.703, y = 29.772, z = 683.340 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2135, gadget_id = 70950157, pos = { x = 766.616, y = 29.772, z = 683.340 }, rot = { x = 281.765, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2136, gadget_id = 70950157, pos = { x = 768.383, y = 30.269, z = 679.018 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2137, gadget_id = 70950157, pos = { x = 768.383, y = 30.269, z = 667.005 }, rot = { x = 285.348, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2138, gadget_id = 70950157, pos = { x = 788.070, y = 59.687, z = 804.146 }, rot = { x = 90.000, y = 270.156, z = 0.000 }, level = 1 },
	{ config_id = 2139, gadget_id = 70950157, pos = { x = 788.070, y = 65.465, z = 804.146 }, rot = { x = 90.000, y = 270.156, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2014, shape = RegionShape.SPHERE, radius = 8, pos = { x = 775.833, y = 56.690, z = 923.533 } },
	{ config_id = 2045, shape = RegionShape.SPHERE, radius = 8, pos = { x = 817.110, y = 53.840, z = 909.948 } },
	-- 整体移动
	{ config_id = 2046, shape = RegionShape.SPHERE, radius = 8, pos = { x = 816.541, y = 53.840, z = 900.074 } },
	-- 抬高
	{ config_id = 2047, shape = RegionShape.SPHERE, radius = 5, pos = { x = 806.267, y = 51.538, z = 873.165 } },
	{ config_id = 2049, shape = RegionShape.SPHERE, radius = 5, pos = { x = 806.348, y = 59.040, z = 864.052 } },
	{ config_id = 2050, shape = RegionShape.SPHERE, radius = 6, pos = { x = 786.324, y = 59.144, z = 865.163 } },
	{ config_id = 2051, shape = RegionShape.SPHERE, radius = 6, pos = { x = 757.622, y = 53.200, z = 853.907 } },
	{ config_id = 2052, shape = RegionShape.SPHERE, radius = 6, pos = { x = 757.622, y = 53.200, z = 844.343 } },
	{ config_id = 2053, shape = RegionShape.SPHERE, radius = 6, pos = { x = 757.622, y = 53.200, z = 834.588 } },
	{ config_id = 2054, shape = RegionShape.SPHERE, radius = 8, pos = { x = 766.906, y = 55.670, z = 801.806 } },
	-- 调高
	{ config_id = 2055, shape = RegionShape.SPHERE, radius = 5, pos = { x = 784.845, y = 56.895, z = 805.108 } },
	-- 抬高
	{ config_id = 2056, shape = RegionShape.SPHERE, radius = 7, pos = { x = 795.121, y = 66.500, z = 802.893 } },
	-- 抬高
	{ config_id = 2057, shape = RegionShape.SPHERE, radius = 6, pos = { x = 794.058, y = 73.410, z = 791.977 } },
	{ config_id = 2058, shape = RegionShape.SPHERE, radius = 5, pos = { x = 787.280, y = 82.300, z = 786.852 } },
	{ config_id = 2059, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 80.358, z = 756.163 } },
	-- 语音——别开玩笑了
	{ config_id = 2060, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 80.846, z = 744.842 } },
	{ config_id = 2061, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 80.846, z = 734.983 } },
	{ config_id = 2062, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 80.846, z = 721.053 } },
	{ config_id = 2063, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.794, y = 79.830, z = 701.892 } },
	-- 裂开下坠
	{ config_id = 2064, shape = RegionShape.SPHERE, radius = 5, pos = { x = 775.132, y = 75.224, z = 675.616 } },
	-- 到达底部
	{ config_id = 2065, shape = RegionShape.SPHERE, radius = 7, pos = { x = 775.473, y = -1.185, z = 676.840 } },
	{ config_id = 2069, shape = RegionShape.SPHERE, radius = 6, pos = { x = 767.145, y = 53.200, z = 863.044 } },
	-- 抬高
	{ config_id = 2070, shape = RegionShape.SPHERE, radius = 6, pos = { x = 789.999, y = 78.468, z = 781.252 } },
	-- 墙面推进
	{ config_id = 2074, shape = RegionShape.SPHERE, radius = 8, pos = { x = 748.736, y = 55.670, z = 807.811 } },
	-- 掉落保底
	{ config_id = 2077, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 761.486, y = 39.820, z = 923.276 } },
	-- 空中切scenetag
	{ config_id = 2078, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 50.000 }, pos = { x = 775.473, y = 31.293, z = 676.840 } },
	-- 保底1
	{ config_id = 2080, shape = RegionShape.SPHERE, radius = 5, pos = { x = 806.591, y = 51.400, z = 885.962 } },
	-- 保底2
	{ config_id = 2093, shape = RegionShape.SPHERE, radius = 5, pos = { x = 774.103, y = 56.660, z = 804.235 } },
	-- 保底3
	{ config_id = 2094, shape = RegionShape.SPHERE, radius = 5, pos = { x = 783.290, y = 68.558, z = 804.177 } },
	-- 保底4
	{ config_id = 2095, shape = RegionShape.SPHERE, radius = 5, pos = { x = 793.613, y = 71.760, z = 803.881 } },
	-- 保底5
	{ config_id = 2096, shape = RegionShape.SPHERE, radius = 5, pos = { x = 793.608, y = 71.238, z = 803.492 } }
}

-- 触发器
triggers = {
	{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2014", action = "action_EVENT_ENTER_REGION_2014", trigger_count = 0 },
	-- 第5个抬高保底
	{ config_id = 1002044, name = "PLATFORM_REACH_POINT_2044", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2044", action = "action_EVENT_PLATFORM_REACH_POINT_2044", trigger_count = 0 },
	{ config_id = 1002045, name = "ENTER_REGION_2045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2045", action = "action_EVENT_ENTER_REGION_2045", trigger_count = 0 },
	-- 整体移动
	{ config_id = 1002046, name = "ENTER_REGION_2046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2046", action = "action_EVENT_ENTER_REGION_2046", trigger_count = 0 },
	-- 抬高
	{ config_id = 1002047, name = "ENTER_REGION_2047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2047", action = "action_EVENT_ENTER_REGION_2047", trigger_count = 0 },
	{ config_id = 1002049, name = "ENTER_REGION_2049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2049", action = "action_EVENT_ENTER_REGION_2049", trigger_count = 0 },
	{ config_id = 1002050, name = "ENTER_REGION_2050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2050", action = "action_EVENT_ENTER_REGION_2050", trigger_count = 0 },
	{ config_id = 1002051, name = "ENTER_REGION_2051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2051", action = "action_EVENT_ENTER_REGION_2051", trigger_count = 0 },
	{ config_id = 1002052, name = "ENTER_REGION_2052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2052", action = "action_EVENT_ENTER_REGION_2052", trigger_count = 0 },
	{ config_id = 1002053, name = "ENTER_REGION_2053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2053", action = "action_EVENT_ENTER_REGION_2053", trigger_count = 0 },
	{ config_id = 1002054, name = "ENTER_REGION_2054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2054", action = "action_EVENT_ENTER_REGION_2054", trigger_count = 0 },
	-- 调高
	{ config_id = 1002055, name = "ENTER_REGION_2055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2055", action = "action_EVENT_ENTER_REGION_2055", trigger_count = 0 },
	-- 抬高
	{ config_id = 1002056, name = "ENTER_REGION_2056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2056", action = "action_EVENT_ENTER_REGION_2056", trigger_count = 0 },
	-- 抬高
	{ config_id = 1002057, name = "ENTER_REGION_2057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2057", action = "action_EVENT_ENTER_REGION_2057", trigger_count = 0 },
	{ config_id = 1002058, name = "ENTER_REGION_2058", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2058", action = "action_EVENT_ENTER_REGION_2058", trigger_count = 0 },
	{ config_id = 1002059, name = "ENTER_REGION_2059", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2059", action = "action_EVENT_ENTER_REGION_2059", trigger_count = 0 },
	-- 语音——别开玩笑了
	{ config_id = 1002060, name = "ENTER_REGION_2060", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2060", action = "action_EVENT_ENTER_REGION_2060", trigger_count = 0 },
	{ config_id = 1002061, name = "ENTER_REGION_2061", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2061", action = "action_EVENT_ENTER_REGION_2061", trigger_count = 0 },
	{ config_id = 1002062, name = "ENTER_REGION_2062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2062", action = "action_EVENT_ENTER_REGION_2062", trigger_count = 0 },
	{ config_id = 1002063, name = "ENTER_REGION_2063", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2063", action = "action_EVENT_ENTER_REGION_2063", trigger_count = 0 },
	-- 裂开下坠
	{ config_id = 1002064, name = "ENTER_REGION_2064", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2064", action = "action_EVENT_ENTER_REGION_2064", trigger_count = 0 },
	-- 到达底部
	{ config_id = 1002065, name = "ENTER_REGION_2065", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2065", action = "action_EVENT_ENTER_REGION_2065", trigger_count = 0 },
	{ config_id = 1002069, name = "ENTER_REGION_2069", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2069", action = "action_EVENT_ENTER_REGION_2069", trigger_count = 0 },
	-- 抬高
	{ config_id = 1002070, name = "ENTER_REGION_2070", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2070", action = "action_EVENT_ENTER_REGION_2070", trigger_count = 0 },
	-- 墙面推进
	{ config_id = 1002074, name = "ENTER_REGION_2074", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2074", action = "action_EVENT_ENTER_REGION_2074", trigger_count = 0 },
	-- 加载scenetag和天气
	{ config_id = 1002076, name = "GROUP_LOAD_2076", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2076", trigger_count = 0 },
	-- 掉落保底
	{ config_id = 1002077, name = "ENTER_REGION_2077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2077", action = "action_EVENT_ENTER_REGION_2077", trigger_count = 0 },
	-- 空中切scenetag
	{ config_id = 1002078, name = "ENTER_REGION_2078", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2078", action = "action_EVENT_ENTER_REGION_2078", trigger_count = 0 },
	-- 保底1
	{ config_id = 1002080, name = "ENTER_REGION_2080", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2080", action = "action_EVENT_ENTER_REGION_2080", trigger_count = 0 },
	-- 仙灵
	{ config_id = 1002082, name = "AVATAR_NEAR_PLATFORM_2082", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_2082", action = "action_EVENT_AVATAR_NEAR_PLATFORM_2082", trigger_count = 0 },
	-- 保底2
	{ config_id = 1002093, name = "ENTER_REGION_2093", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2093", action = "action_EVENT_ENTER_REGION_2093", trigger_count = 0 },
	-- 保底3
	{ config_id = 1002094, name = "ENTER_REGION_2094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2094", action = "action_EVENT_ENTER_REGION_2094", trigger_count = 0 },
	-- 保底4
	{ config_id = 1002095, name = "ENTER_REGION_2095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2095", action = "action_EVENT_ENTER_REGION_2095", trigger_count = 0 },
	-- 保底5
	{ config_id = 1002096, name = "ENTER_REGION_2096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2096", action = "action_EVENT_ENTER_REGION_2096", trigger_count = 0 },
	-- 第一个抬高保底
	{ config_id = 1002097, name = "PLATFORM_REACH_POINT_2097", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2097", action = "action_EVENT_PLATFORM_REACH_POINT_2097", trigger_count = 0 },
	-- 第2个抬高保底
	{ config_id = 1002098, name = "PLATFORM_REACH_POINT_2098", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2098", action = "action_EVENT_PLATFORM_REACH_POINT_2098", trigger_count = 0 },
	-- 第3个抬高保底
	{ config_id = 1002099, name = "PLATFORM_REACH_POINT_2099", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2099", action = "action_EVENT_PLATFORM_REACH_POINT_2099", trigger_count = 0 },
	-- 第4个抬高保底
	{ config_id = 1002100, name = "PLATFORM_REACH_POINT_2100", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2100", action = "action_EVENT_PLATFORM_REACH_POINT_2100", trigger_count = 0 },
	-- 第5个抬高保底
	{ config_id = 1002101, name = "PLATFORM_REACH_POINT_2101", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_2101", action = "action_EVENT_PLATFORM_REACH_POINT_2101", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 2068, gadget_id = 70380301, pos = { x = 757.503, y = 63.666, z = 855.389 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 1, start_route = false }
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
	end_suite = 2,
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2048, 2066, 2067, 2071, 2072, 2073, 2075, 2079, 2081, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139 },
		regions = { 2014, 2045, 2046, 2047, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2069, 2070, 2074, 2077, 2078 },
		triggers = { "ENTER_REGION_2014", "PLATFORM_REACH_POINT_2044", "ENTER_REGION_2045", "ENTER_REGION_2046", "ENTER_REGION_2047", "ENTER_REGION_2049", "ENTER_REGION_2050", "ENTER_REGION_2051", "ENTER_REGION_2052", "ENTER_REGION_2053", "ENTER_REGION_2054", "ENTER_REGION_2055", "ENTER_REGION_2056", "ENTER_REGION_2057", "ENTER_REGION_2058", "ENTER_REGION_2059", "ENTER_REGION_2060", "ENTER_REGION_2061", "ENTER_REGION_2062", "ENTER_REGION_2063", "ENTER_REGION_2064", "ENTER_REGION_2065", "ENTER_REGION_2069", "ENTER_REGION_2070", "ENTER_REGION_2074", "GROUP_LOAD_2076", "ENTER_REGION_2077", "ENTER_REGION_2078", "AVATAR_NEAR_PLATFORM_2082", "PLATFORM_REACH_POINT_2097", "PLATFORM_REACH_POINT_2098", "PLATFORM_REACH_POINT_2099", "PLATFORM_REACH_POINT_2100", "PLATFORM_REACH_POINT_2101" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_2076" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2080 },
		triggers = { "ENTER_REGION_2080" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2093 },
		triggers = { "ENTER_REGION_2093" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2094 },
		triggers = { "ENTER_REGION_2094" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2095 },
		triggers = { "ENTER_REGION_2095" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2096 },
		triggers = { "ENTER_REGION_2096" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2014(context, evt)
	if evt.param1 ~= 2014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2014(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2001, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2081, 121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2044(context, evt)
	-- 判断是gadgetid 为 2081的移动平台，是否到达了121 的路线中的 0 点
	
	if 2081 ~= evt.param1 then
	  return false
	end
	
	if 121 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2044(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2081 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2045(context, evt)
	if evt.param1 ~= 2045 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2045(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2002, 26) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2046(context, evt)
	if evt.param1 ~= 2046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2046(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2007, 95) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2008, 28) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2005, 29) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2009, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2006, 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 2004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2047(context, evt)
	if evt.param1 ~= 2047 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2010, 16, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2049(context, evt)
	if evt.param1 ~= 2049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2049(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2013, 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2050(context, evt)
	if evt.param1 ~= 2050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2050(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2015, 36) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2051(context, evt)
	if evt.param1 ~= 2051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2051(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2017, 37) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2052(context, evt)
	if evt.param1 ~= 2052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2052(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2018, 38) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2053(context, evt)
	if evt.param1 ~= 2053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2053(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2019, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2054(context, evt)
	if evt.param1 ~= 2054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2054(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2020, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2055(context, evt)
	if evt.param1 ~= 2055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2055(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2021, 18, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2056(context, evt)
	if evt.param1 ~= 2056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2056(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2022, 18, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2023, 17, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2057(context, evt)
	if evt.param1 ~= 2057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2057(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2023, 18, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2058(context, evt)
	if evt.param1 ~= 2058 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2058(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2024, 18, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2059(context, evt)
	if evt.param1 ~= 2059 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2059(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2025, 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2026, 46) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2033, 54) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2034, 55) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2060(context, evt)
	if evt.param1 ~= 2060 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2060(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2027, 47) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2028, 48) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2035, 56) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2035) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2036, 57) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2061(context, evt)
	if evt.param1 ~= 2061 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2061(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2029, 49) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2030, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2037, 58) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2062(context, evt)
	if evt.param1 ~= 2062 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2062(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2031, 51) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2032, 52) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2038, 59) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2063(context, evt)
	if evt.param1 ~= 2063 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2063(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2039, 53) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2064(context, evt)
	if evt.param1 ~= 2064 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2064(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2040, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2041, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2042, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2043, 63) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136004, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2065(context, evt)
	if evt.param1 ~= 2065 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2065(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 220136002, suite = 2 })
	
	ScriptLib.DelSceneTag(context,20136,1065)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monamaze1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2069(context, evt)
	if evt.param1 ~= 2069 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2069(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2067, 93) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2067) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2070(context, evt)
	if evt.param1 ~= 2070 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2070(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2066, 18, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2023, 18, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2074(context, evt)
	if evt.param1 ~= 2074 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2074(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2071, 96) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2072, 97) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2073, 98) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2073) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2076(context, evt)
	  if ScriptLib.GetHostQuestState(context,4007415)==2 or ScriptLib.GetHostQuestState(context,4007408)==2
	or ScriptLib.GetHostQuestState(context,4007413)==2 then
	ScriptLib.RefreshGroup(context, { group_id = 220136002, suite = 1 })
	
	ScriptLib.AddSceneTag(context,20136,1065)
	ScriptLib.SetWeatherAreaState(context, 10090, 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2077(context, evt)
	if evt.param1 ~= 2077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2077(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=755, y=57, z=923}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=90, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2078(context, evt)
	if evt.param1 ~= 2078 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2078(context, evt)
	
	ScriptLib.DelSceneTag(context,20136,1065)
	
	ScriptLib.AddSceneTag(context,20136,1066)
	ScriptLib.RefreshGroup(context, { group_id = 220136002, suite = 2 })
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2080(context, evt)
	if evt.param1 ~= 2080 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2080(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2010, 16, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_2082(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_2082(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 2081) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2093(context, evt)
	if evt.param1 ~= 2093 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2093(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2021, 17, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2094(context, evt)
	if evt.param1 ~= 2094 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2094(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2022, 17, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2095(context, evt)
	if evt.param1 ~= 2095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2095(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2023, 17, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136002, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2096(context, evt)
	if evt.param1 ~= 2096 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2096(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2066, 17, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136002, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2097(context, evt)
	-- 判断是gadgetid 为 2010的移动平台，是否到达了16 的点集中的 2 点
	
	if 2010 ~= evt.param1 then
	  return false
	end
	
	if 16 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2097(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2098(context, evt)
	-- 判断是gadgetid 为 2021的移动平台，是否到达了18 的点集中的 1 点
	
	if 2021 ~= evt.param1 then
	  return false
	end
	
	if 18 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2098(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2099(context, evt)
	-- 判断是gadgetid 为 2022的移动平台，是否到达了18 的点集中的 2 点
	
	if 2022 ~= evt.param1 then
	  return false
	end
	
	if 18 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2099(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2100(context, evt)
	-- 判断是gadgetid 为 2023的移动平台，是否到达了18 的点集中的 3 点
	
	if 2023 ~= evt.param1 then
	  return false
	end
	
	if 18 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2100(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_2101(context, evt)
	-- 判断是gadgetid 为 2066的移动平台，是否到达了18 的点集中的 5 点
	
	if 2066 ~= evt.param1 then
	  return false
	end
	
	if 18 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_2101(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136002, 7)
	
	return 0
end