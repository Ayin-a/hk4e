-- 基础信息
local base_info = {
	group_id = 133008671
}

-- DEFS_MISCS
local defs = {
        group_id = 133008671,
        --开启机关的configID，SelectOption为175,如果这个group非起点，则配0
        load_on_start = {2,7},
        starter_gadget = 671012,
        --全程终点region的ConfigID,如果这个group非终点，则配0
        end_region = 671049,
        --全程终点在哪个suit,如果这个group非终点，则配0
        optimiz_region = {671038,671069,671073,671101,671103},
        ending_suit = 6,
        --挑战限时秒
        challenge_time = 180,
        --总收集目标数
        coin_gadget_id = 70220086,

        --金币和冰柱的对应关系
        --[冰柱config_id]={金币config_id1,金币config_id2...}
        coin_ice = { [671009]={671035},[671068]={671093},[671080]={671095}
        },
        --此Group中，哪些suit里放了金币（包括冰冻金币）
        coin_suits = {2,3,4,5,6},
        gallery_id = 13003,
        end_gadget = 671016, 
        look_pos = {x=1344, y=323, z=-728},
        duration = 2,
guide_regionID = 671044,
        father_challenge = 2003013
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
	[671001] = { config_id = 671001, gadget_id = 70220076, pos = { x = 1345.768, y = 304.897, z = -715.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671002] = { config_id = 671002, gadget_id = 70220086, pos = { x = 1336.065, y = 318.429, z = -723.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671003] = { config_id = 671003, gadget_id = 70690001, pos = { x = 1323.542, y = 358.853, z = -839.876 }, rot = { x = 8.602, y = 167.192, z = 74.314 }, level = 30, area_id = 10 },
	[671005] = { config_id = 671005, gadget_id = 70220077, pos = { x = 1327.145, y = 357.852, z = -880.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671006] = { config_id = 671006, gadget_id = 70690013, pos = { x = 1339.671, y = 305.883, z = -745.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[671007] = { config_id = 671007, gadget_id = 70710126, pos = { x = 1325.955, y = 356.422, z = -871.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671008] = { config_id = 671008, gadget_id = 70220088, pos = { x = 1432.830, y = 266.180, z = -593.131 }, rot = { x = 0.000, y = 224.207, z = 0.000 }, level = 30, area_id = 10 },
	[671009] = { config_id = 671009, gadget_id = 70220094, pos = { x = 1333.271, y = 356.697, z = -898.876 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, area_id = 10 },
	[671010] = { config_id = 671010, gadget_id = 70220093, pos = { x = 1377.547, y = 271.934, z = -655.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671011] = { config_id = 671011, gadget_id = 70220086, pos = { x = 1371.307, y = 275.345, z = -668.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671012] = { config_id = 671012, gadget_id = 70350357, pos = { x = 1450.405, y = 266.926, z = -580.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 10 },
	[671013] = { config_id = 671013, gadget_id = 70220086, pos = { x = 1352.445, y = 345.657, z = -948.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671014] = { config_id = 671014, gadget_id = 70220086, pos = { x = 1431.307, y = 267.220, z = -591.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671015] = { config_id = 671015, gadget_id = 70220086, pos = { x = 1399.746, y = 267.159, z = -608.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 仅目标点无功能
	[671016] = { config_id = 671016, gadget_id = 70360025, pos = { x = 1302.494, y = 293.259, z = -1040.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[671017] = { config_id = 671017, gadget_id = 70220088, pos = { x = 1398.274, y = 266.189, z = -609.703 }, rot = { x = 359.823, y = 36.697, z = 359.874 }, level = 30, area_id = 10 },
	[671018] = { config_id = 671018, gadget_id = 70220093, pos = { x = 1352.157, y = 290.854, z = -700.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671019] = { config_id = 671019, gadget_id = 70220086, pos = { x = 1346.683, y = 297.575, z = -704.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671020] = { config_id = 671020, gadget_id = 70220092, pos = { x = 1364.970, y = 278.199, z = -675.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671021] = { config_id = 671021, gadget_id = 70220076, pos = { x = 1391.241, y = 269.036, z = -629.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 阶段终点
	[671022] = { config_id = 671022, gadget_id = 70710126, pos = { x = 1382.618, y = 270.139, z = -647.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[671023] = { config_id = 671023, gadget_id = 70710126, pos = { x = 1338.517, y = 312.946, z = -717.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 无功能目标点
	[671024] = { config_id = 671024, gadget_id = 70350085, pos = { x = 1382.618, y = 270.139, z = -647.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[671025] = { config_id = 671025, gadget_id = 70350085, pos = { x = 1338.662, y = 313.263, z = -717.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[671026] = { config_id = 671026, gadget_id = 70350085, pos = { x = 1325.955, y = 356.422, z = -871.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- Gear Start时为隐藏，知道切成default生成
	[671027] = { config_id = 671027, gadget_id = 70220078, pos = { x = 1386.732, y = 269.600, z = -637.623 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671028] = { config_id = 671028, gadget_id = 70220088, pos = { x = 1410.401, y = 266.101, z = -600.075 }, rot = { x = 0.000, y = 52.659, z = 0.000 }, level = 30, area_id = 10 },
	[671029] = { config_id = 671029, gadget_id = 70220076, pos = { x = 1321.190, y = 362.716, z = -810.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671030] = { config_id = 671030, gadget_id = 70220078, pos = { x = 1388.862, y = 269.239, z = -634.086 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671031] = { config_id = 671031, gadget_id = 70220084, pos = { x = 1446.410, y = 267.789, z = -582.805 }, rot = { x = 0.000, y = 240.598, z = 0.000 }, level = 30, area_id = 10 },
	[671033] = { config_id = 671033, gadget_id = 70220076, pos = { x = 1411.714, y = 266.932, z = -599.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671034] = { config_id = 671034, gadget_id = 70220086, pos = { x = 1370.599, y = 336.778, z = -966.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671035] = { config_id = 671035, gadget_id = 70220086, pos = { x = 1333.170, y = 358.600, z = -899.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671036] = { config_id = 671036, gadget_id = 70310015, pos = { x = 1339.854, y = 312.801, z = -718.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[671037] = { config_id = 671037, gadget_id = 70220086, pos = { x = 1380.564, y = 328.459, z = -972.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671039] = { config_id = 671039, gadget_id = 70690001, pos = { x = 1340.681, y = 332.687, z = -743.038 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671040] = { config_id = 671040, gadget_id = 70710126, pos = { x = 1399.606, y = 317.672, z = -984.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671041] = { config_id = 671041, gadget_id = 70350085, pos = { x = 1399.606, y = 317.672, z = -984.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671042] = { config_id = 671042, gadget_id = 70220076, pos = { x = 1393.581, y = 319.478, z = -989.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671043] = { config_id = 671043, gadget_id = 70220088, pos = { x = 1430.979, y = 266.188, z = -592.034 }, rot = { x = 0.000, y = 50.329, z = 0.000 }, level = 30, area_id = 10 },
	[671045] = { config_id = 671045, gadget_id = 70220086, pos = { x = 1316.831, y = 365.122, z = -805.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671046] = { config_id = 671046, gadget_id = 70350085, pos = { x = 1302.494, y = 293.259, z = -1040.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671056] = { config_id = 671056, gadget_id = 70690001, pos = { x = 1346.385, y = 320.878, z = -1034.435 }, rot = { x = 0.465, y = 236.874, z = 80.002 }, level = 30, area_id = 10 },
	[671057] = { config_id = 671057, gadget_id = 70220086, pos = { x = 1386.686, y = 274.050, z = -637.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671058] = { config_id = 671058, gadget_id = 70220088, pos = { x = 1400.314, y = 266.292, z = -610.267 }, rot = { x = 0.000, y = 25.634, z = 0.000 }, level = 30, area_id = 10 },
	[671059] = { config_id = 671059, gadget_id = 70220088, pos = { x = 1412.762, y = 266.188, z = -600.571 }, rot = { x = 0.000, y = 52.659, z = 0.000 }, level = 30, area_id = 10 },
	[671061] = { config_id = 671061, gadget_id = 70220076, pos = { x = 1444.909, y = 267.493, z = -583.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671063] = { config_id = 671063, gadget_id = 70220076, pos = { x = 1337.586, y = 313.711, z = -717.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671065] = { config_id = 671065, gadget_id = 70220086, pos = { x = 1323.844, y = 358.853, z = -832.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671067] = { config_id = 671067, gadget_id = 70220094, pos = { x = 1321.641, y = 360.104, z = -896.662 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, area_id = 10 },
	[671068] = { config_id = 671068, gadget_id = 70220094, pos = { x = 1321.641, y = 359.333, z = -886.722 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, area_id = 10 },
	[671072] = { config_id = 671072, gadget_id = 70220086, pos = { x = 1336.360, y = 322.609, z = -732.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671074] = { config_id = 671074, gadget_id = 70310015, pos = { x = 1330.423, y = 353.999, z = -872.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[671076] = { config_id = 671076, gadget_id = 70220086, pos = { x = 1340.525, y = 349.151, z = -759.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671077] = { config_id = 671077, gadget_id = 70220076, pos = { x = 1338.209, y = 349.803, z = -756.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671079] = { config_id = 671079, gadget_id = 70220094, pos = { x = 1333.180, y = 355.584, z = -887.805 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, area_id = 10 },
	[671080] = { config_id = 671080, gadget_id = 70220094, pos = { x = 1327.220, y = 359.013, z = -901.761 }, rot = { x = 0.000, y = 335.090, z = 0.000 }, level = 30, area_id = 10 },
	[671082] = { config_id = 671082, gadget_id = 70220092, pos = { x = 1327.661, y = 355.066, z = -914.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671083] = { config_id = 671083, gadget_id = 70220076, pos = { x = 1331.306, y = 346.091, z = -776.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671084] = { config_id = 671084, gadget_id = 70220086, pos = { x = 1337.047, y = 352.412, z = -766.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671085] = { config_id = 671085, gadget_id = 70220076, pos = { x = 1358.988, y = 282.128, z = -689.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671088] = { config_id = 671088, gadget_id = 70220076, pos = { x = 1347.183, y = 298.837, z = -708.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671089] = { config_id = 671089, gadget_id = 70220087, pos = { x = 1345.780, y = 302.488, z = -714.106 }, rot = { x = 0.334, y = 96.475, z = 11.716 }, level = 30, area_id = 10 },
	[671090] = { config_id = 671090, gadget_id = 70690001, pos = { x = 1321.310, y = 358.853, z = -823.180 }, rot = { x = 8.602, y = 167.192, z = 74.314 }, level = 30, area_id = 10 },
	[671092] = { config_id = 671092, gadget_id = 70220092, pos = { x = 1342.796, y = 349.575, z = -939.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671093] = { config_id = 671093, gadget_id = 70220086, pos = { x = 1321.641, y = 361.010, z = -886.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671095] = { config_id = 671095, gadget_id = 70220086, pos = { x = 1327.220, y = 360.565, z = -901.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671096] = { config_id = 671096, gadget_id = 70310015, pos = { x = 1403.970, y = 317.300, z = -985.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[671097] = { config_id = 671097, gadget_id = 70220076, pos = { x = 1362.237, y = 339.090, z = -960.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671102] = { config_id = 671102, gadget_id = 70220086, pos = { x = 1357.051, y = 280.548, z = -692.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671104] = { config_id = 671104, gadget_id = 70220084, pos = { x = 1335.695, y = 318.929, z = -724.040 }, rot = { x = 331.770, y = 161.398, z = 349.976 }, level = 30, area_id = 10 },
	[671107] = { config_id = 671107, gadget_id = 70220086, pos = { x = 1330.354, y = 354.266, z = -921.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671109] = { config_id = 671109, gadget_id = 70220078, pos = { x = 1386.952, y = 268.666, z = -633.442 }, rot = { x = 0.000, y = 308.664, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671110] = { config_id = 671110, gadget_id = 70690001, pos = { x = 1368.537, y = 320.878, z = -1019.263 }, rot = { x = 0.465, y = 225.430, z = 80.002 }, level = 30, area_id = 10 },
	[671112] = { config_id = 671112, gadget_id = 70690001, pos = { x = 1338.491, y = 320.878, z = -1037.692 }, rot = { x = 10.545, y = 237.087, z = 73.539 }, level = 30, area_id = 10 },
	[671113] = { config_id = 671113, gadget_id = 70690001, pos = { x = 1330.135, y = 320.442, z = -1039.066 }, rot = { x = 30.805, y = 259.449, z = 59.964 }, level = 30, area_id = 10 },
	[671114] = { config_id = 671114, gadget_id = 70220078, pos = { x = 1390.862, y = 268.990, z = -634.086 }, rot = { x = 0.000, y = 309.408, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671115] = { config_id = 671115, gadget_id = 70220086, pos = { x = 1379.327, y = 321.170, z = -1009.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671116] = { config_id = 671116, gadget_id = 70220078, pos = { x = 1384.027, y = 268.666, z = -637.958 }, rot = { x = 0.000, y = 308.664, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671118] = { config_id = 671118, gadget_id = 70220078, pos = { x = 1389.243, y = 268.990, z = -639.039 }, rot = { x = 0.000, y = 309.408, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	[671119] = { config_id = 671119, gadget_id = 70220086, pos = { x = 1362.745, y = 321.170, z = -1024.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671122] = { config_id = 671122, gadget_id = 70220086, pos = { x = 1356.200, y = 284.373, z = -693.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	[671124] = { config_id = 671124, gadget_id = 70690001, pos = { x = 1388.196, y = 319.338, z = -999.152 }, rot = { x = 336.947, y = 219.969, z = 48.001 }, level = 30, area_id = 10 },
	[671125] = { config_id = 671125, gadget_id = 70690001, pos = { x = 1383.003, y = 320.878, z = -1006.107 }, rot = { x = 0.465, y = 225.430, z = 80.002 }, level = 30, area_id = 10 },
	[671126] = { config_id = 671126, gadget_id = 70690001, pos = { x = 1375.683, y = 320.878, z = -1012.623 }, rot = { x = 0.465, y = 225.430, z = 80.002 }, level = 30, area_id = 10 },
	[671128] = { config_id = 671128, gadget_id = 70220086, pos = { x = 1323.026, y = 314.963, z = -1042.548 }, rot = { x = 0.000, y = 60.432, z = 0.000 }, level = 30, area_id = 10 },
	[671130] = { config_id = 671130, gadget_id = 70220086, pos = { x = 1310.684, y = 302.011, z = -1044.479 }, rot = { x = 0.000, y = 65.622, z = 0.000 }, level = 30, area_id = 10 },
	[671131] = { config_id = 671131, gadget_id = 70220087, pos = { x = 1341.938, y = 307.114, z = -713.768 }, rot = { x = 0.334, y = 96.475, z = 11.716 }, level = 30, area_id = 10 },
	[671137] = { config_id = 671137, gadget_id = 70690013, pos = { x = 1326.710, y = 320.008, z = -791.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	[671038] = { config_id = 671038, shape = RegionShape.SPHERE, radius = 80, pos = { x = 1391.505, y = 264.354, z = -605.135 }, area_id = 10 },
	-- 显示教学区域
	[671044] = { config_id = 671044, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1450.405, y = 266.926, z = -580.609 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[671047] = { config_id = 671047, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1325.955, y = 356.422, z = -871.733 }, area_id = 10 },
	-- 实际标记终点区域
	[671049] = { config_id = 671049, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1302.494, y = 293.259, z = -1040.067 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[671050] = { config_id = 671050, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1338.845, y = 314.878, z = -717.869 }, area_id = 10 },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	[671053] = { config_id = 671053, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1382.618, y = 270.139, z = -647.511 }, area_id = 10 },
	-- 切换一组冰柱为default
	[671054] = { config_id = 671054, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1392.474, y = 268.897, z = -625.421 }, area_id = 10 },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	[671055] = { config_id = 671055, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1399.606, y = 317.672, z = -984.534 }, area_id = 10 },
	[671069] = { config_id = 671069, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 120.000 }, pos = { x = 1347.642, y = 317.184, z = -694.910 }, area_id = 10 },
	[671073] = { config_id = 671073, shape = RegionShape.CUBIC, size = { x = 120.000, y = 90.000, z = 160.000 }, pos = { x = 1322.187, y = 344.233, z = -820.767 }, area_id = 10 },
	[671101] = { config_id = 671101, shape = RegionShape.SPHERE, radius = 80, pos = { x = 1325.758, y = 350.360, z = -933.868 }, area_id = 10 },
	[671103] = { config_id = 671103, shape = RegionShape.SPHERE, radius = 80, pos = { x = 1349.477, y = 299.613, z = -1003.952 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1671047, name = "ENTER_REGION_671047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_671047", action = "action_EVENT_ENTER_REGION_671047" },
	{ config_id = 1671048, name = "GADGET_CREATE_671048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_671048", action = "action_EVENT_GADGET_CREATE_671048" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1671050, name = "ENTER_REGION_671050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_671050", action = "action_EVENT_ENTER_REGION_671050" },
	{ config_id = 1671051, name = "CHALLENGE_SUCCESS_671051", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_671051" },
	{ config_id = 1671052, name = "CHALLENGE_FAIL_671052", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_671052" },
	-- 阶段终点，加载下一个suite，卸载本阶段目标点
	{ config_id = 1671053, name = "ENTER_REGION_671053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_671053", action = "action_EVENT_ENTER_REGION_671053" },
	-- 切换一组冰柱为default
	{ config_id = 1671054, name = "ENTER_REGION_671054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_671054", action = "action_EVENT_ENTER_REGION_671054" },
	-- 到达阶段终点加载下一个suite,卸载前一个suite
	{ config_id = 1671055, name = "ENTER_REGION_671055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_671055", action = "action_EVENT_ENTER_REGION_671055" }
}

-- 点位
points = {
	{ config_id = 671108, pos = { x = 1455.801, y = 267.744, z = -576.062 }, rot = { x = 0.000, y = 244.305, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 671032, gadget_id = 70220077, pos = { x = 1327.275, y = 356.199, z = -874.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
		{ config_id = 671091, gadget_id = 70690001, pos = { x = 1323.542, y = 358.853, z = -831.520 }, rot = { x = 8.602, y = 174.941, z = 74.314 }, level = 30, area_id = 10 }
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
		gadgets = { 671012 },
		regions = { 671044 },
		triggers = { "GADGET_CREATE_671048", "CHALLENGE_SUCCESS_671051", "CHALLENGE_FAIL_671052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一段：水面,
		monsters = { },
		gadgets = { 671008, 671014, 671015, 671017, 671021, 671022, 671024, 671027, 671028, 671030, 671031, 671033, 671043, 671057, 671058, 671059, 671061, 671109, 671114, 671116, 671118 },
		regions = { 671053, 671054 },
		triggers = { "ENTER_REGION_671053", "ENTER_REGION_671054" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第二段：爬山,
		monsters = { },
		gadgets = { 671001, 671010, 671011, 671018, 671019, 671020, 671023, 671025, 671036, 671063, 671085, 671088, 671089, 671102, 671104, 671122, 671131 },
		regions = { 671050 },
		triggers = { "ENTER_REGION_671050" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第三段：爬山,
		monsters = { },
		gadgets = { 671002, 671003, 671006, 671007, 671026, 671029, 671039, 671045, 671065, 671072, 671074, 671076, 671077, 671083, 671084, 671090, 671137 },
		regions = { 671047 },
		triggers = { "ENTER_REGION_671047" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第四段：山洞+飞行,
		monsters = { },
		gadgets = { 671005, 671009, 671013, 671034, 671035, 671037, 671040, 671041, 671067, 671068, 671079, 671080, 671082, 671092, 671093, 671095, 671096, 671097, 671107 },
		regions = { 671055 },
		triggers = { "ENTER_REGION_671055" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 最后一部分：水面,
		monsters = { },
		gadgets = { 671016, 671042, 671046, 671056, 671110, 671112, 671113, 671115, 671119, 671124, 671125, 671126, 671128, 671130 },
		regions = { 671049 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 671038, 671069, 671073, 671101, 671103 },
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
function condition_EVENT_ENTER_REGION_671047(context, evt)
	if evt.param1 ~= 671047 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_671047(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008671, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008671, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671026 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_671048(context, evt)
	if 671012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_671048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008671, 671012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_671050(context, evt)
	if evt.param1 ~= 671050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_671050(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008671, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008671, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_671051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008671, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_671052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008671, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_671053(context, evt)
	if evt.param1 ~= 671053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_671053(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008671, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_671054(context, evt)
	if evt.param1 ~= 671054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_671054(context, evt)
	-- 将configid为 671027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 671027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 671030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 671030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_671055(context, evt)
	if evt.param1 ~= 671055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_671055(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008671, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008671, 4)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008671, EntityType.GADGET, 671041 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_3/WinterCampParkour"