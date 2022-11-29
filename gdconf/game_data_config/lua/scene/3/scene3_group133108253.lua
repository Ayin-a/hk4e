-- 基础信息
local base_info = {
	group_id = 133108253
}

-- Trigger变量
local defs = {
	gallery_id = 14006,
	monsterTarget = 5,
	debrisTarget = 10
}

-- DEFS_MISCS
local Raft_Monster_List = {
    [253115] = {253010},
    [253116] = {253009},
    [253101] = {253008},
    [253072] = {253002, 253001},
    [253185] = {253004},
    [253083] = {253003},
    [253022] = {253021},
    [253017] = {253007},
    [253123] = {253012, 253006}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 25010501, pos = { x = -160.969, y = 200.138, z = -597.704 }, rot = { x = 0.000, y = 197.381, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 253002, monster_id = 25010601, pos = { x = -162.383, y = 200.136, z = -601.313 }, rot = { x = 0.000, y = 197.381, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, area_id = 7 },
	{ config_id = 253003, monster_id = 25010601, pos = { x = -281.011, y = 200.135, z = -532.592 }, rot = { x = 0.000, y = 333.571, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 253004, monster_id = 25010501, pos = { x = -276.348, y = 200.057, z = -536.502 }, rot = { x = 0.000, y = 145.944, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9007, area_id = 7 },
	{ config_id = 253006, monster_id = 25010301, pos = { x = -435.705, y = 200.094, z = -460.848 }, rot = { x = 0.000, y = 86.946, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 253007, monster_id = 25010601, pos = { x = -436.512, y = 200.029, z = -468.782 }, rot = { x = 0.000, y = 173.554, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9004, area_id = 7 },
	{ config_id = 253008, monster_id = 25010501, pos = { x = -205.624, y = 200.144, z = -633.560 }, rot = { x = 0.000, y = 218.910, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 253009, monster_id = 25010601, pos = { x = -203.574, y = 200.141, z = -630.419 }, rot = { x = 0.000, y = 84.670, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 4, area_id = 7 },
	{ config_id = 253010, monster_id = 25010201, pos = { x = -191.373, y = 200.135, z = -655.598 }, rot = { x = 0.000, y = 282.098, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 },
	{ config_id = 253012, monster_id = 25020201, pos = { x = -435.666, y = 200.000, z = -463.975 }, rot = { x = 0.000, y = 131.402, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9005, area_id = 7 },
	{ config_id = 253021, monster_id = 25010301, pos = { x = -428.753, y = 200.135, z = -501.508 }, rot = { x = 0.000, y = 54.569, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 4136 }, pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
	{ config_id = 253189, npc_id = 30137, pos = { x = -44.622, y = 199.465, z = -246.777 }, rot = { x = 0.000, y = 162.946, z = 0.000 }, area_id = 7 },
	{ config_id = 253190, npc_id = 30138, pos = { x = -49.410, y = 200.020, z = -219.027 }, rot = { x = 0.000, y = 176.256, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 253005, gadget_id = 70350258, pos = { x = -299.329, y = 200.000, z = -523.966 }, rot = { x = 0.000, y = 272.818, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253011, gadget_id = 70350258, pos = { x = -365.535, y = 200.000, z = -517.141 }, rot = { x = 0.000, y = 286.757, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253013, gadget_id = 70350258, pos = { x = -92.527, y = 200.000, z = -317.959 }, rot = { x = 0.000, y = 45.164, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253014, gadget_id = 70350258, pos = { x = -74.376, y = 200.000, z = -302.003 }, rot = { x = 0.000, y = 37.680, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253015, gadget_id = 70350258, pos = { x = -61.013, y = 200.000, z = -284.761 }, rot = { x = 0.000, y = 30.557, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253016, gadget_id = 70800105, pos = { x = -440.482, y = 200.000, z = -473.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253017, gadget_id = 70800090, pos = { x = -436.543, y = 199.950, z = -468.580 }, rot = { x = 1.402, y = 178.132, z = 4.668 }, level = 32, area_id = 7 },
	{ config_id = 253018, gadget_id = 70350250, pos = { x = -210.103, y = 200.000, z = -680.940 }, rot = { x = 359.066, y = 20.924, z = 0.440 }, level = 19, area_id = 7 },
	{ config_id = 253019, gadget_id = 70800105, pos = { x = -434.363, y = 200.000, z = -469.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253020, gadget_id = 70350258, pos = { x = -406.526, y = 200.000, z = -422.218 }, rot = { x = 0.000, y = 37.489, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 253022, gadget_id = 70800088, pos = { x = -429.435, y = 200.000, z = -501.271 }, rot = { x = 0.000, y = 311.998, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253023, gadget_id = 70800105, pos = { x = -425.020, y = 200.000, z = -500.885 }, rot = { x = 0.000, y = 335.585, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253024, gadget_id = 70800060, pos = { x = -290.516, y = 200.000, z = -523.721 }, rot = { x = 0.000, y = 135.605, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253025, gadget_id = 70350249, pos = { x = -409.650, y = 200.000, z = -503.358 }, rot = { x = 0.000, y = 11.569, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253026, gadget_id = 70350258, pos = { x = -183.422, y = 200.000, z = -561.165 }, rot = { x = 0.000, y = 110.457, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 253027, gadget_id = 70800106, pos = { x = -173.554, y = 200.000, z = -372.603 }, rot = { x = 0.000, y = 287.182, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253028, gadget_id = 70350258, pos = { x = -307.315, y = 200.000, z = -347.287 }, rot = { x = 0.000, y = 105.598, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253029, gadget_id = 70360025, pos = { x = -42.687, y = 200.000, z = -253.756 }, rot = { x = 0.000, y = 219.524, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 253030, gadget_id = 70350277, pos = { x = -210.076, y = 200.000, z = -680.934 }, rot = { x = 0.000, y = 23.449, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253031, gadget_id = 70800106, pos = { x = -332.136, y = 200.000, z = -345.082 }, rot = { x = 0.000, y = 349.537, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253032, gadget_id = 70350249, pos = { x = -387.289, y = 200.000, z = -510.454 }, rot = { x = 0.000, y = 11.569, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253033, gadget_id = 70800106, pos = { x = -343.320, y = 200.000, z = -348.336 }, rot = { x = 0.000, y = 349.537, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253034, gadget_id = 70800060, pos = { x = -184.594, y = 200.000, z = -612.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253035, gadget_id = 70350249, pos = { x = -242.474, y = 200.000, z = -538.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253036, gadget_id = 70350249, pos = { x = -251.061, y = 200.000, z = -535.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253037, gadget_id = 70800106, pos = { x = -321.132, y = 200.000, z = -342.035 }, rot = { x = 0.000, y = 349.537, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253038, gadget_id = 70800106, pos = { x = -328.665, y = 200.000, z = -355.777 }, rot = { x = 0.000, y = 349.537, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253039, gadget_id = 70800105, pos = { x = -433.580, y = 200.000, z = -462.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253040, gadget_id = 70800106, pos = { x = -317.662, y = 200.000, z = -352.731 }, rot = { x = 0.000, y = 349.537, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253041, gadget_id = 70350249, pos = { x = -344.022, y = 200.000, z = -354.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253042, gadget_id = 70350249, pos = { x = -336.361, y = 200.000, z = -352.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253043, gadget_id = 70350249, pos = { x = -327.367, y = 200.000, z = -349.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253044, gadget_id = 70350249, pos = { x = -319.161, y = 200.000, z = -347.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253045, gadget_id = 70800106, pos = { x = -212.547, y = 199.358, z = -366.542 }, rot = { x = 346.461, y = 87.525, z = 357.628 }, level = 1, area_id = 7 },
	{ config_id = 253046, gadget_id = 70800106, pos = { x = -213.433, y = 199.100, z = -375.385 }, rot = { x = 1.008, y = 259.495, z = 353.532 }, level = 1, area_id = 7 },
	{ config_id = 253047, gadget_id = 70800106, pos = { x = -140.713, y = 200.000, z = -336.046 }, rot = { x = 0.000, y = 33.764, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253048, gadget_id = 70350258, pos = { x = -339.950, y = 200.000, z = -353.371 }, rot = { x = 0.000, y = 76.061, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253049, gadget_id = 70800106, pos = { x = -88.047, y = 200.000, z = -327.887 }, rot = { x = 0.000, y = 81.394, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253050, gadget_id = 70800105, pos = { x = -435.435, y = 200.000, z = -457.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253051, gadget_id = 70350258, pos = { x = -385.524, y = 200.000, z = -397.713 }, rot = { x = 0.000, y = 40.845, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253053, gadget_id = 70350258, pos = { x = -365.295, y = 200.000, z = -374.198 }, rot = { x = 0.000, y = 49.762, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253054, gadget_id = 70300092, pos = { x = -54.944, y = 200.200, z = -220.571 }, rot = { x = 0.000, y = 80.793, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253055, gadget_id = 70350258, pos = { x = -317.726, y = 200.000, z = -346.805 }, rot = { x = 0.000, y = 76.061, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253056, gadget_id = 70800106, pos = { x = -69.871, y = 200.000, z = -282.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253057, gadget_id = 70350249, pos = { x = -200.897, y = 200.000, z = -654.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253058, gadget_id = 70350249, pos = { x = -194.120, y = 200.000, z = -637.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253059, gadget_id = 70800105, pos = { x = -215.346, y = 200.000, z = -369.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253060, gadget_id = 70800105, pos = { x = -216.262, y = 200.000, z = -366.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253061, gadget_id = 70800060, pos = { x = -328.093, y = 200.000, z = -521.576 }, rot = { x = 0.000, y = 235.375, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253062, gadget_id = 70800105, pos = { x = -216.026, y = 200.000, z = -374.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253063, gadget_id = 70800106, pos = { x = -307.854, y = 200.000, z = -341.092 }, rot = { x = 0.000, y = 21.323, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253064, gadget_id = 70290180, pos = { x = -309.090, y = 200.000, z = -355.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253065, gadget_id = 70800106, pos = { x = -296.187, y = 200.000, z = -344.005 }, rot = { x = 0.000, y = 21.323, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253066, gadget_id = 70800060, pos = { x = -424.290, y = 200.000, z = -497.252 }, rot = { x = 0.000, y = 11.569, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253067, gadget_id = 70350249, pos = { x = -182.733, y = 200.000, z = -614.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253068, gadget_id = 70350249, pos = { x = -169.253, y = 200.000, z = -596.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253069, gadget_id = 70800060, pos = { x = -283.290, y = 200.000, z = -527.151 }, rot = { x = 0.000, y = 135.605, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253070, gadget_id = 70350249, pos = { x = -212.268, y = 200.000, z = -552.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253072, gadget_id = 70800089, pos = { x = -161.257, y = 200.000, z = -599.225 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253073, gadget_id = 70290180, pos = { x = -223.206, y = 200.000, z = -358.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253074, gadget_id = 70800060, pos = { x = -432.509, y = 200.000, z = -460.380 }, rot = { x = 0.000, y = 86.946, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253075, gadget_id = 70350258, pos = { x = -198.107, y = 200.000, z = -368.998 }, rot = { x = 0.000, y = 79.047, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253076, gadget_id = 70350258, pos = { x = -175.379, y = 200.000, z = -362.027 }, rot = { x = 0.000, y = 68.126, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253077, gadget_id = 70350258, pos = { x = -112.905, y = 200.000, z = -331.979 }, rot = { x = 0.000, y = 55.807, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253078, gadget_id = 70800105, pos = { x = -164.909, y = 200.000, z = -601.510 }, rot = { x = 0.000, y = 197.381, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253079, gadget_id = 70800105, pos = { x = -162.982, y = 200.000, z = -595.601 }, rot = { x = 0.000, y = 197.381, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253080, gadget_id = 70900201, pos = { x = -42.610, y = 200.000, z = -253.807 }, rot = { x = 0.000, y = 219.524, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 253081, gadget_id = 70350258, pos = { x = -133.378, y = 200.000, z = -342.975 }, rot = { x = 0.000, y = 60.921, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253082, gadget_id = 70350258, pos = { x = -154.186, y = 200.000, z = -353.454 }, rot = { x = 0.000, y = 64.791, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253083, gadget_id = 70800088, pos = { x = -278.479, y = 200.000, z = -533.790 }, rot = { x = 0.000, y = 285.456, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253084, gadget_id = 70800105, pos = { x = -274.029, y = 200.000, z = -538.949 }, rot = { x = 0.000, y = 135.605, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253085, gadget_id = 70800105, pos = { x = -278.881, y = 200.000, z = -531.730 }, rot = { x = 0.000, y = 135.605, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253086, gadget_id = 70300092, pos = { x = -43.035, y = 199.260, z = -243.913 }, rot = { x = 1.081, y = 300.526, z = 20.901 }, level = 1, area_id = 7 },
	{ config_id = 253087, gadget_id = 70800060, pos = { x = -431.503, y = 200.000, z = -468.632 }, rot = { x = 0.000, y = 86.946, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253088, gadget_id = 70350249, pos = { x = -210.624, y = 200.000, z = -548.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253089, gadget_id = 70800106, pos = { x = -262.820, y = 200.000, z = -543.279 }, rot = { x = 0.000, y = 314.942, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253090, gadget_id = 70800106, pos = { x = -247.049, y = 200.000, z = -546.449 }, rot = { x = 0.000, y = 236.827, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253091, gadget_id = 70710126, pos = { x = -422.897, y = 200.000, z = -443.002 }, rot = { x = 0.000, y = 109.948, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253092, gadget_id = 70290180, pos = { x = -222.158, y = 200.000, z = -585.372 }, rot = { x = 0.000, y = 166.506, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253093, gadget_id = 70800060, pos = { x = -258.654, y = 200.000, z = -531.316 }, rot = { x = 0.000, y = 330.044, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253094, gadget_id = 70800060, pos = { x = -170.001, y = 200.000, z = -601.992 }, rot = { x = 0.000, y = 166.506, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253095, gadget_id = 70800060, pos = { x = -169.524, y = 200.000, z = -588.346 }, rot = { x = 0.000, y = 166.506, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253096, gadget_id = 70800060, pos = { x = -432.742, y = 200.000, z = -466.093 }, rot = { x = 0.000, y = 86.946, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253097, gadget_id = 70800060, pos = { x = -197.600, y = 200.000, z = -655.511 }, rot = { x = 0.000, y = 203.115, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253098, gadget_id = 70800060, pos = { x = -197.716, y = 200.000, z = -636.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253099, gadget_id = 70350249, pos = { x = -328.100, y = 200.000, z = -523.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253100, gadget_id = 70350249, pos = { x = -327.897, y = 200.000, z = -519.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253101, gadget_id = 70800090, pos = { x = -205.709, y = 199.997, z = -630.942 }, rot = { x = 0.000, y = 11.196, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253102, gadget_id = 70800106, pos = { x = -171.048, y = 200.000, z = -565.947 }, rot = { x = 0.000, y = 332.241, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253103, gadget_id = 70800106, pos = { x = -179.727, y = 200.000, z = -571.920 }, rot = { x = 0.000, y = 317.140, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253104, gadget_id = 70800105, pos = { x = -175.949, y = 200.000, z = -573.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253105, gadget_id = 70800105, pos = { x = -174.162, y = 200.000, z = -570.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253106, gadget_id = 70800105, pos = { x = -171.378, y = 200.000, z = -570.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253107, gadget_id = 70220048, pos = { x = -48.661, y = 200.104, z = -216.106 }, rot = { x = 0.000, y = 337.390, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 253108, gadget_id = 70220063, pos = { x = -51.129, y = 200.159, z = -216.173 }, rot = { x = 0.000, y = 288.089, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253109, gadget_id = 70220063, pos = { x = -53.427, y = 200.132, z = -220.960 }, rot = { x = 348.561, y = 155.037, z = 328.351 }, level = 1, area_id = 7 },
	{ config_id = 253110, gadget_id = 70220048, pos = { x = -56.776, y = 200.200, z = -222.808 }, rot = { x = 0.000, y = 333.972, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 253111, gadget_id = 70350085, pos = { x = -422.897, y = 200.000, z = -443.002 }, rot = { x = 0.000, y = 328.848, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253113, gadget_id = 70220062, pos = { x = -49.492, y = 200.199, z = -214.133 }, rot = { x = 0.000, y = 337.390, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253114, gadget_id = 70800106, pos = { x = -197.364, y = 199.358, z = -588.459 }, rot = { x = 346.461, y = 309.179, z = 357.628 }, level = 1, area_id = 7 },
	{ config_id = 253115, gadget_id = 70800088, pos = { x = -191.161, y = 200.000, z = -656.287 }, rot = { x = 0.000, y = 179.528, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253116, gadget_id = 70800090, pos = { x = -203.871, y = 199.997, z = -631.823 }, rot = { x = 0.000, y = 191.194, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253117, gadget_id = 70800090, pos = { x = -440.056, y = 199.740, z = -468.315 }, rot = { x = 359.548, y = 2.905, z = 357.371 }, level = 32, area_id = 7 },
	{ config_id = 253118, gadget_id = 70800105, pos = { x = -206.570, y = 200.000, z = -634.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253119, gadget_id = 70220064, pos = { x = -54.808, y = 200.200, z = -222.223 }, rot = { x = 0.000, y = 337.390, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253120, gadget_id = 70800106, pos = { x = -243.324, y = 200.000, z = -527.628 }, rot = { x = 0.000, y = 330.044, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253121, gadget_id = 70800106, pos = { x = -234.871, y = 200.000, z = -521.415 }, rot = { x = 0.000, y = 330.044, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253122, gadget_id = 70800090, pos = { x = -438.500, y = 199.987, z = -468.256 }, rot = { x = 359.875, y = 0.095, z = 5.188 }, level = 32, area_id = 7 },
	{ config_id = 253123, gadget_id = 70800090, pos = { x = -435.897, y = 199.683, z = -463.027 }, rot = { x = 357.128, y = 1.817, z = 1.292 }, level = 32, area_id = 7 },
	{ config_id = 253124, gadget_id = 70800090, pos = { x = -439.294, y = 199.997, z = -461.342 }, rot = { x = 0.000, y = 178.808, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253125, gadget_id = 70800090, pos = { x = -437.709, y = 199.960, z = -461.685 }, rot = { x = 353.356, y = 1.879, z = 0.176 }, level = 32, area_id = 7 },
	{ config_id = 253126, gadget_id = 70300105, pos = { x = -50.874, y = 200.225, z = -214.366 }, rot = { x = 0.000, y = 71.289, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253134, gadget_id = 70800088, pos = { x = -52.810, y = 200.000, z = -238.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253135, gadget_id = 70800089, pos = { x = -43.726, y = 200.000, z = -220.474 }, rot = { x = 0.000, y = 45.690, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253137, gadget_id = 70800060, pos = { x = -211.574, y = 200.000, z = -550.178 }, rot = { x = 0.000, y = 330.044, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253145, gadget_id = 70290180, pos = { x = -201.817, y = 200.000, z = -355.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 253151, gadget_id = 70800105, pos = { x = -193.223, y = 200.000, z = -658.401 }, rot = { x = 0.000, y = 203.115, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253152, gadget_id = 70800105, pos = { x = -201.202, y = 200.000, z = -628.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253153, gadget_id = 70800060, pos = { x = -428.708, y = 200.000, z = -488.082 }, rot = { x = 0.000, y = 11.569, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253174, gadget_id = 70350249, pos = { x = -240.837, y = 200.000, z = -366.980 }, rot = { x = 0.000, y = 33.293, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253175, gadget_id = 70350249, pos = { x = -232.710, y = 200.000, z = -369.553 }, rot = { x = 0.000, y = 33.293, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253177, gadget_id = 70350277, pos = { x = -421.698, y = 200.000, z = -440.746 }, rot = { x = 0.000, y = 43.613, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 253178, gadget_id = 70800105, pos = { x = -348.823, y = 200.000, z = -349.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253179, gadget_id = 70800105, pos = { x = -334.663, y = 200.000, z = -357.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253180, gadget_id = 70800105, pos = { x = -337.872, y = 200.000, z = -346.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253181, gadget_id = 70800105, pos = { x = -323.290, y = 200.000, z = -354.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253182, gadget_id = 70800105, pos = { x = -326.640, y = 200.000, z = -343.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253183, gadget_id = 70800105, pos = { x = -314.385, y = 200.000, z = -341.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253184, gadget_id = 70800105, pos = { x = -302.071, y = 200.000, z = -343.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 253185, gadget_id = 70800088, pos = { x = -278.614, y = 200.000, z = -535.902 }, rot = { x = 0.000, y = 108.371, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 253186, gadget_id = 70800106, pos = { x = -190.824, y = 199.100, z = -582.440 }, rot = { x = 1.008, y = 121.149, z = 353.532 }, level = 1, area_id = 7 },
	{ config_id = 253187, gadget_id = 70800106, pos = { x = -202.271, y = 199.260, z = -600.201 }, rot = { x = 359.080, y = 99.321, z = 356.776 }, level = 1, area_id = 7 },
	{ config_id = 253188, gadget_id = 70800106, pos = { x = -206.218, y = 198.801, z = -608.195 }, rot = { x = 358.210, y = 288.294, z = 353.814 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 教学trigger
	{ config_id = 253052, shape = RegionShape.SPHERE, radius = 10, pos = { x = -210.103, y = 200.000, z = -680.940 }, area_id = 7 },
	-- 挂ability
	{ config_id = 253112, shape = RegionShape.SPHERE, radius = 350, pos = { x = -269.132, y = 200.000, z = -445.209 }, area_id = 7, team_ability_group_list = { "QunyugeDebris_Play" } },
	-- 可以开挑战
	{ config_id = 253127, shape = RegionShape.SPHERE, radius = 5, pos = { x = -210.103, y = 200.000, z = -680.940 }, area_id = 7 },
	-- 不让开挑战
	{ config_id = 253129, shape = RegionShape.SPHERE, radius = 5, pos = { x = -210.103, y = 200.000, z = -680.940 }, area_id = 7 },
	-- 未收集完成提示去收集
	{ config_id = 253133, shape = RegionShape.SPHERE, radius = 10, pos = { x = -422.749, y = 200.000, z = -443.034 }, area_id = 7 },
	-- 出圈失败
	{ config_id = 253156, shape = RegionShape.SPHERE, radius = 350, pos = { x = -269.132, y = 200.000, z = -445.209 }, area_id = 7 },
	{ config_id = 253160, shape = RegionShape.SPHERE, radius = 5, pos = { x = -42.441, y = 200.000, z = -253.823 }, area_id = 7 },
	-- 刷新suite3
	{ config_id = 253161, shape = RegionShape.SPHERE, radius = 8, pos = { x = -422.749, y = 200.000, z = -443.034 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 教学trigger
	{ config_id = 1253052, name = "ENTER_REGION_253052", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_253052", action = "action_EVENT_ENTER_REGION_253052", trigger_count = 0 },
	-- 检测是否达成两个子目标
	{ config_id = 1253071, name = "VARIABLE_CHANGE_253071", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_253071", action = "action_EVENT_VARIABLE_CHANGE_253071", trigger_count = 0 },
	-- 可以开挑战
	{ config_id = 1253127, name = "ENTER_REGION_253127", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_253127", action = "action_EVENT_ENTER_REGION_253127", trigger_count = 0 },
	-- 碎片拾取加分
	{ config_id = 1253128, name = "GADGET_STATE_CHANGE_253128", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_253128", action = "action_EVENT_GADGET_STATE_CHANGE_253128", trigger_count = 0 },
	-- 不让开挑战
	{ config_id = 1253129, name = "ENTER_REGION_253129", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_253129", action = "action_EVENT_ENTER_REGION_253129", trigger_count = 0 },
	-- 未收集完成提示去收集
	{ config_id = 1253133, name = "ENTER_REGION_253133", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_253133", action = "action_EVENT_ENTER_REGION_253133" },
	-- 判断是否是第n个箱子，如果是，触发挂船特效
	{ config_id = 1253136, name = "VARIABLE_CHANGE_253136", event = EventType.EVENT_VARIABLE_CHANGE, source = "debrisCount", condition = "condition_EVENT_VARIABLE_CHANGE_253136", action = "action_EVENT_VARIABLE_CHANGE_253136", trigger_count = 0 },
	-- 出圈失败
	{ config_id = 1253156, name = "LEAVE_REGION_253156", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_253156", action = "action_EVENT_LEAVE_REGION_253156", trigger_count = 0 },
	-- 尝试开启gallery
	{ config_id = 1253157, name = "SELECT_OPTION_253157", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_253157", action = "action_EVENT_SELECT_OPTION_253157", trigger_count = 0 },
	-- gallery成功开启加载关卡
	{ config_id = 1253158, name = "VARIABLE_CHANGE_253158", event = EventType.EVENT_VARIABLE_CHANGE, source = "GalleryStart_Success", condition = "condition_EVENT_VARIABLE_CHANGE_253158", action = "action_EVENT_VARIABLE_CHANGE_253158", trigger_count = 0 },
	-- 创建机关交互
	{ config_id = 1253159, name = "GADGET_CREATE_253159", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_253159", action = "action_EVENT_GADGET_CREATE_253159", trigger_count = 0 },
	{ config_id = 1253160, name = "ENTER_REGION_253160", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253160", action = "action_EVENT_ENTER_REGION_253160" },
	-- 刷新suite3
	{ config_id = 1253161, name = "ENTER_REGION_253161", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253161", action = "action_EVENT_ENTER_REGION_253161" },
	-- 击杀怪物记分
	{ config_id = 1253163, name = "ANY_MONSTER_DIE_253163", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_253163", trigger_count = 0 },
	-- groupload确保刷回1
	{ config_id = 1253176, name = "GROUP_LOAD_253176", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_253176", trigger_count = 0 }
}

-- 点位
points = {
	-- 船
	{ config_id = 253165, pos = { x = -212.037, y = 200.000, z = -685.859 }, rot = { x = 0.000, y = 20.960, z = 0.000 }, area_id = 7 },
	-- 人
	{ config_id = 253166, pos = { x = -209.239, y = 200.000, z = -690.231 }, rot = { x = 0.000, y = 338.690, z = 0.000 }, area_id = 7 },
	-- 团灭复活点
	{ config_id = 253167, pos = { x = -153.173, y = 200.236, z = -420.924 }, rot = { x = 0.000, y = 4.300, z = 0.000 }, area_id = 7 }
}

-- 变量
variables = {
	{ config_id = 1, name = "debrisCount", value = 0, no_refresh = false },
	{ config_id = 2, name = "notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "rafts", value = 15, no_refresh = false },
	{ config_id = 4, name = "addedrafts", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1253130, name = "GADGET_CREATE_253130", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_253130", action = "action_EVENT_GADGET_CREATE_253130", trigger_count = 0 },
		{ config_id = 1253131, name = "VARIABLE_CHANGE_253131", event = EventType.EVENT_VARIABLE_CHANGE, source = "Raft_Created", condition = "condition_EVENT_VARIABLE_CHANGE_253131", action = "action_EVENT_VARIABLE_CHANGE_253131", trigger_count = 0 },
		{ config_id = 1253132, name = "TIME_AXIS_PASS_253132", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_253132", action = "action_EVENT_TIME_AXIS_PASS_253132", trigger_count = 0 }
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
		gadgets = { 253018, 253030, 253054, 253086, 253107, 253108, 253109, 253110, 253113, 253119, 253126, 253134, 253135 },
		regions = { 253052, 253112, 253127, 253129 },
		triggers = { "ENTER_REGION_253052", "ENTER_REGION_253127", "ENTER_REGION_253129", "SELECT_OPTION_253157", "VARIABLE_CHANGE_253158", "GADGET_CREATE_253159", "GROUP_LOAD_253176" },
		npcs = { 253189, 253190 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 253005, 253011, 253016, 253017, 253019, 253022, 253023, 253024, 253025, 253026, 253032, 253034, 253035, 253036, 253039, 253050, 253057, 253058, 253061, 253066, 253067, 253068, 253069, 253070, 253072, 253074, 253078, 253079, 253083, 253084, 253085, 253087, 253088, 253089, 253090, 253091, 253092, 253093, 253094, 253095, 253096, 253097, 253098, 253099, 253100, 253101, 253102, 253103, 253104, 253105, 253106, 253114, 253115, 253116, 253117, 253118, 253120, 253121, 253122, 253123, 253124, 253125, 253137, 253151, 253152, 253153, 253185, 253186, 253187, 253188 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 253013, 253014, 253015, 253020, 253027, 253028, 253029, 253031, 253033, 253037, 253038, 253040, 253041, 253042, 253043, 253044, 253045, 253046, 253047, 253048, 253049, 253051, 253053, 253055, 253056, 253059, 253060, 253062, 253063, 253064, 253065, 253073, 253075, 253076, 253077, 253080, 253081, 253082, 253145, 253174, 253175, 253178, 253179, 253180, 253181, 253182, 253183, 253184 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 253111 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 253177 },
		regions = { 253160, 253161 },
		triggers = { "ENTER_REGION_253160", "ENTER_REGION_253161" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 局内逻辑,
		monsters = { },
		gadgets = { },
		regions = { 253156 },
		triggers = { "VARIABLE_CHANGE_253071", "GADGET_STATE_CHANGE_253128", "VARIABLE_CHANGE_253136", "LEAVE_REGION_253156", "ANY_MONSTER_DIE_253163" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 提示收集,
		monsters = { },
		gadgets = { },
		regions = { 253133 },
		triggers = { "ENTER_REGION_253133" },
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
function condition_EVENT_ENTER_REGION_253052(context, evt)
	if evt.param1 ~= 253052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253052(context, evt)
	-- 显示id为152的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,152,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253071(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	
	if ScriptLib.GetGroupVariableValue(context, "notified") ~= 0 then
	    return false
	end
	
	if defs.monsterTarget == ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{}) then
	    if defs.debrisTarget <= ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{}) then
	        return true
	    end
	end
	
	if defs.debrisTarget == ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{}) then 
	    if defs.monsterTarget <= ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{}) then
	        return true
	    end
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253071(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 5)
	
	-- 针对当前group内变量名为 "notified" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "notified", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108253, 8)
	
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	-- 显示id为159的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,159,{param_uid_vec={},param_vec={},uid_vec={uid_list[1]}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253127(context, evt)
	if evt.param1 ~= 253127 then return false end
	
	-- 判断变量"Enable_StartChallenge"为1
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253127(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108253, 253018, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_253128(context, evt)
	if ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) ~= 70800060 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_253128(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_box_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_box_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "debrisCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "debrisCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253129(context, evt)
	if evt.param1 ~= 253129 then return false end
	
	-- 判断变量"Enable_StartChallenge"为0
	if ScriptLib.GetLanternRiteValue(context) ~=1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253129(context, evt)
	-- 删除指定group： 133108253 ；指定config：253018；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108253, 253018, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253133(context, evt)
	if evt.param1 ~= 253133 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253133(context, evt)
	-- 显示id为158的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,158,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253136(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"debrisCount"为2
	if ScriptLib.GetGroupVariableValue(context, "debrisCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253136(context, evt)
	-- 将本组内变量名为 "debrisCount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "debrisCount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Try_Add_Box" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Try_Add_Box", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_253156(context, evt)
	-- 判断是区域253156
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 253156 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_253156(context, evt)
	-- 将本组内变量名为 "Gallery_fail_reason" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gallery_fail_reason", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108253, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_253157(context, evt)
	-- 判断是gadgetid 253018 option_id 175
	if 253018 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_253157(context, evt)
	-- 将本组内变量名为 "GalleryStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253158(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GalleryStart_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "GalleryStart_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253158(context, evt)
	-- 删除指定group： 133108253 ；指定config：253018；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108253, 253018, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 2)
	
	-- 将configid为 253018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 253018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_253159(context, evt)
	if 253018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_253159(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108253, 253018, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253160(context, evt)
	if evt.param1 ~= 253160 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253160(context, evt)
	-- 将本组内变量名为 "GalleryFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GalleryFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108253, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253161(context, evt)
	if evt.param1 ~= 253161 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253161(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108253, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108253, 4)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108253, EntityType.GADGET, 253091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_253163(context, evt)
	-- 将本组内变量名为 "ADD_Gallery_monster_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ADD_Gallery_monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_253176(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108253, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_4/QunyugeDebris"
require "V2_4/SeaLamp_Challenge_Manager"