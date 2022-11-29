-- 基础信息
local base_info = {
	group_id = 133004009
}

-- DEFS_MISCS
local defs = {
        group_id = 133004009,
        gadget_prison_list = {9002},
        gadget_guide = {9068,9096,9097},            
        bait_list = {
                [1] = {9003,9004,9005},
                [2] = {9059,9060,9061},
                [3] = {9098,9099,9100},
        }, 
        duration = 210,		
        rampage_time = 40,		
        gadget_energy = 9053,
        galleryId = 7005,
        eye_point = 9063,		
}


local energy_info = {
        [1] = { time = 150,step = {-15,15}, points = {9069,9070,9071,9072,9073,9074}},
       -- [2] = { time = 160, points =  {9069,9070,9071,9072,9073,9074}},
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
	[9001] = { config_id = 9001, gadget_id = 70310068, pos = { x = 1001.235, y = 292.963, z = -957.767 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9002] = { config_id = 9002, gadget_id = 70310056, pos = { x = 1004.558, y = 292.425, z = -960.510 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵1
	[9003] = { config_id = 9003, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	[9004] = { config_id = 9004, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	[9005] = { config_id = 9005, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	[9006] = { config_id = 9006, gadget_id = 70310069, pos = { x = 933.797, y = 287.117, z = -938.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9007] = { config_id = 9007, gadget_id = 70310069, pos = { x = 923.611, y = 293.640, z = -933.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9008] = { config_id = 9008, gadget_id = 44000253, pos = { x = 1000.732, y = 290.095, z = -944.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9009] = { config_id = 9009, gadget_id = 44000253, pos = { x = 1002.427, y = 289.902, z = -944.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9010] = { config_id = 9010, gadget_id = 44000253, pos = { x = 1002.569, y = 290.208, z = -942.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9011] = { config_id = 9011, gadget_id = 44000253, pos = { x = 1007.248, y = 290.055, z = -933.544 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, area_id = 10 },
	[9012] = { config_id = 9012, gadget_id = 44000253, pos = { x = 1008.003, y = 289.580, z = -935.249 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, area_id = 10 },
	[9013] = { config_id = 9013, gadget_id = 44000253, pos = { x = 1011.256, y = 288.971, z = -943.785 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9014] = { config_id = 9014, gadget_id = 44000253, pos = { x = 1008.041, y = 291.155, z = -926.793 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 10 },
	[9015] = { config_id = 9015, gadget_id = 44000253, pos = { x = 1004.160, y = 291.660, z = -925.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9016] = { config_id = 9016, gadget_id = 44000253, pos = { x = 1012.352, y = 288.551, z = -937.821 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	[9017] = { config_id = 9017, gadget_id = 44000253, pos = { x = 965.806, y = 286.751, z = -956.265 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, area_id = 10 },
	[9018] = { config_id = 9018, gadget_id = 44000253, pos = { x = 967.028, y = 286.858, z = -954.171 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, area_id = 10 },
	[9019] = { config_id = 9019, gadget_id = 44000253, pos = { x = 965.130, y = 286.779, z = -946.731 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 10 },
	[9020] = { config_id = 9020, gadget_id = 44000253, pos = { x = 960.398, y = 286.383, z = -942.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9021] = { config_id = 9021, gadget_id = 44000253, pos = { x = 957.948, y = 286.573, z = -951.865 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	[9022] = { config_id = 9022, gadget_id = 44000253, pos = { x = 961.463, y = 286.655, z = -950.116 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 1, area_id = 10 },
	[9023] = { config_id = 9023, gadget_id = 44000253, pos = { x = 963.680, y = 286.771, z = -948.742 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, area_id = 10 },
	[9024] = { config_id = 9024, gadget_id = 44000253, pos = { x = 963.419, y = 286.487, z = -934.798 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, area_id = 10 },
	[9025] = { config_id = 9025, gadget_id = 44000253, pos = { x = 964.706, y = 286.631, z = -937.962 }, rot = { x = 0.000, y = 327.000, z = 0.000 }, level = 1, area_id = 10 },
	[9026] = { config_id = 9026, gadget_id = 44000253, pos = { x = 957.078, y = 286.376, z = -938.962 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	[9027] = { config_id = 9027, gadget_id = 44000253, pos = { x = 958.324, y = 286.290, z = -935.801 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	[9028] = { config_id = 9028, gadget_id = 44000253, pos = { x = 961.398, y = 286.886, z = -928.749 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	[9029] = { config_id = 9029, gadget_id = 44000253, pos = { x = 960.471, y = 287.941, z = -921.278 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, area_id = 10 },
	[9030] = { config_id = 9030, gadget_id = 44000253, pos = { x = 980.014, y = 293.033, z = -914.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9031] = { config_id = 9031, gadget_id = 44000253, pos = { x = 985.880, y = 293.123, z = -917.355 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, area_id = 10 },
	[9032] = { config_id = 9032, gadget_id = 44000253, pos = { x = 987.294, y = 290.115, z = -952.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9033] = { config_id = 9033, gadget_id = 44000253, pos = { x = 995.439, y = 291.117, z = -945.128 }, rot = { x = 0.000, y = 292.000, z = 0.000 }, level = 1, area_id = 10 },
	[9034] = { config_id = 9034, gadget_id = 44000257, pos = { x = 982.971, y = 290.190, z = -949.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9035] = { config_id = 9035, gadget_id = 44000257, pos = { x = 985.511, y = 289.789, z = -952.187 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	[9036] = { config_id = 9036, gadget_id = 44000257, pos = { x = 974.540, y = 287.729, z = -956.400 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 10 },
	[9037] = { config_id = 9037, gadget_id = 44000257, pos = { x = 967.405, y = 286.872, z = -956.053 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, area_id = 10 },
	[9038] = { config_id = 9038, gadget_id = 44000257, pos = { x = 965.205, y = 286.790, z = -952.987 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, area_id = 10 },
	[9039] = { config_id = 9039, gadget_id = 44000257, pos = { x = 957.812, y = 286.626, z = -949.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9040] = { config_id = 9040, gadget_id = 44000257, pos = { x = 957.553, y = 286.602, z = -948.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9041] = { config_id = 9041, gadget_id = 44000257, pos = { x = 960.571, y = 286.572, z = -944.831 }, rot = { x = 0.000, y = 33.000, z = 0.000 }, level = 1, area_id = 10 },
	[9042] = { config_id = 9042, gadget_id = 44000257, pos = { x = 957.499, y = 287.223, z = -925.675 }, rot = { x = 0.000, y = 44.000, z = 0.000 }, level = 1, area_id = 10 },
	[9043] = { config_id = 9043, gadget_id = 44000257, pos = { x = 956.235, y = 287.123, z = -925.709 }, rot = { x = 0.000, y = 44.000, z = 0.000 }, level = 1, area_id = 10 },
	[9044] = { config_id = 9044, gadget_id = 44000257, pos = { x = 962.032, y = 288.815, z = -919.916 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	[9045] = { config_id = 9045, gadget_id = 44000257, pos = { x = 963.028, y = 289.588, z = -918.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9046] = { config_id = 9046, gadget_id = 44000257, pos = { x = 964.140, y = 289.831, z = -918.387 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 1, area_id = 10 },
	[9047] = { config_id = 9047, gadget_id = 44000257, pos = { x = 973.981, y = 291.461, z = -918.728 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 1, area_id = 10 },
	[9048] = { config_id = 9048, gadget_id = 44000257, pos = { x = 975.297, y = 291.708, z = -918.710 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 1, area_id = 10 },
	[9049] = { config_id = 9049, gadget_id = 44000257, pos = { x = 984.485, y = 293.107, z = -917.956 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 10 },
	[9050] = { config_id = 9050, gadget_id = 44000257, pos = { x = 986.689, y = 293.712, z = -914.620 }, rot = { x = 0.000, y = 56.000, z = 0.000 }, level = 1, area_id = 10 },
	[9051] = { config_id = 9051, gadget_id = 44000257, pos = { x = 995.029, y = 293.124, z = -918.756 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, area_id = 10 },
	[9052] = { config_id = 9052, gadget_id = 44000257, pos = { x = 994.009, y = 293.069, z = -918.134 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, area_id = 10 },
	[9053] = { config_id = 9053, gadget_id = 44000105, pos = { x = 991.122, y = 295.652, z = -914.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9054] = { config_id = 9054, gadget_id = 70310069, pos = { x = 922.557, y = 286.534, z = -957.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9055] = { config_id = 9055, gadget_id = 44000253, pos = { x = 937.435, y = 286.306, z = -940.550 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	[9056] = { config_id = 9056, gadget_id = 44000253, pos = { x = 923.152, y = 286.374, z = -963.683 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, area_id = 10 },
	[9057] = { config_id = 9057, gadget_id = 44000253, pos = { x = 924.113, y = 286.374, z = -961.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9058] = { config_id = 9058, gadget_id = 44000253, pos = { x = 924.113, y = 287.934, z = -962.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 场景诱饵1
	[9059] = { config_id = 9059, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	[9060] = { config_id = 9060, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	[9061] = { config_id = 9061, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景猎人引导
	[9068] = { config_id = 9068, gadget_id = 44000106, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	[9075] = { config_id = 9075, gadget_id = 70310068, pos = { x = 1006.368, y = 291.014, z = -951.767 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9076] = { config_id = 9076, gadget_id = 70310068, pos = { x = 1010.051, y = 288.977, z = -940.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9077] = { config_id = 9077, gadget_id = 70310068, pos = { x = 1006.437, y = 291.628, z = -925.410 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9078] = { config_id = 9078, gadget_id = 70310068, pos = { x = 1010.690, y = 288.007, z = -932.115 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9079] = { config_id = 9079, gadget_id = 70310068, pos = { x = 995.322, y = 292.843, z = -920.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9080] = { config_id = 9080, gadget_id = 70310069, pos = { x = 971.922, y = 291.203, z = -917.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9081] = { config_id = 9081, gadget_id = 70310068, pos = { x = 961.265, y = 286.363, z = -937.114 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9082] = { config_id = 9082, gadget_id = 70310068, pos = { x = 962.369, y = 287.049, z = -952.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9083] = { config_id = 9083, gadget_id = 70310069, pos = { x = 976.377, y = 289.156, z = -957.585 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9084] = { config_id = 9084, gadget_id = 70310069, pos = { x = 952.854, y = 286.397, z = -942.849 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9085] = { config_id = 9085, gadget_id = 70310069, pos = { x = 968.340, y = 287.040, z = -943.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9086] = { config_id = 9086, gadget_id = 70310069, pos = { x = 962.815, y = 287.886, z = -922.914 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9087] = { config_id = 9087, gadget_id = 70310069, pos = { x = 985.473, y = 293.798, z = -914.379 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9088] = { config_id = 9088, gadget_id = 70310069, pos = { x = 993.859, y = 290.753, z = -951.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9089] = { config_id = 9089, gadget_id = 44000257, pos = { x = 997.450, y = 292.555, z = -920.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9090] = { config_id = 9090, gadget_id = 44000257, pos = { x = 998.453, y = 293.347, z = -929.302 }, rot = { x = 0.000, y = 13.000, z = 0.000 }, level = 1, area_id = 10 },
	[9091] = { config_id = 9091, gadget_id = 44000257, pos = { x = 997.866, y = 293.416, z = -928.025 }, rot = { x = 0.000, y = 13.000, z = 0.000 }, level = 1, area_id = 10 },
	[9092] = { config_id = 9092, gadget_id = 44000257, pos = { x = 1011.567, y = 288.574, z = -936.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9093] = { config_id = 9093, gadget_id = 44000257, pos = { x = 1007.562, y = 289.459, z = -938.794 }, rot = { x = 0.000, y = 56.000, z = 0.000 }, level = 1, area_id = 10 },
	[9094] = { config_id = 9094, gadget_id = 44000257, pos = { x = 1010.142, y = 290.460, z = -948.673 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, area_id = 10 },
	[9095] = { config_id = 9095, gadget_id = 44000257, pos = { x = 1011.116, y = 290.161, z = -947.916 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 2
	[9096] = { config_id = 9096, gadget_id = 44000106, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景猎人引导3
	[9097] = { config_id = 9097, gadget_id = 44000106, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵1
	[9098] = { config_id = 9098, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵2
	[9099] = { config_id = 9099, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	-- 场景诱饵3
	[9100] = { config_id = 9100, gadget_id = 44000107, pos = { x = 1006.521, y = 294.041, z = -959.229 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 10, area_id = 10 },
	[9101] = { config_id = 9101, gadget_id = 70310068, pos = { x = 1002.643, y = 294.332, z = -961.171 }, rot = { x = 15.000, y = 0.000, z = 15.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9102] = { config_id = 9102, gadget_id = 70310055, pos = { x = 978.692, y = 289.611, z = -950.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9103] = { config_id = 9103, gadget_id = 70800009, pos = { x = 937.830, y = 286.482, z = -947.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9104] = { config_id = 9104, gadget_id = 70310069, pos = { x = 960.440, y = 300.953, z = -907.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[9105] = { config_id = 9105, gadget_id = 44000253, pos = { x = 938.763, y = 286.426, z = -939.035 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	[9106] = { config_id = 9106, gadget_id = 44000253, pos = { x = 938.323, y = 287.819, z = -939.981 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9109] = { config_id = 9109, gadget_id = 70310066, pos = { x = 969.409, y = 320.000, z = -942.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[9110] = { config_id = 9110, gadget_id = 44000253, pos = { x = 927.078, y = 293.409, z = -932.482 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9111] = { config_id = 9111, gadget_id = 44000253, pos = { x = 927.731, y = 293.437, z = -930.664 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, area_id = 10 },
	[9112] = { config_id = 9112, gadget_id = 44000253, pos = { x = 927.313, y = 294.968, z = -931.691 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9113] = { config_id = 9113, gadget_id = 44000253, pos = { x = 962.254, y = 302.180, z = -904.774 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9114] = { config_id = 9114, gadget_id = 44000253, pos = { x = 961.344, y = 302.699, z = -902.761 }, rot = { x = 0.000, y = 330.000, z = 15.000 }, level = 1, area_id = 10 },
	[9115] = { config_id = 9115, gadget_id = 44000253, pos = { x = 962.489, y = 303.726, z = -904.527 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, area_id = 10 },
	[9116] = { config_id = 9116, gadget_id = 44000253, pos = { x = 938.157, y = 287.160, z = -932.568 }, rot = { x = 356.399, y = 314.887, z = 3.608 }, level = 1, area_id = 10 },
	[9117] = { config_id = 9117, gadget_id = 44000253, pos = { x = 939.485, y = 287.280, z = -931.052 }, rot = { x = 355.588, y = 329.902, z = 2.553 }, level = 1, area_id = 10 },
	[9118] = { config_id = 9118, gadget_id = 44000253, pos = { x = 939.045, y = 288.674, z = -931.998 }, rot = { x = 355.212, y = 20.073, z = 358.253 }, level = 1, area_id = 10 },
	[9119] = { config_id = 9119, gadget_id = 70310069, pos = { x = 936.815, y = 287.094, z = -934.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
	[9062] = { config_id = 9062, shape = RegionShape.SPHERE, radius = 200, pos = { x = 965.180, y = 286.748, z = -938.496 }, area_id = 10 },
	[9063] = { config_id = 9063, shape = RegionShape.SPHERE, radius = 80, pos = { x = 967.883, y = 329.957, z = -945.988 }, area_id = 10 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 9064, pos = { x = 1004.622, y = 294.072, z = -960.464 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, area_id = 10 },
	{ config_id = 9065, pos = { x = 1005.416, y = 291.391, z = -953.352 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	{ config_id = 9066, pos = { x = 1002.815, y = 292.244, z = -955.998 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	{ config_id = 9067, pos = { x = 1000.022, y = 292.244, z = -955.976 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9069, pos = { x = 991.209, y = 295.599, z = -914.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9070, pos = { x = 1002.976, y = 291.180, z = -936.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9071, pos = { x = 992.395, y = 292.163, z = -944.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9072, pos = { x = 973.184, y = 287.261, z = -952.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9073, pos = { x = 955.028, y = 286.486, z = -949.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	-- 能量随机点1
	{ config_id = 9074, pos = { x = 970.791, y = 295.447, z = -917.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 9107, gadget_id = 70620003, pos = { x = 937.830, y = 297.298, z = -917.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 9108, gadget_id = 70620003, pos = { x = 937.830, y = 291.835, z = -917.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
	}
}

-- 视野组
sight_groups = {
	{ 9002, 9059, 9060, 9061, 9068 }
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
		gadgets = { 9002 },
		regions = { 9062, 9063 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 50%刷,
		monsters = { },
		gadgets = { 9008, 9009, 9010, 9011, 9012, 9013, 9014, 9015, 9016, 9017, 9018, 9019, 9020, 9021, 9022, 9023, 9024, 9025, 9026, 9027, 9028, 9029, 9030, 9031, 9032, 9033, 9034, 9035, 9036, 9037, 9038, 9039, 9040, 9041, 9042, 9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050, 9051, 9052, 9089, 9090, 9091, 9092, 9093, 9094, 9095 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 必刷,
		monsters = { },
		gadgets = { 9001, 9006, 9007, 9054, 9055, 9056, 9057, 9058, 9075, 9076, 9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084, 9085, 9086, 9087, 9088, 9101, 9102, 9103, 9104, 9105, 9106, 9109, 9110, 9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118, 9119 },
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
		gadgets = { 9001, 9006, 9007, 9054, 9075, 9076, 9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084, 9085, 9086, 9087, 9088, 9101, 9104, 9119 },
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

require "V1_5/HideAndSeek_Gallery"
require "V1_5/HideAndSeek_Skill"