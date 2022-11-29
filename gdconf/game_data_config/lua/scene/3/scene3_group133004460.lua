-- 基础信息
local base_info = {
	group_id = 133004460
}

-- DEFS_MISCS
--1.4风花节射气球活动-野猪林分会场
local defs = {
        gallery_id = 1005,
        gadget_entry = 460002,
        balloon_clear_state = 201,
        suite_clear_index = 10,
        random_time_axis = {15,30,45,60,75,90,105,120,135,150,165},
        random_clear_time_axis = {22,37,52,67,82,97,112,127,142,157,172},
        static_start_suite = 2,
        static_suite_list = {3,4,5},
        static_time_axis = {40,90,135},
        static_clear_time_axis = {37,87,132,177},
        gadget_operator = 475001,
        operator_group_id = 133004475
}

local point_array_defs = {
        [460027] = {point_array_id = 300400001, point_id_list = {1,2}, route_type = 1},
        [460022] = {point_array_id = 300400001, point_id_list = {5,8}, route_type = 1},
        [460023] = {point_array_id = 300400001, point_id_list = {4,7}, route_type = 1},
        [460024] = {point_array_id = 300400001, point_id_list = {3,6}, route_type = 1},
        [460052] = {point_array_id = 300400005, point_id_list = {1,2}, route_type = 1},
        [460055] = {point_array_id = 300400005, point_id_list = {3,4}, route_type = 1},
        [460134] = {point_array_id = 300400005, point_id_list = {5,6}, route_type = 1},
        [460150] = {point_array_id = 300400011, point_id_list = {1,2,3,4,5,6,7,8,9}, route_type = 1},
        [460031] = {point_array_id = 300400002, point_id_list = {5,6,7,8,9,10,11,12,13,14,15,1,2,3,4}, route_type = 2},
        [460032] = {point_array_id = 300400002, point_id_list = {4,5,6,7,8,9,10,11,12,13,14,15,1,2,3}, route_type = 2},
        [460033] = {point_array_id = 300400002, point_id_list = {3,4,5,6,7,8,9,10,11,12,13,14,15,1,2}, route_type = 2},
        [460034] = {point_array_id = 300400002, point_id_list = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,1}, route_type = 2},
        [460035] = {point_array_id = 300400002, point_id_list = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}, route_type = 2},
        [460036] = {point_array_id = 300400003, point_id_list = {1,2,3,4,5,6,7,8,9,10,11,12,13}, route_type = 2},
        [460037] = {point_array_id = 300400003, point_id_list = {2,3,4,5,6,7,8,9,10,11,12,13,1}, route_type = 2},
        [460038] = {point_array_id = 300400003, point_id_list = {3,4,5,6,7,8,9,10,11,12,13,1,2}, route_type = 2},
        [460039] = {point_array_id = 300400003, point_id_list = {4,5,6,7,8,9,10,11,12,13,1,2,3}, route_type = 2},
        [460040] = {point_array_id = 300400003, point_id_list = {5,6,7,8,9,10,11,12,13,1,2,3,4}, route_type = 2},
        [460042] = {point_array_id = 300400004, point_id_list = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}, route_type = 2},
        [460043] = {point_array_id = 300400004, point_id_list = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,1}, route_type = 2},
        [460044] = {point_array_id = 300400004, point_id_list = {3,4,5,6,7,8,9,10,11,12,13,14,15,1,2}, route_type = 2},
        [460045] = {point_array_id = 300400004, point_id_list = {4,5,6,7,8,9,10,11,12,13,14,15,1,2,3}, route_type = 2},
        [460046] = {point_array_id = 300400004, point_id_list = {5,6,7,8,9,10,11,12,13,14,15,1,2,3,4}, route_type = 2},
        [460047] = {point_array_id = 300400004, point_id_list = {6,7,8,9,10,11,12,13,14,15,1,2,3,4,5}, route_type = 2},
        [460123] = {point_array_id = 300400006, point_id_list = {2,3,1,4}, route_type = 2},
        [460124] = {point_array_id = 300400006, point_id_list = {3,1,4,2}, route_type = 2},
        [460122] = {point_array_id = 300400006, point_id_list = {1,4,2,3}, route_type = 2},
        [460125] = {point_array_id = 300400006, point_id_list = {4,2,3,1}, route_type = 2},
        [460128] = {point_array_id = 300400007, point_id_list = {1,2,3,4}, route_type = 2},
        [460127] = {point_array_id = 300400007, point_id_list = {2,3,4,1}, route_type = 2},
        [460129] = {point_array_id = 300400007, point_id_list = {3,4,1,2}, route_type = 2},
        [460126] = {point_array_id = 300400007, point_id_list = {4,1,2,3}, route_type = 2},
        [460133] = {point_array_id = 300400008, point_id_list = {1,2,3,4}, route_type = 2},
        [460132] = {point_array_id = 300400008, point_id_list = {2,3,4,1}, route_type = 2},
        [460132] = {point_array_id = 300400008, point_id_list = {3,4,1,2}, route_type = 2},
        [460130] = {point_array_id = 300400008, point_id_list = {4,1,2,3}, route_type = 2},
        [460136] = {point_array_id = 300400009, point_id_list = {1,2,3,4}, route_type = 2},
        [460138] = {point_array_id = 300400009, point_id_list = {2,3,4,1}, route_type = 2},
        [460137] = {point_array_id = 300400009, point_id_list = {3,4,1,2}, route_type = 2},
        [460139] = {point_array_id = 300400009, point_id_list = {4,1,2,3}, route_type = 2},
        [460140] = {point_array_id = 300400010, point_id_list = {1,2,3,4,5,6,7,8,9}, route_type = 2},
        [460141] = {point_array_id = 300400010, point_id_list = {2,3,4,5,6,7,8,9,1}, route_type = 2},
        [460142] = {point_array_id = 300400010, point_id_list = {3,4,5,6,7,8,9,1,2}, route_type = 2},
        [460143] = {point_array_id = 300400010, point_id_list = {4,5,6,7,8,9,1,2,3}, route_type = 2},
        [460144] = {point_array_id = 300400010, point_id_list = {5,6,7,8,9,1,2,3,4}, route_type = 2},
        [460145] = {point_array_id = 300400010, point_id_list = {6,7,8,9,1,2,3,4,5}, route_type = 2},
        [460146] = {point_array_id = 300400010, point_id_list = {7,8,9,1,2,3,4,5,6}, route_type = 2},
        [460147] = {point_array_id = 300400010, point_id_list = {8,9,1,2,3,4,5,6,7}, route_type = 2},
        [460148] = {point_array_id = 300400010, point_id_list = {9,1,2,3,4,5,6,7,8}, route_type = 2}
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
	[460001] = { config_id = 460001, gadget_id = 70350173, pos = { x = 2548.621, y = 282.567, z = -303.260 }, rot = { x = 0.000, y = 19.219, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460002] = { config_id = 460002, gadget_id = 70350173, pos = { x = 2527.522, y = 278.348, z = -270.491 }, rot = { x = 0.000, y = 91.535, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460003] = { config_id = 460003, gadget_id = 70350173, pos = { x = 2527.572, y = 282.169, z = -268.637 }, rot = { x = 0.000, y = 91.535, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460004] = { config_id = 460004, gadget_id = 70350173, pos = { x = 2527.457, y = 282.169, z = -272.924 }, rot = { x = 0.000, y = 91.535, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460005] = { config_id = 460005, gadget_id = 70350173, pos = { x = 2536.399, y = 273.723, z = -300.278 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460006] = { config_id = 460006, gadget_id = 70350173, pos = { x = 2534.093, y = 275.424, z = -299.782 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460007] = { config_id = 460007, gadget_id = 70350173, pos = { x = 2538.861, y = 271.664, z = -300.808 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460008] = { config_id = 460008, gadget_id = 70350172, pos = { x = 2532.244, y = 284.883, z = -254.881 }, rot = { x = 0.000, y = 138.745, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460009] = { config_id = 460009, gadget_id = 70350173, pos = { x = 2530.478, y = 282.790, z = -256.429 }, rot = { x = 0.000, y = 138.745, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460010] = { config_id = 460010, gadget_id = 70350173, pos = { x = 2534.058, y = 282.790, z = -253.289 }, rot = { x = 0.000, y = 138.745, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460011] = { config_id = 460011, gadget_id = 70350172, pos = { x = 2551.056, y = 283.915, z = -244.510 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460012] = { config_id = 460012, gadget_id = 70350173, pos = { x = 2551.056, y = 287.824, z = -244.510 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460013] = { config_id = 460013, gadget_id = 70350173, pos = { x = 2551.056, y = 279.802, z = -244.510 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460014] = { config_id = 460014, gadget_id = 70350173, pos = { x = 2547.313, y = 279.842, z = -244.011 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460015] = { config_id = 460015, gadget_id = 70350173, pos = { x = 2554.517, y = 279.802, z = -244.979 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460016] = { config_id = 460016, gadget_id = 70350172, pos = { x = 2551.056, y = 275.533, z = -244.510 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460017] = { config_id = 460017, gadget_id = 70350173, pos = { x = 2551.056, y = 271.849, z = -244.510 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460018] = { config_id = 460018, gadget_id = 70350173, pos = { x = 2549.271, y = 273.397, z = -296.700 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460019] = { config_id = 460019, gadget_id = 70350173, pos = { x = 2538.817, y = 270.116, z = -291.935 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460020] = { config_id = 460020, gadget_id = 70350175, pos = { x = 2544.430, y = 271.937, z = -293.143 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460021] = { config_id = 460021, gadget_id = 70350173, pos = { x = 2553.114, y = 270.877, z = -294.971 }, rot = { x = 0.000, y = 12.145, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460022] = { config_id = 460022, gadget_id = 70350173, pos = { x = 2571.465, y = 281.279, z = -247.179 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460023] = { config_id = 460023, gadget_id = 70350173, pos = { x = 2575.536, y = 282.784, z = -248.232 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460024] = { config_id = 460024, gadget_id = 70350173, pos = { x = 2573.608, y = 283.064, z = -244.262 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460025] = { config_id = 460025, gadget_id = 70350174, pos = { x = 2564.816, y = 282.005, z = -304.846 }, rot = { x = 0.000, y = 359.363, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460026] = { config_id = 460026, gadget_id = 70350173, pos = { x = 2561.755, y = 277.913, z = -304.762 }, rot = { x = 0.000, y = 359.890, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460027] = { config_id = 460027, gadget_id = 70350175, pos = { x = 2564.816, y = 268.420, z = -304.846 }, rot = { x = 0.000, y = 359.363, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460028] = { config_id = 460028, gadget_id = 70350173, pos = { x = 2567.998, y = 277.993, z = -305.215 }, rot = { x = 0.000, y = 352.257, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460029] = { config_id = 460029, gadget_id = 70350172, pos = { x = 2574.196, y = 280.320, z = -245.957 }, rot = { x = 0.000, y = 184.946, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460030] = { config_id = 460030, gadget_id = 70350173, pos = { x = 2564.724, y = 270.736, z = -301.050 }, rot = { x = 0.000, y = 342.528, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460031] = { config_id = 460031, gadget_id = 70350173, pos = { x = 2602.535, y = 289.410, z = -241.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460032] = { config_id = 460032, gadget_id = 70350174, pos = { x = 2606.323, y = 289.410, z = -245.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460033] = { config_id = 460033, gadget_id = 70350175, pos = { x = 2608.044, y = 289.410, z = -250.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460034] = { config_id = 460034, gadget_id = 70350174, pos = { x = 2607.049, y = 289.410, z = -255.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460035] = { config_id = 460035, gadget_id = 70350173, pos = { x = 2604.272, y = 289.410, z = -260.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460036] = { config_id = 460036, gadget_id = 70350174, pos = { x = 2597.752, y = 289.410, z = -291.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460037] = { config_id = 460037, gadget_id = 70350175, pos = { x = 2599.109, y = 289.410, z = -287.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460038] = { config_id = 460038, gadget_id = 70350173, pos = { x = 2599.534, y = 289.410, z = -282.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460039] = { config_id = 460039, gadget_id = 70350175, pos = { x = 2598.412, y = 289.410, z = -277.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460040] = { config_id = 460040, gadget_id = 70350174, pos = { x = 2596.150, y = 289.410, z = -272.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460041] = { config_id = 460041, gadget_id = 70350173, pos = { x = 2568.468, y = 272.291, z = -283.013 }, rot = { x = 0.000, y = 298.748, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460042] = { config_id = 460042, gadget_id = 70350173, pos = { x = 2581.984, y = 279.530, z = -291.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460043] = { config_id = 460043, gadget_id = 70350174, pos = { x = 2584.553, y = 279.530, z = -293.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460044] = { config_id = 460044, gadget_id = 70350175, pos = { x = 2586.756, y = 279.530, z = -295.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460045] = { config_id = 460045, gadget_id = 70350174, pos = { x = 2589.495, y = 279.530, z = -296.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460046] = { config_id = 460046, gadget_id = 70350175, pos = { x = 2591.796, y = 279.530, z = -296.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460047] = { config_id = 460047, gadget_id = 70350174, pos = { x = 2593.524, y = 279.530, z = -299.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460048] = { config_id = 460048, gadget_id = 70350173, pos = { x = 2596.355, y = 279.530, z = -300.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460049] = { config_id = 460049, gadget_id = 70350173, pos = { x = 2574.036, y = 274.542, z = -254.813 }, rot = { x = 0.000, y = 217.832, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460050] = { config_id = 460050, gadget_id = 70350173, pos = { x = 2574.863, y = 279.588, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460051] = { config_id = 460051, gadget_id = 70350173, pos = { x = 2572.310, y = 279.588, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460052] = { config_id = 460052, gadget_id = 70350172, pos = { x = 2565.394, y = 276.796, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460053] = { config_id = 460053, gadget_id = 70350173, pos = { x = 2574.863, y = 274.157, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460054] = { config_id = 460054, gadget_id = 70350173, pos = { x = 2572.309, y = 274.157, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460055] = { config_id = 460055, gadget_id = 70350172, pos = { x = 2562.699, y = 276.796, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460056] = { config_id = 460056, gadget_id = 70350173, pos = { x = 2569.551, y = 280.875, z = -248.999 }, rot = { x = 0.000, y = 202.246, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460057] = { config_id = 460057, gadget_id = 70350173, pos = { x = 2556.754, y = 279.502, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460058] = { config_id = 460058, gadget_id = 70350173, pos = { x = 2554.442, y = 279.502, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460059] = { config_id = 460059, gadget_id = 70350174, pos = { x = 2573.570, y = 281.887, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460060] = { config_id = 460060, gadget_id = 70350173, pos = { x = 2556.753, y = 274.210, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460061] = { config_id = 460061, gadget_id = 70350173, pos = { x = 2554.442, y = 274.210, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460062] = { config_id = 460062, gadget_id = 70350174, pos = { x = 2573.570, y = 271.923, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460063] = { config_id = 460063, gadget_id = 70350174, pos = { x = 2555.587, y = 281.702, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460064] = { config_id = 460064, gadget_id = 70350174, pos = { x = 2555.587, y = 272.072, z = -300.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460085] = { config_id = 460085, gadget_id = 70350173, pos = { x = 2587.757, y = 279.651, z = -260.508 }, rot = { x = 0.000, y = 240.521, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460086] = { config_id = 460086, gadget_id = 70350173, pos = { x = 2594.676, y = 286.737, z = -266.392 }, rot = { x = 0.000, y = 280.914, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460087] = { config_id = 460087, gadget_id = 70350173, pos = { x = 2593.494, y = 290.103, z = -272.520 }, rot = { x = 0.000, y = 300.388, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460088] = { config_id = 460088, gadget_id = 70350173, pos = { x = 2585.485, y = 291.307, z = -285.543 }, rot = { x = 0.000, y = 300.388, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460089] = { config_id = 460089, gadget_id = 70350173, pos = { x = 2581.622, y = 281.891, z = -292.131 }, rot = { x = 0.000, y = 311.548, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460090] = { config_id = 460090, gadget_id = 70350173, pos = { x = 2572.128, y = 273.000, z = -320.977 }, rot = { x = 0.000, y = 356.519, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460091] = { config_id = 460091, gadget_id = 70350173, pos = { x = 2533.480, y = 278.280, z = -278.088 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460092] = { config_id = 460092, gadget_id = 70350172, pos = { x = 2532.747, y = 278.280, z = -275.253 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460093] = { config_id = 460093, gadget_id = 70350173, pos = { x = 2532.747, y = 281.672, z = -275.253 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460094] = { config_id = 460094, gadget_id = 70350173, pos = { x = 2533.537, y = 281.672, z = -278.308 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460095] = { config_id = 460095, gadget_id = 70350173, pos = { x = 2531.959, y = 278.280, z = -272.204 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460096] = { config_id = 460096, gadget_id = 70350173, pos = { x = 2532.030, y = 281.672, z = -272.189 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460097] = { config_id = 460097, gadget_id = 70350173, pos = { x = 2533.638, y = 285.084, z = -278.747 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460098] = { config_id = 460098, gadget_id = 70350173, pos = { x = 2531.895, y = 285.084, z = -272.332 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460099] = { config_id = 460099, gadget_id = 70350173, pos = { x = 2531.959, y = 274.275, z = -272.204 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460100] = { config_id = 460100, gadget_id = 70350173, pos = { x = 2532.747, y = 274.275, z = -275.253 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460101] = { config_id = 460101, gadget_id = 70350173, pos = { x = 2533.479, y = 274.275, z = -278.088 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460102] = { config_id = 460102, gadget_id = 70350173, pos = { x = 2576.382, y = 284.198, z = -307.456 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460103] = { config_id = 460103, gadget_id = 70350173, pos = { x = 2579.709, y = 273.191, z = -304.961 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460104] = { config_id = 460104, gadget_id = 70350173, pos = { x = 2579.709, y = 276.526, z = -304.961 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460105] = { config_id = 460105, gadget_id = 70350173, pos = { x = 2579.709, y = 280.366, z = -304.961 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460106] = { config_id = 460106, gadget_id = 70350172, pos = { x = 2579.709, y = 284.451, z = -304.961 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460107] = { config_id = 460107, gadget_id = 70350173, pos = { x = 2583.196, y = 284.451, z = -302.285 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460108] = { config_id = 460108, gadget_id = 70350173, pos = { x = 2583.196, y = 289.510, z = -302.285 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460109] = { config_id = 460109, gadget_id = 70350173, pos = { x = 2583.196, y = 294.143, z = -302.285 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460110] = { config_id = 460110, gadget_id = 70350173, pos = { x = 2576.382, y = 289.093, z = -307.456 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460111] = { config_id = 460111, gadget_id = 70350173, pos = { x = 2576.382, y = 293.887, z = -307.456 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460112] = { config_id = 460112, gadget_id = 70350173, pos = { x = 2582.915, y = 273.245, z = -302.501 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460113] = { config_id = 460113, gadget_id = 70350173, pos = { x = 2576.417, y = 273.134, z = -307.488 }, rot = { x = 0.000, y = 322.496, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460114] = { config_id = 460114, gadget_id = 70350173, pos = { x = 2537.139, y = 273.870, z = -298.686 }, rot = { x = 0.000, y = 31.667, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460115] = { config_id = 460115, gadget_id = 70350173, pos = { x = 2541.281, y = 277.117, z = -301.241 }, rot = { x = 0.000, y = 31.667, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460116] = { config_id = 460116, gadget_id = 70350173, pos = { x = 2543.409, y = 281.936, z = -302.554 }, rot = { x = 0.000, y = 27.433, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460117] = { config_id = 460117, gadget_id = 70350173, pos = { x = 2545.830, y = 287.103, z = -303.811 }, rot = { x = 0.000, y = 27.433, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460118] = { config_id = 460118, gadget_id = 70350173, pos = { x = 2537.848, y = 288.228, z = -299.667 }, rot = { x = 0.000, y = 30.344, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460119] = { config_id = 460119, gadget_id = 70350173, pos = { x = 2530.070, y = 288.005, z = -295.629 }, rot = { x = 0.000, y = 47.175, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460120] = { config_id = 460120, gadget_id = 70350173, pos = { x = 2528.915, y = 282.616, z = -295.030 }, rot = { x = 0.000, y = 48.886, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460121] = { config_id = 460121, gadget_id = 70350173, pos = { x = 2529.746, y = 276.508, z = -295.983 }, rot = { x = 0.000, y = 48.886, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460122] = { config_id = 460122, gadget_id = 70350173, pos = { x = 2571.594, y = 269.882, z = -301.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460123] = { config_id = 460123, gadget_id = 70350173, pos = { x = 2559.576, y = 269.882, z = -301.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460124] = { config_id = 460124, gadget_id = 70350173, pos = { x = 2565.713, y = 269.882, z = -295.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460125] = { config_id = 460125, gadget_id = 70350173, pos = { x = 2564.764, y = 269.882, z = -306.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460126] = { config_id = 460126, gadget_id = 70350173, pos = { x = 2557.037, y = 271.152, z = -294.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460127] = { config_id = 460127, gadget_id = 70350173, pos = { x = 2545.019, y = 271.152, z = -293.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460128] = { config_id = 460128, gadget_id = 70350173, pos = { x = 2551.156, y = 271.152, z = -288.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460129] = { config_id = 460129, gadget_id = 70350173, pos = { x = 2550.207, y = 271.152, z = -298.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460130] = { config_id = 460130, gadget_id = 70350173, pos = { x = 2570.073, y = 280.570, z = -315.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460131] = { config_id = 460131, gadget_id = 70350173, pos = { x = 2558.055, y = 280.570, z = -314.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460132] = { config_id = 460132, gadget_id = 70350173, pos = { x = 2564.192, y = 280.570, z = -309.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460133] = { config_id = 460133, gadget_id = 70350173, pos = { x = 2563.243, y = 280.570, z = -319.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460134] = { config_id = 460134, gadget_id = 70350172, pos = { x = 2563.700, y = 282.217, z = -314.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460135] = { config_id = 460135, gadget_id = 70350175, pos = { x = 2564.764, y = 272.317, z = -299.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460136] = { config_id = 460136, gadget_id = 70350173, pos = { x = 2569.845, y = 270.695, z = -282.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460137] = { config_id = 460137, gadget_id = 70350173, pos = { x = 2562.246, y = 270.695, z = -282.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460138] = { config_id = 460138, gadget_id = 70350173, pos = { x = 2566.179, y = 270.695, z = -277.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460139] = { config_id = 460139, gadget_id = 70350173, pos = { x = 2566.189, y = 270.695, z = -286.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460140] = { config_id = 460140, gadget_id = 70350173, pos = { x = 2571.739, y = 275.640, z = -258.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460141] = { config_id = 460141, gadget_id = 70350173, pos = { x = 2562.296, y = 275.640, z = -261.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460142] = { config_id = 460142, gadget_id = 70350173, pos = { x = 2556.975, y = 273.254, z = -264.362 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460143] = { config_id = 460143, gadget_id = 70350173, pos = { x = 2549.798, y = 276.603, z = -264.953 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460144] = { config_id = 460144, gadget_id = 70350173, pos = { x = 2540.666, y = 275.578, z = -265.531 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460145] = { config_id = 460145, gadget_id = 70350173, pos = { x = 2542.477, y = 281.598, z = -257.106 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460146] = { config_id = 460146, gadget_id = 70350174, pos = { x = 2552.151, y = 277.184, z = -252.649 }, rot = { x = 0.000, y = 349.942, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460147] = { config_id = 460147, gadget_id = 70350174, pos = { x = 2559.182, y = 281.797, z = -245.594 }, rot = { x = 0.000, y = 349.942, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460148] = { config_id = 460148, gadget_id = 70350173, pos = { x = 2569.827, y = 286.681, z = -244.904 }, rot = { x = 0.000, y = 349.942, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460149] = { config_id = 460149, gadget_id = 70350172, pos = { x = 2558.742, y = 275.976, z = -261.501 }, rot = { x = 0.000, y = 327.629, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460150] = { config_id = 460150, gadget_id = 70350174, pos = { x = 2530.520, y = 283.623, z = -249.273 }, rot = { x = 0.000, y = 349.942, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 },
	[460156] = { config_id = 460156, gadget_id = 70350173, pos = { x = 2532.818, y = 287.670, z = -275.394 }, rot = { x = 0.000, y = 75.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 4 }
}

-- 区域
regions = {
	[460151] = { config_id = 460151, shape = RegionShape.SPHERE, radius = 100, pos = { x = 2559.676, y = 263.147, z = -272.421 }, area_id = 4 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460065, pos = { x = 2551.645, y = 268.542, z = -272.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460066, pos = { x = 2557.138, y = 269.418, z = -265.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460067, pos = { x = 2558.548, y = 271.742, z = -277.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460068, pos = { x = 2560.266, y = 270.464, z = -267.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460069, pos = { x = 2564.127, y = 269.826, z = -271.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460070, pos = { x = 2553.511, y = 276.779, z = -280.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460071, pos = { x = 2550.835, y = 272.469, z = -267.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460072, pos = { x = 2514.925, y = 280.052, z = -311.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460073, pos = { x = 2528.341, y = 270.859, z = -302.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460074, pos = { x = 2524.851, y = 284.242, z = -308.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460075, pos = { x = 2526.162, y = 276.329, z = -282.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460076, pos = { x = 2529.390, y = 274.301, z = -268.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460077, pos = { x = 2584.856, y = 282.669, z = -267.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460078, pos = { x = 2596.665, y = 293.232, z = -268.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460079, pos = { x = 2529.714, y = 285.061, z = -281.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460080, pos = { x = 2524.553, y = 280.151, z = -289.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460081, pos = { x = 2514.973, y = 278.401, z = -307.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460082, pos = { x = 2570.553, y = 278.425, z = -308.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460083, pos = { x = 2533.483, y = 272.451, z = -284.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	-- 1.4风花节射气球活动-野猪林分会场
	{ config_id = 460084, pos = { x = 2540.308, y = 274.952, z = -265.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, isRandom = 1 },
	{ config_id = 460152, pos = { x = 2564.297, y = 262.883, z = -268.413 }, rot = { x = 0.000, y = 234.727, z = 0.000 }, area_id = 4 },
	{ config_id = 460153, pos = { x = 2568.692, y = 263.450, z = -265.412 }, rot = { x = 0.000, y = 235.322, z = 0.000 }, area_id = 4 },
	{ config_id = 460154, pos = { x = 2568.706, y = 262.669, z = -270.481 }, rot = { x = 0.000, y = 237.522, z = 0.000 }, area_id = 4 },
	{ config_id = 460155, pos = { x = 2564.149, y = 263.548, z = -263.570 }, rot = { x = 0.000, y = 236.279, z = 0.000 }, area_id = 4 }
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
		regions = { 460151 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 460001, 460002, 460003, 460004, 460005, 460006, 460007, 460008, 460009, 460010, 460011, 460012, 460013, 460014, 460015, 460016, 460017, 460018, 460019, 460020, 460021, 460030, 460041, 460049, 460056, 460085, 460086, 460087, 460088, 460089, 460090 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 460022, 460023, 460024, 460025, 460026, 460027, 460028, 460029, 460091, 460092, 460093, 460094, 460095, 460096, 460097, 460098, 460099, 460100, 460101, 460102, 460103, 460104, 460105, 460106, 460107, 460108, 460109, 460110, 460111, 460112, 460113, 460114, 460115, 460116, 460117, 460118, 460119, 460120, 460121, 460156 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 460122, 460123, 460124, 460125, 460126, 460127, 460128, 460129, 460130, 460131, 460132, 460133, 460134, 460135, 460136, 460137, 460138, 460139, 460140, 460141, 460142, 460143, 460144, 460145, 460146, 460147, 460148, 460149, 460150 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 460031, 460032, 460033, 460034, 460035, 460036, 460037, 460038, 460039, 460040, 460042, 460043, 460044, 460045, 460046, 460047, 460048, 460050, 460051, 460052, 460053, 460054, 460055, 460057, 460058, 460059, 460060, 460061, 460062, 460063, 460064 },
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
		gadgets = { 460001, 460002, 460003, 460004, 460005, 460006, 460007, 460008, 460009, 460010, 460011, 460012, 460013, 460014, 460015, 460016, 460017, 460018, 460019, 460020, 460021, 460022, 460023, 460024, 460025, 460026, 460027, 460028, 460029, 460030, 460031, 460032, 460033, 460034, 460035, 460036, 460037, 460038, 460039, 460040, 460041, 460042, 460043, 460044, 460045, 460046, 460047, 460048, 460049, 460050, 460051, 460052, 460053, 460054, 460055, 460056, 460057, 460058, 460059, 460060, 460061, 460062, 460063, 460064, 460085, 460086, 460087, 460088, 460089, 460090, 460091, 460092, 460093, 460094, 460095, 460096, 460097, 460098, 460099, 460100, 460101, 460102, 460103, 460104, 460105, 460106, 460107, 460108, 460109, 460110, 460111, 460112, 460113, 460114, 460115, 460116, 460117, 460118, 460119, 460120, 460121, 460122, 460123, 460124, 460125, 460126, 460127, 460128, 460129, 460130, 460131, 460132, 460133, 460134, 460135, 460136, 460137, 460138, 460139, 460140, 460141, 460142, 460143, 460144, 460145, 460146, 460147, 460148, 460149, 460150, 460156 },
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