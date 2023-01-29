-- 基础信息
local base_info = {
	group_id = 133002134
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
	{ config_id = 134001, gadget_id = 70800087, pos = { x = 1004.410, y = 294.037, z = -960.416 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵1
	{ config_id = 134002, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	{ config_id = 134003, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	{ config_id = 134004, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 能量球
	{ config_id = 134005, gadget_id = 44000105, pos = { x = 990.973, y = 295.739, z = -914.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 场景猎人引导
	{ config_id = 134006, gadget_id = 44000106, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 134007, gadget_id = 70310068, pos = { x = 1006.220, y = 290.970, z = -951.674 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134008, gadget_id = 70310068, pos = { x = 1009.903, y = 288.996, z = -939.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134009, gadget_id = 70310068, pos = { x = 1006.289, y = 291.638, z = -925.316 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134010, gadget_id = 70310068, pos = { x = 1010.542, y = 289.241, z = -932.021 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134011, gadget_id = 70310068, pos = { x = 995.174, y = 292.872, z = -920.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134012, gadget_id = 70310068, pos = { x = 961.117, y = 286.360, z = -937.021 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134013, gadget_id = 70310068, pos = { x = 962.220, y = 287.003, z = -952.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134014, gadget_id = 70310069, pos = { x = 976.229, y = 289.194, z = -957.491 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134015, gadget_id = 70310069, pos = { x = 952.706, y = 286.415, z = -942.756 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134016, gadget_id = 70310069, pos = { x = 968.192, y = 287.003, z = -943.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134017, gadget_id = 70310069, pos = { x = 962.667, y = 287.875, z = -922.821 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134018, gadget_id = 70310069, pos = { x = 985.326, y = 293.824, z = -914.286 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134019, gadget_id = 70310069, pos = { x = 993.711, y = 290.724, z = -951.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134020, gadget_id = 70310069, pos = { x = 971.774, y = 291.192, z = -917.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134021, gadget_id = 44000253, pos = { x = 1000.584, y = 290.116, z = -944.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134022, gadget_id = 44000253, pos = { x = 1002.279, y = 289.936, z = -944.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134023, gadget_id = 44000253, pos = { x = 1002.421, y = 290.263, z = -942.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134024, gadget_id = 44000253, pos = { x = 1007.100, y = 290.118, z = -933.451 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134025, gadget_id = 44000253, pos = { x = 1007.855, y = 289.653, z = -935.156 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134026, gadget_id = 44000253, pos = { x = 1011.108, y = 288.980, z = -943.692 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134027, gadget_id = 44000253, pos = { x = 1007.893, y = 291.215, z = -926.700 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134028, gadget_id = 44000253, pos = { x = 1004.012, y = 291.686, z = -925.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134029, gadget_id = 44000253, pos = { x = 1012.204, y = 288.578, z = -937.728 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134030, gadget_id = 44000253, pos = { x = 965.658, y = 286.734, z = -956.172 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134031, gadget_id = 44000253, pos = { x = 966.880, y = 286.851, z = -954.078 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134032, gadget_id = 44000253, pos = { x = 964.983, y = 286.765, z = -946.638 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134033, gadget_id = 44000253, pos = { x = 960.250, y = 286.392, z = -942.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134034, gadget_id = 44000253, pos = { x = 957.800, y = 286.577, z = -951.772 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134035, gadget_id = 44000253, pos = { x = 961.316, y = 286.641, z = -950.023 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134036, gadget_id = 44000253, pos = { x = 963.532, y = 286.759, z = -948.649 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134037, gadget_id = 44000253, pos = { x = 963.271, y = 286.585, z = -934.704 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134038, gadget_id = 44000253, pos = { x = 964.558, y = 286.744, z = -937.869 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134039, gadget_id = 44000253, pos = { x = 956.929, y = 286.392, z = -938.869 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134040, gadget_id = 44000253, pos = { x = 958.176, y = 286.280, z = -935.708 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134041, gadget_id = 44000253, pos = { x = 961.251, y = 286.893, z = -928.655 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134042, gadget_id = 44000253, pos = { x = 960.323, y = 284.720, z = -921.185 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134043, gadget_id = 44000253, pos = { x = 979.866, y = 293.027, z = -914.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134044, gadget_id = 44000253, pos = { x = 985.732, y = 293.131, z = -917.262 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134045, gadget_id = 44000253, pos = { x = 987.146, y = 290.090, z = -952.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134046, gadget_id = 44000253, pos = { x = 995.292, y = 291.148, z = -945.035 }, rot = { x = 0.000, y = 292.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134047, gadget_id = 44000257, pos = { x = 982.823, y = 290.209, z = -949.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134048, gadget_id = 44000257, pos = { x = 985.363, y = 289.755, z = -952.093 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134049, gadget_id = 44000257, pos = { x = 974.392, y = 287.660, z = -956.306 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134050, gadget_id = 44000257, pos = { x = 967.257, y = 286.854, z = -955.959 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134051, gadget_id = 44000257, pos = { x = 965.057, y = 286.788, z = -952.894 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134052, gadget_id = 44000257, pos = { x = 957.664, y = 286.622, z = -949.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134053, gadget_id = 44000257, pos = { x = 957.404, y = 286.605, z = -948.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134054, gadget_id = 44000257, pos = { x = 960.423, y = 286.566, z = -944.737 }, rot = { x = 0.000, y = 33.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134055, gadget_id = 44000257, pos = { x = 957.351, y = 287.218, z = -925.581 }, rot = { x = 0.000, y = 44.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134056, gadget_id = 44000257, pos = { x = 956.087, y = 287.126, z = -925.616 }, rot = { x = 0.000, y = 44.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134057, gadget_id = 44000257, pos = { x = 961.885, y = 288.848, z = -919.823 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134058, gadget_id = 44000257, pos = { x = 962.880, y = 289.620, z = -918.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134059, gadget_id = 44000257, pos = { x = 963.992, y = 289.870, z = -918.294 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134060, gadget_id = 44000257, pos = { x = 973.833, y = 291.416, z = -918.635 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134061, gadget_id = 44000257, pos = { x = 975.149, y = 291.662, z = -918.617 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134062, gadget_id = 44000257, pos = { x = 984.337, y = 293.115, z = -917.863 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134063, gadget_id = 44000257, pos = { x = 986.541, y = 293.743, z = -914.527 }, rot = { x = 0.000, y = 56.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134064, gadget_id = 44000257, pos = { x = 994.882, y = 293.128, z = -918.663 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134065, gadget_id = 44000257, pos = { x = 993.861, y = 293.075, z = -918.041 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134066, gadget_id = 44000257, pos = { x = 997.302, y = 292.584, z = -920.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134067, gadget_id = 44000257, pos = { x = 998.305, y = 293.383, z = -929.209 }, rot = { x = 0.000, y = 13.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134068, gadget_id = 44000257, pos = { x = 997.718, y = 293.422, z = -927.932 }, rot = { x = 0.000, y = 13.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134069, gadget_id = 44000257, pos = { x = 1011.419, y = 288.604, z = -936.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134070, gadget_id = 44000257, pos = { x = 1007.414, y = 289.505, z = -938.701 }, rot = { x = 0.000, y = 56.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134071, gadget_id = 44000257, pos = { x = 1009.994, y = 290.418, z = -948.579 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134072, gadget_id = 44000257, pos = { x = 1010.968, y = 290.125, z = -947.822 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 场景诱饵1
	{ config_id = 134073, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	{ config_id = 134074, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	{ config_id = 134075, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 2
	{ config_id = 134076, gadget_id = 44000106, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景猎人引导3
	{ config_id = 134077, gadget_id = 44000106, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵1
	{ config_id = 134078, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	{ config_id = 134079, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	{ config_id = 134080, gadget_id = 44000107, pos = { x = 1006.373, y = 294.316, z = -959.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 134081, gadget_id = 70310068, pos = { x = 1002.495, y = 294.286, z = -961.078 }, rot = { x = 15.000, y = 0.000, z = 15.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134082, gadget_id = 70310055, pos = { x = 978.544, y = 288.957, z = -950.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134083, gadget_id = 70310068, pos = { x = 1001.087, y = 292.918, z = -957.674 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134084, gadget_id = 70310069, pos = { x = 933.649, y = 287.141, z = -938.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134085, gadget_id = 70310069, pos = { x = 923.463, y = 293.652, z = -932.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134086, gadget_id = 70310069, pos = { x = 922.410, y = 286.578, z = -957.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134087, gadget_id = 44000253, pos = { x = 937.287, y = 286.337, z = -940.456 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134088, gadget_id = 44000253, pos = { x = 923.004, y = 286.619, z = -963.590 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134089, gadget_id = 44000253, pos = { x = 923.966, y = 286.395, z = -961.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134090, gadget_id = 44000253, pos = { x = 923.435, y = 288.026, z = -962.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134091, gadget_id = 70800009, pos = { x = 937.682, y = 286.465, z = -947.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134092, gadget_id = 70310069, pos = { x = 960.292, y = 301.040, z = -907.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134093, gadget_id = 44000253, pos = { x = 938.615, y = 286.474, z = -938.941 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134094, gadget_id = 44000253, pos = { x = 938.175, y = 287.972, z = -939.887 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134097, gadget_id = 70800107, pos = { x = 969.409, y = 320.000, z = -942.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134098, gadget_id = 44000253, pos = { x = 926.930, y = 293.502, z = -932.389 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134099, gadget_id = 44000253, pos = { x = 927.584, y = 293.542, z = -930.571 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134100, gadget_id = 44000253, pos = { x = 927.165, y = 295.044, z = -931.598 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134101, gadget_id = 44000253, pos = { x = 962.106, y = 302.496, z = -904.681 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134102, gadget_id = 44000253, pos = { x = 961.197, y = 302.674, z = -902.668 }, rot = { x = 0.000, y = 330.000, z = 15.000 }, level = 1, area_id = 10 },
	{ config_id = 134103, gadget_id = 44000253, pos = { x = 962.341, y = 303.931, z = -904.433 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134104, gadget_id = 44000253, pos = { x = 938.009, y = 287.211, z = -932.474 }, rot = { x = 356.399, y = 314.887, z = 3.608 }, level = 1, area_id = 10 },
	{ config_id = 134105, gadget_id = 44000253, pos = { x = 939.337, y = 287.221, z = -930.959 }, rot = { x = 355.588, y = 329.902, z = 2.553 }, level = 1, area_id = 10 },
	{ config_id = 134106, gadget_id = 44000253, pos = { x = 938.897, y = 288.734, z = -931.905 }, rot = { x = 355.212, y = 20.073, z = 358.253 }, level = 1, area_id = 10 },
	{ config_id = 134107, gadget_id = 70310069, pos = { x = 936.667, y = 287.088, z = -934.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 134120, gadget_id = 70800078, pos = { x = 1000.008, y = 292.004, z = -937.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134121, gadget_id = 70800078, pos = { x = 1000.008, y = 291.524, z = -938.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 134122, gadget_id = 70800078, pos = { x = 1000.791, y = 291.659, z = -937.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 134108, shape = RegionShape.SPHERE, radius = 200, pos = { x = 965.032, y = 286.744, z = -938.403 }, area_id = 10 },
	{ config_id = 134109, shape = RegionShape.SPHERE, radius = 80, pos = { x = 967.735, y = 286.934, z = -945.895 }, area_id = 10 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 134110, pos = { x = 1004.474, y = 294.028, z = -960.371 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, area_id = 10 },
	{ config_id = 134111, pos = { x = 1005.268, y = 290.681, z = -950.322 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	{ config_id = 134112, pos = { x = 1002.667, y = 290.611, z = -950.918 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	{ config_id = 134113, pos = { x = 999.874, y = 290.333, z = -950.161 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134114, pos = { x = 991.061, y = 295.685, z = -914.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134115, pos = { x = 1002.828, y = 291.283, z = -936.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134116, pos = { x = 992.247, y = 292.257, z = -944.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134117, pos = { x = 973.037, y = 287.247, z = -952.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134118, pos = { x = 954.880, y = 286.481, z = -949.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 134119, pos = { x = 970.643, y = 295.375, z = -917.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 134095, gadget_id = 70620003, pos = { x = 937.683, y = 293.308, z = -917.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 134096, gadget_id = 70620003, pos = { x = 937.682, y = 291.921, z = -917.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
	}
}

-- 视野组
sight_groups = {
	{ 134001, 134005, 134006, 134076, 134077 }
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
		-- description = 100%必刷,
		monsters = { },
		gadgets = { 134001 },
		regions = { 134108, 134109 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 50%刷,
		monsters = { },
		gadgets = { 134021, 134022, 134023, 134024, 134025, 134026, 134027, 134028, 134029, 134030, 134031, 134032, 134033, 134034, 134035, 134036, 134037, 134038, 134039, 134040, 134041, 134042, 134043, 134044, 134045, 134046, 134047, 134048, 134049, 134050, 134051, 134052, 134053, 134054, 134055, 134056, 134057, 134058, 134059, 134060, 134061, 134062, 134063, 134064, 134065, 134066, 134067, 134068, 134069, 134070, 134071, 134072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 必刷,
		monsters = { },
		gadgets = { 134007, 134008, 134009, 134010, 134011, 134012, 134013, 134014, 134015, 134016, 134017, 134018, 134019, 134020, 134081, 134082, 134083, 134084, 134085, 134086, 134087, 134088, 134089, 134090, 134091, 134092, 134093, 134094, 134097, 134098, 134099, 134100, 134101, 134102, 134103, 134104, 134105, 134106, 134107 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 预留,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 复燃火源防止浇灭,
		monsters = { },
		gadgets = { 134007, 134008, 134009, 134010, 134011, 134012, 134013, 134014, 134015, 134016, 134017, 134018, 134019, 134020, 134081, 134083, 134084, 134085, 134086, 134092, 134107 },
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