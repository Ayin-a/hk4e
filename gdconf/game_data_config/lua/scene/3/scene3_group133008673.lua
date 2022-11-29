-- 基础信息
local base_info = {
	group_id = 133008673
}

-- DEFS_MISCS
local defs = {
       end_gadget = 673016, 
       look_pos = {x=1177, y=408, z=-1028},
       duration = 2,

        father_challenge = 2003011,
        --玩法RegionID，进入此圈开启性能优化
        optimiz_region = {673120,673121,673122,673123,673124},
        gallery_id = 13001,
        group_id = 133008673,
        --开启机关的configID，SelectOption为175,如果这个group非起点，则配0
        load_on_start = {2,8},
        starter_gadget = 673012,
        --全程终点region的ConfigID,如果这个group非终点，则配0
        end_region = 673049,
        --全程终点在哪个suit,如果这个group非终点，则配0
        ending_suit = 6,
        --挑战限时秒
        challenge_time = 180,
        --总收集目标数
        coin_gadget_id = 70220086,

        --金币和冰柱的对应关系
        --[冰柱config_id]={金币config_id1,金币config_id2...}
        coin_ice = { [673076] = {673072},[673067] = {673073},[673069] = {673074},[673083] = {673089},[673080] = {673090},[673081] = {673084},[673082] = {673085}
        },
        --此Group中，哪些suit里放了金币（包括冰冻金币）
        coin_suits = {2,3,4,6,7},
guide_regionID = 673087,
        gallery_id = 13001
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
	[673001] = { config_id = 673001, gadget_id = 70220076, pos = { x = 1213.759, y = 310.124, z = -1075.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673002] = { config_id = 673002, gadget_id = 70220078, pos = { x = 1213.478, y = 306.720, z = -1091.912 }, rot = { x = 0.000, y = 15.874, z = 5.282 }, level = 30, area_id = 10 },
	[673003] = { config_id = 673003, gadget_id = 70220078, pos = { x = 1212.116, y = 306.722, z = -1091.490 }, rot = { x = 0.000, y = 16.372, z = 0.000 }, level = 30, area_id = 10 },
	[673004] = { config_id = 673004, gadget_id = 70220078, pos = { x = 1211.020, y = 306.499, z = -1091.705 }, rot = { x = 0.000, y = 9.599, z = 0.000 }, level = 30, area_id = 10 },
	[673005] = { config_id = 673005, gadget_id = 70220078, pos = { x = 1209.929, y = 306.809, z = -1091.073 }, rot = { x = 0.000, y = 201.620, z = 0.000 }, level = 30, area_id = 10 },
	[673006] = { config_id = 673006, gadget_id = 70220088, pos = { x = 1379.657, y = 268.000, z = -1163.018 }, rot = { x = 0.000, y = 100.715, z = 0.000 }, level = 30, area_id = 10 },
	[673007] = { config_id = 673007, gadget_id = 70710126, pos = { x = 1385.112, y = 267.899, z = -1163.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673008] = { config_id = 673008, gadget_id = 70220076, pos = { x = 1385.228, y = 268.843, z = -1163.433 }, rot = { x = 0.000, y = 62.725, z = 0.000 }, level = 30, area_id = 10 },
	[673009] = { config_id = 673009, gadget_id = 70220088, pos = { x = 1311.486, y = 268.000, z = -1192.232 }, rot = { x = 0.000, y = 32.047, z = 0.000 }, level = 30, area_id = 10 },
	[673010] = { config_id = 673010, gadget_id = 70220086, pos = { x = 1209.156, y = 306.909, z = -1096.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673011] = { config_id = 673011, gadget_id = 70220086, pos = { x = 1211.179, y = 313.449, z = -1091.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673012] = { config_id = 673012, gadget_id = 70350357, pos = { x = 1168.503, y = 407.114, z = -1021.689 }, rot = { x = 0.000, y = 316.847, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 10 },
	[673013] = { config_id = 673013, gadget_id = 70220086, pos = { x = 1177.443, y = 408.197, z = -1028.889 }, rot = { x = 0.000, y = 318.512, z = 0.000 }, level = 30, area_id = 10 },
	[673014] = { config_id = 673014, gadget_id = 70220086, pos = { x = 1199.242, y = 378.865, z = -1053.275 }, rot = { x = 0.000, y = 318.512, z = 0.000 }, level = 30, area_id = 10 },
	[673015] = { config_id = 673015, gadget_id = 70220086, pos = { x = 1199.242, y = 338.671, z = -1053.275 }, rot = { x = 0.000, y = 318.512, z = 0.000 }, level = 30, area_id = 10 },
	-- 仅目标点无功能
	[673016] = { config_id = 673016, gadget_id = 70360025, pos = { x = 1464.741, y = 266.463, z = -1104.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673017] = { config_id = 673017, gadget_id = 70310015, pos = { x = 1200.599, y = 316.585, z = -1063.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673018] = { config_id = 673018, gadget_id = 70220086, pos = { x = 1205.710, y = 311.823, z = -1099.043 }, rot = { x = 0.000, y = 38.365, z = 0.000 }, level = 30, area_id = 10 },
	[673019] = { config_id = 673019, gadget_id = 70220084, pos = { x = 1269.051, y = 273.499, z = -1211.280 }, rot = { x = 285.407, y = 180.000, z = 180.000 }, level = 1, area_id = 10 },
	[673020] = { config_id = 673020, gadget_id = 70220077, pos = { x = 1202.588, y = 299.467, z = -1129.137 }, rot = { x = 0.000, y = 343.064, z = 0.000 }, level = 30, area_id = 10 },
	[673021] = { config_id = 673021, gadget_id = 70220078, pos = { x = 1208.840, y = 306.594, z = -1090.637 }, rot = { x = 0.000, y = 210.775, z = 0.000 }, level = 30, area_id = 10 },
	-- 阶段终点
	[673022] = { config_id = 673022, gadget_id = 70710126, pos = { x = 1202.990, y = 316.670, z = -1062.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673023] = { config_id = 673023, gadget_id = 70710126, pos = { x = 1193.791, y = 299.506, z = -1117.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 无功能目标点
	[673024] = { config_id = 673024, gadget_id = 70350085, pos = { x = 1202.990, y = 316.670, z = -1062.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673025] = { config_id = 673025, gadget_id = 70350085, pos = { x = 1193.791, y = 299.506, z = -1117.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673026] = { config_id = 673026, gadget_id = 70350085, pos = { x = 1385.112, y = 268.000, z = -1163.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673027] = { config_id = 673027, gadget_id = 70220078, pos = { x = 1203.959, y = 304.609, z = -1097.797 }, rot = { x = 0.000, y = 236.311, z = 0.000 }, level = 30, area_id = 10 },
	[673028] = { config_id = 673028, gadget_id = 70220093, pos = { x = 1416.602, y = 270.343, z = -1157.381 }, rot = { x = 0.000, y = 79.352, z = 0.000 }, level = 30, area_id = 10 },
	[673029] = { config_id = 673029, gadget_id = 70220078, pos = { x = 1205.465, y = 304.514, z = -1099.701 }, rot = { x = 0.000, y = 35.135, z = 0.000 }, level = 30, area_id = 10 },
	[673030] = { config_id = 673030, gadget_id = 70220078, pos = { x = 1204.753, y = 304.454, z = -1098.660 }, rot = { x = 0.000, y = 227.156, z = 0.000 }, level = 30, area_id = 10 },
	[673031] = { config_id = 673031, gadget_id = 70220084, pos = { x = 1173.075, y = 407.651, z = -1023.869 }, rot = { x = 0.000, y = 137.331, z = 0.000 }, level = 30, area_id = 10 },
	[673032] = { config_id = 673032, gadget_id = 70220085, pos = { x = 1064.390, y = 408.524, z = -940.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673033] = { config_id = 673033, gadget_id = 70220077, pos = { x = 1217.433, y = 285.626, z = -1146.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673034] = { config_id = 673034, gadget_id = 70220076, pos = { x = 1064.419, y = 409.873, z = -936.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673035] = { config_id = 673035, gadget_id = 70220086, pos = { x = 1056.052, y = 424.831, z = -929.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673036] = { config_id = 673036, gadget_id = 70220087, pos = { x = 1059.268, y = 429.092, z = -921.524 }, rot = { x = 0.000, y = 40.806, z = 0.000 }, level = 30, area_id = 10 },
	[673037] = { config_id = 673037, gadget_id = 70220087, pos = { x = 1059.939, y = 429.092, z = -920.747 }, rot = { x = 0.000, y = 40.806, z = 0.000 }, level = 30, area_id = 10 },
	[673038] = { config_id = 673038, gadget_id = 70220087, pos = { x = 1060.619, y = 429.092, z = -919.960 }, rot = { x = 0.000, y = 40.806, z = 0.000 }, level = 30, area_id = 10 },
	[673039] = { config_id = 673039, gadget_id = 70220086, pos = { x = 1061.127, y = 430.587, z = -921.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673040] = { config_id = 673040, gadget_id = 70710126, pos = { x = 1049.313, y = 488.251, z = -885.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673041] = { config_id = 673041, gadget_id = 70350085, pos = { x = 1049.313, y = 488.251, z = -885.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673042] = { config_id = 673042, gadget_id = 70220086, pos = { x = 1321.225, y = 268.940, z = -1182.932 }, rot = { x = 0.000, y = 220.182, z = 0.000 }, level = 30, area_id = 10 },
	[673043] = { config_id = 673043, gadget_id = 70360095, pos = { x = 1326.632, y = 268.720, z = -1188.868 }, rot = { x = 0.000, y = 32.047, z = 0.000 }, level = 30, route_id = 300800203, area_id = 10 },
	[673044] = { config_id = 673044, gadget_id = 70220093, pos = { x = 1397.549, y = 270.231, z = -1160.893 }, rot = { x = 0.000, y = 79.352, z = 0.000 }, level = 30, area_id = 10 },
	[673045] = { config_id = 673045, gadget_id = 70690001, pos = { x = 1397.549, y = 270.231, z = -1160.893 }, rot = { x = 0.000, y = 79.352, z = 0.000 }, level = 30, area_id = 10 },
	[673046] = { config_id = 673046, gadget_id = 70350085, pos = { x = 1464.741, y = 266.463, z = -1104.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673054] = { config_id = 673054, gadget_id = 70220078, pos = { x = 1206.546, y = 304.737, z = -1099.979 }, rot = { x = 0.000, y = 41.908, z = 0.000 }, level = 30, area_id = 10 },
	[673056] = { config_id = 673056, gadget_id = 70220086, pos = { x = 1201.236, y = 303.983, z = -1104.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673057] = { config_id = 673057, gadget_id = 70220078, pos = { x = 1207.594, y = 304.735, z = -1100.947 }, rot = { x = 0.000, y = 41.410, z = 5.282 }, level = 30, area_id = 10 },
	[673058] = { config_id = 673058, gadget_id = 70220078, pos = { x = 1196.913, y = 302.025, z = -1104.800 }, rot = { x = 0.000, y = 236.311, z = 0.000 }, level = 30, area_id = 10 },
	[673059] = { config_id = 673059, gadget_id = 70220078, pos = { x = 1198.419, y = 301.930, z = -1106.704 }, rot = { x = 0.000, y = 35.135, z = 0.000 }, level = 30, area_id = 10 },
	[673060] = { config_id = 673060, gadget_id = 70220078, pos = { x = 1197.708, y = 301.870, z = -1105.663 }, rot = { x = 0.000, y = 227.156, z = 0.000 }, level = 30, area_id = 10 },
	[673061] = { config_id = 673061, gadget_id = 70220078, pos = { x = 1199.500, y = 302.153, z = -1106.982 }, rot = { x = 0.000, y = 41.908, z = 0.000 }, level = 30, area_id = 10 },
	[673062] = { config_id = 673062, gadget_id = 70220078, pos = { x = 1200.548, y = 302.151, z = -1107.950 }, rot = { x = 0.000, y = 41.410, z = 5.282 }, level = 30, area_id = 10 },
	[673063] = { config_id = 673063, gadget_id = 70220086, pos = { x = 1198.801, y = 309.408, z = -1106.564 }, rot = { x = 0.000, y = 38.896, z = 0.000 }, level = 30, area_id = 10 },
	[673064] = { config_id = 673064, gadget_id = 70220077, pos = { x = 1239.090, y = 277.849, z = -1160.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673065] = { config_id = 673065, gadget_id = 70220094, pos = { x = 1213.046, y = 285.558, z = -1151.044 }, rot = { x = 0.000, y = 306.910, z = 0.000 }, level = 30, area_id = 10 },
	[673066] = { config_id = 673066, gadget_id = 70220094, pos = { x = 1226.067, y = 281.891, z = -1147.530 }, rot = { x = 357.566, y = 15.781, z = 0.907 }, level = 30, area_id = 10 },
	[673067] = { config_id = 673067, gadget_id = 70220094, pos = { x = 1225.312, y = 282.115, z = -1148.512 }, rot = { x = 0.000, y = 304.367, z = 0.000 }, level = 30, area_id = 10 },
	[673068] = { config_id = 673068, gadget_id = 70220094, pos = { x = 1234.960, y = 277.342, z = -1158.527 }, rot = { x = 0.000, y = 252.882, z = 0.000 }, level = 30, area_id = 10 },
	[673069] = { config_id = 673069, gadget_id = 70220094, pos = { x = 1237.684, y = 277.135, z = -1155.270 }, rot = { x = 0.000, y = 304.367, z = 0.000 }, level = 30, area_id = 10 },
	[673070] = { config_id = 673070, gadget_id = 70220086, pos = { x = 1201.853, y = 306.477, z = -1122.694 }, rot = { x = 0.000, y = 338.872, z = 0.000 }, level = 30, area_id = 10 },
	[673071] = { config_id = 673071, gadget_id = 70220092, pos = { x = 1228.904, y = 280.516, z = -1152.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673072] = { config_id = 673072, gadget_id = 70220086, pos = { x = 1210.989, y = 287.070, z = -1143.339 }, rot = { x = 0.000, y = 303.392, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673073] = { config_id = 673073, gadget_id = 70220086, pos = { x = 1225.174, y = 283.183, z = -1148.534 }, rot = { x = 0.000, y = 121.296, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673074] = { config_id = 673074, gadget_id = 70220086, pos = { x = 1237.506, y = 278.657, z = -1155.250 }, rot = { x = 0.000, y = 119.465, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673075] = { config_id = 673075, gadget_id = 70220092, pos = { x = 1254.647, y = 274.060, z = -1179.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673076] = { config_id = 673076, gadget_id = 70220094, pos = { x = 1211.180, y = 286.383, z = -1143.496 }, rot = { x = 0.000, y = 36.787, z = 0.000 }, level = 30, area_id = 10 },
	[673077] = { config_id = 673077, gadget_id = 70710126, pos = { x = 1266.020, y = 271.733, z = -1197.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673078] = { config_id = 673078, gadget_id = 70350085, pos = { x = 1266.020, y = 271.733, z = -1197.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[673080] = { config_id = 673080, gadget_id = 70220094, pos = { x = 1248.547, y = 274.526, z = -1167.327 }, rot = { x = 0.000, y = 34.244, z = 0.000 }, level = 30, area_id = 10 },
	[673081] = { config_id = 673081, gadget_id = 70220094, pos = { x = 1247.941, y = 274.280, z = -1178.255 }, rot = { x = 0.000, y = 65.500, z = 0.000 }, level = 30, area_id = 10 },
	[673082] = { config_id = 673082, gadget_id = 70220094, pos = { x = 1261.649, y = 272.340, z = -1180.858 }, rot = { x = 0.000, y = 34.244, z = 0.000 }, level = 30, area_id = 10 },
	[673083] = { config_id = 673083, gadget_id = 70220094, pos = { x = 1240.106, y = 275.978, z = -1166.253 }, rot = { x = 0.000, y = 352.835, z = 0.000 }, level = 30, area_id = 10 },
	[673084] = { config_id = 673084, gadget_id = 70220086, pos = { x = 1247.779, y = 274.890, z = -1178.085 }, rot = { x = 0.000, y = 310.677, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673085] = { config_id = 673085, gadget_id = 70220086, pos = { x = 1261.399, y = 273.196, z = -1180.754 }, rot = { x = 0.000, y = 310.677, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673086] = { config_id = 673086, gadget_id = 70220088, pos = { x = 1320.747, y = 268.000, z = -1183.498 }, rot = { x = 0.000, y = 220.182, z = 0.000 }, level = 30, area_id = 10 },
	[673088] = { config_id = 673088, gadget_id = 70220076, pos = { x = 1307.344, y = 268.853, z = -1197.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673089] = { config_id = 673089, gadget_id = 70220086, pos = { x = 1239.947, y = 276.870, z = -1166.219 }, rot = { x = 0.000, y = 356.905, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673090] = { config_id = 673090, gadget_id = 70220086, pos = { x = 1248.393, y = 275.791, z = -1167.220 }, rot = { x = 0.000, y = 310.677, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[673092] = { config_id = 673092, gadget_id = 70220093, pos = { x = 1448.579, y = 270.343, z = -1139.110 }, rot = { x = 0.000, y = 14.141, z = 0.000 }, level = 30, area_id = 10 },
	[673093] = { config_id = 673093, gadget_id = 70220093, pos = { x = 1454.742, y = 270.343, z = -1124.093 }, rot = { x = 0.000, y = 40.781, z = 0.000 }, level = 30, area_id = 10 },
	[673094] = { config_id = 673094, gadget_id = 70220086, pos = { x = 1332.130, y = 272.324, z = -1171.266 }, rot = { x = 0.000, y = 34.522, z = 0.000 }, level = 30, area_id = 10 },
	[673095] = { config_id = 673095, gadget_id = 70220088, pos = { x = 1346.074, y = 268.000, z = -1153.571 }, rot = { x = 0.000, y = 56.354, z = 0.000 }, level = 30, area_id = 10 },
	[673096] = { config_id = 673096, gadget_id = 70220088, pos = { x = 1355.620, y = 268.000, z = -1151.774 }, rot = { x = 0.000, y = 282.894, z = 0.000 }, level = 30, area_id = 10 },
	[673097] = { config_id = 673097, gadget_id = 70360095, pos = { x = 1330.824, y = 274.425, z = -1169.993 }, rot = { x = 0.000, y = 32.047, z = 0.000 }, level = 30, route_id = 300800204, area_id = 10 },
	[673098] = { config_id = 673098, gadget_id = 70360095, pos = { x = 1333.453, y = 269.425, z = -1172.576 }, rot = { x = 0.000, y = 32.047, z = 0.000 }, level = 30, route_id = 300800205, area_id = 10 },
	[673100] = { config_id = 673100, gadget_id = 70690001, pos = { x = 1416.602, y = 270.343, z = -1157.381 }, rot = { x = 0.000, y = 79.352, z = 0.000 }, level = 30, area_id = 10 },
	[673101] = { config_id = 673101, gadget_id = 70690001, pos = { x = 1434.823, y = 270.343, z = -1153.955 }, rot = { x = 0.000, y = 50.751, z = 0.000 }, level = 30, area_id = 10 },
	[673102] = { config_id = 673102, gadget_id = 70690001, pos = { x = 1448.579, y = 270.343, z = -1139.110 }, rot = { x = 0.000, y = 14.141, z = 0.000 }, level = 30, area_id = 10 },
	[673103] = { config_id = 673103, gadget_id = 70690001, pos = { x = 1454.742, y = 270.343, z = -1124.093 }, rot = { x = 0.000, y = 40.781, z = 0.000 }, level = 30, area_id = 10 },
	[673104] = { config_id = 673104, gadget_id = 70220086, pos = { x = 1355.563, y = 269.037, z = -1151.954 }, rot = { x = 0.000, y = 73.832, z = 0.000 }, level = 30, area_id = 10 },
	[673105] = { config_id = 673105, gadget_id = 70220086, pos = { x = 1375.678, y = 269.089, z = -1161.387 }, rot = { x = 0.000, y = 99.460, z = 0.000 }, level = 30, area_id = 10 },
	[673106] = { config_id = 673106, gadget_id = 70220086, pos = { x = 1199.242, y = 358.865, z = -1053.275 }, rot = { x = 0.000, y = 318.512, z = 0.000 }, level = 30, area_id = 10 },
	[673107] = { config_id = 673107, gadget_id = 70220076, pos = { x = 1209.243, y = 307.147, z = -1095.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673108] = { config_id = 673108, gadget_id = 70220076, pos = { x = 1202.732, y = 304.913, z = -1102.281 }, rot = { x = 0.000, y = 38.896, z = 0.000 }, level = 30, area_id = 10 },
	[673109] = { config_id = 673109, gadget_id = 70220076, pos = { x = 1193.791, y = 299.506, z = -1117.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673110] = { config_id = 673110, gadget_id = 70220076, pos = { x = 1267.392, y = 273.928, z = -1205.914 }, rot = { x = 0.000, y = 62.725, z = 0.000 }, level = 30, area_id = 10 },
	[673111] = { config_id = 673111, gadget_id = 70220086, pos = { x = 1267.907, y = 280.518, z = -1220.300 }, rot = { x = 0.000, y = 124.016, z = 0.000 }, level = 30, area_id = 10 },
	[673112] = { config_id = 673112, gadget_id = 70220086, pos = { x = 1291.405, y = 280.257, z = -1228.203 }, rot = { x = 0.000, y = 114.400, z = 0.000 }, level = 30, area_id = 10 },
	[673113] = { config_id = 673113, gadget_id = 70220076, pos = { x = 1296.220, y = 274.225, z = -1215.474 }, rot = { x = 0.000, y = 35.665, z = 0.000 }, level = 30, area_id = 10 },
	[673114] = { config_id = 673114, gadget_id = 70220076, pos = { x = 1329.649, y = 269.821, z = -1175.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673115] = { config_id = 673115, gadget_id = 70220076, pos = { x = 1339.924, y = 268.797, z = -1160.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[673116] = { config_id = 673116, gadget_id = 70220076, pos = { x = 1365.889, y = 268.688, z = -1159.223 }, rot = { x = 0.000, y = 34.575, z = 0.000 }, level = 30, area_id = 10 },
	[673117] = { config_id = 673117, gadget_id = 70220092, pos = { x = 1304.215, y = 269.312, z = -1200.696 }, rot = { x = 0.000, y = 62.725, z = 0.000 }, level = 30, area_id = 10 },
	[673118] = { config_id = 673118, gadget_id = 70220092, pos = { x = 1346.422, y = 268.847, z = -1153.240 }, rot = { x = 0.000, y = 62.725, z = 0.000 }, level = 30, area_id = 10 },
	[673125] = { config_id = 673125, gadget_id = 70220088, pos = { x = 1370.362, y = 268.000, z = -1161.126 }, rot = { x = 0.000, y = 290.777, z = 0.000 }, level = 30, area_id = 10 },
	[673126] = { config_id = 673126, gadget_id = 70310015, pos = { x = 1200.290, y = 300.307, z = -1119.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673127] = { config_id = 673127, gadget_id = 70310015, pos = { x = 1269.609, y = 273.301, z = -1206.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673128] = { config_id = 673128, gadget_id = 70310015, pos = { x = 1309.651, y = 267.967, z = -1198.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673129] = { config_id = 673129, gadget_id = 70310015, pos = { x = 1306.036, y = 268.080, z = -1195.694 }, rot = { x = 0.000, y = 336.673, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673130] = { config_id = 673130, gadget_id = 70310015, pos = { x = 1266.052, y = 273.151, z = -1207.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673131] = { config_id = 673131, gadget_id = 70310015, pos = { x = 1207.377, y = 286.740, z = -1144.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673132] = { config_id = 673132, gadget_id = 70310015, pos = { x = 1242.139, y = 276.689, z = -1157.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[673133] = { config_id = 673133, gadget_id = 70310023, pos = { x = 1176.831, y = 407.490, z = -1025.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[673047] = { config_id = 673047, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1385.112, y = 268.000, z = -1163.176 }, area_id = 10 },
	-- 实际标记终点区域
	[673049] = { config_id = 673049, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1464.741, y = 266.463, z = -1104.089 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[673050] = { config_id = 673050, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1193.791, y = 299.506, z = -1117.285 }, area_id = 10 },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	[673053] = { config_id = 673053, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1202.990, y = 316.670, z = -1062.177 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[673055] = { config_id = 673055, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1049.313, y = 488.251, z = -885.979 }, area_id = 10 },
	-- 显示教学区域
	[673087] = { config_id = 673087, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1168.503, y = 407.114, z = -1021.689 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[673091] = { config_id = 673091, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1266.021, y = 271.733, z = -1197.684 }, area_id = 10 },
	-- 性能region
	[673120] = { config_id = 673120, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1180.135, y = 407.223, z = -1024.675 }, area_id = 10 },
	-- 性能region
	[673121] = { config_id = 673121, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1205.702, y = 330.088, z = -1071.689 }, area_id = 10 },
	-- 性能region
	[673122] = { config_id = 673122, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1230.356, y = 275.550, z = -1166.430 }, area_id = 10 },
	-- 性能region
	[673123] = { config_id = 673123, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1318.854, y = 260.846, z = -1186.330 }, area_id = 10 },
	-- 性能region
	[673124] = { config_id = 673124, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1423.556, y = 260.846, z = -1117.255 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1673047, name = "ENTER_REGION_673047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_673047", action = "action_EVENT_ENTER_REGION_673047" },
	{ config_id = 1673048, name = "GADGET_CREATE_673048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_673048", action = "action_EVENT_GADGET_CREATE_673048" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1673050, name = "ENTER_REGION_673050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_673050", action = "action_EVENT_ENTER_REGION_673050" },
	{ config_id = 1673051, name = "CHALLENGE_SUCCESS_673051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_673051" },
	{ config_id = 1673052, name = "CHALLENGE_FAIL_673052", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_673052" },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	{ config_id = 1673053, name = "ENTER_REGION_673053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_673053", action = "action_EVENT_ENTER_REGION_673053" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1673055, name = "ENTER_REGION_673055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_673055", action = "action_EVENT_ENTER_REGION_673055" },
	{ config_id = 1673079, name = "CHALLENGE_SUCCESS_673079", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_673079" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1673091, name = "ENTER_REGION_673091", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_673091", action = "action_EVENT_ENTER_REGION_673091" }
}

-- 点位
points = {
	{ config_id = 673119, pos = { x = 1169.133, y = 407.081, z = -1019.101 }, rot = { x = 0.000, y = 139.097, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 673099, gadget_id = 70220088, pos = { x = 1385.228, y = 268.000, z = -1163.433 }, rot = { x = 0.000, y = 62.725, z = 0.000 }, level = 30, area_id = 10 }
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
		monsters = { },
		gadgets = { 673012, 673133 },
		regions = { 673087 },
		triggers = { "GADGET_CREATE_673048", "CHALLENGE_FAIL_673052", "CHALLENGE_SUCCESS_673079" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [节点1]速降,
		monsters = { },
		gadgets = { 673013, 673014, 673015, 673017, 673022, 673024, 673031, 673106 },
		regions = { 673053 },
		triggers = { "ENTER_REGION_673053" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [节点2]一次性加载冰柱,
		monsters = { },
		gadgets = { 673001, 673002, 673003, 673004, 673005, 673010, 673011, 673018, 673020, 673021, 673023, 673025, 673027, 673029, 673030, 673054, 673056, 673057, 673058, 673059, 673060, 673061, 673062, 673063, 673070, 673107, 673108, 673109, 673126, 673131, 673132 },
		regions = { 673050 },
		triggers = { "ENTER_REGION_673050", "CHALLENGE_SUCCESS_673051" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [节点4]浮冰部分,
		monsters = { },
		gadgets = { 673006, 673007, 673008, 673009, 673019, 673026, 673042, 673043, 673086, 673088, 673094, 673095, 673096, 673097, 673098, 673104, 673105, 673110, 673111, 673112, 673113, 673114, 673115, 673116, 673117, 673118, 673125, 673127, 673128, 673129, 673130 },
		regions = { 673047 },
		triggers = { "ENTER_REGION_673047" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [废弃]横冰柱部分,
		monsters = { },
		gadgets = { 673032, 673034, 673035, 673036, 673037, 673038, 673039, 673040, 673041 },
		regions = { 673055 },
		triggers = { "ENTER_REGION_673055" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [节点5]飞行部分,
		monsters = { },
		gadgets = { 673016, 673028, 673044, 673045, 673046, 673092, 673093, 673100, 673101, 673102, 673103 },
		regions = { 673049 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [节点3]分阶段加载冰柱,
		monsters = { },
		gadgets = { 673033, 673064, 673065, 673066, 673067, 673068, 673069, 673071, 673072, 673073, 673074, 673075, 673076, 673077, 673078, 673080, 673081, 673082, 673083, 673084, 673085, 673089, 673090 },
		regions = { 673091 },
		triggers = { "ENTER_REGION_673091" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 673120, 673121, 673122, 673123, 673124 },
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
function condition_EVENT_ENTER_REGION_673047(context, evt)
	if evt.param1 ~= 673047 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_673047(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008673, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008673, 7)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_673048(context, evt)
	if 673012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_673048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008673, 673012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_673050(context, evt)
	if evt.param1 ~= 673050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_673050(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008673, 7)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008673, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_673051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008673, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_673052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008673, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_673053(context, evt)
	if evt.param1 ~= 673053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_673053(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008673, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_673055(context, evt)
	if evt.param1 ~= 673055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_673055(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008673, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008673, 4)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673041 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_673079(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008673, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_673091(context, evt)
	if evt.param1 ~= 673091 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_673091(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008673, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008673, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673077 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008673, EntityType.GADGET, 673078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_3/WinterCampParkour"