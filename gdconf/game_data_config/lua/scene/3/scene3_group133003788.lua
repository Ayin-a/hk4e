-- 基础信息
local base_info = {
	group_id = 133003788
}

-- DEFS_MISCS
--1.4风花节射气球活动-望风山地分会场
local defs = {
        gallery_id = 1001,
        gadget_entry = 788007,
        balloon_clear_state = 201,
        suite_clear_index = 10,
        random_time_axis = {10,20,30,40,50,60,70,80,90,100,110,120,130,140},
        random_clear_time_axis = {17,27,37,47,57,67,77,87,97,107,117,127,137,147},
        static_start_suite = 2,
        static_suite_list = {3,4,5},
        static_time_axis = {35,70,100},
        static_clear_time_axis = {32,67,97,147},
        gadget_operator = 795001,
        operator_group_id = 133003795
}

local point_array_defs = {
        [788043] = {point_array_id = 300300002, point_id_list = {6,7,8,1}, route_type = 2},
        [788044] = {point_array_id = 300300002, point_id_list = {5,6,7,8,1}, route_type = 2},
        [788045] = {point_array_id = 300300002, point_id_list = {4,6,7,8,1}, route_type = 2},
        [788046] = {point_array_id = 300300002, point_id_list = {3,6,7,8,1}, route_type = 2},
        [788047] = {point_array_id = 300300002, point_id_list = {2,6,7,8,1}, route_type = 2},
        [788048] = {point_array_id = 300300002, point_id_list = {1,6,7,8}, route_type = 2},
        [788018] = {point_array_id = 300300011, point_id_list = {3,4}, route_type = 1},
        [788029] = {point_array_id = 300300011, point_id_list = {1,2}, route_type = 1},
        [788032] = {point_array_id = 300300001, point_id_list = {1,2}, route_type = 1},
        [788051] = {point_array_id = 300300004, point_id_list = {2,4}, route_type = 1},
        [788059] = {point_array_id = 300300003, point_id_list = {1,2}, route_type = 1},
        [788065] = {point_array_id = 300300004, point_id_list = {1,3}, route_type = 1},
        [788072] = {point_array_id = 300300012, point_id_list = {1,2}, route_type = 1},
        [788106] = {point_array_id = 300300012, point_id_list = {3,4}, route_type = 1},
        [788141] = {point_array_id = 300300013, point_id_list = {1,3}, route_type = 1},
        [788142] = {point_array_id = 300300013, point_id_list = {2,1}, route_type = 1},
        [788155] = {point_array_id = 300300014, point_id_list = {1,2}, route_type = 1},
        [788156] = {point_array_id = 300300014, point_id_list = {3,4}, route_type = 1},
        [788163] = {point_array_id = 300300015, point_id_list = {1,2}, route_type = 1},
        [788161] = {point_array_id = 300300015, point_id_list = {3,4}, route_type = 1}
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
	[788001] = { config_id = 788001, gadget_id = 70350173, pos = { x = 2876.167, y = 274.544, z = -1875.270 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788002] = { config_id = 788002, gadget_id = 70350173, pos = { x = 2868.934, y = 271.115, z = -1819.821 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788003] = { config_id = 788003, gadget_id = 70350173, pos = { x = 2879.604, y = 277.933, z = -1818.706 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788004] = { config_id = 788004, gadget_id = 70350173, pos = { x = 2891.927, y = 270.887, z = -1816.140 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788005] = { config_id = 788005, gadget_id = 70350173, pos = { x = 2864.054, y = 284.994, z = -1820.577 }, rot = { x = 0.000, y = 335.817, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788006] = { config_id = 788006, gadget_id = 70350173, pos = { x = 2891.927, y = 284.765, z = -1816.140 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788007] = { config_id = 788007, gadget_id = 70350173, pos = { x = 2915.952, y = 270.081, z = -1832.656 }, rot = { x = 0.000, y = 249.112, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788008] = { config_id = 788008, gadget_id = 70350173, pos = { x = 2914.541, y = 273.476, z = -1829.912 }, rot = { x = 0.000, y = 249.112, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788009] = { config_id = 788009, gadget_id = 70350173, pos = { x = 2858.149, y = 266.581, z = -1848.330 }, rot = { x = 0.000, y = 257.403, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788010] = { config_id = 788010, gadget_id = 70350173, pos = { x = 2916.579, y = 273.476, z = -1835.895 }, rot = { x = 0.000, y = 256.304, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788011] = { config_id = 788011, gadget_id = 70350172, pos = { x = 2915.952, y = 273.476, z = -1832.656 }, rot = { x = 0.000, y = 249.112, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788012] = { config_id = 788012, gadget_id = 70350173, pos = { x = 2915.952, y = 276.388, z = -1832.656 }, rot = { x = 0.000, y = 249.112, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788013] = { config_id = 788013, gadget_id = 70350173, pos = { x = 2859.145, y = 268.220, z = -1850.758 }, rot = { x = 0.000, y = 253.231, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788014] = { config_id = 788014, gadget_id = 70350173, pos = { x = 2858.040, y = 268.298, z = -1845.947 }, rot = { x = 0.000, y = 253.930, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788015] = { config_id = 788015, gadget_id = 70350172, pos = { x = 2858.149, y = 269.962, z = -1848.330 }, rot = { x = 0.000, y = 257.403, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788016] = { config_id = 788016, gadget_id = 70350173, pos = { x = 2858.040, y = 271.699, z = -1845.947 }, rot = { x = 0.000, y = 253.930, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788017] = { config_id = 788017, gadget_id = 70350173, pos = { x = 2859.145, y = 271.620, z = -1850.758 }, rot = { x = 0.000, y = 253.231, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788018] = { config_id = 788018, gadget_id = 70350175, pos = { x = 2858.149, y = 273.435, z = -1848.330 }, rot = { x = 0.000, y = 257.403, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788019] = { config_id = 788019, gadget_id = 70350173, pos = { x = 2890.150, y = 271.584, z = -1817.027 }, rot = { x = 0.000, y = 28.409, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788020] = { config_id = 788020, gadget_id = 70350173, pos = { x = 2890.180, y = 274.741, z = -1816.819 }, rot = { x = 0.000, y = 28.409, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788021] = { config_id = 788021, gadget_id = 70350173, pos = { x = 2866.802, y = 278.308, z = -1825.813 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788022] = { config_id = 788022, gadget_id = 70350173, pos = { x = 2889.960, y = 268.773, z = -1817.230 }, rot = { x = 0.000, y = 28.409, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788023] = { config_id = 788023, gadget_id = 70350173, pos = { x = 2895.738, y = 271.584, z = -1820.338 }, rot = { x = 0.000, y = 41.348, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788024] = { config_id = 788024, gadget_id = 70350173, pos = { x = 2895.814, y = 274.741, z = -1820.141 }, rot = { x = 0.000, y = 41.348, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788025] = { config_id = 788025, gadget_id = 70350173, pos = { x = 2870.114, y = 278.308, z = -1823.535 }, rot = { x = 0.000, y = 325.478, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788026] = { config_id = 788026, gadget_id = 70350173, pos = { x = 2863.421, y = 278.308, z = -1828.086 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788027] = { config_id = 788027, gadget_id = 70350173, pos = { x = 2865.272, y = 281.045, z = -1826.841 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788028] = { config_id = 788028, gadget_id = 70350173, pos = { x = 2868.672, y = 281.045, z = -1824.554 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788029] = { config_id = 788029, gadget_id = 70350172, pos = { x = 2893.026, y = 283.399, z = -1818.720 }, rot = { x = 0.000, y = 33.057, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788030] = { config_id = 788030, gadget_id = 70350173, pos = { x = 2892.374, y = 273.960, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788031] = { config_id = 788031, gadget_id = 70350173, pos = { x = 2887.992, y = 269.683, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788032] = { config_id = 788032, gadget_id = 70350174, pos = { x = 2882.715, y = 292.961, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788033] = { config_id = 788033, gadget_id = 70350173, pos = { x = 2895.888, y = 279.557, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788034] = { config_id = 788034, gadget_id = 70350173, pos = { x = 2882.673, y = 265.938, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788035] = { config_id = 788035, gadget_id = 70350173, pos = { x = 2876.892, y = 269.970, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788036] = { config_id = 788036, gadget_id = 70350173, pos = { x = 2873.635, y = 273.736, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788037] = { config_id = 788037, gadget_id = 70350173, pos = { x = 2871.537, y = 279.567, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788038] = { config_id = 788038, gadget_id = 70350173, pos = { x = 2874.874, y = 282.684, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788039] = { config_id = 788039, gadget_id = 70350173, pos = { x = 2891.839, y = 283.220, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788040] = { config_id = 788040, gadget_id = 70350175, pos = { x = 2878.952, y = 280.310, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788041] = { config_id = 788041, gadget_id = 70350175, pos = { x = 2886.802, y = 280.327, z = -1870.750 }, rot = { x = 0.000, y = 353.280, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788042] = { config_id = 788042, gadget_id = 70350173, pos = { x = 2883.273, y = 284.480, z = -1874.707 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788043] = { config_id = 788043, gadget_id = 70350174, pos = { x = 2857.862, y = 285.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788044] = { config_id = 788044, gadget_id = 70350175, pos = { x = 2857.862, y = 282.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788045] = { config_id = 788045, gadget_id = 70350174, pos = { x = 2857.862, y = 279.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788046] = { config_id = 788046, gadget_id = 70350174, pos = { x = 2857.862, y = 276.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788047] = { config_id = 788047, gadget_id = 70350172, pos = { x = 2857.862, y = 273.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788048] = { config_id = 788048, gadget_id = 70350174, pos = { x = 2857.862, y = 270.000, z = -1858.250 }, rot = { x = 0.000, y = 79.358, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788049] = { config_id = 788049, gadget_id = 70350173, pos = { x = 2868.613, y = 278.579, z = -1876.317 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788050] = { config_id = 788050, gadget_id = 70350173, pos = { x = 2868.243, y = 275.899, z = -1827.739 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788051] = { config_id = 788051, gadget_id = 70350175, pos = { x = 2863.151, y = 275.899, z = -1831.729 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788052] = { config_id = 788052, gadget_id = 70350174, pos = { x = 2865.656, y = 279.417, z = -1829.772 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788053] = { config_id = 788053, gadget_id = 70350173, pos = { x = 2865.656, y = 275.899, z = -1829.771 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788054] = { config_id = 788054, gadget_id = 70350173, pos = { x = 2875.238, y = 275.899, z = -1821.993 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788055] = { config_id = 788055, gadget_id = 70350173, pos = { x = 2860.331, y = 279.417, z = -1867.911 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788056] = { config_id = 788056, gadget_id = 70350173, pos = { x = 2863.151, y = 282.715, z = -1831.729 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788057] = { config_id = 788057, gadget_id = 70350173, pos = { x = 2897.041, y = 272.729, z = -1872.041 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788059] = { config_id = 788059, gadget_id = 70350172, pos = { x = 2875.238, y = 271.899, z = -1821.993 }, rot = { x = 0.000, y = 157.292, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788061] = { config_id = 788061, gadget_id = 70350173, pos = { x = 2870.147, y = 282.758, z = -1825.983 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788062] = { config_id = 788062, gadget_id = 70350174, pos = { x = 2872.651, y = 279.417, z = -1824.025 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788063] = { config_id = 788063, gadget_id = 70350173, pos = { x = 2872.651, y = 282.715, z = -1824.025 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788064] = { config_id = 788064, gadget_id = 70350173, pos = { x = 2875.238, y = 279.417, z = -1821.993 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788065] = { config_id = 788065, gadget_id = 70350175, pos = { x = 2875.238, y = 282.715, z = -1821.993 }, rot = { x = 0.000, y = 152.303, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788070] = { config_id = 788070, gadget_id = 70350173, pos = { x = 2895.507, y = 268.773, z = -1820.493 }, rot = { x = 0.000, y = 41.348, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788072] = { config_id = 788072, gadget_id = 70350174, pos = { x = 2926.511, y = 283.225, z = -1867.692 }, rot = { x = 0.000, y = 300.244, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788084] = { config_id = 788084, gadget_id = 70350173, pos = { x = 2890.413, y = 278.752, z = -1872.943 }, rot = { x = 0.000, y = 351.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788085] = { config_id = 788085, gadget_id = 70350173, pos = { x = 2904.492, y = 272.463, z = -1834.730 }, rot = { x = 0.000, y = 245.931, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788086] = { config_id = 788086, gadget_id = 70350173, pos = { x = 2914.310, y = 284.994, z = -1826.179 }, rot = { x = 0.000, y = 243.238, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788087] = { config_id = 788087, gadget_id = 70350173, pos = { x = 2903.611, y = 263.419, z = -1846.331 }, rot = { x = 0.000, y = 277.663, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788088] = { config_id = 788088, gadget_id = 70350173, pos = { x = 2910.568, y = 267.331, z = -1858.907 }, rot = { x = 0.000, y = 286.394, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788089] = { config_id = 788089, gadget_id = 70350173, pos = { x = 2921.367, y = 277.021, z = -1841.831 }, rot = { x = 0.000, y = 272.063, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788090] = { config_id = 788090, gadget_id = 70350173, pos = { x = 2932.368, y = 283.417, z = -1855.533 }, rot = { x = 0.000, y = 286.394, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788092] = { config_id = 788092, gadget_id = 70350173, pos = { x = 2838.101, y = 272.463, z = -1864.386 }, rot = { x = 0.000, y = 245.931, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788093] = { config_id = 788093, gadget_id = 70350173, pos = { x = 2847.919, y = 284.994, z = -1855.835 }, rot = { x = 0.000, y = 243.238, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788094] = { config_id = 788094, gadget_id = 70350173, pos = { x = 2837.220, y = 269.970, z = -1875.987 }, rot = { x = 0.000, y = 231.567, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788095] = { config_id = 788095, gadget_id = 70350173, pos = { x = 2856.850, y = 267.331, z = -1864.974 }, rot = { x = 0.000, y = 228.586, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788096] = { config_id = 788096, gadget_id = 70350173, pos = { x = 2854.976, y = 277.021, z = -1871.487 }, rot = { x = 0.000, y = 225.439, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788097] = { config_id = 788097, gadget_id = 70350173, pos = { x = 2861.328, y = 272.018, z = -1876.867 }, rot = { x = 0.000, y = 205.084, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788098] = { config_id = 788098, gadget_id = 70350173, pos = { x = 2841.958, y = 273.463, z = -1844.014 }, rot = { x = 0.000, y = 275.281, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788099] = { config_id = 788099, gadget_id = 70350173, pos = { x = 2843.243, y = 266.983, z = -1830.115 }, rot = { x = 0.000, y = 295.735, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788100] = { config_id = 788100, gadget_id = 70350173, pos = { x = 2906.854, y = 272.729, z = -1866.048 }, rot = { x = 0.000, y = 310.800, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788101] = { config_id = 788101, gadget_id = 70350172, pos = { x = 2866.883, y = 284.471, z = -1825.757 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788102] = { config_id = 788102, gadget_id = 70350173, pos = { x = 2893.026, y = 268.454, z = -1818.720 }, rot = { x = 0.000, y = 33.057, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788103] = { config_id = 788103, gadget_id = 70350173, pos = { x = 2868.672, y = 274.611, z = -1824.554 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788104] = { config_id = 788104, gadget_id = 70350173, pos = { x = 2865.272, y = 274.611, z = -1826.841 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788105] = { config_id = 788105, gadget_id = 70350175, pos = { x = 2866.883, y = 270.547, z = -1825.757 }, rot = { x = 0.000, y = 326.080, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788106] = { config_id = 788106, gadget_id = 70350174, pos = { x = 2917.997, y = 271.022, z = -1884.095 }, rot = { x = 0.000, y = 319.029, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788107] = { config_id = 788107, gadget_id = 70350173, pos = { x = 2847.919, y = 277.860, z = -1855.835 }, rot = { x = 0.000, y = 243.238, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788108] = { config_id = 788108, gadget_id = 70350173, pos = { x = 2854.647, y = 274.995, z = -1867.362 }, rot = { x = 0.000, y = 227.198, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788109] = { config_id = 788109, gadget_id = 70350173, pos = { x = 2854.839, y = 277.860, z = -1845.090 }, rot = { x = 0.000, y = 266.245, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788110] = { config_id = 788110, gadget_id = 70350173, pos = { x = 2815.243, y = 284.458, z = -1836.571 }, rot = { x = 0.000, y = 270.677, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788111] = { config_id = 788111, gadget_id = 70350173, pos = { x = 2833.875, y = 277.068, z = -1875.724 }, rot = { x = 0.000, y = 230.927, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788112] = { config_id = 788112, gadget_id = 70350174, pos = { x = 2866.483, y = 274.995, z = -1904.329 }, rot = { x = 0.000, y = 191.556, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788113] = { config_id = 788113, gadget_id = 70350173, pos = { x = 2879.744, y = 279.796, z = -1862.045 }, rot = { x = 0.000, y = 185.349, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788114] = { config_id = 788114, gadget_id = 70350173, pos = { x = 2888.373, y = 276.683, z = -1869.303 }, rot = { x = 0.000, y = 157.762, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788115] = { config_id = 788115, gadget_id = 70350173, pos = { x = 2880.093, y = 257.801, z = -1871.559 }, rot = { x = 0.000, y = 182.920, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788116] = { config_id = 788116, gadget_id = 70350173, pos = { x = 2889.630, y = 269.084, z = -1861.212 }, rot = { x = 0.000, y = 150.020, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788117] = { config_id = 788117, gadget_id = 70350173, pos = { x = 2869.785, y = 269.084, z = -1872.811 }, rot = { x = 0.000, y = 189.983, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788118] = { config_id = 788118, gadget_id = 70350173, pos = { x = 2911.899, y = 269.084, z = -1861.707 }, rot = { x = 0.000, y = 120.711, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788119] = { config_id = 788119, gadget_id = 70350175, pos = { x = 2906.559, y = 273.513, z = -1858.535 }, rot = { x = 0.000, y = 120.711, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788120] = { config_id = 788120, gadget_id = 70350173, pos = { x = 2900.167, y = 278.012, z = -1854.738 }, rot = { x = 0.000, y = 120.711, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788121] = { config_id = 788121, gadget_id = 70350173, pos = { x = 2896.229, y = 273.137, z = -1852.399 }, rot = { x = 0.000, y = 120.711, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788122] = { config_id = 788122, gadget_id = 70350173, pos = { x = 2891.900, y = 269.079, z = -1849.828 }, rot = { x = 0.000, y = 120.711, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788123] = { config_id = 788123, gadget_id = 70350173, pos = { x = 2905.712, y = 276.596, z = -1835.969 }, rot = { x = 0.000, y = 71.174, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788124] = { config_id = 788124, gadget_id = 70350173, pos = { x = 2847.919, y = 284.994, z = -1855.835 }, rot = { x = 0.000, y = 243.238, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788125] = { config_id = 788125, gadget_id = 70350173, pos = { x = 2911.942, y = 270.117, z = -1825.972 }, rot = { x = 0.000, y = 71.174, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788126] = { config_id = 788126, gadget_id = 70350173, pos = { x = 2916.786, y = 270.117, z = -1840.182 }, rot = { x = 0.000, y = 71.174, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788127] = { config_id = 788127, gadget_id = 70350173, pos = { x = 2901.012, y = 270.117, z = -1845.560 }, rot = { x = 0.000, y = 71.174, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788128] = { config_id = 788128, gadget_id = 70350173, pos = { x = 2896.168, y = 270.117, z = -1831.350 }, rot = { x = 0.000, y = 71.174, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788129] = { config_id = 788129, gadget_id = 70350173, pos = { x = 2876.517, y = 275.342, z = -1816.076 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788130] = { config_id = 788130, gadget_id = 70350173, pos = { x = 2873.142, y = 275.342, z = -1816.728 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788131] = { config_id = 788131, gadget_id = 70350173, pos = { x = 2876.597, y = 278.832, z = -1816.083 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788132] = { config_id = 788132, gadget_id = 70350173, pos = { x = 2872.948, y = 278.832, z = -1816.765 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788133] = { config_id = 788133, gadget_id = 70350173, pos = { x = 2876.522, y = 271.870, z = -1816.063 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788134] = { config_id = 788134, gadget_id = 70350173, pos = { x = 2873.147, y = 271.870, z = -1816.714 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788135] = { config_id = 788135, gadget_id = 70350173, pos = { x = 2886.327, y = 271.853, z = -1814.465 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788136] = { config_id = 788136, gadget_id = 70350173, pos = { x = 2882.544, y = 271.853, z = -1815.117 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788137] = { config_id = 788137, gadget_id = 70350173, pos = { x = 2886.349, y = 275.342, z = -1814.430 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788138] = { config_id = 788138, gadget_id = 70350173, pos = { x = 2882.565, y = 275.342, z = -1815.082 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788139] = { config_id = 788139, gadget_id = 70350173, pos = { x = 2886.294, y = 278.744, z = -1814.405 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788140] = { config_id = 788140, gadget_id = 70350173, pos = { x = 2882.510, y = 278.744, z = -1815.057 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788141] = { config_id = 788141, gadget_id = 70350174, pos = { x = 2879.454, y = 275.005, z = -1815.555 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788142] = { config_id = 788142, gadget_id = 70350172, pos = { x = 2879.454, y = 290.655, z = -1815.555 }, rot = { x = 0.000, y = 353.754, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788143] = { config_id = 788143, gadget_id = 70350173, pos = { x = 2863.151, y = 279.417, z = -1831.729 }, rot = { x = 0.000, y = 140.336, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788144] = { config_id = 788144, gadget_id = 70350173, pos = { x = 2860.331, y = 275.568, z = -1867.910 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788145] = { config_id = 788145, gadget_id = 70350173, pos = { x = 2863.597, y = 275.568, z = -1868.183 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788146] = { config_id = 788146, gadget_id = 70350173, pos = { x = 2863.597, y = 279.417, z = -1868.183 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788147] = { config_id = 788147, gadget_id = 70350173, pos = { x = 2890.888, y = 275.568, z = -1870.462 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788148] = { config_id = 788148, gadget_id = 70350173, pos = { x = 2894.154, y = 275.568, z = -1870.735 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788149] = { config_id = 788149, gadget_id = 70350173, pos = { x = 2894.154, y = 279.417, z = -1870.735 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788150] = { config_id = 788150, gadget_id = 70350173, pos = { x = 2890.888, y = 279.417, z = -1870.462 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788151] = { config_id = 788151, gadget_id = 70350173, pos = { x = 2869.802, y = 275.568, z = -1868.701 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788152] = { config_id = 788152, gadget_id = 70350173, pos = { x = 2873.068, y = 275.568, z = -1868.974 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788153] = { config_id = 788153, gadget_id = 70350173, pos = { x = 2873.068, y = 279.417, z = -1868.974 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788154] = { config_id = 788154, gadget_id = 70350173, pos = { x = 2869.802, y = 279.417, z = -1868.701 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788155] = { config_id = 788155, gadget_id = 70350172, pos = { x = 2866.453, y = 290.902, z = -1868.422 }, rot = { x = 0.000, y = 203.801, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788156] = { config_id = 788156, gadget_id = 70350172, pos = { x = 2887.264, y = 263.622, z = -1870.160 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788157] = { config_id = 788157, gadget_id = 70350173, pos = { x = 2883.899, y = 279.417, z = -1869.680 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788158] = { config_id = 788158, gadget_id = 70350173, pos = { x = 2880.633, y = 275.568, z = -1869.407 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788159] = { config_id = 788159, gadget_id = 70350173, pos = { x = 2883.899, y = 275.568, z = -1869.680 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788160] = { config_id = 788160, gadget_id = 70350173, pos = { x = 2880.633, y = 279.417, z = -1869.407 }, rot = { x = 0.000, y = 184.774, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788161] = { config_id = 788161, gadget_id = 70350174, pos = { x = 2911.004, y = 279.417, z = -1848.404 }, rot = { x = 0.000, y = 264.120, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788162] = { config_id = 788162, gadget_id = 70350172, pos = { x = 2910.300, y = 279.417, z = -1821.738 }, rot = { x = 0.000, y = 234.847, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788163] = { config_id = 788163, gadget_id = 70350174, pos = { x = 2890.309, y = 279.417, z = -1806.952 }, rot = { x = 0.000, y = 197.123, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788164] = { config_id = 788164, gadget_id = 70350173, pos = { x = 2911.004, y = 286.534, z = -1848.404 }, rot = { x = 0.000, y = 264.120, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788165] = { config_id = 788165, gadget_id = 70350173, pos = { x = 2910.300, y = 286.534, z = -1821.738 }, rot = { x = 0.000, y = 234.847, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788166] = { config_id = 788166, gadget_id = 70350173, pos = { x = 2890.309, y = 286.534, z = -1806.952 }, rot = { x = 0.000, y = 197.123, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788167] = { config_id = 788167, gadget_id = 70350173, pos = { x = 2911.004, y = 272.375, z = -1848.404 }, rot = { x = 0.000, y = 264.120, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788168] = { config_id = 788168, gadget_id = 70350173, pos = { x = 2910.300, y = 272.375, z = -1821.738 }, rot = { x = 0.000, y = 234.847, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[788169] = { config_id = 788169, gadget_id = 70350173, pos = { x = 2890.309, y = 272.375, z = -1806.952 }, rot = { x = 0.000, y = 197.123, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 }
}

-- 区域
regions = {
	[788170] = { config_id = 788170, shape = RegionShape.SPHERE, radius = 100, pos = { x = 2880.511, y = 270.615, z = -1844.424 }, area_id = 1 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788058, pos = { x = 2874.541, y = 276.663, z = -1842.820 }, rot = { x = 0.000, y = 349.460, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788060, pos = { x = 2886.269, y = 276.458, z = -1841.731 }, rot = { x = 0.000, y = 351.385, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788066, pos = { x = 2879.808, y = 275.941, z = -1842.319 }, rot = { x = 0.000, y = 351.094, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788067, pos = { x = 2881.949, y = 280.000, z = -1843.943 }, rot = { x = 0.000, y = 343.206, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788068, pos = { x = 2867.109, y = 268.945, z = -1823.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788069, pos = { x = 2890.922, y = 264.431, z = -1829.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788071, pos = { x = 2881.955, y = 268.602, z = -1860.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788073, pos = { x = 2887.845, y = 271.853, z = -1866.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788074, pos = { x = 2874.882, y = 267.791, z = -1863.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788075, pos = { x = 2929.014, y = 269.418, z = -1845.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788076, pos = { x = 2925.983, y = 262.781, z = -1830.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788077, pos = { x = 2884.205, y = 268.932, z = -1807.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788078, pos = { x = 2891.000, y = 273.105, z = -1801.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788079, pos = { x = 2872.069, y = 265.127, z = -1823.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788080, pos = { x = 2867.511, y = 264.586, z = -1826.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788081, pos = { x = 2874.267, y = 266.000, z = -1817.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788082, pos = { x = 2887.326, y = 268.122, z = -1827.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788083, pos = { x = 2901.289, y = 269.142, z = -1843.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-望风山地分会场
	{ config_id = 788091, pos = { x = 2887.845, y = 271.853, z = -1866.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	{ config_id = 788171, pos = { x = 2878.302, y = 270.617, z = -1845.036 }, rot = { x = 0.000, y = 172.148, z = 0.000 }, area_id = 1 },
	{ config_id = 788172, pos = { x = 2883.375, y = 270.617, z = -1844.213 }, rot = { x = 0.000, y = 168.657, z = 0.000 }, area_id = 1 },
	{ config_id = 788173, pos = { x = 2877.999, y = 270.617, z = -1841.519 }, rot = { x = 0.000, y = 351.998, z = 0.000 }, area_id = 1 },
	{ config_id = 788174, pos = { x = 2882.822, y = 270.617, z = -1840.859 }, rot = { x = 0.000, y = 352.777, z = 0.000 }, area_id = 1 }
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
		regions = { 788170 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 788001, 788002, 788003, 788004, 788005, 788006, 788042, 788049, 788057, 788084, 788085, 788086, 788087, 788088, 788089, 788090, 788092, 788093, 788094, 788095, 788096, 788097, 788098, 788099, 788100 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 788007, 788008, 788009, 788010, 788011, 788012, 788013, 788014, 788015, 788016, 788017, 788018, 788019, 788020, 788021, 788022, 788023, 788024, 788025, 788026, 788027, 788028, 788029, 788030, 788031, 788032, 788033, 788034, 788035, 788036, 788037, 788038, 788039, 788040, 788041, 788070, 788072, 788101, 788102, 788103, 788104, 788105, 788106 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 788107, 788108, 788109, 788110, 788111, 788112, 788113, 788114, 788115, 788116, 788117, 788118, 788119, 788120, 788121, 788122, 788123, 788124, 788125, 788126, 788127, 788128, 788129, 788130, 788131, 788132, 788133, 788134, 788135, 788136, 788137, 788138, 788139, 788140, 788141, 788142 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 788043, 788044, 788045, 788046, 788047, 788048, 788050, 788051, 788052, 788053, 788054, 788055, 788056, 788059, 788061, 788062, 788063, 788064, 788065, 788143, 788144, 788145, 788146, 788147, 788148, 788149, 788150, 788151, 788152, 788153, 788154, 788155, 788156, 788157, 788158, 788159, 788160, 788161, 788162, 788163, 788164, 788165, 788166, 788167, 788168, 788169 },
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
		gadgets = { 788001, 788002, 788003, 788004, 788005, 788006, 788007, 788008, 788009, 788010, 788011, 788012, 788013, 788014, 788015, 788016, 788017, 788018, 788019, 788020, 788021, 788022, 788023, 788024, 788025, 788026, 788027, 788028, 788029, 788030, 788031, 788032, 788033, 788034, 788035, 788036, 788037, 788038, 788039, 788040, 788041, 788042, 788043, 788044, 788045, 788046, 788047, 788048, 788049, 788050, 788051, 788052, 788053, 788054, 788055, 788056, 788057, 788059, 788061, 788062, 788063, 788064, 788065, 788070, 788072, 788084, 788085, 788086, 788087, 788088, 788089, 788090, 788092, 788093, 788094, 788095, 788096, 788097, 788098, 788099, 788100, 788101, 788102, 788103, 788104, 788105, 788106, 788107, 788108, 788109, 788110, 788111, 788112, 788113, 788114, 788115, 788116, 788117, 788118, 788119, 788120, 788121, 788122, 788123, 788124, 788125, 788126, 788127, 788128, 788129, 788130, 788131, 788132, 788133, 788134, 788135, 788136, 788137, 788138, 788139, 788140, 788141, 788142 },
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