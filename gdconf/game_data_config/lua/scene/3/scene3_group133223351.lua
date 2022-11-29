-- 基础信息
local base_info = {
	group_id = 133223351
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
}

-- 区域
regions = {
	-- 地下遗迹房间A
	{ config_id = 351001, shape = RegionShape.POLYGON, pos = { x = -5898.430, y = 167.971, z = -2635.854 }, height = 59.281, point_array = { { x = -5954.129, y = -2584.757 }, { x = -5942.584, y = -2565.107 }, { x = -5892.988, y = -2581.083 }, { x = -5825.221, y = -2651.733 }, { x = -5861.607, y = -2706.602 }, { x = -5901.495, y = -2690.729 }, { x = -5938.445, y = -2695.786 }, { x = -5952.153, y = -2686.333 }, { x = -5971.640, y = -2657.987 } }, area_id = 18, vision_type_list = { 32230001 } },
	-- 地下遗迹房间B
	{ config_id = 351002, shape = RegionShape.POLYGON, pos = { x = -5955.004, y = 159.557, z = -2718.735 }, height = 69.450, point_array = { { x = -5905.624, y = -2689.318 }, { x = -5915.979, y = -2660.004 }, { x = -5926.083, y = -2653.272 }, { x = -5934.260, y = -2657.031 }, { x = -5939.217, y = -2654.027 }, { x = -6011.566, y = -2673.686 }, { x = -6025.598, y = -2733.968 }, { x = -6011.814, y = -2749.540 }, { x = -5998.461, y = -2734.484 }, { x = -5980.329, y = -2761.137 }, { x = -5980.012, y = -2773.408 }, { x = -5967.743, y = -2782.218 }, { x = -5947.653, y = -2772.012 }, { x = -5906.633, y = -2784.199 }, { x = -5884.411, y = -2749.193 } }, area_id = 18, vision_type_list = { 32230002 } },
	-- 地下遗迹房间C
	{ config_id = 351003, shape = RegionShape.POLYGON, pos = { x = -6005.265, y = 182.579, z = -2803.057 }, height = 74.842, point_array = { { x = -6015.707, y = -2702.274 }, { x = -5933.616, y = -2758.028 }, { x = -5930.959, y = -2785.772 }, { x = -5982.503, y = -2903.839 }, { x = -6079.571, y = -2872.856 }, { x = -6060.586, y = -2820.071 }, { x = -6047.818, y = -2767.529 } }, area_id = 18, vision_type_list = { 32230003 } },
	-- 遗迹上方
	{ config_id = 351004, shape = RegionShape.POLYGON, pos = { x = -5925.290, y = 213.200, z = -2633.626 }, height = 66.400, point_array = { { x = -6029.220, y = -3006.485 }, { x = -6159.281, y = -2962.019 }, { x = -6186.713, y = -2864.857 }, { x = -6139.649, y = -2741.603 }, { x = -6173.600, y = -2561.945 }, { x = -6157.428, y = -2427.704 }, { x = -6083.981, y = -2260.767 }, { x = -5885.974, y = -2329.452 }, { x = -5748.161, y = -2422.927 }, { x = -5663.867, y = -2575.278 }, { x = -5706.463, y = -2794.597 }, { x = -5949.890, y = -2963.518 } }, area_id = 18, vision_type_list = { 32230004 } },
	-- 教学点山后
	{ config_id = 351005, shape = RegionShape.POLYGON, pos = { x = -6172.485, y = 214.810, z = -2942.731 }, height = 69.619, point_array = { { x = -6187.025, y = -2882.331 }, { x = -6228.067, y = -2896.300 }, { x = -6204.839, y = -2943.246 }, { x = -6226.570, y = -2974.043 }, { x = -6203.469, y = -3007.659 }, { x = -6134.269, y = -2986.614 }, { x = -6116.903, y = -2915.825 }, { x = -6144.134, y = -2877.804 } }, area_id = 18, vision_type_list = { 32230006 } },
	-- 教学点山
	{ config_id = 351006, shape = RegionShape.POLYGON, pos = { x = -6271.640, y = 240.000, z = -2964.947 }, height = 120.000, point_array = { { x = -6335.988, y = -2970.907 }, { x = -6337.222, y = -2931.279 }, { x = -6298.239, y = -2921.578 }, { x = -6226.235, y = -2899.010 }, { x = -6212.459, y = -2915.945 }, { x = -6206.058, y = -2941.350 }, { x = -6237.052, y = -3006.946 }, { x = -6285.145, y = -3030.885 }, { x = -6304.021, y = -2997.944 } }, area_id = 18, vision_type_list = { 32230005 } },
	-- 雷灵山内部
	{ config_id = 351007, shape = RegionShape.POLYGON, pos = { x = -6321.060, y = 318.208, z = -2675.645 }, height = 263.585, point_array = { { x = -6302.219, y = -2759.006 }, { x = -6373.397, y = -2747.737 }, { x = -6400.181, y = -2758.488 }, { x = -6419.891, y = -2718.283 }, { x = -6374.030, y = -2663.334 }, { x = -6353.863, y = -2622.591 }, { x = -6301.577, y = -2592.284 }, { x = -6262.209, y = -2604.358 }, { x = -6225.507, y = -2630.478 }, { x = -6222.228, y = -2692.090 }, { x = -6242.080, y = -2733.142 } }, area_id = 18, vision_type_list = { 32230007 } },
	-- 雷灵山中
	{ config_id = 351008, shape = RegionShape.POLYGON, pos = { x = -5977.005, y = 250.050, z = -2556.080 }, height = 199.900, point_array = { { x = -5914.160, y = -2554.042 }, { x = -5935.632, y = -2609.629 }, { x = -5983.042, y = -2609.841 }, { x = -6025.450, y = -2588.234 }, { x = -6039.850, y = -2564.519 }, { x = -6027.345, y = -2521.129 }, { x = -5976.104, y = -2502.318 }, { x = -5946.015, y = -2508.793 } }, area_id = 18, vision_type_list = { 32230008 } },
	-- 南部悬崖下方
	{ config_id = 351009, shape = RegionShape.POLYGON, pos = { x = -6372.799, y = 222.500, z = -2924.484 }, height = 85.000, point_array = { { x = -6301.062, y = -2980.747 }, { x = -6278.240, y = -3048.033 }, { x = -6338.633, y = -3087.192 }, { x = -6418.057, y = -3030.988 }, { x = -6447.249, y = -2873.229 }, { x = -6467.357, y = -2823.967 }, { x = -6409.265, y = -2761.776 }, { x = -6349.349, y = -2833.156 }, { x = -6292.867, y = -2897.068 }, { x = -6293.160, y = -2929.009 }, { x = -6307.330, y = -2947.834 } }, area_id = 18, vision_type_list = { 32230009 } },
	-- 雷灵山南部
	{ config_id = 351010, shape = RegionShape.POLYGON, pos = { x = -6447.525, y = 225.000, z = -2774.378 }, height = 90.000, point_array = { { x = -6464.357, y = -2669.591 }, { x = -6410.726, y = -2716.809 }, { x = -6391.628, y = -2767.970 }, { x = -6390.490, y = -2779.391 }, { x = -6363.734, y = -2815.688 }, { x = -6362.131, y = -2840.299 }, { x = -6376.938, y = -2860.549 }, { x = -6443.956, y = -2879.165 }, { x = -6518.010, y = -2828.636 }, { x = -6532.919, y = -2764.414 } }, area_id = 18, vision_type_list = { 32250001 } },
	-- 狼窝迷雾区
	{ config_id = 351011, shape = RegionShape.POLYGON, pos = { x = -6218.780, y = 233.904, z = -2508.318 }, height = 69.005, point_array = { { x = -6169.488, y = -2621.324 }, { x = -6225.357, y = -2590.594 }, { x = -6237.916, y = -2524.239 }, { x = -6242.325, y = -2513.234 }, { x = -6237.765, y = -2499.986 }, { x = -6242.110, y = -2501.206 }, { x = -6259.469, y = -2505.247 }, { x = -6308.799, y = -2489.693 }, { x = -6311.084, y = -2454.773 }, { x = -6231.184, y = -2395.313 }, { x = -6129.161, y = -2429.171 }, { x = -6126.477, y = -2517.954 }, { x = -6174.229, y = -2525.080 } }, area_id = 18, vision_type_list = { 32230010 } },
	-- 后山迷雾区
	{ config_id = 351012, shape = RegionShape.POLYGON, pos = { x = -6354.017, y = 270.500, z = -2570.593 }, height = 59.000, point_array = { { x = -6202.576, y = -2551.538 }, { x = -6235.425, y = -2518.213 }, { x = -6231.931, y = -2499.561 }, { x = -6239.218, y = -2489.073 }, { x = -6265.517, y = -2497.090 }, { x = -6295.477, y = -2481.192 }, { x = -6305.502, y = -2434.485 }, { x = -6430.455, y = -2452.836 }, { x = -6511.820, y = -2616.801 }, { x = -6378.372, y = -2706.701 }, { x = -6321.553, y = -2622.755 }, { x = -6226.774, y = -2617.716 }, { x = -6196.213, y = -2593.660 } }, area_id = 18, vision_type_list = { 32230011 } },
	-- 小洞
	{ config_id = 351013, shape = RegionShape.POLYGON, pos = { x = -6182.436, y = 199.200, z = -2726.240 }, height = 81.600, point_array = { { x = -6209.587, y = -2730.440 }, { x = -6185.117, y = -2750.242 }, { x = -6155.284, y = -2735.603 }, { x = -6160.708, y = -2702.238 }, { x = -6193.628, y = -2705.807 } }, area_id = 18 },
	-- 狼窝小山
	{ config_id = 351014, shape = RegionShape.POLYGON, pos = { x = -6173.984, y = 216.316, z = -2546.735 }, height = 70.831, point_array = { { x = -6129.675, y = -2468.016 }, { x = -6121.838, y = -2546.392 }, { x = -6147.319, y = -2572.226 }, { x = -6162.592, y = -2625.454 }, { x = -6212.277, y = -2606.008 }, { x = -6226.130, y = -2541.008 }, { x = -6195.461, y = -2503.879 } }, area_id = 18, vision_type_list = { 32250003 } }
}

-- 触发器
triggers = {
	-- 地下遗迹房间A
	{ config_id = 1351001, name = "ENTER_REGION_351001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 地下遗迹房间B
	{ config_id = 1351002, name = "ENTER_REGION_351002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 地下遗迹房间C
	{ config_id = 1351003, name = "ENTER_REGION_351003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 遗迹上方
	{ config_id = 1351004, name = "ENTER_REGION_351004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 教学点山后
	{ config_id = 1351005, name = "ENTER_REGION_351005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 教学点山
	{ config_id = 1351006, name = "ENTER_REGION_351006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 雷灵山内部
	{ config_id = 1351007, name = "ENTER_REGION_351007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 雷灵山中
	{ config_id = 1351008, name = "ENTER_REGION_351008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 南部悬崖下方
	{ config_id = 1351009, name = "ENTER_REGION_351009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 雷灵山南部
	{ config_id = 1351010, name = "ENTER_REGION_351010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 狼窝迷雾区
	{ config_id = 1351011, name = "ENTER_REGION_351011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 后山迷雾区
	{ config_id = 1351012, name = "ENTER_REGION_351012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 小洞
	{ config_id = 1351013, name = "ENTER_REGION_351013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- 狼窝小山
	{ config_id = 1351014, name = "ENTER_REGION_351014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		gadgets = { },
		regions = { 351001, 351002, 351003, 351004, 351005, 351006, 351007, 351008, 351009, 351010, 351011, 351012, 351013, 351014 },
		triggers = { "ENTER_REGION_351001", "ENTER_REGION_351002", "ENTER_REGION_351003", "ENTER_REGION_351004", "ENTER_REGION_351005", "ENTER_REGION_351006", "ENTER_REGION_351007", "ENTER_REGION_351008", "ENTER_REGION_351009", "ENTER_REGION_351010", "ENTER_REGION_351011", "ENTER_REGION_351012", "ENTER_REGION_351013", "ENTER_REGION_351014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================