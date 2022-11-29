-- 基础信息
local base_info = {
	group_id = 133002479
}

-- DEFS_MISCS
--1.4风花节射气球活动-清泉镇分会场
local defs = {
        gallery_id = 1004,
        gadget_entry = 479002,
        balloon_clear_state = 201,
        suite_clear_index = 10,
        random_time_axis = {10,20,30,40,50,60,70,80,90,100,110,120,130,140},
        random_clear_time_axis = {17,27,37,47,57,67,77,87,97,107,117,127,137,147},
        static_start_suite = 2,
        static_suite_list = {3,4,5},
        static_time_axis = {35,70,100},
        static_clear_time_axis = {32,67,97,147},
        gadget_operator = 493001,
        operator_group_id = 133002493
}

local point_array_defs = {
        [479018] = {point_array_id = 300200003, point_id_list = {2,1}, route_type = 1},
        [479033] = {point_array_id = 300200003, point_id_list = {3,4}, route_type = 1},
        [479149] = {point_array_id = 300200004, point_id_list = {1,5}, route_type = 1},
        [479150] = {point_array_id = 300200004, point_id_list = {2,6}, route_type = 1},
        [479151] = {point_array_id = 300200004, point_id_list = {3,7}, route_type = 1},
        [479152] = {point_array_id = 300200004, point_id_list = {4,8}, route_type = 1},
        [479185] = {point_array_id = 300200005, point_id_list = {1,3}, route_type = 1},
        [479186] = {point_array_id = 300200005, point_id_list = {2,4}, route_type = 1},
        [479189] = {point_array_id = 300200006, point_id_list = {3,1}, route_type = 1},
        [479191] = {point_array_id = 300200006, point_id_list = {2,4}, route_type = 1},
        [479199] = {point_array_id = 300200007, point_id_list = {1,2}, route_type = 1},
        [479060] = {point_array_id = 300200001, point_id_list = {2,5,6,1}, route_type = 2},
        [479061] = {point_array_id = 300200001, point_id_list = {3,5,6,1,2}, route_type = 2},
        [479062] = {point_array_id = 300200001, point_id_list = {4,5,6,1,2}, route_type = 2},
        [479063] = {point_array_id = 300200001, point_id_list = {6,1,2,5}, route_type = 2},
        [479064] = {point_array_id = 300200001, point_id_list = {7,1,2,5,6}, route_type = 2},
        [479065] = {point_array_id = 300200001, point_id_list = {8,1,2,5,6}, route_type = 2},
        [479067] = {point_array_id = 300200002, point_id_list = {1,2,3,4}, route_type = 2},
        [479068] = {point_array_id = 300200002, point_id_list = {5,2,3,4,1}, route_type = 2},
        [479069] = {point_array_id = 300200002, point_id_list = {6,2,3,4,1}, route_type = 2},
        [479070] = {point_array_id = 300200002, point_id_list = {2,3,4,1}, route_type = 2},
        [479071] = {point_array_id = 300200002, point_id_list = {7,3,4,1,2}, route_type = 2},
        [479072] = {point_array_id = 300200002, point_id_list = {8,3,4,1,2}, route_type = 2},
        [479073] = {point_array_id = 300200002, point_id_list = {3,4,1,2}, route_type = 2},
        [479074] = {point_array_id = 300200002, point_id_list = {9,4,1,2,3}, route_type = 2},
        [479075] = {point_array_id = 300200002, point_id_list = {10,4,1,2,3}, route_type = 2},
        [479076] = {point_array_id = 300200002, point_id_list = {4,1,2,3}, route_type = 2},
        [479077] = {point_array_id = 300200002, point_id_list = {11,1,2,3,4}, route_type = 2},
        [479078] = {point_array_id = 300200002, point_id_list = {12,1,2,3,4}, route_type = 2}
}

local balloon_config = {
        { gadget_id = 70350174, min = 1, max = 2},
        { gadget_id = 70350175, min = 1, max = 1}
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
	[479001] = { config_id = 479001, gadget_id = 70350173, pos = { x = 1782.227, y = 247.208, z = -938.056 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479002] = { config_id = 479002, gadget_id = 70350173, pos = { x = 1788.123, y = 240.105, z = -937.884 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479003] = { config_id = 479003, gadget_id = 70350175, pos = { x = 1835.332, y = 247.761, z = -928.117 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479004] = { config_id = 479004, gadget_id = 70350173, pos = { x = 1788.123, y = 256.000, z = -937.884 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479005] = { config_id = 479005, gadget_id = 70350173, pos = { x = 1833.014, y = 247.779, z = -935.635 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479006] = { config_id = 479006, gadget_id = 70350173, pos = { x = 1837.916, y = 247.779, z = -919.817 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479007] = { config_id = 479007, gadget_id = 70350173, pos = { x = 1836.612, y = 258.190, z = -923.811 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479008] = { config_id = 479008, gadget_id = 70350173, pos = { x = 1835.332, y = 252.907, z = -928.117 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479009] = { config_id = 479009, gadget_id = 70350173, pos = { x = 1834.279, y = 258.183, z = -931.942 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479010] = { config_id = 479010, gadget_id = 70350173, pos = { x = 1833.014, y = 252.907, z = -935.635 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479011] = { config_id = 479011, gadget_id = 70350173, pos = { x = 1837.916, y = 252.907, z = -919.817 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479012] = { config_id = 479012, gadget_id = 70350173, pos = { x = 1778.151, y = 257.265, z = -939.028 }, rot = { x = 0.000, y = 179.743, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479013] = { config_id = 479013, gadget_id = 70350173, pos = { x = 1835.332, y = 238.287, z = -928.117 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479014] = { config_id = 479014, gadget_id = 70350173, pos = { x = 1837.065, y = 242.465, z = -923.871 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479015] = { config_id = 479015, gadget_id = 70350173, pos = { x = 1834.161, y = 242.465, z = -932.312 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479016] = { config_id = 479016, gadget_id = 70350173, pos = { x = 1801.096, y = 247.123, z = -937.428 }, rot = { x = 0.000, y = 179.884, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479017] = { config_id = 479017, gadget_id = 70350173, pos = { x = 1767.742, y = 245.078, z = -923.003 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479018] = { config_id = 479018, gadget_id = 70350172, pos = { x = 1774.283, y = 248.584, z = -937.560 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479019] = { config_id = 479019, gadget_id = 70350173, pos = { x = 1767.742, y = 251.986, z = -923.003 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479020] = { config_id = 479020, gadget_id = 70350173, pos = { x = 1769.015, y = 253.921, z = -924.719 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479021] = { config_id = 479021, gadget_id = 70350173, pos = { x = 1767.094, y = 253.921, z = -920.863 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479022] = { config_id = 479022, gadget_id = 70350173, pos = { x = 1769.504, y = 256.732, z = -926.525 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479023] = { config_id = 479023, gadget_id = 70350173, pos = { x = 1766.389, y = 256.732, z = -919.438 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479024] = { config_id = 479024, gadget_id = 70350173, pos = { x = 1775.070, y = 255.341, z = -894.266 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479025] = { config_id = 479025, gadget_id = 70350173, pos = { x = 1774.109, y = 258.112, z = -894.982 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479026] = { config_id = 479026, gadget_id = 70350173, pos = { x = 1770.495, y = 258.336, z = -897.676 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479027] = { config_id = 479027, gadget_id = 70350173, pos = { x = 1769.408, y = 254.902, z = -898.488 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479028] = { config_id = 479028, gadget_id = 70350173, pos = { x = 1770.422, y = 251.541, z = -897.731 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479029] = { config_id = 479029, gadget_id = 70350173, pos = { x = 1794.823, y = 248.393, z = -938.278 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479030] = { config_id = 479030, gadget_id = 70350173, pos = { x = 1774.058, y = 247.195, z = -895.020 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479031] = { config_id = 479031, gadget_id = 70350173, pos = { x = 1775.195, y = 244.351, z = -894.172 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479032] = { config_id = 479032, gadget_id = 70350173, pos = { x = 1774.437, y = 241.877, z = -894.738 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479033] = { config_id = 479033, gadget_id = 70350172, pos = { x = 1772.725, y = 240.096, z = -896.015 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479034] = { config_id = 479034, gadget_id = 70350173, pos = { x = 1770.716, y = 241.546, z = -897.513 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479035] = { config_id = 479035, gadget_id = 70350173, pos = { x = 1770.048, y = 244.401, z = -898.011 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479036] = { config_id = 479036, gadget_id = 70350173, pos = { x = 1768.588, y = 243.139, z = -924.885 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479037] = { config_id = 479037, gadget_id = 70350173, pos = { x = 1766.915, y = 243.139, z = -921.163 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479038] = { config_id = 479038, gadget_id = 70350173, pos = { x = 1769.621, y = 241.103, z = -926.787 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479039] = { config_id = 479039, gadget_id = 70350173, pos = { x = 1766.151, y = 241.103, z = -918.908 }, rot = { x = 0.000, y = 65.805, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479040] = { config_id = 479040, gadget_id = 70350173, pos = { x = 1831.972, y = 261.636, z = -932.831 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479041] = { config_id = 479041, gadget_id = 70350173, pos = { x = 1831.580, y = 259.318, z = -935.898 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479042] = { config_id = 479042, gadget_id = 70350173, pos = { x = 1831.350, y = 256.035, z = -937.702 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479043] = { config_id = 479043, gadget_id = 70350173, pos = { x = 1831.442, y = 252.502, z = -936.992 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479044] = { config_id = 479044, gadget_id = 70350173, pos = { x = 1831.698, y = 248.901, z = -934.989 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479045] = { config_id = 479045, gadget_id = 70350173, pos = { x = 1832.095, y = 246.018, z = -931.868 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479046] = { config_id = 479046, gadget_id = 70350173, pos = { x = 1832.457, y = 243.427, z = -929.040 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479047] = { config_id = 479047, gadget_id = 70350175, pos = { x = 1832.925, y = 241.282, z = -925.373 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479048] = { config_id = 479048, gadget_id = 70350173, pos = { x = 1833.314, y = 243.463, z = -922.320 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479049] = { config_id = 479049, gadget_id = 70350173, pos = { x = 1833.637, y = 246.172, z = -919.791 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479050] = { config_id = 479050, gadget_id = 70350173, pos = { x = 1833.925, y = 248.609, z = -917.546 }, rot = { x = 0.000, y = 104.243, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479051] = { config_id = 479051, gadget_id = 70350173, pos = { x = 1834.161, y = 251.645, z = -915.702 }, rot = { x = 0.000, y = 112.921, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479052] = { config_id = 479052, gadget_id = 70350173, pos = { x = 1834.285, y = 255.100, z = -914.729 }, rot = { x = 0.000, y = 111.776, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479053] = { config_id = 479053, gadget_id = 70350173, pos = { x = 1834.099, y = 258.585, z = -916.186 }, rot = { x = 0.000, y = 110.517, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479054] = { config_id = 479054, gadget_id = 70350173, pos = { x = 1833.856, y = 261.636, z = -918.081 }, rot = { x = 0.000, y = 113.213, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479055] = { config_id = 479055, gadget_id = 70350173, pos = { x = 1833.489, y = 259.999, z = -920.966 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479056] = { config_id = 479056, gadget_id = 70350172, pos = { x = 1833.115, y = 258.495, z = -923.899 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479057] = { config_id = 479057, gadget_id = 70350173, pos = { x = 1832.359, y = 259.999, z = -929.787 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479058] = { config_id = 479058, gadget_id = 70350172, pos = { x = 1832.699, y = 258.495, z = -927.126 }, rot = { x = 0.000, y = 97.274, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479059] = { config_id = 479059, gadget_id = 70350173, pos = { x = 1781.490, y = 248.393, z = -937.493 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479060] = { config_id = 479060, gadget_id = 70350174, pos = { x = 1752.890, y = 256.517, z = -896.518 }, rot = { x = 0.000, y = 289.416, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479061] = { config_id = 479061, gadget_id = 70350175, pos = { x = 1752.890, y = 253.517, z = -896.518 }, rot = { x = 0.000, y = 289.416, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479062] = { config_id = 479062, gadget_id = 70350174, pos = { x = 1752.890, y = 250.517, z = -896.518 }, rot = { x = 0.000, y = 289.416, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479063] = { config_id = 479063, gadget_id = 70350174, pos = { x = 1752.890, y = 238.517, z = -913.605 }, rot = { x = 0.000, y = 267.709, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479064] = { config_id = 479064, gadget_id = 70350175, pos = { x = 1752.890, y = 241.517, z = -913.605 }, rot = { x = 0.000, y = 267.709, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479065] = { config_id = 479065, gadget_id = 70350174, pos = { x = 1752.890, y = 244.517, z = -913.605 }, rot = { x = 0.000, y = 267.709, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479066] = { config_id = 479066, gadget_id = 70350173, pos = { x = 1801.049, y = 252.793, z = -937.548 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479067] = { config_id = 479067, gadget_id = 70350174, pos = { x = 1769.115, y = 246.645, z = -923.298 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479068] = { config_id = 479068, gadget_id = 70350174, pos = { x = 1769.258, y = 246.645, z = -920.451 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479069] = { config_id = 479069, gadget_id = 70350174, pos = { x = 1769.322, y = 246.645, z = -917.619 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479070] = { config_id = 479070, gadget_id = 70350174, pos = { x = 1773.336, y = 246.645, z = -890.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479071] = { config_id = 479071, gadget_id = 70350174, pos = { x = 1775.985, y = 246.645, z = -891.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479072] = { config_id = 479072, gadget_id = 70350174, pos = { x = 1778.608, y = 246.645, z = -891.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479073] = { config_id = 479073, gadget_id = 70350174, pos = { x = 1810.742, y = 246.645, z = -892.505 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479074] = { config_id = 479074, gadget_id = 70350174, pos = { x = 1810.340, y = 246.645, z = -894.933 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479075] = { config_id = 479075, gadget_id = 70350174, pos = { x = 1809.914, y = 246.645, z = -897.407 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479076] = { config_id = 479076, gadget_id = 70350174, pos = { x = 1806.646, y = 246.645, z = -924.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479077] = { config_id = 479077, gadget_id = 70350174, pos = { x = 1804.136, y = 246.645, z = -924.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479078] = { config_id = 479078, gadget_id = 70350174, pos = { x = 1801.633, y = 246.645, z = -924.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479079] = { config_id = 479079, gadget_id = 70350172, pos = { x = 1772.092, y = 246.645, z = -920.627 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479080] = { config_id = 479080, gadget_id = 70350172, pos = { x = 1775.837, y = 246.645, z = -893.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479081] = { config_id = 479081, gadget_id = 70350172, pos = { x = 1807.859, y = 246.645, z = -894.359 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479082] = { config_id = 479082, gadget_id = 70350172, pos = { x = 1804.105, y = 246.645, z = -921.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479083] = { config_id = 479083, gadget_id = 70350173, pos = { x = 1778.014, y = 251.304, z = -938.169 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479104] = { config_id = 479104, gadget_id = 70350173, pos = { x = 1774.055, y = 251.889, z = -895.023 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479105] = { config_id = 479105, gadget_id = 70350173, pos = { x = 1770.671, y = 247.208, z = -897.547 }, rot = { x = 0.000, y = 143.290, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479106] = { config_id = 479106, gadget_id = 70350173, pos = { x = 1773.302, y = 247.094, z = -938.296 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479107] = { config_id = 479107, gadget_id = 70350173, pos = { x = 1805.816, y = 257.020, z = -937.419 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479108] = { config_id = 479108, gadget_id = 70350173, pos = { x = 1811.274, y = 251.406, z = -878.101 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479109] = { config_id = 479109, gadget_id = 70350173, pos = { x = 1820.836, y = 242.512, z = -886.025 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479110] = { config_id = 479110, gadget_id = 70350173, pos = { x = 1815.939, y = 246.576, z = -881.967 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479111] = { config_id = 479111, gadget_id = 70350173, pos = { x = 1825.530, y = 246.576, z = -889.915 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479112] = { config_id = 479112, gadget_id = 70350173, pos = { x = 1820.836, y = 260.610, z = -886.025 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479113] = { config_id = 479113, gadget_id = 70350173, pos = { x = 1815.882, y = 256.951, z = -881.920 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479114] = { config_id = 479114, gadget_id = 70350173, pos = { x = 1825.642, y = 256.951, z = -890.007 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479115] = { config_id = 479115, gadget_id = 70350173, pos = { x = 1829.343, y = 251.421, z = -893.074 }, rot = { x = 0.000, y = 39.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479116] = { config_id = 479116, gadget_id = 70350175, pos = { x = 1787.737, y = 251.421, z = -882.603 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479117] = { config_id = 479117, gadget_id = 70350173, pos = { x = 1787.737, y = 237.023, z = -882.603 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479118] = { config_id = 479118, gadget_id = 70350173, pos = { x = 1795.744, y = 244.631, z = -881.628 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479119] = { config_id = 479119, gadget_id = 70350173, pos = { x = 1779.780, y = 244.631, z = -883.572 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479120] = { config_id = 479120, gadget_id = 70350173, pos = { x = 1795.667, y = 258.924, z = -881.638 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479121] = { config_id = 479121, gadget_id = 70350173, pos = { x = 1779.700, y = 258.924, z = -883.582 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479122] = { config_id = 479122, gadget_id = 70350173, pos = { x = 1787.612, y = 266.586, z = -882.618 }, rot = { x = 0.000, y = 353.058, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479123] = { config_id = 479123, gadget_id = 70350173, pos = { x = 1756.826, y = 251.368, z = -908.757 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479124] = { config_id = 479124, gadget_id = 70350173, pos = { x = 1756.826, y = 245.013, z = -908.757 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479125] = { config_id = 479125, gadget_id = 70350173, pos = { x = 1756.826, y = 238.190, z = -908.757 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479126] = { config_id = 479126, gadget_id = 70350173, pos = { x = 1756.826, y = 258.119, z = -908.757 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479127] = { config_id = 479127, gadget_id = 70350173, pos = { x = 1755.756, y = 256.162, z = -920.888 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479128] = { config_id = 479128, gadget_id = 70350173, pos = { x = 1756.198, y = 261.508, z = -915.886 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479129] = { config_id = 479129, gadget_id = 70350173, pos = { x = 1756.807, y = 266.578, z = -908.984 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479130] = { config_id = 479130, gadget_id = 70350173, pos = { x = 1757.340, y = 261.768, z = -902.946 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479131] = { config_id = 479131, gadget_id = 70350173, pos = { x = 1757.924, y = 256.107, z = -896.324 }, rot = { x = 0.000, y = 95.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479132] = { config_id = 479132, gadget_id = 70350173, pos = { x = 1796.311, y = 256.800, z = -937.675 }, rot = { x = 0.000, y = 358.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479133] = { config_id = 479133, gadget_id = 70350173, pos = { x = 1771.366, y = 254.896, z = -887.785 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479134] = { config_id = 479134, gadget_id = 70350173, pos = { x = 1770.638, y = 252.632, z = -889.892 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479135] = { config_id = 479135, gadget_id = 70350173, pos = { x = 1771.366, y = 258.878, z = -887.785 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479136] = { config_id = 479136, gadget_id = 70350173, pos = { x = 1770.602, y = 261.074, z = -889.999 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479137] = { config_id = 479137, gadget_id = 70350173, pos = { x = 1759.516, y = 260.861, z = -922.117 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479138] = { config_id = 479138, gadget_id = 70350173, pos = { x = 1758.825, y = 258.712, z = -924.121 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479139] = { config_id = 479139, gadget_id = 70350173, pos = { x = 1759.542, y = 252.855, z = -922.041 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479140] = { config_id = 479140, gadget_id = 70350173, pos = { x = 1758.825, y = 255.221, z = -924.121 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479141] = { config_id = 479141, gadget_id = 70350173, pos = { x = 1766.698, y = 271.457, z = -901.308 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479142] = { config_id = 479142, gadget_id = 70350173, pos = { x = 1763.615, y = 271.457, z = -910.242 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479143] = { config_id = 479143, gadget_id = 70350173, pos = { x = 1765.774, y = 274.701, z = -903.985 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479144] = { config_id = 479144, gadget_id = 70350173, pos = { x = 1764.458, y = 274.701, z = -907.800 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479145] = { config_id = 479145, gadget_id = 70350173, pos = { x = 1765.805, y = 239.153, z = -903.896 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479146] = { config_id = 479146, gadget_id = 70350173, pos = { x = 1763.658, y = 242.464, z = -910.118 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479147] = { config_id = 479147, gadget_id = 70350173, pos = { x = 1766.667, y = 242.464, z = -901.396 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479148] = { config_id = 479148, gadget_id = 70350173, pos = { x = 1764.470, y = 239.153, z = -907.766 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479149] = { config_id = 479149, gadget_id = 70350172, pos = { x = 1765.170, y = 253.691, z = -905.735 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479150] = { config_id = 479150, gadget_id = 70350172, pos = { x = 1765.170, y = 260.039, z = -905.735 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479151] = { config_id = 479151, gadget_id = 70350172, pos = { x = 1764.019, y = 257.052, z = -909.071 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479152] = { config_id = 479152, gadget_id = 70350172, pos = { x = 1766.126, y = 257.052, z = -902.965 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479153] = { config_id = 479153, gadget_id = 70350173, pos = { x = 1821.829, y = 253.190, z = -923.332 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479154] = { config_id = 479154, gadget_id = 70350173, pos = { x = 1823.881, y = 253.228, z = -917.388 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479155] = { config_id = 479155, gadget_id = 70350175, pos = { x = 1822.753, y = 249.947, z = -920.655 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479156] = { config_id = 479156, gadget_id = 70350173, pos = { x = 1823.881, y = 246.139, z = -917.388 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479157] = { config_id = 479157, gadget_id = 70350173, pos = { x = 1821.829, y = 246.102, z = -923.332 }, rot = { x = 0.000, y = 109.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479158] = { config_id = 479158, gadget_id = 70350173, pos = { x = 1815.532, y = 249.484, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479159] = { config_id = 479159, gadget_id = 70350172, pos = { x = 1815.532, y = 246.139, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479160] = { config_id = 479160, gadget_id = 70350173, pos = { x = 1815.532, y = 257.484, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479161] = { config_id = 479161, gadget_id = 70350172, pos = { x = 1815.532, y = 260.784, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479162] = { config_id = 479162, gadget_id = 70350173, pos = { x = 1813.416, y = 260.784, z = -943.820 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479163] = { config_id = 479163, gadget_id = 70350173, pos = { x = 1817.283, y = 246.237, z = -939.492 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479164] = { config_id = 479164, gadget_id = 70350173, pos = { x = 1813.528, y = 246.237, z = -943.477 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479165] = { config_id = 479165, gadget_id = 70350173, pos = { x = 1817.635, y = 260.784, z = -939.433 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479166] = { config_id = 479166, gadget_id = 70350173, pos = { x = 1815.532, y = 264.333, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479167] = { config_id = 479167, gadget_id = 70350173, pos = { x = 1815.532, y = 242.697, z = -941.579 }, rot = { x = 0.000, y = 133.815, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479168] = { config_id = 479168, gadget_id = 70350173, pos = { x = 1779.158, y = 243.790, z = -933.390 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479169] = { config_id = 479169, gadget_id = 70350172, pos = { x = 1782.690, y = 248.041, z = -935.062 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479170] = { config_id = 479170, gadget_id = 70350173, pos = { x = 1786.007, y = 251.425, z = -936.632 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479171] = { config_id = 479171, gadget_id = 70350172, pos = { x = 1788.893, y = 255.366, z = -938.584 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479172] = { config_id = 479172, gadget_id = 70350173, pos = { x = 1779.062, y = 255.366, z = -933.345 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479173] = { config_id = 479173, gadget_id = 70350173, pos = { x = 1779.062, y = 267.061, z = -933.345 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479174] = { config_id = 479174, gadget_id = 70350173, pos = { x = 1786.004, y = 259.018, z = -936.631 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479175] = { config_id = 479175, gadget_id = 70350172, pos = { x = 1782.621, y = 263.121, z = -935.030 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479176] = { config_id = 479176, gadget_id = 70350173, pos = { x = 1778.954, y = 247.947, z = -933.294 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479177] = { config_id = 479177, gadget_id = 70350172, pos = { x = 1779.014, y = 259.018, z = -933.322 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479178] = { config_id = 479178, gadget_id = 70350172, pos = { x = 1779.006, y = 251.559, z = -933.318 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479179] = { config_id = 479179, gadget_id = 70350173, pos = { x = 1779.006, y = 263.043, z = -933.318 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479180] = { config_id = 479180, gadget_id = 70350173, pos = { x = 1782.629, y = 255.366, z = -935.033 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479181] = { config_id = 479181, gadget_id = 70350173, pos = { x = 1782.629, y = 259.018, z = -935.033 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479182] = { config_id = 479182, gadget_id = 70350173, pos = { x = 1782.629, y = 251.559, z = -935.033 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479183] = { config_id = 479183, gadget_id = 70350173, pos = { x = 1786.059, y = 255.366, z = -936.657 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479184] = { config_id = 479184, gadget_id = 70350172, pos = { x = 1810.687, y = 249.380, z = -884.632 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479185] = { config_id = 479185, gadget_id = 70350174, pos = { x = 1807.385, y = 262.669, z = -883.069 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479186] = { config_id = 479186, gadget_id = 70350174, pos = { x = 1814.063, y = 237.964, z = -886.230 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479187] = { config_id = 479187, gadget_id = 70350173, pos = { x = 1810.687, y = 245.141, z = -884.632 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479188] = { config_id = 479188, gadget_id = 70350173, pos = { x = 1810.687, y = 253.852, z = -884.632 }, rot = { x = 0.000, y = 205.332, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479189] = { config_id = 479189, gadget_id = 70350174, pos = { x = 1787.720, y = 256.000, z = -944.732 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479190] = { config_id = 479190, gadget_id = 70350173, pos = { x = 1788.123, y = 248.393, z = -937.884 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479191] = { config_id = 479191, gadget_id = 70350174, pos = { x = 1781.336, y = 248.393, z = -940.104 }, rot = { x = 0.000, y = 183.372, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479192] = { config_id = 479192, gadget_id = 70350173, pos = { x = 1804.142, y = 248.098, z = -891.373 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479193] = { config_id = 479193, gadget_id = 70350173, pos = { x = 1804.132, y = 251.520, z = -891.367 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479194] = { config_id = 479194, gadget_id = 70350173, pos = { x = 1804.132, y = 244.384, z = -891.367 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479195] = { config_id = 479195, gadget_id = 70350173, pos = { x = 1806.953, y = 244.384, z = -893.043 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479196] = { config_id = 479196, gadget_id = 70350173, pos = { x = 1809.728, y = 244.384, z = -894.821 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479197] = { config_id = 479197, gadget_id = 70350173, pos = { x = 1809.728, y = 248.098, z = -894.821 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479198] = { config_id = 479198, gadget_id = 70350173, pos = { x = 1806.837, y = 251.520, z = -892.968 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479199] = { config_id = 479199, gadget_id = 70350172, pos = { x = 1815.979, y = 259.699, z = -898.786 }, rot = { x = 0.000, y = 212.471, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479200] = { config_id = 479200, gadget_id = 70350173, pos = { x = 1804.105, y = 250.231, z = -921.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479201] = { config_id = 479201, gadget_id = 70350173, pos = { x = 1807.859, y = 250.231, z = -894.359 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479202] = { config_id = 479202, gadget_id = 70350173, pos = { x = 1775.837, y = 250.231, z = -893.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479203] = { config_id = 479203, gadget_id = 70350173, pos = { x = 1772.092, y = 250.231, z = -920.627 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479204] = { config_id = 479204, gadget_id = 70350173, pos = { x = 1804.105, y = 242.984, z = -921.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479205] = { config_id = 479205, gadget_id = 70350173, pos = { x = 1807.859, y = 242.984, z = -894.359 }, rot = { x = 0.000, y = 284.979, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479206] = { config_id = 479206, gadget_id = 70350173, pos = { x = 1775.837, y = 242.984, z = -893.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 },
	[479207] = { config_id = 479207, gadget_id = 70350173, pos = { x = 1772.092, y = 242.984, z = -920.627 }, rot = { x = 0.000, y = 271.246, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 3 }
}

-- 区域
regions = {
	[479208] = { config_id = 479208, shape = RegionShape.SPHERE, radius = 100, pos = { x = 1792.758, y = 236.040, z = -914.638 }, area_id = 3 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479084, pos = { x = 1782.462, y = 241.420, z = -880.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479085, pos = { x = 1793.024, y = 242.811, z = -878.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479086, pos = { x = 1774.429, y = 244.940, z = -945.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479087, pos = { x = 1788.908, y = 247.162, z = -955.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479088, pos = { x = 1798.851, y = 247.412, z = -948.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479089, pos = { x = 1808.882, y = 244.545, z = -945.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479090, pos = { x = 1784.624, y = 240.168, z = -941.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479091, pos = { x = 1817.357, y = 239.022, z = -933.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479092, pos = { x = 1829.085, y = 241.182, z = -921.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479093, pos = { x = 1826.718, y = 239.226, z = -902.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479094, pos = { x = 1818.550, y = 244.635, z = -893.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479095, pos = { x = 1791.978, y = 241.936, z = -890.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479096, pos = { x = 1784.766, y = 237.084, z = -894.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479097, pos = { x = 1775.129, y = 237.231, z = -887.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479098, pos = { x = 1812.747, y = 236.244, z = -899.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479099, pos = { x = 1801.694, y = 238.796, z = -940.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479100, pos = { x = 1774.700, y = 240.152, z = -934.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479101, pos = { x = 1820.497, y = 240.194, z = -900.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479102, pos = { x = 1819.958, y = 241.019, z = -937.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	-- 1.4风花节射气球活动-清泉镇分会场
	{ config_id = 479103, pos = { x = 1816.081, y = 243.107, z = -944.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3, isRandom = 1 },
	{ config_id = 479209, pos = { x = 1787.789, y = 236.574, z = -911.216 }, rot = { x = 0.000, y = 290.545, z = 0.000 }, area_id = 3 },
	{ config_id = 479210, pos = { x = 1788.890, y = 235.507, z = -916.869 }, rot = { x = 0.000, y = 293.298, z = 0.000 }, area_id = 3 },
	{ config_id = 479211, pos = { x = 1792.025, y = 235.917, z = -910.284 }, rot = { x = 0.000, y = 298.253, z = 0.000 }, area_id = 3 },
	{ config_id = 479212, pos = { x = 1794.069, y = 235.810, z = -915.737 }, rot = { x = 0.000, y = 295.661, z = 0.000 }, area_id = 3 }
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
		regions = { 479208 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 479001, 479003, 479005, 479006, 479007, 479008, 479009, 479010, 479011, 479012, 479013, 479014, 479015, 479016, 479066, 479083, 479106, 479107, 479108, 479109, 479110, 479111, 479112, 479113, 479114, 479115, 479116, 479117, 479118, 479119, 479120, 479121, 479122, 479123, 479124, 479125, 479126, 479127, 479128, 479129, 479130, 479131, 479132 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 479133, 479134, 479135, 479136, 479137, 479138, 479139, 479140, 479141, 479142, 479143, 479144, 479145, 479146, 479147, 479148, 479149, 479150, 479151, 479152, 479153, 479154, 479155, 479156, 479157, 479158, 479159, 479160, 479161, 479162, 479163, 479164, 479165, 479166, 479167, 479168, 479169, 479170, 479171, 479172, 479173, 479174, 479175, 479176, 479177, 479178, 479179, 479180, 479181, 479182, 479183, 479184, 479185, 479186, 479187, 479188 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 479002, 479004, 479017, 479018, 479019, 479020, 479021, 479022, 479023, 479024, 479025, 479026, 479027, 479028, 479029, 479030, 479031, 479032, 479033, 479034, 479035, 479036, 479037, 479038, 479039, 479040, 479041, 479042, 479043, 479044, 479045, 479046, 479047, 479048, 479049, 479050, 479051, 479052, 479053, 479054, 479055, 479056, 479057, 479058, 479059, 479104, 479105, 479189, 479190, 479191, 479192, 479193, 479194, 479195, 479196, 479197, 479198, 479199 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 479060, 479061, 479062, 479063, 479064, 479065, 479067, 479068, 479069, 479070, 479071, 479072, 479073, 479074, 479075, 479076, 479077, 479078, 479079, 479080, 479081, 479082, 479200, 479201, 479202, 479203, 479204, 479205, 479206, 479207 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 479001, 479002, 479003, 479004, 479005, 479006, 479007, 479008, 479009, 479010, 479011, 479012, 479013, 479014, 479015, 479016, 479017, 479018, 479019, 479020, 479021, 479022, 479023, 479024, 479025, 479026, 479027, 479028, 479029, 479030, 479031, 479032, 479033, 479034, 479035, 479036, 479037, 479038, 479039, 479040, 479041, 479042, 479043, 479044, 479045, 479046, 479047, 479048, 479049, 479050, 479051, 479052, 479053, 479054, 479055, 479056, 479057, 479058, 479059, 479060, 479061, 479062, 479063, 479064, 479065, 479066, 479067, 479068, 479069, 479070, 479071, 479072, 479073, 479074, 479075, 479076, 479077, 479078, 479079, 479080, 479081, 479082, 479083, 479104, 479105, 479106, 479107, 479108, 479109, 479110, 479111, 479112, 479113, 479114, 479115, 479116, 479117, 479118, 479119, 479120, 479121, 479122, 479123, 479124, 479125, 479126, 479127, 479128, 479129, 479130, 479131, 479132, 479133, 479134, 479135, 479136, 479137, 479138, 479139, 479140, 479141, 479142, 479143, 479144, 479145, 479146, 479147, 479148, 479149, 479150, 479151, 479152, 479153, 479154, 479155, 479156, 479157, 479158, 479159, 479160, 479161, 479162, 479163, 479164, 479165, 479166, 479167, 479168, 479169, 479170, 479171, 479172, 479173, 479174, 479175, 479176, 479177, 479178, 479179, 479180, 479181, 479182, 479183, 479184, 479185, 479186, 479187, 479188, 479189, 479190, 479191, 479192, 479193, 479194, 479195, 479196, 479197, 479198, 479199, 479200, 479201, 479202, 479203, 479204, 479205, 479206, 479207 },
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

require "FleurFair_BalloonShoot"