-- 基础信息
local base_info = {
	group_id = 133108203
}

-- Trigger变量
local defs = {
	gallery_id = 14004,
	speed_double = 5
}

-- DEFS_MISCS
local Raft_Monster_List = {
    [203061] = {203068},
    [203060] = {203069},
    [203063] = {203070},
    [203058] = {203082},
    [203062] = {203032},
    [203153] = {203150},
    [203154] = {203151},
    [203163] = {203161},
    [203146] = {203168},
    [203191] = {203037},
    [203192] = {203041},
    [203064] = {203074},
    [203193] = {203094},
    [203066] = {203076},
    [203067] = {203077},
    [203210] = {203213},
    [203211] = {203214},
    [203212] = {203215}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203032, monster_id = 25010301, pos = { x = -106.814, y = 200.000, z = -958.378 }, rot = { x = 0.000, y = 213.775, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 203037, monster_id = 25010401, pos = { x = -71.139, y = 200.112, z = -969.056 }, rot = { x = 0.000, y = 43.202, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 203041, monster_id = 25010301, pos = { x = -57.320, y = 200.223, z = -964.672 }, rot = { x = 0.000, y = 328.504, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203068, monster_id = 25010501, pos = { x = -119.794, y = 200.150, z = -1023.448 }, rot = { x = 0.000, y = 224.918, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203069, monster_id = 25010501, pos = { x = -152.425, y = 200.156, z = -1057.554 }, rot = { x = 0.000, y = 268.764, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203070, monster_id = 25010501, pos = { x = -128.878, y = 200.047, z = -1025.437 }, rot = { x = 0.000, y = 156.052, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203074, monster_id = 25010501, pos = { x = -26.246, y = 200.109, z = -932.800 }, rot = { x = 0.000, y = 176.350, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203076, monster_id = 25010501, pos = { x = 62.276, y = 200.105, z = -952.397 }, rot = { x = 0.000, y = 271.269, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, area_id = 7 },
	{ config_id = 203077, monster_id = 25010501, pos = { x = 73.704, y = 200.110, z = -921.743 }, rot = { x = 0.000, y = 279.166, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 203082, monster_id = 25010501, pos = { x = -146.300, y = 200.129, z = -1055.844 }, rot = { x = 0.000, y = 86.714, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 203094, monster_id = 25010301, pos = { x = -15.429, y = 200.104, z = -939.907 }, rot = { x = 0.000, y = 165.408, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 203150, monster_id = 25010501, pos = { x = -122.941, y = 200.150, z = -985.503 }, rot = { x = 0.000, y = 190.965, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203151, monster_id = 25010501, pos = { x = -132.541, y = 200.047, z = -985.041 }, rot = { x = 0.000, y = 143.329, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9002, area_id = 7 },
	{ config_id = 203161, monster_id = 25010401, pos = { x = -144.611, y = 200.000, z = -966.093 }, rot = { x = 0.000, y = 296.513, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 203168, monster_id = 25010401, pos = { x = -112.606, y = 200.000, z = -949.613 }, rot = { x = 0.000, y = 229.571, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 203213, monster_id = 25010301, pos = { x = 28.757, y = 200.131, z = -968.937 }, rot = { x = 0.000, y = 329.326, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 203214, monster_id = 25010301, pos = { x = 52.398, y = 200.130, z = -965.511 }, rot = { x = 0.000, y = 261.370, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, area_id = 7 },
	{ config_id = 203215, monster_id = 25010301, pos = { x = 82.771, y = 200.145, z = -924.036 }, rot = { x = 0.000, y = 227.343, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203002, gadget_id = 70350249, pos = { x = -165.904, y = 200.023, z = -1065.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203006, gadget_id = 70350249, pos = { x = -155.156, y = 200.000, z = -1064.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203007, gadget_id = 70350249, pos = { x = -146.899, y = 200.000, z = -1063.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203008, gadget_id = 70350249, pos = { x = -136.252, y = 200.000, z = -1059.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203009, gadget_id = 70350249, pos = { x = -130.001, y = 200.000, z = -1053.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203010, gadget_id = 70800105, pos = { x = -147.409, y = 200.000, z = -1057.450 }, rot = { x = 0.000, y = 67.771, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203011, gadget_id = 70800105, pos = { x = -143.905, y = 200.000, z = -1064.387 }, rot = { x = 0.000, y = 78.191, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203014, gadget_id = 70800105, pos = { x = -124.066, y = 200.000, z = -1007.903 }, rot = { x = 0.000, y = 99.606, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203015, gadget_id = 70350249, pos = { x = -127.999, y = 200.000, z = -1046.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203016, gadget_id = 70800105, pos = { x = -128.003, y = 200.000, z = -1007.919 }, rot = { x = 0.000, y = 66.149, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203017, gadget_id = 70800105, pos = { x = -166.499, y = 200.000, z = -1060.005 }, rot = { x = 0.000, y = 22.521, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203018, gadget_id = 70800105, pos = { x = -128.902, y = 200.000, z = -1027.600 }, rot = { x = 0.000, y = 344.401, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203019, gadget_id = 70800105, pos = { x = -122.095, y = 200.000, z = -970.780 }, rot = { x = 0.000, y = 241.802, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203020, gadget_id = 71700332, pos = { x = -176.913, y = 201.354, z = -1064.695 }, rot = { x = 356.131, y = 72.727, z = 358.470 }, level = 30, route_id = 310800047, persistent = true, area_id = 7 },
	-- 第一检查点
	{ config_id = 203021, gadget_id = 70710126, pos = { x = -144.700, y = 200.000, z = -1049.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第二检查点
	{ config_id = 203022, gadget_id = 70710126, pos = { x = -126.005, y = 200.000, z = -1005.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第三检查点
	{ config_id = 203023, gadget_id = 70710126, pos = { x = -121.833, y = 200.000, z = -967.814 }, rot = { x = 0.000, y = 353.550, z = 0.000 }, level = 32, area_id = 7 },
	-- 第四检查点
	{ config_id = 203024, gadget_id = 70710126, pos = { x = -82.892, y = 200.000, z = -949.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第五检查点
	{ config_id = 203025, gadget_id = 70710126, pos = { x = -43.366, y = 200.000, z = -943.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第六检查点
	{ config_id = 203026, gadget_id = 70710126, pos = { x = 15.102, y = 200.000, z = -950.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第七检查点
	{ config_id = 203027, gadget_id = 70710126, pos = { x = 55.116, y = 200.000, z = -929.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	-- 第八检查点
	{ config_id = 203028, gadget_id = 70710126, pos = { x = 104.413, y = 200.000, z = -926.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203030, gadget_id = 70350249, pos = { x = -130.276, y = 200.000, z = -1037.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203031, gadget_id = 70350250, pos = { x = -179.445, y = 199.196, z = -1069.783 }, rot = { x = 358.532, y = 161.561, z = 359.066 }, level = 32, area_id = 7 },
	{ config_id = 203034, gadget_id = 70800105, pos = { x = -84.117, y = 200.000, z = -946.821 }, rot = { x = 0.000, y = 88.994, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203035, gadget_id = 70800105, pos = { x = -86.673, y = 200.000, z = -949.414 }, rot = { x = 0.000, y = 28.373, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203036, gadget_id = 70800105, pos = { x = -43.553, y = 200.000, z = -940.153 }, rot = { x = 0.000, y = 247.031, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203038, gadget_id = 70800105, pos = { x = -45.632, y = 200.000, z = -944.648 }, rot = { x = 0.000, y = 93.095, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203040, gadget_id = 70800105, pos = { x = -14.701, y = 200.000, z = -943.915 }, rot = { x = 0.000, y = 237.657, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203043, gadget_id = 70800105, pos = { x = 14.307, y = 200.000, z = -952.973 }, rot = { x = 0.000, y = 52.360, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203044, gadget_id = 70800105, pos = { x = 57.634, y = 200.000, z = -928.661 }, rot = { x = 0.000, y = 30.741, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203045, gadget_id = 70350277, pos = { x = -178.833, y = 200.772, z = -1069.318 }, rot = { x = 0.000, y = 72.685, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203046, gadget_id = 70800105, pos = { x = 54.325, y = 200.000, z = -931.997 }, rot = { x = 0.000, y = 186.604, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203048, gadget_id = 70350249, pos = { x = -131.759, y = 200.000, z = -1029.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203049, gadget_id = 70800105, pos = { x = 101.687, y = 200.000, z = -930.544 }, rot = { x = 0.000, y = 306.403, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203050, gadget_id = 70800105, pos = { x = 100.831, y = 200.000, z = -926.234 }, rot = { x = 0.000, y = 320.642, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203051, gadget_id = 70800105, pos = { x = 97.123, y = 200.000, z = -926.625 }, rot = { x = 0.000, y = 292.316, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203052, gadget_id = 70350249, pos = { x = -133.585, y = 200.000, z = -1015.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203053, gadget_id = 70350249, pos = { x = -137.589, y = 200.000, z = -1007.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203054, gadget_id = 70350249, pos = { x = -142.623, y = 200.000, z = -995.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203055, gadget_id = 70350249, pos = { x = -144.651, y = 200.000, z = -983.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203056, gadget_id = 70290180, pos = { x = -129.505, y = 200.000, z = -995.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203057, gadget_id = 70350249, pos = { x = -142.523, y = 200.000, z = -977.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203058, gadget_id = 70800090, pos = { x = -147.309, y = 200.000, z = -1054.688 }, rot = { x = 0.000, y = 310.094, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203059, gadget_id = 70350249, pos = { x = -135.217, y = 200.000, z = -973.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203060, gadget_id = 70800090, pos = { x = -152.809, y = 200.000, z = -1055.754 }, rot = { x = 0.000, y = 162.566, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203061, gadget_id = 70800090, pos = { x = -121.028, y = 200.000, z = -1024.051 }, rot = { x = 0.000, y = 243.760, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203062, gadget_id = 70800090, pos = { x = -107.167, y = 199.877, z = -956.974 }, rot = { x = 0.000, y = 163.748, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203063, gadget_id = 70800090, pos = { x = -127.059, y = 199.877, z = -1026.116 }, rot = { x = 0.000, y = 123.288, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203064, gadget_id = 70800090, pos = { x = -26.143, y = 200.000, z = -932.857 }, rot = { x = 0.000, y = 157.515, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203065, gadget_id = 70350249, pos = { x = -128.987, y = 200.000, z = -972.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203066, gadget_id = 70800090, pos = { x = 64.272, y = 200.000, z = -953.298 }, rot = { x = 0.000, y = 291.395, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203067, gadget_id = 70800090, pos = { x = 74.402, y = 200.000, z = -922.100 }, rot = { x = 0.000, y = 132.111, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203071, gadget_id = 70350249, pos = { x = -121.569, y = 200.000, z = -972.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203075, gadget_id = 70350249, pos = { x = -115.484, y = 200.000, z = -971.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203078, gadget_id = 70350249, pos = { x = -109.136, y = 200.000, z = -971.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203079, gadget_id = 70800105, pos = { x = -118.458, y = 200.000, z = -1025.609 }, rot = { x = 0.000, y = 103.709, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203080, gadget_id = 70350249, pos = { x = -100.712, y = 200.000, z = -968.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203081, gadget_id = 70350249, pos = { x = -96.268, y = 200.000, z = -965.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203083, gadget_id = 70350249, pos = { x = -90.458, y = 200.000, z = -962.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203084, gadget_id = 70800105, pos = { x = -108.373, y = 199.877, z = -960.668 }, rot = { x = 0.000, y = 142.748, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203085, gadget_id = 70800105, pos = { x = -143.839, y = 199.877, z = -967.882 }, rot = { x = 0.000, y = 276.352, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203086, gadget_id = 70350249, pos = { x = -77.414, y = 200.000, z = -1016.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203087, gadget_id = 70800105, pos = { x = -136.053, y = 200.000, z = -1027.156 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203088, gadget_id = 70350249, pos = { x = -84.619, y = 200.000, z = -959.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203089, gadget_id = 70800105, pos = { x = -114.671, y = 199.827, z = -950.564 }, rot = { x = 0.000, y = 27.571, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203091, gadget_id = 70800105, pos = { x = -28.164, y = 200.000, z = -936.119 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203092, gadget_id = 70800105, pos = { x = -70.111, y = 200.000, z = -966.611 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203093, gadget_id = 70800105, pos = { x = -56.042, y = 200.000, z = -961.994 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203114, gadget_id = 70350249, pos = { x = -77.003, y = 200.000, z = -958.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203115, gadget_id = 70800105, pos = { x = 11.500, y = 200.000, z = -950.772 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203116, gadget_id = 70800105, pos = { x = 71.497, y = 200.000, z = -922.913 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203117, gadget_id = 70800105, pos = { x = 61.418, y = 200.000, z = -954.924 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203118, gadget_id = 70800105, pos = { x = 49.886, y = 200.000, z = -963.675 }, rot = { x = 0.000, y = 134.172, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203119, gadget_id = 70800105, pos = { x = 82.685, y = 200.000, z = -926.743 }, rot = { x = 0.000, y = 134.172, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203120, gadget_id = 70800105, pos = { x = 29.717, y = 200.000, z = -966.257 }, rot = { x = 0.000, y = 256.504, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203121, gadget_id = 70350249, pos = { x = -71.334, y = 200.000, z = -960.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203122, gadget_id = 70350249, pos = { x = -63.750, y = 200.000, z = -960.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203123, gadget_id = 70350249, pos = { x = -52.373, y = 200.000, z = -955.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203124, gadget_id = 70350249, pos = { x = -44.227, y = 200.000, z = -949.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203125, gadget_id = 70350249, pos = { x = -37.124, y = 200.000, z = -947.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203126, gadget_id = 70350249, pos = { x = -29.739, y = 200.000, z = -946.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203127, gadget_id = 70350249, pos = { x = -22.187, y = 200.000, z = -947.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203128, gadget_id = 70350249, pos = { x = 12.690, y = 200.000, z = -956.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203129, gadget_id = 70350249, pos = { x = -8.259, y = 200.000, z = -951.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203130, gadget_id = 70350249, pos = { x = 4.406, y = 200.000, z = -952.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203131, gadget_id = 70350249, pos = { x = -14.868, y = 200.000, z = -949.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203132, gadget_id = 70350249, pos = { x = 21.917, y = 200.000, z = -957.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203133, gadget_id = 70350249, pos = { x = 29.220, y = 200.000, z = -960.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203134, gadget_id = 70350249, pos = { x = 37.345, y = 200.000, z = -959.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203135, gadget_id = 70350249, pos = { x = 43.777, y = 200.000, z = -955.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203136, gadget_id = 70350249, pos = { x = 49.094, y = 200.000, z = -951.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203137, gadget_id = 70350249, pos = { x = 54.905, y = 200.000, z = -945.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203138, gadget_id = 70350249, pos = { x = 60.248, y = 200.000, z = -940.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203139, gadget_id = 70350249, pos = { x = 67.206, y = 200.000, z = -936.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203140, gadget_id = 70350249, pos = { x = 75.547, y = 200.000, z = -934.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203141, gadget_id = 70350249, pos = { x = 84.667, y = 200.000, z = -931.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203142, gadget_id = 70350249, pos = { x = 92.872, y = 200.000, z = -929.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203143, gadget_id = 70800106, pos = { x = -159.220, y = 200.000, z = -1047.858 }, rot = { x = 0.000, y = 33.121, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203144, gadget_id = 70800106, pos = { x = -135.047, y = 200.000, z = -1023.306 }, rot = { x = 0.000, y = 332.046, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203146, gadget_id = 70800090, pos = { x = -111.265, y = 199.827, z = -950.748 }, rot = { x = 0.000, y = 312.278, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203149, gadget_id = 70800106, pos = { x = -112.739, y = 200.000, z = -1021.734 }, rot = { x = 0.000, y = 213.004, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203152, gadget_id = 70800105, pos = { x = -133.332, y = 200.000, z = -987.477 }, rot = { x = 0.000, y = 297.049, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203153, gadget_id = 70800090, pos = { x = -123.872, y = 200.000, z = -985.006 }, rot = { x = 0.000, y = 304.371, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203154, gadget_id = 70800090, pos = { x = -131.530, y = 199.877, z = -984.574 }, rot = { x = 0.000, y = 75.937, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 203155, gadget_id = 70800105, pos = { x = -123.723, y = 200.000, z = -988.003 }, rot = { x = 0.000, y = 164.320, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203157, gadget_id = 70290180, pos = { x = -154.177, y = 200.000, z = -979.409 }, rot = { x = 0.000, y = 18.524, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203158, gadget_id = 70800105, pos = { x = -107.421, y = 199.827, z = -969.167 }, rot = { x = 0.000, y = 254.485, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203159, gadget_id = 70290180, pos = { x = -99.110, y = 200.000, z = -957.577 }, rot = { x = 0.000, y = 18.524, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203160, gadget_id = 70800106, pos = { x = -105.581, y = 200.000, z = -967.288 }, rot = { x = 0.000, y = 271.626, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203162, gadget_id = 70800105, pos = { x = -145.217, y = 199.827, z = -969.477 }, rot = { x = 0.000, y = 147.865, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203163, gadget_id = 70800090, pos = { x = -145.502, y = 199.827, z = -966.275 }, rot = { x = 0.000, y = 72.572, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203164, gadget_id = 70800106, pos = { x = -139.623, y = 200.000, z = -1061.502 }, rot = { x = 0.000, y = 85.981, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203165, gadget_id = 70800105, pos = { x = -124.932, y = 200.000, z = -969.687 }, rot = { x = 0.000, y = 99.606, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203170, gadget_id = 70800105, pos = { x = -131.977, y = 200.000, z = -1039.713 }, rot = { x = 0.000, y = 99.606, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203172, gadget_id = 70800105, pos = { x = -142.126, y = 200.000, z = -1066.212 }, rot = { x = 0.000, y = 8.807, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203173, gadget_id = 70800105, pos = { x = -165.182, y = 200.000, z = -1047.247 }, rot = { x = 0.000, y = 78.191, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203174, gadget_id = 70800105, pos = { x = -163.403, y = 200.000, z = -1049.072 }, rot = { x = 0.000, y = 8.807, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203175, gadget_id = 70800105, pos = { x = -137.922, y = 200.000, z = -1027.657 }, rot = { x = 0.000, y = 182.610, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203176, gadget_id = 70800105, pos = { x = -109.361, y = 200.000, z = -1025.835 }, rot = { x = 0.000, y = 283.749, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203177, gadget_id = 70800105, pos = { x = -111.251, y = 200.000, z = -1025.425 }, rot = { x = 0.000, y = 209.855, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203178, gadget_id = 70800105, pos = { x = -106.914, y = 199.827, z = -971.576 }, rot = { x = 0.000, y = 117.669, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203179, gadget_id = 70290180, pos = { x = -67.132, y = 200.000, z = -947.387 }, rot = { x = 0.000, y = 18.524, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203180, gadget_id = 70800105, pos = { x = -5.353, y = 199.827, z = -949.740 }, rot = { x = 0.000, y = 292.647, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203181, gadget_id = 70800106, pos = { x = -2.745, y = 200.000, z = -949.400 }, rot = { x = 0.000, y = 309.789, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203182, gadget_id = 70800105, pos = { x = -6.443, y = 199.827, z = -951.948 }, rot = { x = 0.000, y = 155.832, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203188, gadget_id = 70800105, pos = { x = -163.471, y = 200.000, z = -1060.164 }, rot = { x = 0.000, y = 261.289, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203189, gadget_id = 70800105, pos = { x = -133.983, y = 200.000, z = -1040.260 }, rot = { x = 0.000, y = 231.541, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203191, gadget_id = 70800090, pos = { x = -70.742, y = 200.000, z = -969.034 }, rot = { x = 0.000, y = 261.873, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203192, gadget_id = 70800090, pos = { x = -56.345, y = 200.000, z = -965.484 }, rot = { x = 0.000, y = 126.824, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203193, gadget_id = 70800090, pos = { x = -14.281, y = 200.000, z = -938.410 }, rot = { x = 0.000, y = 34.630, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203194, gadget_id = 70800105, pos = { x = -125.863, y = 200.000, z = -1006.128 }, rot = { x = 0.000, y = 197.950, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203195, gadget_id = 70800105, pos = { x = -82.768, y = 200.000, z = -952.035 }, rot = { x = 0.000, y = 238.454, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203196, gadget_id = 70800105, pos = { x = -42.027, y = 200.000, z = -943.991 }, rot = { x = 0.000, y = 219.648, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 203210, gadget_id = 70800090, pos = { x = 29.362, y = 200.000, z = -968.940 }, rot = { x = 0.000, y = 83.851, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203211, gadget_id = 70800090, pos = { x = 52.546, y = 200.000, z = -964.608 }, rot = { x = 0.000, y = 169.724, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203212, gadget_id = 70800090, pos = { x = 84.085, y = 200.000, z = -923.650 }, rot = { x = 0.000, y = 257.412, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 203221, gadget_id = 70800105, pos = { x = -155.156, y = 200.000, z = -1056.670 }, rot = { x = 0.000, y = 17.943, z = 0.000 }, level = 30, area_id = 7 }
}

-- 区域
regions = {
	-- 出区域
	{ config_id = 203003, shape = RegionShape.SPHERE, radius = 230, pos = { x = -36.010, y = 200.000, z = -994.010 }, area_id = 7 },
	-- 教学trigger
	{ config_id = 203145, shape = RegionShape.SPHERE, radius = 10, pos = { x = -178.375, y = 199.134, z = -1064.410 }, area_id = 7 },
	-- 可以开挑战
	{ config_id = 203147, shape = RegionShape.SPHERE, radius = 5, pos = { x = -179.445, y = 199.196, z = -1069.783 }, area_id = 7 },
	-- 不让开挑战
	{ config_id = 203148, shape = RegionShape.SPHERE, radius = 5, pos = { x = -179.445, y = 199.196, z = -1069.783 }, area_id = 7 },
	-- 区域内挂ability
	{ config_id = 203183, shape = RegionShape.SPHERE, radius = 230, pos = { x = -36.010, y = 200.000, z = -994.010 }, area_id = 7, team_ability_group_list = { "QunyugeDebris_Stop_Ballon" } }
}

-- 触发器
triggers = {
	-- 出区域
	{ config_id = 1203003, name = "LEAVE_REGION_203003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_203003", action = "action_EVENT_LEAVE_REGION_203003", trigger_count = 0 },
	-- 怪物死亡进度
	{ config_id = 1203004, name = "ANY_MONSTER_DIE_203004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_203004", trigger_count = 0 },
	-- 开启，add 提示点，#1Group
	{ config_id = 1203095, name = "VARIABLE_CHANGE_203095", event = EventType.EVENT_VARIABLE_CHANGE, source = "GalleryStart_Success", condition = "condition_EVENT_VARIABLE_CHANGE_203095", action = "action_EVENT_VARIABLE_CHANGE_203095", trigger_count = 0 },
	-- 8-P24，失败
	{ config_id = 1203098, name = "PLATFORM_REACH_POINT_203098", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203098", action = "action_EVENT_PLATFORM_REACH_POINT_203098", trigger_count = 0, tag = "888" },
	-- gallery END，重开挑战
	{ config_id = 1203099, name = "VARIABLE_CHANGE_203099", event = EventType.EVENT_VARIABLE_CHANGE, source = "666", condition = "condition_EVENT_VARIABLE_CHANGE_203099", action = "action_EVENT_VARIABLE_CHANGE_203099", trigger_count = 0 },
	{ config_id = 1203100, name = "ANY_GADGET_DIE_203100", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_203100", action = "action_EVENT_ANY_GADGET_DIE_203100", tag = "999" },
	-- 2-P6
	{ config_id = 1203101, name = "PLATFORM_REACH_POINT_203101", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203101", action = "action_EVENT_PLATFORM_REACH_POINT_203101", trigger_count = 0, tag = "888" },
	-- 删除#1Group，3-P9
	{ config_id = 1203102, name = "PLATFORM_REACH_POINT_203102", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203102", action = "action_EVENT_PLATFORM_REACH_POINT_203102", trigger_count = 0 },
	-- 删除#2Group，5-P15
	{ config_id = 1203103, name = "PLATFORM_REACH_POINT_203103", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203103", action = "action_EVENT_PLATFORM_REACH_POINT_203103", trigger_count = 0 },
	-- 1-P6，add #2Group
	{ config_id = 1203104, name = "PLATFORM_REACH_POINT_203104", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203104", action = "action_EVENT_PLATFORM_REACH_POINT_203104", trigger_count = 0, tag = "888" },
	-- 3-P18，add #3Group
	{ config_id = 1203105, name = "PLATFORM_REACH_POINT_203105", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203105", action = "action_EVENT_PLATFORM_REACH_POINT_203105", trigger_count = 0, tag = "888" },
	-- 4-P12
	{ config_id = 1203106, name = "PLATFORM_REACH_POINT_203106", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203106", action = "action_EVENT_PLATFORM_REACH_POINT_203106", trigger_count = 0, tag = "888" },
	-- 5-P30，add #4Group
	{ config_id = 1203107, name = "PLATFORM_REACH_POINT_203107", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203107", action = "action_EVENT_PLATFORM_REACH_POINT_203107", trigger_count = 0, tag = "888" },
	-- 6-P18
	{ config_id = 1203108, name = "PLATFORM_REACH_POINT_203108", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203108", action = "action_EVENT_PLATFORM_REACH_POINT_203108", trigger_count = 0, tag = "888" },
	-- 7-P21
	{ config_id = 1203109, name = "PLATFORM_REACH_POINT_203109", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203109", action = "action_EVENT_PLATFORM_REACH_POINT_203109", trigger_count = 0, tag = "888" },
	-- 2.4用挑战台，按钮
	{ config_id = 1203110, name = "GADGET_CREATE_203110", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_203110", action = "action_EVENT_GADGET_CREATE_203110", trigger_count = 0 },
	-- 2.4用挑战台，开始
	{ config_id = 1203111, name = "SELECT_OPTION_203111", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_203111", action = "action_EVENT_SELECT_OPTION_203111", trigger_count = 0 },
	-- 2.4用挑战台，按钮保底
	{ config_id = 1203112, name = "GROUP_REFRESH_203112", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_203112", trigger_count = 0 },
	-- 删除#3Group，7-P21
	{ config_id = 1203113, name = "PLATFORM_REACH_POINT_203113", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_203113", action = "action_EVENT_PLATFORM_REACH_POINT_203113", trigger_count = 0 },
	-- 教学trigger
	{ config_id = 1203145, name = "ENTER_REGION_203145", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_203145", action = "action_EVENT_ENTER_REGION_203145", trigger_count = 0 },
	-- 可以开挑战
	{ config_id = 1203147, name = "ENTER_REGION_203147", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_203147", action = "action_EVENT_ENTER_REGION_203147", trigger_count = 0 },
	-- 不让开挑战
	{ config_id = 1203148, name = "ENTER_REGION_203148", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_203148", action = "action_EVENT_ENTER_REGION_203148", trigger_count = 0 }
}

-- 点位
points = {
	-- 团灭复活点
	{ config_id = 203005, pos = { x = -266.702, y = 200.242, z = -1092.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 },
	-- 船
	{ config_id = 203072, pos = { x = -184.332, y = 200.242, z = -1071.241 }, rot = { x = 359.513, y = 74.674, z = 1.670 }, area_id = 7 },
	-- 人
	{ config_id = 203073, pos = { x = -188.857, y = 200.337, z = -1069.609 }, rot = { x = 0.000, y = 99.020, z = 0.000 }, area_id = 7 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 3, name = "cFail", value = 0, no_refresh = false },
	{ config_id = 4, name = "cSuccess", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 203169, monster_id = 25010401, pos = { x = -146.193, y = 199.749, z = -1008.595 }, rot = { x = 0.000, y = 63.029, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4136 }, area_id = 7 }
	},
	gadgets = {
		{ config_id = 203012, gadget_id = 70800105, pos = { x = -75.393, y = 200.000, z = -1012.038 }, rot = { x = 0.000, y = 139.014, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203013, gadget_id = 70800105, pos = { x = -84.380, y = 200.000, z = -1014.488 }, rot = { x = 0.000, y = 294.193, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203029, gadget_id = 70800105, pos = { x = -80.034, y = 200.000, z = -1018.533 }, rot = { x = 0.000, y = 156.361, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203033, gadget_id = 70800105, pos = { x = -83.212, y = 200.000, z = -1021.703 }, rot = { x = 0.000, y = 190.442, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203039, gadget_id = 70800105, pos = { x = -81.969, y = 200.000, z = -1019.369 }, rot = { x = 0.000, y = 186.020, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203042, gadget_id = 70800105, pos = { x = -79.085, y = 200.000, z = -1021.198 }, rot = { x = 0.000, y = 191.601, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203047, gadget_id = 70800105, pos = { x = -80.151, y = 200.000, z = -1024.131 }, rot = { x = 0.000, y = 141.990, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203090, gadget_id = 70350249, pos = { x = -86.601, y = 200.000, z = -1017.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 203156, gadget_id = 70800106, pos = { x = -147.880, y = 200.000, z = -951.674 }, rot = { x = 0.000, y = 166.447, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 203166, gadget_id = 70800105, pos = { x = -79.485, y = 200.000, z = -1015.889 }, rot = { x = 0.000, y = 99.606, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203167, gadget_id = 70800105, pos = { x = -78.840, y = 200.000, z = -1022.149 }, rot = { x = 0.000, y = 66.149, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203171, gadget_id = 70800105, pos = { x = -76.028, y = 200.000, z = -1020.240 }, rot = { x = 0.000, y = 156.361, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 203190, gadget_id = 70800105, pos = { x = -132.227, y = 200.000, z = -1042.042 }, rot = { x = 0.000, y = 112.336, z = 0.000 }, level = 30, area_id = 7 }
	},
	regions = {
		{ config_id = 203096, shape = RegionShape.SPHERE, radius = 17.7, pos = { x = -185.452, y = 201.326, z = -1103.774 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1203001, name = "TIME_AXIS_PASS_203001", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeForScore", condition = "condition_EVENT_TIME_AXIS_PASS_203001", action = "", trigger_count = 0 },
		{ config_id = 1203096, name = "ENTER_REGION_203096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203096", action = "action_EVENT_ENTER_REGION_203096" },
		{ config_id = 1203097, name = "VARIABLE_CHANGE_203097", event = EventType.EVENT_VARIABLE_CHANGE, source = "666", condition = "condition_EVENT_VARIABLE_CHANGE_203097", action = "action_EVENT_VARIABLE_CHANGE_203097", trigger_count = 0 },
		{ config_id = 1203184, name = "TIME_AXIS_PASS_203184", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG1", condition = "condition_EVENT_TIME_AXIS_PASS_203184", action = "action_EVENT_TIME_AXIS_PASS_203184", trigger_count = 0 },
		{ config_id = 1203185, name = "TIME_AXIS_PASS_203185", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG2", condition = "condition_EVENT_TIME_AXIS_PASS_203185", action = "action_EVENT_TIME_AXIS_PASS_203185", trigger_count = 0 },
		{ config_id = 1203186, name = "TIME_AXIS_PASS_203186", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG3", condition = "condition_EVENT_TIME_AXIS_PASS_203186", action = "action_EVENT_TIME_AXIS_PASS_203186", trigger_count = 0 },
		{ config_id = 1203187, name = "TIME_AXIS_PASS_203187", event = EventType.EVENT_TIME_AXIS_PASS, source = "timeG4", condition = "condition_EVENT_TIME_AXIS_PASS_203187", action = "action_EVENT_TIME_AXIS_PASS_203187", trigger_count = 0 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 203031, 203045 },
		regions = { 203003, 203145, 203147, 203148, 203183 },
		triggers = { "LEAVE_REGION_203003", "ANY_MONSTER_DIE_203004", "VARIABLE_CHANGE_203095", "PLATFORM_REACH_POINT_203098", "VARIABLE_CHANGE_203099", "ANY_GADGET_DIE_203100", "PLATFORM_REACH_POINT_203101", "PLATFORM_REACH_POINT_203102", "PLATFORM_REACH_POINT_203103", "PLATFORM_REACH_POINT_203104", "PLATFORM_REACH_POINT_203105", "PLATFORM_REACH_POINT_203106", "PLATFORM_REACH_POINT_203107", "PLATFORM_REACH_POINT_203108", "PLATFORM_REACH_POINT_203109", "GADGET_CREATE_203110", "SELECT_OPTION_203111", "GROUP_REFRESH_203112", "PLATFORM_REACH_POINT_203113", "ENTER_REGION_203145", "ENTER_REGION_203147", "ENTER_REGION_203148" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 203020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { },
		gadgets = { 203002, 203006, 203007, 203008, 203009, 203010, 203011, 203014, 203015, 203016, 203017, 203018, 203021, 203022, 203030, 203048, 203052, 203058, 203060, 203061, 203063, 203079, 203087, 203143, 203144, 203149, 203164, 203170, 203172, 203173, 203174, 203175, 203176, 203177, 203188, 203189, 203194, 203221 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { },
		gadgets = { 203019, 203023, 203024, 203034, 203035, 203053, 203054, 203055, 203056, 203057, 203059, 203062, 203065, 203071, 203075, 203078, 203080, 203081, 203083, 203084, 203085, 203086, 203089, 203146, 203152, 203153, 203154, 203155, 203157, 203158, 203159, 203160, 203162, 203163, 203165, 203178, 203195 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 203025, 203026, 203036, 203038, 203040, 203043, 203064, 203088, 203091, 203092, 203093, 203114, 203115, 203121, 203122, 203123, 203124, 203125, 203126, 203127, 203128, 203129, 203130, 203131, 203179, 203180, 203181, 203182, 203191, 203192, 203193, 203196 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { },
		gadgets = { 203027, 203028, 203044, 203046, 203049, 203050, 203051, 203066, 203067, 203116, 203117, 203118, 203119, 203120, 203132, 203133, 203134, 203135, 203136, 203137, 203138, 203139, 203140, 203141, 203142, 203210, 203211, 203212 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 怪物#1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 怪物#2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 怪物#3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 怪物#4,
		monsters = { },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_LEAVE_REGION_203003(context, evt)
	-- 判断是区域203003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 203003 then
		return false
	end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_203003(context, evt)
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cFail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cFail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203004(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_monster_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203095(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryStart_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryStart_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203095(context, evt)
	-- 删除指定group： 133108203 ；指定config：203031；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108203, 203031, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 203031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108203, 2)
	
	-- 将configid为 203020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 203020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108203, 3)
	
	-- 创建标识为"timeForScore"，时间节点为{2}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timeForScore", {2}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203098(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 48 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 48 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203098(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cFail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cFail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203099(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203099(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 11)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108203, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_203100(context, evt)
	if 203020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_203100(context, evt)
	-- 将本组内变量名为 "GalleryFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203101(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 12 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203101(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203102(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 18 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203102(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 3)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203103(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 30 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203103(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 4)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203104(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 4 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203104(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108203, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203105(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 18 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203105(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108203, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203106(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 24 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203106(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203107(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 30 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203107(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108203, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203108(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 36 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203108(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203109(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 42 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 42 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203109(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 203027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_203110(context, evt)
	if 203031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_203110(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108203, 203031, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_203111(context, evt)
	-- 判断是gadgetid 203031 option_id 175
	if 203031 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_203111(context, evt)
	
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	-- 将本组内变量名为 "GalleryStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryStart", 1) then
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_203112(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108203, 203031, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_203113(context, evt)
	-- 判断是gadgetid 为 203020的移动平台，是否到达了310800047 的路线中的 42 点
	
	if 203020 ~= evt.param1 then
	  return false
	end
	
	if 310800047 ~= evt.param2 then
	  return false
	end
	
	if 42 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_203113(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 5)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108203, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203145(context, evt)
	if evt.param1 ~= 203145 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203145(context, evt)
	-- 显示id为151的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,151,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203147(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Enable_StartChallenge"为1
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203147(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108203, 203031, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203148(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Enable_StartChallenge"为0
	if ScriptLib.GetLanternRiteValue(context) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203148(context, evt)
	-- 删除指定group： 133108203 ；指定config：203031；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108203, 203031, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V2_4/QunyugeDebris_Stop_Balloon"
require "V2_4/SeaLamp_Challenge_Manager"