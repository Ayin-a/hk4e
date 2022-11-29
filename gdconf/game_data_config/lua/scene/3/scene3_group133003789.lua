-- 基础信息
local base_info = {
	group_id = 133003789
}

-- DEFS_MISCS
--1.4风花节射气球活动-千风神殿分会场
local defs = {
        gallery_id = 1003,
        gadget_entry = 789002,
        balloon_clear_state = 201,
        suite_clear_index = 10,
        random_time_axis = {10,20,30,40,50,60,70,80,90,100,110,120,130,140},
        random_clear_time_axis = {17,27,37,47,57,67,77,87,97,107,117,127,137,147},
        static_start_suite = 2,
        static_suite_list = {3,4,5},
        static_time_axis = {35,70,100},
        static_clear_time_axis = {32,67,97,147},
        gadget_operator = 796001,
        operator_group_id = 133003796
}

local point_array_defs = {
        [789017] = {point_array_id = 300300005, point_id_list = {1,2,3,4,5,6,7,8}, route_type = 2},
        [789018] = {point_array_id = 300300005, point_id_list = {3,4,5,6,7,8,1,2}, route_type = 2},
        [789019] = {point_array_id = 300300005, point_id_list = {5,6,7,8,1,2,3,4}, route_type = 2},
        [789020] = {point_array_id = 300300005, point_id_list = {7,8,1,2,3,4,5,6}, route_type = 2},
        [789024] = {point_array_id = 300300006, point_id_list = {1,2,3,4}, route_type = 2},
        [789021] = {point_array_id = 300300006, point_id_list = {2,3,4,1}, route_type = 2},
        [789022] = {point_array_id = 300300006, point_id_list = {3,4,1,2}, route_type = 2},
        [789023] = {point_array_id = 300300006, point_id_list = {4,1,2,3}, route_type = 2},
        [789039] = {point_array_id = 300300007, point_id_list = {11,12,13}, route_type = 2},
        [789058] = {point_array_id = 300300010, point_id_list = {1,2,3,4,5,6}, route_type = 2},
        [789059] = {point_array_id = 300300010, point_id_list = {7,8,9,10,11,12}, route_type = 2},
        [789060] = {point_array_id = 300300010, point_id_list = {13,14,15,16,17,18}, route_type = 2},
        [789142] = {point_array_id = 300300017, point_id_list = {1,2,3,4}, route_type = 2},
        [789143] = {point_array_id = 300300017, point_id_list = {2,3,4,1}, route_type = 2},
        [789144] = {point_array_id = 300300017, point_id_list = {3,4,1,2}, route_type = 2},
        [789145] = {point_array_id = 300300017, point_id_list = {4,1,2,3}, route_type = 2},
        [789146] = {point_array_id = 300300018, point_id_list = {1,2,3,4}, route_type = 2},
        [789147] = {point_array_id = 300300018, point_id_list = {2,3,4,1}, route_type = 2},
        [789148] = {point_array_id = 300300018, point_id_list = {4,1,2,3}, route_type = 2},
        [789149] = {point_array_id = 300300018, point_id_list = {3,4,1,2}, route_type = 2},
        [789151] = {point_array_id = 300300020, point_id_list = {1,2,3,4,5,6,7}, route_type = 1},
        [789026] = {point_array_id = 300300007, point_id_list = {1,4}, route_type = 1},
        [789027] = {point_array_id = 300300007, point_id_list = {2,5}, route_type = 1},
        [789028] = {point_array_id = 300300007, point_id_list = {3,6}, route_type = 1},
        [789030] = {point_array_id = 300300007, point_id_list = {7,9}, route_type = 1},
        [789031] = {point_array_id = 300300007, point_id_list = {8,10}, route_type = 1},
        [789047] = {point_array_id = 300300008, point_id_list = {1,2}, route_type = 1},
        [789046] = {point_array_id = 300300008, point_id_list = {3,4}, route_type = 1},
        [789049] = {point_array_id = 300300009, point_id_list = {1,2}, route_type = 1},
        [789050] = {point_array_id = 300300009, point_id_list = {3,4}, route_type = 1},
        [789054] = {point_array_id = 300300009, point_id_list = {5,6}, route_type = 1},
        [789051] = {point_array_id = 300300009, point_id_list = {7,8}, route_type = 1},
        [789052] = {point_array_id = 300300009, point_id_list = {9,10}, route_type = 1},
        [789055] = {point_array_id = 300300009, point_id_list = {11,12}, route_type = 1},
        [789056] = {point_array_id = 300300009, point_id_list = {13,14}, route_type = 1},
        [789061] = {point_array_id = 300300010, point_id_list = {19,20}, route_type = 1},
        [789101] = {point_array_id = 300300016, point_id_list = {1,2}, route_type = 1},
        [789141] = {point_array_id = 300300022, point_id_list = {1,2}, route_type = 1},
        [789150] = {point_array_id = 300300019, point_id_list = {1,2,3,4,5}, route_type = 1},
        [789152] = {point_array_id = 300300021, point_id_list = {1,5}, route_type = 1},
        [789153] = {point_array_id = 300300021, point_id_list = {2,6}, route_type = 1},
        [789154] = {point_array_id = 300300021, point_id_list = {3,7}, route_type = 1},
        [789155] = {point_array_id = 300300021, point_id_list = {4,8}, route_type = 1}
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
	[789001] = { config_id = 789001, gadget_id = 70350173, pos = { x = 2225.439, y = 262.851, z = -1570.866 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789002] = { config_id = 789002, gadget_id = 70350173, pos = { x = 2256.753, y = 263.966, z = -1573.785 }, rot = { x = 0.000, y = 85.596, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789003] = { config_id = 789003, gadget_id = 70350173, pos = { x = 2252.176, y = 251.905, z = -1565.091 }, rot = { x = 0.000, y = 48.291, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789004] = { config_id = 789004, gadget_id = 70350173, pos = { x = 2256.464, y = 251.905, z = -1574.183 }, rot = { x = 0.000, y = 82.801, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789005] = { config_id = 789005, gadget_id = 70350173, pos = { x = 2251.836, y = 263.966, z = -1565.469 }, rot = { x = 0.000, y = 49.632, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789006] = { config_id = 789006, gadget_id = 70350173, pos = { x = 2254.156, y = 258.144, z = -1570.014 }, rot = { x = 0.000, y = 71.482, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789007] = { config_id = 789007, gadget_id = 70350172, pos = { x = 2253.426, y = 254.568, z = -1586.193 }, rot = { x = 0.000, y = 296.830, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789008] = { config_id = 789008, gadget_id = 70350173, pos = { x = 2253.426, y = 250.976, z = -1586.193 }, rot = { x = 0.000, y = 296.830, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789009] = { config_id = 789009, gadget_id = 70350173, pos = { x = 2254.583, y = 254.568, z = -1582.978 }, rot = { x = 0.000, y = 283.419, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789010] = { config_id = 789010, gadget_id = 70350173, pos = { x = 2251.778, y = 254.568, z = -1589.028 }, rot = { x = 0.000, y = 316.920, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789011] = { config_id = 789011, gadget_id = 70350173, pos = { x = 2253.426, y = 258.092, z = -1586.193 }, rot = { x = 0.000, y = 296.830, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789012] = { config_id = 789012, gadget_id = 70350173, pos = { x = 2239.718, y = 262.851, z = -1563.218 }, rot = { x = 0.000, y = 182.028, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789013] = { config_id = 789013, gadget_id = 70350173, pos = { x = 2243.325, y = 259.121, z = -1563.340 }, rot = { x = 0.000, y = 191.828, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789014] = { config_id = 789014, gadget_id = 70350173, pos = { x = 2235.757, y = 258.983, z = -1563.218 }, rot = { x = 0.000, y = 163.645, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789015] = { config_id = 789015, gadget_id = 70350175, pos = { x = 2239.718, y = 258.925, z = -1563.218 }, rot = { x = 0.000, y = 182.028, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789016] = { config_id = 789016, gadget_id = 70350173, pos = { x = 2239.718, y = 255.114, z = -1563.218 }, rot = { x = 0.000, y = 182.028, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789017] = { config_id = 789017, gadget_id = 70350174, pos = { x = 2245.801, y = 261.540, z = -1567.251 }, rot = { x = 0.000, y = 212.854, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789018] = { config_id = 789018, gadget_id = 70350173, pos = { x = 2242.737, y = 261.540, z = -1560.257 }, rot = { x = 0.000, y = 18.394, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789019] = { config_id = 789019, gadget_id = 70350174, pos = { x = 2250.533, y = 261.540, z = -1558.462 }, rot = { x = 0.000, y = 33.719, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789020] = { config_id = 789020, gadget_id = 70350173, pos = { x = 2252.924, y = 261.540, z = -1566.524 }, rot = { x = 0.000, y = 38.611, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789021] = { config_id = 789021, gadget_id = 70350175, pos = { x = 2228.277, y = 254.710, z = -1568.983 }, rot = { x = 0.000, y = 145.433, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789022] = { config_id = 789022, gadget_id = 70350174, pos = { x = 2223.798, y = 254.710, z = -1560.609 }, rot = { x = 0.000, y = 325.530, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789023] = { config_id = 789023, gadget_id = 70350175, pos = { x = 2232.042, y = 254.710, z = -1556.606 }, rot = { x = 0.000, y = 338.569, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789024] = { config_id = 789024, gadget_id = 70350174, pos = { x = 2236.166, y = 254.710, z = -1565.114 }, rot = { x = 0.000, y = 337.398, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789025] = { config_id = 789025, gadget_id = 70350173, pos = { x = 2225.439, y = 258.511, z = -1570.866 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789026] = { config_id = 789026, gadget_id = 70350173, pos = { x = 2239.339, y = 266.100, z = -1561.735 }, rot = { x = 0.000, y = 184.218, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789027] = { config_id = 789027, gadget_id = 70350173, pos = { x = 2242.013, y = 266.100, z = -1562.081 }, rot = { x = 0.000, y = 184.218, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789028] = { config_id = 789028, gadget_id = 70350173, pos = { x = 2236.478, y = 266.100, z = -1561.865 }, rot = { x = 0.000, y = 184.218, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789029] = { config_id = 789029, gadget_id = 70350172, pos = { x = 2239.339, y = 257.213, z = -1561.735 }, rot = { x = 0.000, y = 184.218, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789030] = { config_id = 789030, gadget_id = 70350175, pos = { x = 2243.068, y = 246.442, z = -1562.975 }, rot = { x = 0.000, y = 203.036, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789031] = { config_id = 789031, gadget_id = 70350175, pos = { x = 2235.226, y = 246.442, z = -1562.498 }, rot = { x = 0.000, y = 172.699, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789032] = { config_id = 789032, gadget_id = 70350173, pos = { x = 2225.439, y = 254.101, z = -1570.866 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789033] = { config_id = 789033, gadget_id = 70350173, pos = { x = 2251.670, y = 265.664, z = -1570.824 }, rot = { x = 0.000, y = 233.970, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789034] = { config_id = 789034, gadget_id = 70350173, pos = { x = 2249.817, y = 265.664, z = -1568.316 }, rot = { x = 0.000, y = 227.870, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789035] = { config_id = 789035, gadget_id = 70350173, pos = { x = 2252.852, y = 265.664, z = -1573.721 }, rot = { x = 0.000, y = 245.748, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789036] = { config_id = 789036, gadget_id = 70350173, pos = { x = 2252.852, y = 246.963, z = -1573.721 }, rot = { x = 0.000, y = 245.748, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789037] = { config_id = 789037, gadget_id = 70350173, pos = { x = 2251.670, y = 246.963, z = -1570.824 }, rot = { x = 0.000, y = 233.970, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789038] = { config_id = 789038, gadget_id = 70350173, pos = { x = 2249.817, y = 246.963, z = -1568.316 }, rot = { x = 0.000, y = 227.870, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789039] = { config_id = 789039, gadget_id = 70350175, pos = { x = 2251.670, y = 257.183, z = -1570.824 }, rot = { x = 0.000, y = 241.402, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789040] = { config_id = 789040, gadget_id = 70350173, pos = { x = 2253.836, y = 259.032, z = -1584.503 }, rot = { x = 0.000, y = 297.063, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789041] = { config_id = 789041, gadget_id = 70350173, pos = { x = 2252.351, y = 259.032, z = -1586.843 }, rot = { x = 0.000, y = 303.459, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789042] = { config_id = 789042, gadget_id = 70350173, pos = { x = 2253.836, y = 255.047, z = -1584.503 }, rot = { x = 0.000, y = 297.063, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789043] = { config_id = 789043, gadget_id = 70350173, pos = { x = 2252.351, y = 255.047, z = -1586.842 }, rot = { x = 0.000, y = 303.459, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789044] = { config_id = 789044, gadget_id = 70350173, pos = { x = 2253.836, y = 250.825, z = -1584.503 }, rot = { x = 0.000, y = 297.063, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789045] = { config_id = 789045, gadget_id = 70350173, pos = { x = 2252.351, y = 250.825, z = -1586.842 }, rot = { x = 0.000, y = 303.459, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789046] = { config_id = 789046, gadget_id = 70350172, pos = { x = 2254.990, y = 259.032, z = -1582.232 }, rot = { x = 0.000, y = 297.063, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789047] = { config_id = 789047, gadget_id = 70350172, pos = { x = 2250.429, y = 250.825, z = -1589.125 }, rot = { x = 0.000, y = 303.459, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789048] = { config_id = 789048, gadget_id = 70350173, pos = { x = 2222.949, y = 256.267, z = -1574.675 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789049] = { config_id = 789049, gadget_id = 70350173, pos = { x = 2241.053, y = 266.362, z = -1600.563 }, rot = { x = 0.000, y = 15.065, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789050] = { config_id = 789050, gadget_id = 70350173, pos = { x = 2241.053, y = 249.604, z = -1600.563 }, rot = { x = 0.000, y = 15.065, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789051] = { config_id = 789051, gadget_id = 70350173, pos = { x = 2219.292, y = 266.362, z = -1586.520 }, rot = { x = 0.000, y = 59.560, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789052] = { config_id = 789052, gadget_id = 70350173, pos = { x = 2219.292, y = 249.604, z = -1586.520 }, rot = { x = 0.000, y = 59.560, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789053] = { config_id = 789053, gadget_id = 70350172, pos = { x = 2228.685, y = 257.899, z = -1596.530 }, rot = { x = 0.000, y = 36.006, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789054] = { config_id = 789054, gadget_id = 70350174, pos = { x = 2241.053, y = 258.150, z = -1600.563 }, rot = { x = 0.000, y = 15.065, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789055] = { config_id = 789055, gadget_id = 70350174, pos = { x = 2219.292, y = 258.150, z = -1586.520 }, rot = { x = 0.000, y = 59.560, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789056] = { config_id = 789056, gadget_id = 70350175, pos = { x = 2228.685, y = 261.666, z = -1596.530 }, rot = { x = 0.000, y = 33.934, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789057] = { config_id = 789057, gadget_id = 70350173, pos = { x = 2227.883, y = 256.267, z = -1567.126 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789058] = { config_id = 789058, gadget_id = 70350173, pos = { x = 2222.503, y = 253.327, z = -1572.671 }, rot = { x = 0.000, y = 285.685, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789059] = { config_id = 789059, gadget_id = 70350173, pos = { x = 2222.503, y = 257.327, z = -1572.671 }, rot = { x = 0.000, y = 289.936, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789060] = { config_id = 789060, gadget_id = 70350173, pos = { x = 2222.503, y = 261.327, z = -1572.671 }, rot = { x = 0.000, y = 294.703, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789061] = { config_id = 789061, gadget_id = 70350175, pos = { x = 2223.197, y = 265.327, z = -1569.366 }, rot = { x = 0.000, y = 124.042, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789062] = { config_id = 789062, gadget_id = 70350173, pos = { x = 2227.883, y = 261.342, z = -1567.126 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789083] = { config_id = 789083, gadget_id = 70350173, pos = { x = 2222.942, y = 261.342, z = -1574.685 }, rot = { x = 0.000, y = 123.171, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789084] = { config_id = 789084, gadget_id = 70350173, pos = { x = 2229.117, y = 257.402, z = -1595.839 }, rot = { x = 0.000, y = 20.515, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789085] = { config_id = 789085, gadget_id = 70350173, pos = { x = 2229.117, y = 262.556, z = -1595.839 }, rot = { x = 0.000, y = 20.515, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789086] = { config_id = 789086, gadget_id = 70350173, pos = { x = 2229.117, y = 267.415, z = -1595.839 }, rot = { x = 0.000, y = 20.515, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789087] = { config_id = 789087, gadget_id = 70350173, pos = { x = 2238.524, y = 254.806, z = -1593.948 }, rot = { x = 0.000, y = 349.160, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789088] = { config_id = 789088, gadget_id = 70350173, pos = { x = 2242.799, y = 259.239, z = -1593.129 }, rot = { x = 0.000, y = 349.160, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789089] = { config_id = 789089, gadget_id = 70350173, pos = { x = 2234.051, y = 259.239, z = -1594.804 }, rot = { x = 0.000, y = 349.160, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789090] = { config_id = 789090, gadget_id = 70350173, pos = { x = 2234.051, y = 249.617, z = -1594.804 }, rot = { x = 0.000, y = 349.160, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789091] = { config_id = 789091, gadget_id = 70350173, pos = { x = 2242.796, y = 249.617, z = -1593.130 }, rot = { x = 0.000, y = 349.160, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789092] = { config_id = 789092, gadget_id = 70350173, pos = { x = 2222.497, y = 253.310, z = -1587.638 }, rot = { x = 0.000, y = 74.008, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789093] = { config_id = 789093, gadget_id = 70350173, pos = { x = 2225.157, y = 253.310, z = -1591.883 }, rot = { x = 0.000, y = 57.933, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789094] = { config_id = 789094, gadget_id = 70350173, pos = { x = 2224.136, y = 258.989, z = -1590.254 }, rot = { x = 0.000, y = 57.933, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789095] = { config_id = 789095, gadget_id = 70350173, pos = { x = 2222.517, y = 264.659, z = -1587.670 }, rot = { x = 0.000, y = 67.282, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789096] = { config_id = 789096, gadget_id = 70350173, pos = { x = 2221.162, y = 258.951, z = -1585.507 }, rot = { x = 0.000, y = 79.972, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789097] = { config_id = 789097, gadget_id = 70350173, pos = { x = 2220.058, y = 253.310, z = -1583.744 }, rot = { x = 0.000, y = 86.139, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789098] = { config_id = 789098, gadget_id = 70350173, pos = { x = 2256.753, y = 263.966, z = -1573.785 }, rot = { x = 0.000, y = 85.596, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789099] = { config_id = 789099, gadget_id = 70350173, pos = { x = 2256.358, y = 267.464, z = -1568.657 }, rot = { x = 0.000, y = 63.622, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789100] = { config_id = 789100, gadget_id = 70350173, pos = { x = 2254.020, y = 264.434, z = -1563.942 }, rot = { x = 0.000, y = 47.193, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789101] = { config_id = 789101, gadget_id = 70350174, pos = { x = 2247.068, y = 275.618, z = -1547.829 }, rot = { x = 0.000, y = 28.072, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789102] = { config_id = 789102, gadget_id = 70350173, pos = { x = 2256.753, y = 255.768, z = -1573.785 }, rot = { x = 0.000, y = 85.596, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789103] = { config_id = 789103, gadget_id = 70350173, pos = { x = 2254.020, y = 256.236, z = -1563.942 }, rot = { x = 0.000, y = 47.193, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789104] = { config_id = 789104, gadget_id = 70350175, pos = { x = 2256.358, y = 260.210, z = -1568.657 }, rot = { x = 0.000, y = 63.622, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789105] = { config_id = 789105, gadget_id = 70350175, pos = { x = 2243.140, y = 260.210, z = -1563.043 }, rot = { x = 0.000, y = 16.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789106] = { config_id = 789106, gadget_id = 70350173, pos = { x = 2243.140, y = 256.460, z = -1563.043 }, rot = { x = 0.000, y = 16.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789107] = { config_id = 789107, gadget_id = 70350175, pos = { x = 2243.140, y = 252.265, z = -1563.043 }, rot = { x = 0.000, y = 16.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789108] = { config_id = 789108, gadget_id = 70350173, pos = { x = 2243.140, y = 264.224, z = -1563.043 }, rot = { x = 0.000, y = 16.204, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789109] = { config_id = 789109, gadget_id = 70350173, pos = { x = 2223.098, y = 262.996, z = -1574.710 }, rot = { x = 0.000, y = 289.992, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789110] = { config_id = 789110, gadget_id = 70350173, pos = { x = 2227.921, y = 262.996, z = -1566.696 }, rot = { x = 0.000, y = 319.362, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789111] = { config_id = 789111, gadget_id = 70350173, pos = { x = 2235.395, y = 252.289, z = -1562.570 }, rot = { x = 0.000, y = 342.780, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789112] = { config_id = 789112, gadget_id = 70350175, pos = { x = 2235.395, y = 257.016, z = -1562.570 }, rot = { x = 0.000, y = 342.780, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789113] = { config_id = 789113, gadget_id = 70350173, pos = { x = 2235.395, y = 260.770, z = -1562.570 }, rot = { x = 0.000, y = 342.780, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789114] = { config_id = 789114, gadget_id = 70350175, pos = { x = 2235.395, y = 264.773, z = -1562.570 }, rot = { x = 0.000, y = 342.780, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789115] = { config_id = 789115, gadget_id = 70350173, pos = { x = 2239.390, y = 253.452, z = -1543.978 }, rot = { x = 0.000, y = 26.965, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789116] = { config_id = 789116, gadget_id = 70350173, pos = { x = 2242.645, y = 253.452, z = -1545.634 }, rot = { x = 0.000, y = 26.965, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789117] = { config_id = 789117, gadget_id = 70350173, pos = { x = 2235.851, y = 253.452, z = -1542.178 }, rot = { x = 0.000, y = 26.965, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789118] = { config_id = 789118, gadget_id = 70350173, pos = { x = 2250.283, y = 253.452, z = -1549.520 }, rot = { x = 0.000, y = 26.965, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789119] = { config_id = 789119, gadget_id = 70350173, pos = { x = 2253.977, y = 258.618, z = -1551.399 }, rot = { x = 0.000, y = 26.965, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789120] = { config_id = 789120, gadget_id = 70350173, pos = { x = 2232.797, y = 261.195, z = -1541.057 }, rot = { x = 0.000, y = 22.803, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789121] = { config_id = 789121, gadget_id = 70350173, pos = { x = 2230.053, y = 264.526, z = -1539.196 }, rot = { x = 0.000, y = 13.640, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789122] = { config_id = 789122, gadget_id = 70350173, pos = { x = 2225.964, y = 261.195, z = -1538.673 }, rot = { x = 0.000, y = 359.433, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789123] = { config_id = 789123, gadget_id = 70350173, pos = { x = 2205.567, y = 255.842, z = -1548.268 }, rot = { x = 0.000, y = 312.738, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789124] = { config_id = 789124, gadget_id = 70350173, pos = { x = 2221.201, y = 264.122, z = -1539.501 }, rot = { x = 0.000, y = 337.454, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789125] = { config_id = 789125, gadget_id = 70350173, pos = { x = 2218.511, y = 260.817, z = -1541.657 }, rot = { x = 0.000, y = 332.262, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789126] = { config_id = 789126, gadget_id = 70350175, pos = { x = 2225.848, y = 252.538, z = -1538.694 }, rot = { x = 0.000, y = 349.618, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789127] = { config_id = 789127, gadget_id = 70350173, pos = { x = 2210.515, y = 251.493, z = -1545.811 }, rot = { x = 0.000, y = 326.287, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789128] = { config_id = 789128, gadget_id = 70350173, pos = { x = 2214.593, y = 251.493, z = -1543.090 }, rot = { x = 0.000, y = 326.287, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789129] = { config_id = 789129, gadget_id = 70350173, pos = { x = 2214.593, y = 257.142, z = -1543.090 }, rot = { x = 0.000, y = 326.287, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789130] = { config_id = 789130, gadget_id = 70350173, pos = { x = 2210.554, y = 257.142, z = -1545.785 }, rot = { x = 0.000, y = 326.287, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789131] = { config_id = 789131, gadget_id = 70350173, pos = { x = 2253.229, y = 258.376, z = -1585.950 }, rot = { x = 0.000, y = 122.644, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789132] = { config_id = 789132, gadget_id = 70350173, pos = { x = 2254.959, y = 254.496, z = -1581.616 }, rot = { x = 0.000, y = 107.441, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789133] = { config_id = 789133, gadget_id = 70350173, pos = { x = 2250.321, y = 254.496, z = -1588.855 }, rot = { x = 0.000, y = 131.041, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789134] = { config_id = 789134, gadget_id = 70350173, pos = { x = 2225.506, y = 262.996, z = -1570.480 }, rot = { x = 0.000, y = 300.737, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789135] = { config_id = 789135, gadget_id = 70350173, pos = { x = 2225.506, y = 254.228, z = -1570.480 }, rot = { x = 0.000, y = 300.737, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789136] = { config_id = 789136, gadget_id = 70350173, pos = { x = 2223.098, y = 254.228, z = -1574.710 }, rot = { x = 0.000, y = 289.992, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789137] = { config_id = 789137, gadget_id = 70350173, pos = { x = 2227.921, y = 254.228, z = -1566.696 }, rot = { x = 0.000, y = 319.362, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789138] = { config_id = 789138, gadget_id = 70350175, pos = { x = 2225.506, y = 258.748, z = -1570.480 }, rot = { x = 0.000, y = 300.737, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789139] = { config_id = 789139, gadget_id = 70350173, pos = { x = 2223.098, y = 258.748, z = -1574.710 }, rot = { x = 0.000, y = 289.992, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789140] = { config_id = 789140, gadget_id = 70350173, pos = { x = 2227.921, y = 258.748, z = -1566.696 }, rot = { x = 0.000, y = 319.362, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789141] = { config_id = 789141, gadget_id = 70350174, pos = { x = 2228.656, y = 277.094, z = -1596.607 }, rot = { x = 0.000, y = 214.555, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789142] = { config_id = 789142, gadget_id = 70350174, pos = { x = 2259.682, y = 264.465, z = -1590.328 }, rot = { x = 0.000, y = 122.310, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789143] = { config_id = 789143, gadget_id = 70350174, pos = { x = 2254.118, y = 269.453, z = -1586.809 }, rot = { x = 0.000, y = 122.310, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789144] = { config_id = 789144, gadget_id = 70350173, pos = { x = 2248.915, y = 264.062, z = -1583.519 }, rot = { x = 0.000, y = 122.310, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789145] = { config_id = 789145, gadget_id = 70350173, pos = { x = 2254.731, y = 257.566, z = -1587.197 }, rot = { x = 0.000, y = 122.310, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789146] = { config_id = 789146, gadget_id = 70350175, pos = { x = 2213.917, y = 261.447, z = -1579.016 }, rot = { x = 0.000, y = 90.086, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789147] = { config_id = 789147, gadget_id = 70350174, pos = { x = 2219.384, y = 261.447, z = -1573.105 }, rot = { x = 0.000, y = 90.086, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789148] = { config_id = 789148, gadget_id = 70350174, pos = { x = 2219.365, y = 261.447, z = -1585.752 }, rot = { x = 0.000, y = 90.086, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789149] = { config_id = 789149, gadget_id = 70350173, pos = { x = 2226.993, y = 261.447, z = -1579.036 }, rot = { x = 0.000, y = 90.086, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789150] = { config_id = 789150, gadget_id = 70350174, pos = { x = 2211.554, y = 252.070, z = -1544.667 }, rot = { x = 0.000, y = 146.602, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789151] = { config_id = 789151, gadget_id = 70350174, pos = { x = 2235.416, y = 254.004, z = -1541.978 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789152] = { config_id = 789152, gadget_id = 70350172, pos = { x = 2228.699, y = 257.662, z = -1596.568 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789153] = { config_id = 789153, gadget_id = 70350174, pos = { x = 2225.760, y = 287.351, z = -1594.758 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789154] = { config_id = 789154, gadget_id = 70350174, pos = { x = 2231.928, y = 287.351, z = -1598.557 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789155] = { config_id = 789155, gadget_id = 70350175, pos = { x = 2228.699, y = 293.327, z = -1596.568 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789156] = { config_id = 789156, gadget_id = 70350173, pos = { x = 2231.928, y = 269.782, z = -1598.557 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 },
	[789157] = { config_id = 789157, gadget_id = 70350173, pos = { x = 2225.760, y = 269.782, z = -1594.758 }, rot = { x = 0.000, y = 211.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 1 }
}

-- 区域
regions = {
	[789158] = { config_id = 789158, shape = RegionShape.SPHERE, radius = 100, pos = { x = 2237.821, y = 243.634, z = -1579.171 }, area_id = 1 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789063, pos = { x = 2247.933, y = 267.249, z = -1592.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789064, pos = { x = 2251.369, y = 267.195, z = -1590.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789065, pos = { x = 2254.088, y = 276.825, z = -1587.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789066, pos = { x = 2256.090, y = 267.006, z = -1582.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789067, pos = { x = 2244.764, y = 254.241, z = -1568.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789068, pos = { x = 2251.147, y = 252.521, z = -1577.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789069, pos = { x = 2245.244, y = 253.583, z = -1587.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789070, pos = { x = 2230.634, y = 254.653, z = -1591.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789071, pos = { x = 2225.486, y = 252.998, z = -1579.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789072, pos = { x = 2232.935, y = 252.809, z = -1567.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789073, pos = { x = 2220.805, y = 269.275, z = -1578.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789074, pos = { x = 2227.145, y = 270.339, z = -1565.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789075, pos = { x = 2262.742, y = 251.024, z = -1567.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789076, pos = { x = 2239.548, y = 256.173, z = -1609.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789077, pos = { x = 2220.543, y = 250.886, z = -1597.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789078, pos = { x = 2211.644, y = 250.784, z = -1555.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789079, pos = { x = 2222.269, y = 253.545, z = -1550.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789080, pos = { x = 2215.872, y = 252.570, z = -1550.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789081, pos = { x = 2240.561, y = 251.857, z = -1549.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	-- 1.4风花节射气球活动-千风神殿分会场
	{ config_id = 789082, pos = { x = 2248.494, y = 253.039, z = -1552.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, isRandom = 1 },
	{ config_id = 789159, pos = { x = 2235.317, y = 244.120, z = -1581.765 }, rot = { x = 0.000, y = 52.464, z = 0.000 }, area_id = 1 },
	{ config_id = 789160, pos = { x = 2232.266, y = 244.120, z = -1584.144 }, rot = { x = 0.000, y = 52.353, z = 0.000 }, area_id = 1 },
	{ config_id = 789161, pos = { x = 2235.517, y = 244.120, z = -1584.683 }, rot = { x = 0.000, y = 55.388, z = 0.000 }, area_id = 1 },
	{ config_id = 789162, pos = { x = 2232.132, y = 244.120, z = -1580.440 }, rot = { x = 0.000, y = 50.144, z = 0.000 }, area_id = 1 }
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
		regions = { 789158 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 789001, 789002, 789003, 789004, 789005, 789006, 789007, 789008, 789009, 789010, 789011, 789012, 789013, 789014, 789015, 789016, 789025, 789032, 789048, 789057, 789062, 789083, 789084, 789085, 789086, 789087, 789088, 789089, 789090, 789091, 789092, 789093, 789094, 789095, 789096, 789097 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 789026, 789027, 789028, 789029, 789030, 789031, 789033, 789034, 789035, 789036, 789037, 789038, 789039, 789040, 789041, 789042, 789043, 789044, 789045, 789046, 789047, 789049, 789050, 789051, 789052, 789053, 789054, 789055, 789056, 789058, 789059, 789060, 789061 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 789098, 789099, 789100, 789101, 789102, 789103, 789104, 789105, 789106, 789107, 789108, 789109, 789110, 789111, 789112, 789113, 789114, 789115, 789116, 789117, 789118, 789119, 789120, 789121, 789122, 789123, 789124, 789125, 789126, 789127, 789128, 789129, 789130, 789131, 789132, 789133, 789134, 789135, 789136, 789137, 789138, 789139, 789140, 789141 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 789017, 789018, 789019, 789020, 789021, 789022, 789023, 789024, 789142, 789143, 789144, 789145, 789146, 789147, 789148, 789149, 789150, 789151, 789152, 789153, 789154, 789155, 789156, 789157 },
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
		gadgets = { 789002, 789003, 789004, 789005, 789006, 789007, 789008, 789009, 789010, 789011, 789012, 789013, 789014, 789015, 789016, 789017, 789018, 789019, 789020, 789021, 789022, 789023, 789024, 789026, 789027, 789028, 789029, 789030, 789031, 789033, 789034, 789035, 789036, 789037, 789038, 789039, 789040, 789041, 789042, 789043, 789044, 789045, 789046, 789047, 789049, 789050, 789051, 789052, 789053, 789054, 789055, 789056, 789058, 789059, 789060, 789061, 789098, 789099, 789100, 789101, 789102, 789103, 789104, 789105, 789106, 789107, 789108, 789109, 789110, 789111, 789112, 789113, 789114, 789115, 789116, 789117, 789118, 789119, 789120, 789121, 789122, 789123, 789124, 789125, 789126, 789127, 789128, 789129, 789130, 789131, 789132, 789133, 789134, 789135, 789136, 789137, 789138, 789139, 789140, 789141 },
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