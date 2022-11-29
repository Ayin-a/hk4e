-- 基础信息
local base_info = {
	group_id = 133008672
}

-- DEFS_MISCS
local defs = {
        group_id = 133008672,
        --开启机关的configID，SelectOption为175,如果这个group非起点，则配0
        load_on_start = {2,7},
        starter_gadget = 672012,
        --全程终点region的ConfigID,如果这个group非终点，则配0
        end_region = 672049,
        optimiz_region = {672037,672038,672039,672062},
        --全程终点在哪个suit,如果这个group非终点，则配0
        ending_suit = 6,
        --挑战限时秒
        challenge_time = 180,
        --总收集目标数
        coin_gadget_id = 70220086,

        --金币和冰柱的对应关系
        --[冰柱config_id]={金币config_id1,金币config_id2...}
        coin_ice = { [672006]={672085},[672003]={672086},[672017]={672019},[672060]={672122},[672020]={672123},[672119]={672124}
        },
        end_gadget = 672049,
        look_pos = {x=850, y=292, z=-983},
        duration = 2,
        --此Group中，哪些suit里放了金币（包括冰冻金币）
        coin_suits = {2,3,4,5,6},
        gallery_id = 13002,
        guide_regionID = 672015,
        father_challenge = 2003002 
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
	[672001] = { config_id = 672001, gadget_id = 70220077, pos = { x = 793.558, y = 286.957, z = -914.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672002] = { config_id = 672002, gadget_id = 70220077, pos = { x = 735.839, y = 249.685, z = -922.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672003] = { config_id = 672003, gadget_id = 70220094, pos = { x = 771.064, y = 271.603, z = -914.000 }, rot = { x = 8.489, y = 176.337, z = 319.524 }, level = 30, area_id = 10 },
	[672004] = { config_id = 672004, gadget_id = 70220078, pos = { x = 718.673, y = 237.350, z = -926.464 }, rot = { x = 11.516, y = 335.909, z = 27.948 }, level = 30, area_id = 10 },
	[672005] = { config_id = 672005, gadget_id = 70220078, pos = { x = 771.099, y = 269.296, z = -909.717 }, rot = { x = 22.356, y = 350.666, z = 26.456 }, level = 30, area_id = 10 },
	[672006] = { config_id = 672006, gadget_id = 70220094, pos = { x = 789.558, y = 285.717, z = -914.706 }, rot = { x = 22.623, y = 275.692, z = 351.652 }, level = 30, area_id = 10 },
	[672007] = { config_id = 672007, gadget_id = 70710126, pos = { x = 659.521, y = 203.574, z = -937.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672008] = { config_id = 672008, gadget_id = 70220084, pos = { x = 660.269, y = 204.567, z = -938.505 }, rot = { x = 0.000, y = 303.800, z = 0.000 }, level = 30, area_id = 10 },
	[672009] = { config_id = 672009, gadget_id = 70220088, pos = { x = 620.770, y = 200.000, z = -924.040 }, rot = { x = 0.000, y = 308.846, z = 0.000 }, level = 30, area_id = 10 },
	[672010] = { config_id = 672010, gadget_id = 70220078, pos = { x = 756.068, y = 261.333, z = -919.526 }, rot = { x = 338.090, y = 51.815, z = 52.661 }, level = 30, area_id = 10 },
	[672011] = { config_id = 672011, gadget_id = 70690027, pos = { x = 640.122, y = 200.109, z = -921.984 }, rot = { x = 0.000, y = 177.400, z = 0.000 }, level = 1, area_id = 10 },
	[672012] = { config_id = 672012, gadget_id = 70350357, pos = { x = 854.012, y = 293.291, z = -1001.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 10 },
	[672013] = { config_id = 672013, gadget_id = 70690001, pos = { x = 606.640, y = 207.732, z = -883.159 }, rot = { x = 351.724, y = 294.579, z = 359.728 }, level = 30, area_id = 10 },
	[672014] = { config_id = 672014, gadget_id = 70690001, pos = { x = 598.163, y = 209.166, z = -879.157 }, rot = { x = 353.776, y = 296.042, z = 359.729 }, level = 30, area_id = 10 },
	-- 仅目标点无功能
	[672016] = { config_id = 672016, gadget_id = 70360025, pos = { x = 659.248, y = 203.683, z = -902.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672017] = { config_id = 672017, gadget_id = 70220094, pos = { x = 755.369, y = 258.883, z = -914.221 }, rot = { x = 350.962, y = 352.881, z = 41.005 }, level = 30, area_id = 10 },
	[672018] = { config_id = 672018, gadget_id = 70220078, pos = { x = 724.491, y = 240.390, z = -922.861 }, rot = { x = 31.034, y = 359.025, z = 44.671 }, level = 30, area_id = 10 },
	[672019] = { config_id = 672019, gadget_id = 70220086, pos = { x = 755.247, y = 259.621, z = -914.333 }, rot = { x = 325.548, y = 96.426, z = 100.094 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672020] = { config_id = 672020, gadget_id = 70220094, pos = { x = 698.030, y = 226.024, z = -932.926 }, rot = { x = 25.942, y = 320.022, z = 18.308 }, level = 30, area_id = 10 },
	[672021] = { config_id = 672021, gadget_id = 70690001, pos = { x = 586.779, y = 210.811, z = -872.059 }, rot = { x = 352.873, y = 313.821, z = 359.746 }, level = 30, area_id = 10 },
	-- 阶段终点
	[672022] = { config_id = 672022, gadget_id = 70710126, pos = { x = 804.929, y = 287.282, z = -916.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672023] = { config_id = 672023, gadget_id = 70710126, pos = { x = 742.855, y = 252.777, z = -920.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 无功能目标点
	[672024] = { config_id = 672024, gadget_id = 70350085, pos = { x = 804.929, y = 287.282, z = -916.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672025] = { config_id = 672025, gadget_id = 70350085, pos = { x = 742.855, y = 252.777, z = -920.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672026] = { config_id = 672026, gadget_id = 70350085, pos = { x = 659.521, y = 203.574, z = -937.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672027] = { config_id = 672027, gadget_id = 70690001, pos = { x = 580.338, y = 211.927, z = -865.878 }, rot = { x = 354.741, y = 321.424, z = 359.762 }, level = 30, area_id = 10 },
	[672028] = { config_id = 672028, gadget_id = 70220088, pos = { x = 615.593, y = 200.000, z = -906.856 }, rot = { x = 0.000, y = 308.846, z = 0.000 }, level = 30, area_id = 10 },
	[672029] = { config_id = 672029, gadget_id = 70690001, pos = { x = 574.765, y = 212.750, z = -858.891 }, rot = { x = 2.180, y = 343.690, z = 359.828 }, level = 30, area_id = 10 },
	[672030] = { config_id = 672030, gadget_id = 70690001, pos = { x = 572.247, y = 212.409, z = -850.284 }, rot = { x = 4.007, y = 350.397, z = 359.854 }, level = 30, area_id = 10 },
	[672031] = { config_id = 672031, gadget_id = 70220084, pos = { x = 804.682, y = 288.565, z = -915.495 }, rot = { x = 0.000, y = 274.401, z = 0.000 }, level = 30, area_id = 10 },
	[672032] = { config_id = 672032, gadget_id = 70220084, pos = { x = 593.536, y = 207.564, z = -810.123 }, rot = { x = 331.763, y = 93.275, z = 344.184 }, level = 30, area_id = 10 },
	[672033] = { config_id = 672033, gadget_id = 70690001, pos = { x = 570.494, y = 211.743, z = -838.044 }, rot = { x = 3.874, y = 10.725, z = 0.910 }, level = 30, area_id = 10 },
	[672034] = { config_id = 672034, gadget_id = 70220076, pos = { x = 616.811, y = 203.186, z = -897.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672035] = { config_id = 672035, gadget_id = 70690001, pos = { x = 572.875, y = 210.848, z = -823.978 }, rot = { x = 1.311, y = 48.411, z = 0.547 }, level = 30, area_id = 10 },
	[672036] = { config_id = 672036, gadget_id = 70690027, pos = { x = 613.911, y = 200.741, z = -888.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[672040] = { config_id = 672040, gadget_id = 70710126, pos = { x = 596.463, y = 207.909, z = -810.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672041] = { config_id = 672041, gadget_id = 70350085, pos = { x = 596.828, y = 208.227, z = -810.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672042] = { config_id = 672042, gadget_id = 70220086, pos = { x = 577.533, y = 210.156, z = -819.357 }, rot = { x = 1.340, y = 45.190, z = 0.472 }, level = 30, area_id = 10 },
	[672043] = { config_id = 672043, gadget_id = 70220086, pos = { x = 583.599, y = 209.502, z = -815.516 }, rot = { x = 1.209, y = 57.388, z = 0.745 }, level = 30, area_id = 10 },
	[672044] = { config_id = 672044, gadget_id = 70220076, pos = { x = 838.127, y = 294.432, z = -951.104 }, rot = { x = 5.228, y = 348.767, z = 0.000 }, level = 30, area_id = 10 },
	[672045] = { config_id = 672045, gadget_id = 70220086, pos = { x = 608.944, y = 213.355, z = -810.171 }, rot = { x = 347.042, y = 92.560, z = 0.000 }, level = 30, area_id = 10 },
	[672046] = { config_id = 672046, gadget_id = 70350085, pos = { x = 659.248, y = 203.683, z = -902.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672056] = { config_id = 672056, gadget_id = 70220092, pos = { x = 853.844, y = 292.681, z = -988.642 }, rot = { x = 5.097, y = 354.617, z = 0.000 }, level = 30, area_id = 10 },
	[672057] = { config_id = 672057, gadget_id = 70220086, pos = { x = 843.554, y = 298.194, z = -966.221 }, rot = { x = 357.953, y = 353.680, z = 1.260 }, level = 30, area_id = 10 },
	[672058] = { config_id = 672058, gadget_id = 70220092, pos = { x = 847.764, y = 292.903, z = -978.421 }, rot = { x = 354.850, y = 293.735, z = 0.000 }, level = 30, area_id = 10 },
	[672059] = { config_id = 672059, gadget_id = 70220084, pos = { x = 743.627, y = 253.882, z = -920.619 }, rot = { x = 29.126, y = 258.345, z = 351.292 }, level = 30, area_id = 10 },
	[672060] = { config_id = 672060, gadget_id = 70220094, pos = { x = 723.323, y = 240.805, z = -928.112 }, rot = { x = 352.153, y = 353.905, z = 38.028 }, level = 30, area_id = 10 },
	[672061] = { config_id = 672061, gadget_id = 70220076, pos = { x = 845.963, y = 294.074, z = -973.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672063] = { config_id = 672063, gadget_id = 70220092, pos = { x = 840.456, y = 294.290, z = -956.955 }, rot = { x = 2.428, y = 330.638, z = 0.000 }, level = 30, area_id = 10 },
	[672064] = { config_id = 672064, gadget_id = 70220077, pos = { x = 775.050, y = 275.691, z = -914.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672065] = { config_id = 672065, gadget_id = 70220093, pos = { x = 835.107, y = 295.651, z = -943.379 }, rot = { x = 358.958, y = 320.983, z = 2.166 }, level = 30, area_id = 10 },
	[672066] = { config_id = 672066, gadget_id = 70220093, pos = { x = 836.047, y = 293.959, z = -944.752 }, rot = { x = 358.958, y = 320.983, z = 2.166 }, level = 30, area_id = 10 },
	[672067] = { config_id = 672067, gadget_id = 70220092, pos = { x = 824.985, y = 290.972, z = -931.654 }, rot = { x = 7.662, y = 308.291, z = 0.000 }, level = 30, area_id = 10 },
	[672068] = { config_id = 672068, gadget_id = 70220086, pos = { x = 762.737, y = 264.779, z = -913.999 }, rot = { x = 310.640, y = 93.127, z = 2.553 }, level = 30, area_id = 10 },
	[672069] = { config_id = 672069, gadget_id = 70220092, pos = { x = 816.265, y = 289.613, z = -924.995 }, rot = { x = 5.322, y = 306.542, z = 0.000 }, level = 30, area_id = 10 },
	[672070] = { config_id = 672070, gadget_id = 70220086, pos = { x = 603.766, y = 208.192, z = -881.844 }, rot = { x = 351.724, y = 294.579, z = 359.728 }, level = 30, area_id = 10 },
	[672071] = { config_id = 672071, gadget_id = 70220078, pos = { x = 851.930, y = 291.592, z = -981.450 }, rot = { x = 0.000, y = 5.845, z = 0.000 }, level = 30, area_id = 10 },
	[672072] = { config_id = 672072, gadget_id = 70220086, pos = { x = 624.703, y = 220.674, z = -809.797 }, rot = { x = 327.892, y = 100.974, z = 0.000 }, level = 30, area_id = 10 },
	[672073] = { config_id = 672073, gadget_id = 70220078, pos = { x = 853.181, y = 291.499, z = -981.325 }, rot = { x = 352.274, y = 292.488, z = 0.000 }, level = 30, area_id = 10 },
	[672074] = { config_id = 672074, gadget_id = 70220078, pos = { x = 848.751, y = 291.680, z = -984.547 }, rot = { x = 0.000, y = 320.018, z = 0.000 }, level = 30, area_id = 10 },
	[672075] = { config_id = 672075, gadget_id = 70220078, pos = { x = 848.035, y = 291.941, z = -985.824 }, rot = { x = 0.000, y = 294.700, z = 6.849 }, level = 30, area_id = 10 },
	[672076] = { config_id = 672076, gadget_id = 70220078, pos = { x = 844.499, y = 292.474, z = -966.045 }, rot = { x = 4.111, y = 31.224, z = 0.000 }, level = 30, area_id = 10 },
	[672077] = { config_id = 672077, gadget_id = 70220078, pos = { x = 846.310, y = 292.703, z = -964.855 }, rot = { x = 0.000, y = 332.268, z = 0.000 }, level = 30, area_id = 10 },
	[672078] = { config_id = 672078, gadget_id = 70220078, pos = { x = 842.502, y = 292.443, z = -966.052 }, rot = { x = 0.000, y = 318.904, z = 0.000 }, level = 30, area_id = 10 },
	[672079] = { config_id = 672079, gadget_id = 70220078, pos = { x = 840.771, y = 292.683, z = -966.750 }, rot = { x = 0.000, y = 332.093, z = 7.414 }, level = 30, area_id = 10 },
	[672080] = { config_id = 672080, gadget_id = 70220078, pos = { x = 834.987, y = 292.404, z = -941.416 }, rot = { x = 2.918, y = 288.553, z = 4.650 }, level = 30, area_id = 10 },
	[672081] = { config_id = 672081, gadget_id = 70220078, pos = { x = 836.583, y = 292.283, z = -940.882 }, rot = { x = 6.383, y = 24.391, z = 3.301 }, level = 30, area_id = 10 },
	[672082] = { config_id = 672082, gadget_id = 70220078, pos = { x = 833.506, y = 292.266, z = -942.264 }, rot = { x = 8.528, y = 334.505, z = 359.836 }, level = 30, area_id = 10 },
	[672083] = { config_id = 672083, gadget_id = 70220078, pos = { x = 833.060, y = 292.676, z = -943.770 }, rot = { x = 358.687, y = 317.107, z = 7.043 }, level = 30, area_id = 10 },
	[672084] = { config_id = 672084, gadget_id = 70220086, pos = { x = 850.866, y = 292.503, z = -983.694 }, rot = { x = 359.970, y = 321.065, z = -0.001 }, level = 30, area_id = 10 },
	[672085] = { config_id = 672085, gadget_id = 70220086, pos = { x = 789.466, y = 286.876, z = -914.518 }, rot = { x = 22.255, y = 273.132, z = 350.674 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672086] = { config_id = 672086, gadget_id = 70220086, pos = { x = 770.464, y = 272.594, z = -914.023 }, rot = { x = 307.506, y = 98.035, z = 84.376 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672087] = { config_id = 672087, gadget_id = 70220092, pos = { x = 730.483, y = 247.036, z = -924.390 }, rot = { x = 23.287, y = 235.794, z = 0.000 }, level = 30, area_id = 10 },
	[672088] = { config_id = 672088, gadget_id = 70220078, pos = { x = 697.450, y = 223.651, z = -929.081 }, rot = { x = 29.493, y = 6.107, z = 32.579 }, level = 30, area_id = 10 },
	[672089] = { config_id = 672089, gadget_id = 70220092, pos = { x = 716.740, y = 236.600, z = -929.974 }, rot = { x = 28.289, y = 252.903, z = 0.000 }, level = 30, area_id = 10 },
	[672090] = { config_id = 672090, gadget_id = 70220077, pos = { x = 708.706, y = 233.462, z = -931.665 }, rot = { x = 26.810, y = 259.317, z = 0.000 }, level = 30, area_id = 10 },
	[672091] = { config_id = 672091, gadget_id = 70220092, pos = { x = 704.077, y = 229.957, z = -932.629 }, rot = { x = 27.415, y = 258.965, z = 0.000 }, level = 30, area_id = 10 },
	[672092] = { config_id = 672092, gadget_id = 70220092, pos = { x = 693.431, y = 224.072, z = -935.351 }, rot = { x = 40.614, y = 249.799, z = 0.000 }, level = 30, area_id = 10 },
	[672093] = { config_id = 672093, gadget_id = 70220077, pos = { x = 687.565, y = 218.394, z = -935.196 }, rot = { x = 40.614, y = 249.800, z = 0.000 }, level = 30, area_id = 10 },
	[672094] = { config_id = 672094, gadget_id = 70220092, pos = { x = 680.128, y = 213.353, z = -936.257 }, rot = { x = 24.929, y = 266.691, z = 0.000 }, level = 30, area_id = 10 },
	[672095] = { config_id = 672095, gadget_id = 70220092, pos = { x = 666.885, y = 207.249, z = -937.695 }, rot = { x = 24.929, y = 266.691, z = 0.000 }, level = 30, area_id = 10 },
	[672096] = { config_id = 672096, gadget_id = 70220086, pos = { x = 638.121, y = 228.770, z = -815.389 }, rot = { x = 342.690, y = 130.399, z = 0.000 }, level = 30, area_id = 10 },
	[672097] = { config_id = 672097, gadget_id = 70310015, pos = { x = 806.345, y = 287.726, z = -913.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672098] = { config_id = 672098, gadget_id = 70310015, pos = { x = 803.566, y = 287.286, z = -919.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672099] = { config_id = 672099, gadget_id = 70310015, pos = { x = 742.044, y = 251.431, z = -919.605 }, rot = { x = 11.933, y = 0.000, z = 11.922 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672100] = { config_id = 672100, gadget_id = 70220086, pos = { x = 634.781, y = 209.191, z = -922.871 }, rot = { x = 0.000, y = 96.489, z = 0.000 }, level = 30, area_id = 10 },
	[672101] = { config_id = 672101, gadget_id = 70220086, pos = { x = 617.184, y = 205.525, z = -916.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672102] = { config_id = 672102, gadget_id = 70310015, pos = { x = 743.959, y = 252.374, z = -923.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672103] = { config_id = 672103, gadget_id = 70310015, pos = { x = 659.727, y = 203.605, z = -939.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672104] = { config_id = 672104, gadget_id = 70310015, pos = { x = 659.009, y = 203.514, z = -935.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672105] = { config_id = 672105, gadget_id = 70310015, pos = { x = 596.032, y = 207.920, z = -807.425 }, rot = { x = 0.000, y = 0.000, z = 6.778 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672106] = { config_id = 672106, gadget_id = 70310015, pos = { x = 597.868, y = 208.065, z = -811.432 }, rot = { x = 0.000, y = 0.000, z = 5.116 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672107] = { config_id = 672107, gadget_id = 70220086, pos = { x = 655.670, y = 214.705, z = -868.334 }, rot = { x = 16.274, y = 173.725, z = 0.000 }, level = 1, area_id = 10 },
	[672108] = { config_id = 672108, gadget_id = 70310015, pos = { x = 656.444, y = 203.417, z = -903.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672109] = { config_id = 672109, gadget_id = 70220092, pos = { x = 601.753, y = 212.333, z = -810.412 }, rot = { x = 351.829, y = 95.725, z = 0.000 }, level = 30, area_id = 10 },
	[672110] = { config_id = 672110, gadget_id = 70220092, pos = { x = 653.342, y = 203.271, z = -933.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672111] = { config_id = 672111, gadget_id = 70220092, pos = { x = 617.944, y = 214.454, z = -810.499 }, rot = { x = 323.493, y = 83.916, z = 0.000 }, level = 30, area_id = 10 },
	[672112] = { config_id = 672112, gadget_id = 70220092, pos = { x = 649.304, y = 202.609, z = -928.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[672113] = { config_id = 672113, gadget_id = 70220092, pos = { x = 630.650, y = 225.909, z = -810.211 }, rot = { x = 342.690, y = 130.399, z = 0.000 }, level = 30, area_id = 10 },
	[672116] = { config_id = 672116, gadget_id = 70220086, pos = { x = 664.769, y = 221.184, z = -845.003 }, rot = { x = 10.381, y = 208.602, z = 0.000 }, level = 1, area_id = 10 },
	[672117] = { config_id = 672117, gadget_id = 70690001, pos = { x = 639.010, y = 224.045, z = -831.880 }, rot = { x = 2.703, y = 190.433, z = 0.000 }, level = 1, area_id = 10 },
	[672118] = { config_id = 672118, gadget_id = 70220078, pos = { x = 698.108, y = 226.613, z = -936.587 }, rot = { x = 329.981, y = 24.820, z = 29.387 }, level = 30, area_id = 10 },
	[672119] = { config_id = 672119, gadget_id = 70220094, pos = { x = 673.551, y = 209.344, z = -937.424 }, rot = { x = 0.000, y = 0.000, z = 8.432 }, level = 30, area_id = 10 },
	[672122] = { config_id = 672122, gadget_id = 70220086, pos = { x = 722.848, y = 241.605, z = -928.305 }, rot = { x = 330.156, y = 69.169, z = 353.276 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672123] = { config_id = 672123, gadget_id = 70220086, pos = { x = 697.661, y = 227.118, z = -932.775 }, rot = { x = 324.862, y = 76.719, z = 355.098 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[672124] = { config_id = 672124, gadget_id = 70220086, pos = { x = 673.544, y = 210.910, z = -937.359 }, rot = { x = 334.277, y = 71.095, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	-- 障碍物球路径1
	[672125] = { config_id = 672125, gadget_id = 70360095, pos = { x = 729.790, y = 248.383, z = -927.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800206, area_id = 10 },
	-- 障碍物球路径2
	[672126] = { config_id = 672126, gadget_id = 70360095, pos = { x = 713.693, y = 234.388, z = -924.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800207, area_id = 10 },
	-- 障碍物球路径3
	[672127] = { config_id = 672127, gadget_id = 70360095, pos = { x = 703.911, y = 232.455, z = -937.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800208, area_id = 10 },
	-- 障碍物球路径4
	[672128] = { config_id = 672128, gadget_id = 70360095, pos = { x = 676.759, y = 214.567, z = -941.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800209, area_id = 10 },
	-- 障碍物球路径5
	[672129] = { config_id = 672129, gadget_id = 70360095, pos = { x = 675.034, y = 214.567, z = -931.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800210, area_id = 10 },
	[672130] = { config_id = 672130, gadget_id = 70220093, pos = { x = 833.925, y = 297.357, z = -941.848 }, rot = { x = 358.958, y = 320.983, z = 2.166 }, level = 30, area_id = 10 },
	[672131] = { config_id = 672131, gadget_id = 70690001, pos = { x = 637.564, y = 223.668, z = -839.733 }, rot = { x = 8.110, y = 178.103, z = 0.000 }, level = 1, area_id = 10 },
	[672132] = { config_id = 672132, gadget_id = 70690001, pos = { x = 637.824, y = 222.549, z = -847.580 }, rot = { x = 21.943, y = 133.804, z = 0.000 }, level = 1, area_id = 10 },
	[672133] = { config_id = 672133, gadget_id = 70690001, pos = { x = 644.339, y = 219.805, z = -853.403 }, rot = { x = 19.397, y = 121.585, z = 0.000 }, level = 1, area_id = 10 },
	[672134] = { config_id = 672134, gadget_id = 70690001, pos = { x = 656.315, y = 224.746, z = -822.233 }, rot = { x = 7.853, y = 118.842, z = 0.000 }, level = 1, area_id = 10 },
	[672135] = { config_id = 672135, gadget_id = 70690001, pos = { x = 663.256, y = 224.027, z = -826.055 }, rot = { x = 7.538, y = 147.160, z = 0.000 }, level = 1, area_id = 10 },
	[672136] = { config_id = 672136, gadget_id = 70690001, pos = { x = 655.855, y = 214.210, z = -870.020 }, rot = { x = 16.274, y = 173.725, z = 0.000 }, level = 1, area_id = 10 },
	[672137] = { config_id = 672137, gadget_id = 70690001, pos = { x = 667.486, y = 222.995, z = -832.609 }, rot = { x = 7.932, y = 181.639, z = 0.000 }, level = 1, area_id = 10 },
	[672138] = { config_id = 672138, gadget_id = 70690001, pos = { x = 656.407, y = 211.123, z = -884.744 }, rot = { x = 16.274, y = 173.724, z = 0.000 }, level = 1, area_id = 10 },
	[672139] = { config_id = 672139, gadget_id = 70690001, pos = { x = 667.263, y = 221.905, z = -840.429 }, rot = { x = 10.381, y = 208.602, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 显示教学region
	[672015] = { config_id = 672015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 854.012, y = 293.291, z = -1001.119 }, area_id = 10 },
	-- 性能优化圈
	[672037] = { config_id = 672037, shape = RegionShape.SPHERE, radius = 70, pos = { x = 849.873, y = 291.938, z = -971.895 }, area_id = 10 },
	-- 性能优化圈
	[672038] = { config_id = 672038, shape = RegionShape.SPHERE, radius = 70, pos = { x = 755.781, y = 275.558, z = -916.624 }, area_id = 10 },
	-- 性能优化圈
	[672039] = { config_id = 672039, shape = RegionShape.SPHERE, radius = 70, pos = { x = 657.930, y = 220.762, z = -926.235 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[672047] = { config_id = 672047, shape = RegionShape.SPHERE, radius = 5, pos = { x = 659.521, y = 203.574, z = -937.938 }, area_id = 10 },
	-- 实际标记终点区域
	[672049] = { config_id = 672049, shape = RegionShape.SPHERE, radius = 5, pos = { x = 659.248, y = 203.683, z = -902.540 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[672050] = { config_id = 672050, shape = RegionShape.SPHERE, radius = 5, pos = { x = 742.855, y = 252.777, z = -920.745 }, area_id = 10 },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	[672053] = { config_id = 672053, shape = RegionShape.SPHERE, radius = 3, pos = { x = 804.929, y = 287.282, z = -916.096 }, area_id = 10 },
	-- 切换一组冰柱为default
	[672054] = { config_id = 672054, shape = RegionShape.SPHERE, radius = 12.08, pos = { x = 845.493, y = 292.660, z = -976.515 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[672055] = { config_id = 672055, shape = RegionShape.SPHERE, radius = 5, pos = { x = 596.828, y = 208.227, z = -810.062 }, area_id = 10 },
	-- 性能优化圈
	[672062] = { config_id = 672062, shape = RegionShape.SPHERE, radius = 80, pos = { x = 614.925, y = 223.820, z = -852.518 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1672047, name = "ENTER_REGION_672047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_672047", action = "action_EVENT_ENTER_REGION_672047" },
	{ config_id = 1672048, name = "GADGET_CREATE_672048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672048", action = "action_EVENT_GADGET_CREATE_672048" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1672050, name = "ENTER_REGION_672050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_672050", action = "action_EVENT_ENTER_REGION_672050" },
	{ config_id = 1672051, name = "CHALLENGE_SUCCESS_672051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_672051" },
	{ config_id = 1672052, name = "CHALLENGE_FAIL_672052", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_672052" },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	{ config_id = 1672053, name = "ENTER_REGION_672053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_672053", action = "action_EVENT_ENTER_REGION_672053" },
	-- 切换一组冰柱为default
	{ config_id = 1672054, name = "ENTER_REGION_672054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_672054", action = "action_EVENT_ENTER_REGION_672054" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1672055, name = "ENTER_REGION_672055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_672055", action = "action_EVENT_ENTER_REGION_672055" }
}

-- 点位
points = {
	{ config_id = 672114, pos = { x = 861.182, y = 292.452, z = -993.191 }, rot = { x = 0.000, y = 275.500, z = 0.000 }, area_id = 10 }
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
		gadgets = { 672012 },
		regions = { 672015 },
		triggers = { "GADGET_CREATE_672048", "CHALLENGE_SUCCESS_672051", "CHALLENGE_FAIL_672052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一段：小战斗+大跳过冰,
		monsters = { },
		gadgets = { 672022, 672024, 672031, 672044, 672056, 672057, 672058, 672061, 672063, 672065, 672066, 672067, 672069, 672071, 672073, 672074, 672075, 672076, 672077, 672078, 672079, 672080, 672081, 672082, 672083, 672084, 672097, 672098, 672130 },
		regions = { 672053 },
		triggers = { "ENTER_REGION_672053" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第二段 逐渐增加速降复杂度,
		monsters = { },
		gadgets = { 672001, 672003, 672005, 672006, 672010, 672017, 672019, 672023, 672025, 672059, 672064, 672068, 672085, 672086, 672099, 672102 },
		regions = { 672050 },
		triggers = { "ENTER_REGION_672050" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第三段 速降结合障碍球,
		monsters = { },
		gadgets = { 672002, 672004, 672007, 672008, 672018, 672020, 672026, 672060, 672087, 672088, 672089, 672090, 672091, 672092, 672093, 672094, 672095, 672103, 672104, 672118, 672119, 672122, 672123, 672124, 672125, 672126, 672127, 672128, 672129 },
		regions = { 672047 },
		triggers = { "ENTER_REGION_672047" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第四段 遗迹大跳,
		monsters = { },
		gadgets = { 672009, 672011, 672013, 672014, 672021, 672027, 672028, 672029, 672030, 672032, 672033, 672034, 672035, 672036, 672040, 672041, 672042, 672043, 672070, 672100, 672101, 672105, 672106, 672110, 672112 },
		regions = { 672055 },
		triggers = { "ENTER_REGION_672055" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第五段 小飞行结束,
		monsters = { },
		gadgets = { 672016, 672045, 672046, 672072, 672096, 672107, 672108, 672109, 672111, 672113, 672116, 672117, 672131, 672132, 672133, 672134, 672135, 672136, 672137, 672138, 672139 },
		regions = { 672049 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 672037, 672038, 672039, 672062 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_672047(context, evt)
	if evt.param1 ~= 672047 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_672047(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008672, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008672, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_672048(context, evt)
	if 672012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_672048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008672, 672012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_672050(context, evt)
	if evt.param1 ~= 672050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_672050(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008672, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008672, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_672051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008672, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_672052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008672, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_672053(context, evt)
	if evt.param1 ~= 672053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_672053(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008672, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_672054(context, evt)
	if evt.param1 ~= 672054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_672054(context, evt)
	-- 将configid为 672027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672029, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_672055(context, evt)
	if evt.param1 ~= 672055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_672055(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008672, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008672, 4)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008672, EntityType.GADGET, 672041 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_3/WinterCampParkour"