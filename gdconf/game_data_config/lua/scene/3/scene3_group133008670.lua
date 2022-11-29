-- 基础信息
local base_info = {
	group_id = 133008670
}

-- DEFS_MISCS
local defs = {

	gallery_id = 13004 ,
	group_id = 133008670,
	--开启机关交互后，加载哪个/些suit
	load_on_start = {2,7},
	--开启机关的configID，SelectOption为175
	starter_gadget = 670013,
	--全程终点region的ConfigID
	end_region = 670047,

	--玩法RegionID，进入此圈开启性能优化
	optimiz_region = {670141,670142,670143,670144},
	
	--全程终点在哪个suit,如果这个group非终点，则配0
	ending_suit = 6,
	--挑战限时秒
	challenge_time = 180,

	--金币和冰柱的对应关系
	--[冰柱config_id]={金币config_id1,金币config_id2...}
	coin_ice = { [670005]={670012},[670115]={670011},[670119]={670025},[670126]={670023}
	
	},
                end_gadget = 670022,
 look_pos = {x=802, y=199, z=-1302},
                 duration = 2,
                  father_challenge =  2003012,
                coin_target_1 = 10,
coin_target_2 = 10,
     guide_regionID = 670037,
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
	[670001] = { config_id = 670001, gadget_id = 70220077, pos = { x = 779.356, y = 201.188, z = -1288.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670002] = { config_id = 670002, gadget_id = 70220078, pos = { x = 773.023, y = 198.942, z = -1289.803 }, rot = { x = 0.000, y = 5.315, z = 0.000 }, level = 30, area_id = 10 },
	[670003] = { config_id = 670003, gadget_id = 70220094, pos = { x = 773.983, y = 199.580, z = -1288.292 }, rot = { x = 351.092, y = 32.449, z = 0.000 }, level = 30, area_id = 10 },
	[670004] = { config_id = 670004, gadget_id = 70220078, pos = { x = 774.707, y = 200.008, z = -1287.153 }, rot = { x = 0.000, y = 59.441, z = 0.000 }, level = 30, area_id = 10 },
	[670005] = { config_id = 670005, gadget_id = 70220094, pos = { x = 775.284, y = 200.243, z = -1285.972 }, rot = { x = 0.000, y = 302.764, z = 0.000 }, level = 30, area_id = 10 },
	[670006] = { config_id = 670006, gadget_id = 70220078, pos = { x = 775.829, y = 200.049, z = -1284.794 }, rot = { x = 6.448, y = 357.798, z = 356.207 }, level = 30, area_id = 10 },
	[670007] = { config_id = 670007, gadget_id = 70710126, pos = { x = 707.187, y = 201.515, z = -1190.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670009] = { config_id = 670009, gadget_id = 70220076, pos = { x = 739.200, y = 199.918, z = -1247.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670010] = { config_id = 670010, gadget_id = 70220088, pos = { x = 714.829, y = 199.221, z = -1234.900 }, rot = { x = 0.000, y = 284.925, z = 0.000 }, level = 30, area_id = 10 },
	[670011] = { config_id = 670011, gadget_id = 70220086, pos = { x = 762.849, y = 201.650, z = -1281.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[670012] = { config_id = 670012, gadget_id = 70220086, pos = { x = 775.279, y = 201.994, z = -1286.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[670013] = { config_id = 670013, gadget_id = 70350357, pos = { x = 840.316, y = 199.010, z = -1326.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 10 },
	[670014] = { config_id = 670014, gadget_id = 70220092, pos = { x = 722.080, y = 216.863, z = -1152.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670015] = { config_id = 670015, gadget_id = 70220084, pos = { x = 718.874, y = 218.034, z = -1150.485 }, rot = { x = 330.295, y = 43.304, z = 1.068 }, level = 1, area_id = 10 },
	[670016] = { config_id = 670016, gadget_id = 70220093, pos = { x = 822.682, y = 202.624, z = -1314.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670017] = { config_id = 670017, gadget_id = 70220086, pos = { x = 809.260, y = 199.846, z = -1309.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670018] = { config_id = 670018, gadget_id = 70220092, pos = { x = 757.432, y = 200.680, z = -1264.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670019] = { config_id = 670019, gadget_id = 70220086, pos = { x = 712.692, y = 203.240, z = -1179.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670020] = { config_id = 670020, gadget_id = 70310015, pos = { x = 801.833, y = 200.051, z = -1292.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[670021] = { config_id = 670021, gadget_id = 70310015, pos = { x = 784.804, y = 199.995, z = -1288.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 仅目标点无功能
	[670022] = { config_id = 670022, gadget_id = 70360025, pos = { x = 597.708, y = 230.052, z = -1147.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[670023] = { config_id = 670023, gadget_id = 70220084, pos = { x = 712.391, y = 202.981, z = -1174.472 }, rot = { x = 0.000, y = 52.091, z = 0.000 }, level = 1, area_id = 10 },
	[670024] = { config_id = 670024, gadget_id = 70310015, pos = { x = 749.235, y = 199.660, z = -1250.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[670025] = { config_id = 670025, gadget_id = 70220086, pos = { x = 757.364, y = 202.041, z = -1273.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[670026] = { config_id = 670026, gadget_id = 70220092, pos = { x = 767.749, y = 200.879, z = -1284.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670027] = { config_id = 670027, gadget_id = 70220092, pos = { x = 783.494, y = 200.892, z = -1291.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670028] = { config_id = 670028, gadget_id = 70220076, pos = { x = 721.452, y = 202.157, z = -1168.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670029] = { config_id = 670029, gadget_id = 70310015, pos = { x = 705.106, y = 202.000, z = -1188.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[670030] = { config_id = 670030, gadget_id = 70310015, pos = { x = 709.490, y = 268.358, z = -1117.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 阶段终点
	[670031] = { config_id = 670031, gadget_id = 70710126, pos = { x = 783.727, y = 199.860, z = -1290.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[670032] = { config_id = 670032, gadget_id = 70710126, pos = { x = 746.874, y = 199.987, z = -1253.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 无功能目标点
	[670033] = { config_id = 670033, gadget_id = 70350085, pos = { x = 783.727, y = 199.860, z = -1290.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[670034] = { config_id = 670034, gadget_id = 70350085, pos = { x = 746.874, y = 199.987, z = -1253.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[670035] = { config_id = 670035, gadget_id = 70350085, pos = { x = 707.187, y = 201.515, z = -1190.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[670036] = { config_id = 670036, gadget_id = 70220092, pos = { x = 718.497, y = 199.848, z = -1237.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670038] = { config_id = 670038, gadget_id = 70220093, pos = { x = 799.971, y = 201.149, z = -1292.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- Gear Start时为隐藏，知道切成default生成
	[670039] = { config_id = 670039, gadget_id = 70220078, pos = { x = 796.630, y = 199.166, z = -1302.871 }, rot = { x = 352.275, y = 36.381, z = 0.000 }, level = 30, area_id = 10 },
	[670040] = { config_id = 670040, gadget_id = 70220087, pos = { x = 732.700, y = 224.091, z = -1138.067 }, rot = { x = 0.000, y = 218.074, z = 0.000 }, level = 30, area_id = 10 },
	[670041] = { config_id = 670041, gadget_id = 70220086, pos = { x = 717.572, y = 202.363, z = -1172.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670042] = { config_id = 670042, gadget_id = 70220078, pos = { x = 796.993, y = 199.515, z = -1301.286 }, rot = { x = 0.000, y = 53.724, z = 0.000 }, level = 30, area_id = 10 },
	[670043] = { config_id = 670043, gadget_id = 70220078, pos = { x = 797.594, y = 198.892, z = -1299.954 }, rot = { x = 0.000, y = 23.286, z = 0.000 }, level = 30, area_id = 10 },
	[670045] = { config_id = 670045, gadget_id = 70220084, pos = { x = 739.925, y = 232.387, z = -1120.180 }, rot = { x = 284.065, y = 308.006, z = 79.802 }, level = 1, area_id = 10 },
	[670048] = { config_id = 670048, gadget_id = 70220087, pos = { x = 737.320, y = 226.471, z = -1131.659 }, rot = { x = 0.000, y = 218.466, z = 0.000 }, level = 30, area_id = 10 },
	[670049] = { config_id = 670049, gadget_id = 70220092, pos = { x = 708.853, y = 199.848, z = -1210.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670053] = { config_id = 670053, gadget_id = 70220076, pos = { x = 732.309, y = 225.714, z = -1137.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670054] = { config_id = 670054, gadget_id = 70220086, pos = { x = 736.893, y = 228.528, z = -1130.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670055] = { config_id = 670055, gadget_id = 70220076, pos = { x = 711.590, y = 199.922, z = -1200.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670056] = { config_id = 670056, gadget_id = 70220087, pos = { x = 740.056, y = 229.481, z = -1125.649 }, rot = { x = 0.000, y = 205.550, z = 0.000 }, level = 30, area_id = 10 },
	[670057] = { config_id = 670057, gadget_id = 70220092, pos = { x = 812.441, y = 199.265, z = -1310.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670058] = { config_id = 670058, gadget_id = 70220076, pos = { x = 739.504, y = 231.691, z = -1124.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670060] = { config_id = 670060, gadget_id = 70690012, pos = { x = 731.654, y = 239.667, z = -1121.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670061] = { config_id = 670061, gadget_id = 70220076, pos = { x = 730.065, y = 252.633, z = -1122.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670062] = { config_id = 670062, gadget_id = 70220086, pos = { x = 716.865, y = 262.651, z = -1122.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670063] = { config_id = 670063, gadget_id = 70220088, pos = { x = 730.583, y = 199.221, z = -1245.853 }, rot = { x = 0.000, y = 99.400, z = 0.000 }, level = 30, area_id = 10 },
	[670064] = { config_id = 670064, gadget_id = 70220088, pos = { x = 719.290, y = 199.221, z = -1238.104 }, rot = { x = 0.000, y = 311.880, z = 0.000 }, level = 30, area_id = 10 },
	[670065] = { config_id = 670065, gadget_id = 70220088, pos = { x = 709.300, y = 199.221, z = -1220.205 }, rot = { x = 0.000, y = 233.513, z = 0.000 }, level = 30, area_id = 10 },
	[670066] = { config_id = 670066, gadget_id = 70220086, pos = { x = 790.665, y = 200.602, z = -1297.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670068] = { config_id = 670068, gadget_id = 70220078, pos = { x = 795.033, y = 199.480, z = -1292.941 }, rot = { x = 0.000, y = 115.787, z = 350.443 }, level = 30, area_id = 10 },
	[670069] = { config_id = 670069, gadget_id = 70220088, pos = { x = 709.753, y = 199.221, z = -1205.362 }, rot = { x = 0.000, y = 188.990, z = 0.000 }, level = 30, area_id = 10 },
	[670070] = { config_id = 670070, gadget_id = 70220088, pos = { x = 711.198, y = 199.221, z = -1201.081 }, rot = { x = 0.000, y = 197.548, z = 0.000 }, level = 30, area_id = 10 },
	[670071] = { config_id = 670071, gadget_id = 70220086, pos = { x = 704.754, y = 277.925, z = -1109.063 }, rot = { x = 22.462, y = 254.998, z = 0.000 }, level = 30, area_id = 10 },
	[670074] = { config_id = 670074, gadget_id = 70690031, pos = { x = 697.571, y = 276.256, z = -1111.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670075] = { config_id = 670075, gadget_id = 70220086, pos = { x = 679.785, y = 265.867, z = -1121.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670076] = { config_id = 670076, gadget_id = 70690031, pos = { x = 683.638, y = 269.234, z = -1115.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670077] = { config_id = 670077, gadget_id = 70360095, pos = { x = 676.674, y = 265.607, z = -1121.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670078] = { config_id = 670078, gadget_id = 70220076, pos = { x = 723.057, y = 217.389, z = -1148.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670079] = { config_id = 670079, gadget_id = 70220093, pos = { x = 722.323, y = 208.831, z = -1160.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670080] = { config_id = 670080, gadget_id = 70220092, pos = { x = 714.666, y = 281.114, z = -1105.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670081] = { config_id = 670081, gadget_id = 70220087, pos = { x = 728.294, y = 221.376, z = -1143.381 }, rot = { x = 0.000, y = 224.717, z = 0.000 }, level = 30, area_id = 10 },
	[670082] = { config_id = 670082, gadget_id = 70220092, pos = { x = 719.338, y = 275.830, z = -1113.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670083] = { config_id = 670083, gadget_id = 70220086, pos = { x = 727.814, y = 223.031, z = -1142.452 }, rot = { x = 0.000, y = 38.575, z = 0.000 }, level = 30, area_id = 10 },
	[670084] = { config_id = 670084, gadget_id = 70710126, pos = { x = 716.580, y = 280.535, z = -1106.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670085] = { config_id = 670085, gadget_id = 70350085, pos = { x = 716.580, y = 280.535, z = -1106.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670087] = { config_id = 670087, gadget_id = 70690031, pos = { x = 666.145, y = 259.633, z = -1119.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670088] = { config_id = 670088, gadget_id = 70360095, pos = { x = 658.163, y = 252.599, z = -1124.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670090] = { config_id = 670090, gadget_id = 70690001, pos = { x = 643.266, y = 243.319, z = -1127.688 }, rot = { x = 17.093, y = 249.218, z = 0.000 }, level = 30, area_id = 10 },
	[670091] = { config_id = 670091, gadget_id = 70350085, pos = { x = 597.708, y = 230.052, z = -1147.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670092] = { config_id = 670092, gadget_id = 70220086, pos = { x = 661.292, y = 256.381, z = -1120.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670093] = { config_id = 670093, gadget_id = 70220086, pos = { x = 654.280, y = 249.738, z = -1123.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670095] = { config_id = 670095, gadget_id = 70690031, pos = { x = 652.654, y = 249.047, z = -1127.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 10 },
	[670096] = { config_id = 670096, gadget_id = 70220086, pos = { x = 633.423, y = 239.733, z = -1131.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670097] = { config_id = 670097, gadget_id = 70220086, pos = { x = 619.938, y = 236.205, z = -1137.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670099] = { config_id = 670099, gadget_id = 70220088, pos = { x = 826.835, y = 198.738, z = -1313.541 }, rot = { x = 0.000, y = 260.729, z = 0.000 }, level = 30, area_id = 10 },
	[670100] = { config_id = 670100, gadget_id = 70220088, pos = { x = 825.186, y = 198.738, z = -1311.913 }, rot = { x = 0.000, y = 253.038, z = 0.000 }, level = 30, area_id = 10 },
	[670101] = { config_id = 670101, gadget_id = 70220088, pos = { x = 820.283, y = 198.738, z = -1312.914 }, rot = { x = 0.000, y = 260.385, z = 0.000 }, level = 30, area_id = 10 },
	[670102] = { config_id = 670102, gadget_id = 70220088, pos = { x = 810.950, y = 198.738, z = -1311.150 }, rot = { x = 0.000, y = 107.483, z = 0.000 }, level = 30, area_id = 10 },
	[670103] = { config_id = 670103, gadget_id = 70220088, pos = { x = 807.613, y = 198.738, z = -1306.321 }, rot = { x = 0.000, y = 312.519, z = 0.000 }, level = 30, area_id = 10 },
	[670104] = { config_id = 670104, gadget_id = 70220078, pos = { x = 797.997, y = 199.847, z = -1298.509 }, rot = { x = 0.000, y = 90.791, z = 357.116 }, level = 30, area_id = 10 },
	-- Gear Start时为隐藏，知道切成default生成
	[670105] = { config_id = 670105, gadget_id = 70220078, pos = { x = 797.036, y = 199.575, z = -1288.158 }, rot = { x = 0.000, y = 116.324, z = 0.000 }, level = 30, area_id = 10 },
	[670106] = { config_id = 670106, gadget_id = 70220078, pos = { x = 798.358, y = 199.279, z = -1287.726 }, rot = { x = 11.400, y = 42.889, z = 0.000 }, level = 30, area_id = 10 },
	[670107] = { config_id = 670107, gadget_id = 70220078, pos = { x = 795.800, y = 199.480, z = -1291.348 }, rot = { x = 0.000, y = 145.571, z = 0.000 }, level = 30, area_id = 10 },
	[670108] = { config_id = 670108, gadget_id = 70220078, pos = { x = 796.586, y = 199.180, z = -1289.597 }, rot = { x = 0.000, y = 36.381, z = 333.764 }, level = 30, area_id = 10 },
	-- Gear Start时为隐藏，知道切成default生成
	[670109] = { config_id = 670109, gadget_id = 70220078, pos = { x = 784.538, y = 199.624, z = -1299.010 }, rot = { x = 355.910, y = 63.512, z = 3.576 }, level = 30, area_id = 10 },
	[670110] = { config_id = 670110, gadget_id = 70220078, pos = { x = 785.733, y = 199.309, z = -1297.021 }, rot = { x = 0.000, y = 348.383, z = 0.000 }, level = 30, area_id = 10 },
	[670111] = { config_id = 670111, gadget_id = 70220078, pos = { x = 787.302, y = 199.435, z = -1294.945 }, rot = { x = 350.329, y = 106.937, z = 352.546 }, level = 30, area_id = 10 },
	[670112] = { config_id = 670112, gadget_id = 70220078, pos = { x = 788.041, y = 199.065, z = -1292.987 }, rot = { x = 350.230, y = 160.521, z = 353.436 }, level = 30, area_id = 10 },
	[670113] = { config_id = 670113, gadget_id = 70220086, pos = { x = 792.290, y = 200.790, z = -1287.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670114] = { config_id = 670114, gadget_id = 70220092, pos = { x = 802.858, y = 200.639, z = -1301.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670115] = { config_id = 670115, gadget_id = 70220094, pos = { x = 762.909, y = 199.784, z = -1281.609 }, rot = { x = 351.781, y = 32.449, z = 0.000 }, level = 30, area_id = 10 },
	[670116] = { config_id = 670116, gadget_id = 70220078, pos = { x = 763.582, y = 200.043, z = -1280.550 }, rot = { x = 0.000, y = 32.449, z = 0.000 }, level = 30, area_id = 10 },
	[670117] = { config_id = 670117, gadget_id = 70220078, pos = { x = 764.318, y = 200.147, z = -1279.392 }, rot = { x = 13.917, y = 32.449, z = 0.000 }, level = 30, area_id = 10 },
	[670118] = { config_id = 670118, gadget_id = 70220078, pos = { x = 755.977, y = 199.384, z = -1274.588 }, rot = { x = 354.821, y = 86.831, z = 8.735 }, level = 30, area_id = 10 },
	[670119] = { config_id = 670119, gadget_id = 70220094, pos = { x = 757.438, y = 200.042, z = -1273.691 }, rot = { x = 359.637, y = 58.426, z = 359.823 }, level = 30, area_id = 10 },
	[670120] = { config_id = 670120, gadget_id = 70220078, pos = { x = 759.106, y = 199.684, z = -1273.010 }, rot = { x = 8.958, y = 58.397, z = 359.821 }, level = 30, area_id = 10 },
	[670121] = { config_id = 670121, gadget_id = 70220078, pos = { x = 759.901, y = 199.953, z = -1271.220 }, rot = { x = 347.313, y = 58.465, z = 359.819 }, level = 30, area_id = 10 },
	[670122] = { config_id = 670122, gadget_id = 70220078, pos = { x = 761.311, y = 199.888, z = -1271.309 }, rot = { x = 0.156, y = 279.765, z = 0.372 }, level = 30, area_id = 10 },
	[670123] = { config_id = 670123, gadget_id = 70220078, pos = { x = 762.681, y = 200.690, z = -1270.470 }, rot = { x = 359.764, y = 86.612, z = 359.673 }, level = 30, area_id = 10 },
	[670124] = { config_id = 670124, gadget_id = 70220078, pos = { x = 755.031, y = 199.989, z = -1261.511 }, rot = { x = 344.789, y = 37.871, z = 5.438 }, level = 30, area_id = 10 },
	[670125] = { config_id = 670125, gadget_id = 70220078, pos = { x = 755.911, y = 200.164, z = -1260.674 }, rot = { x = 353.514, y = 207.245, z = 359.963 }, level = 30, area_id = 10 },
	[670126] = { config_id = 670126, gadget_id = 70220094, pos = { x = 757.698, y = 200.427, z = -1260.114 }, rot = { x = 359.637, y = 58.426, z = 3.511 }, level = 30, area_id = 10 },
	[670127] = { config_id = 670127, gadget_id = 70220086, pos = { x = 728.505, y = 200.125, z = -1246.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670128] = { config_id = 670128, gadget_id = 70220093, pos = { x = 717.315, y = 201.595, z = -1236.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670129] = { config_id = 670129, gadget_id = 70220076, pos = { x = 713.904, y = 199.922, z = -1234.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670130] = { config_id = 670130, gadget_id = 70220086, pos = { x = 710.621, y = 204.015, z = -1231.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670131] = { config_id = 670131, gadget_id = 70220086, pos = { x = 706.071, y = 200.125, z = -1224.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670132] = { config_id = 670132, gadget_id = 70220086, pos = { x = 709.077, y = 200.125, z = -1206.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670133] = { config_id = 670133, gadget_id = 70220077, pos = { x = 761.272, y = 201.564, z = -1277.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670134] = { config_id = 670134, gadget_id = 70220088, pos = { x = 706.672, y = 199.221, z = -1229.305 }, rot = { x = 0.000, y = 135.843, z = 0.000 }, level = 30, area_id = 10 },
	[670135] = { config_id = 670135, gadget_id = 70220088, pos = { x = 708.910, y = 199.221, z = -1210.857 }, rot = { x = 0.000, y = 345.702, z = 0.000 }, level = 30, area_id = 10 },
	[670136] = { config_id = 670136, gadget_id = 70220076, pos = { x = 708.971, y = 199.922, z = -1220.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670137] = { config_id = 670137, gadget_id = 70220084, pos = { x = 834.148, y = 200.431, z = -1322.805 }, rot = { x = 0.000, y = 315.931, z = 0.000 }, level = 30, area_id = 10 },
	[670138] = { config_id = 670138, gadget_id = 70220085, pos = { x = 749.393, y = 201.091, z = -1244.012 }, rot = { x = 355.106, y = 25.436, z = 1.330 }, level = 30, area_id = 10 },
	[670139] = { config_id = 670139, gadget_id = 70310015, pos = { x = 842.385, y = 199.069, z = -1323.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[670145] = { config_id = 670145, gadget_id = 70220088, pos = { x = 726.280, y = 199.221, z = -1245.361 }, rot = { x = 0.000, y = 293.980, z = 0.000 }, level = 30, area_id = 10 },
	[670146] = { config_id = 670146, gadget_id = 70220088, pos = { x = 706.418, y = 199.221, z = -1224.319 }, rot = { x = 0.000, y = 191.467, z = 0.000 }, level = 30, area_id = 10 },
	[670147] = { config_id = 670147, gadget_id = 70220092, pos = { x = 707.171, y = 202.667, z = -1189.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670148] = { config_id = 670148, gadget_id = 70220087, pos = { x = 730.052, y = 250.962, z = -1123.402 }, rot = { x = 0.000, y = 234.027, z = 0.000 }, level = 30, area_id = 10 },
	[670149] = { config_id = 670149, gadget_id = 70220093, pos = { x = 691.583, y = 272.950, z = -1111.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670150] = { config_id = 670150, gadget_id = 70220087, pos = { x = 724.672, y = 254.689, z = -1126.185 }, rot = { x = 0.000, y = 246.445, z = 0.000 }, level = 30, area_id = 10 },
	[670151] = { config_id = 670151, gadget_id = 70220086, pos = { x = 724.460, y = 256.409, z = -1125.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670152] = { config_id = 670152, gadget_id = 70220076, pos = { x = 712.803, y = 267.847, z = -1117.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670153] = { config_id = 670153, gadget_id = 70220088, pos = { x = 821.645, y = 198.738, z = -1315.057 }, rot = { x = 0.000, y = 73.671, z = 0.000 }, level = 30, area_id = 10 },
	[670154] = { config_id = 670154, gadget_id = 70220088, pos = { x = 813.040, y = 198.738, z = -1310.139 }, rot = { x = 0.000, y = 301.117, z = 0.000 }, level = 30, area_id = 10 },
	[670155] = { config_id = 670155, gadget_id = 70220088, pos = { x = 730.881, y = 199.221, z = -1247.943 }, rot = { x = 0.000, y = 277.915, z = 0.000 }, level = 30, area_id = 10 },
	[670156] = { config_id = 670156, gadget_id = 70220088, pos = { x = 716.280, y = 199.221, z = -1238.098 }, rot = { x = 0.000, y = 297.818, z = 0.000 }, level = 30, area_id = 10 },
	[670157] = { config_id = 670157, gadget_id = 70220088, pos = { x = 708.789, y = 199.221, z = -1228.606 }, rot = { x = 0.000, y = 319.222, z = 0.000 }, level = 30, area_id = 10 },
	[670158] = { config_id = 670158, gadget_id = 70220088, pos = { x = 708.957, y = 199.221, z = -1223.435 }, rot = { x = 0.000, y = 197.548, z = 0.000 }, level = 30, area_id = 10 },
	[670159] = { config_id = 670159, gadget_id = 70220088, pos = { x = 710.671, y = 199.221, z = -1210.243 }, rot = { x = 0.000, y = 168.424, z = 0.000 }, level = 30, area_id = 10 },
	[670160] = { config_id = 670160, gadget_id = 70220087, pos = { x = 735.654, y = 221.693, z = -1135.385 }, rot = { x = 0.000, y = 218.466, z = 0.000 }, level = 30, area_id = 10 },
	[670161] = { config_id = 670161, gadget_id = 70220076, pos = { x = 731.967, y = 218.532, z = -1140.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670162] = { config_id = 670162, gadget_id = 70220087, pos = { x = 740.304, y = 223.635, z = -1128.072 }, rot = { x = 0.000, y = 195.288, z = 0.000 }, level = 30, area_id = 10 },
	[670163] = { config_id = 670163, gadget_id = 70220086, pos = { x = 736.847, y = 235.919, z = -1119.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670164] = { config_id = 670164, gadget_id = 70220087, pos = { x = 727.469, y = 248.231, z = -1126.752 }, rot = { x = 0.000, y = 234.027, z = 0.000 }, level = 30, area_id = 10 },
	[670165] = { config_id = 670165, gadget_id = 70220076, pos = { x = 727.403, y = 250.084, z = -1126.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670166] = { config_id = 670166, gadget_id = 70220076, pos = { x = 735.329, y = 223.582, z = -1134.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670167] = { config_id = 670167, gadget_id = 70220076, pos = { x = 740.281, y = 225.560, z = -1127.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[670168] = { config_id = 670168, gadget_id = 70220084, pos = { x = 704.567, y = 203.904, z = -1184.795 }, rot = { x = 0.000, y = 46.669, z = 0.000 }, level = 1, area_id = 10 },
	[670169] = { config_id = 670169, gadget_id = 70220084, pos = { x = 725.005, y = 204.354, z = -1165.515 }, rot = { x = 306.185, y = 345.879, z = 52.589 }, level = 1, area_id = 10 },
	[670170] = { config_id = 670170, gadget_id = 70220084, pos = { x = 724.920, y = 259.760, z = -1120.850 }, rot = { x = 336.354, y = 262.253, z = 160.137 }, level = 1, area_id = 10 },
	[670171] = { config_id = 670171, gadget_id = 70220084, pos = { x = 710.172, y = 269.284, z = -1115.960 }, rot = { x = 318.248, y = 57.010, z = 24.658 }, level = 1, area_id = 10 },
	[670172] = { config_id = 670172, gadget_id = 70220088, pos = { x = 809.257, y = 198.738, z = -1308.836 }, rot = { x = 0.000, y = 135.330, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[670008] = { config_id = 670008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 707.187, y = 201.515, z = -1190.012 }, area_id = 10 },
	[670037] = { config_id = 670037, shape = RegionShape.SPHERE, radius = 5, pos = { x = 840.316, y = 199.010, z = -1326.000 }, area_id = 10 },
	-- 实际标记终点区域
	[670047] = { config_id = 670047, shape = RegionShape.SPHERE, radius = 5, pos = { x = 597.708, y = 230.052, z = -1147.131 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[670050] = { config_id = 670050, shape = RegionShape.SPHERE, radius = 5, pos = { x = 746.874, y = 199.987, z = -1253.166 }, area_id = 10 },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	[670067] = { config_id = 670067, shape = RegionShape.SPHERE, radius = 3, pos = { x = 783.727, y = 199.860, z = -1290.737 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[670086] = { config_id = 670086, shape = RegionShape.SPHERE, radius = 5, pos = { x = 716.580, y = 280.535, z = -1106.002 }, area_id = 10 },
	[670141] = { config_id = 670141, shape = RegionShape.SPHERE, radius = 70, pos = { x = 800.202, y = 199.758, z = -1280.368 }, area_id = 10 },
	[670142] = { config_id = 670142, shape = RegionShape.SPHERE, radius = 70, pos = { x = 734.897, y = 195.816, z = -1193.963 }, area_id = 10 },
	[670143] = { config_id = 670143, shape = RegionShape.SPHERE, radius = 70, pos = { x = 700.638, y = 256.454, z = -1112.447 }, area_id = 10 },
	[670144] = { config_id = 670144, shape = RegionShape.SPHERE, radius = 70, pos = { x = 621.390, y = 226.740, z = -1131.620 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1670008, name = "ENTER_REGION_670008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_670008", action = "action_EVENT_ENTER_REGION_670008" },
	{ config_id = 1670046, name = "GADGET_CREATE_670046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_670046", action = "action_EVENT_GADGET_CREATE_670046" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1670050, name = "ENTER_REGION_670050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_670050", action = "action_EVENT_ENTER_REGION_670050" },
	{ config_id = 1670051, name = "CHALLENGE_SUCCESS_670051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_670051" },
	{ config_id = 1670052, name = "CHALLENGE_FAIL_670052", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_670052" },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	{ config_id = 1670067, name = "ENTER_REGION_670067", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_670067", action = "action_EVENT_ENTER_REGION_670067" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1670086, name = "ENTER_REGION_670086", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_670086", action = "action_EVENT_ENTER_REGION_670086" }
}

-- 点位
points = {
	{ config_id = 670140, pos = { x = 840.336, y = 199.076, z = -1324.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 670044, gadget_id = 70220084, pos = { x = 841.127, y = 199.935, z = -1255.485 }, rot = { x = 0.000, y = 226.634, z = 0.000 }, level = 30, area_id = 10 }
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
		gadgets = { 670013, 670139 },
		regions = { 670037 },
		triggers = { "GADGET_CREATE_670046", "CHALLENGE_SUCCESS_670051", "CHALLENGE_FAIL_670052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 分段加载冰柱,
		monsters = { },
		gadgets = { 670016, 670017, 670020, 670021, 670027, 670031, 670033, 670038, 670039, 670042, 670043, 670057, 670066, 670068, 670099, 670100, 670101, 670102, 670103, 670104, 670105, 670106, 670107, 670108, 670109, 670110, 670111, 670112, 670113, 670114, 670137, 670153, 670154, 670172 },
		regions = { 670067 },
		triggers = { "ENTER_REGION_670067" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 一次性加载冰柱,
		monsters = { },
		gadgets = { 670001, 670002, 670003, 670004, 670005, 670006, 670011, 670012, 670018, 670024, 670025, 670026, 670032, 670034, 670115, 670116, 670117, 670118, 670119, 670120, 670121, 670122, 670123, 670124, 670125, 670126, 670133 },
		regions = { 670050 },
		triggers = { "ENTER_REGION_670050" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 浮冰部分,
		monsters = { },
		gadgets = { 670007, 670009, 670010, 670029, 670035, 670036, 670049, 670055, 670063, 670064, 670065, 670069, 670070, 670127, 670128, 670129, 670130, 670131, 670132, 670134, 670135, 670136, 670138, 670145, 670146, 670147, 670148, 670150, 670151, 670152, 670155, 670156, 670157, 670158, 670159 },
		regions = { 670008 },
		triggers = { "ENTER_REGION_670008" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 横冰柱部分,
		monsters = { },
		gadgets = { 670014, 670015, 670019, 670023, 670028, 670030, 670040, 670041, 670045, 670048, 670053, 670054, 670056, 670058, 670060, 670061, 670062, 670078, 670079, 670080, 670081, 670082, 670083, 670084, 670085, 670160, 670161, 670162, 670163, 670164, 670165, 670166, 670167, 670168, 670169, 670170, 670171 },
		regions = { 670086 },
		triggers = { "ENTER_REGION_670086" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 飞行部分,
		monsters = { },
		gadgets = { 670022, 670071, 670074, 670075, 670076, 670077, 670087, 670088, 670090, 670091, 670092, 670093, 670095, 670096, 670097, 670149 },
		regions = { 670047 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 670141, 670142, 670143, 670144 },
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
function condition_EVENT_ENTER_REGION_670008(context, evt)
	if evt.param1 ~= 670008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_670008(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008670, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008670, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_670046(context, evt)
	if 670013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_670046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008670, 670013, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_670050(context, evt)
	if evt.param1 ~= 670050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_670050(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008670, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008670, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_670051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008670, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_670052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008670, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_670067(context, evt)
	if evt.param1 ~= 670067 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_670067(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008670, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_670086(context, evt)
	if evt.param1 ~= 670086 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_670086(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008670, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008670, 4)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008670, EntityType.GADGET, 670085 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_3/WinterCampParkour"