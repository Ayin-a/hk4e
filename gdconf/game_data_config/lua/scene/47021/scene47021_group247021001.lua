-- 基础信息
local base_info = {
	group_id = 247021001
}

-- DEFS_MISCS
local defs ={
        gallery_id = 27004,
        finish_region = 1005,
        operator_time_1 = 10,
        operator_time_2 = 10,
        challenge_id = 2,
        ball_challenge_id = 1,
        ball_challenge_time = 20,
        ability_region = 1142,
    }

local windball_list = {
 [1019] = 2,
 [1057] = 4,
 [1076] = 3,
}

local operator_list = {
        [1002] = {1007},
        [1009] = {1032,1038},
        [1041] = {1031,1040,1043,1104},
        [1053] = {1054,1055,1015,1070},
        [1081] = {1078,1079,1084,1085},
}

transfer_list = {
        --[region_configid] = point_id,
        [1023] =1097,
        [1024] =1101,
        [1025] =1103,
}


revivepoint_list = {
        [1096] =1097,
        [1098] =1099,
        [1100] =1101,
        [1102] =1103,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010101, pos = { x = -497.525, y = 73.005, z = -404.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 1011, monster_id = 21010402, pos = { x = -504.710, y = 73.007, z = -395.537 }, rot = { x = 0.000, y = 269.179, z = 0.000 }, level = 1, pose_id = 9016 },
	{ config_id = 1018, monster_id = 21010603, pos = { x = -495.407, y = 73.017, z = -403.578 }, rot = { x = 0.000, y = 316.695, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 1119, monster_id = 21010402, pos = { x = -505.984, y = 73.007, z = -397.299 }, rot = { x = 0.000, y = 331.157, z = 0.000 }, level = 1, pose_id = 9016 },
	{ config_id = 1122, monster_id = 21010101, pos = { x = -497.123, y = 73.005, z = -403.270 }, rot = { x = 0.000, y = 316.113, z = 0.000 }, level = 1, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70800247, pos = { x = -394.537, y = 72.936, z = -401.403 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1004, gadget_id = 70800269, pos = { x = -473.003, y = 86.893, z = -354.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1006, gadget_id = 70800268, pos = { x = -458.977, y = 72.276, z = -438.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70800246, pos = { x = -401.529, y = 72.218, z = -408.262 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1008, gadget_id = 70800268, pos = { x = -458.977, y = 74.334, z = -438.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70800247, pos = { x = -441.640, y = 69.690, z = -420.575 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1010, gadget_id = 70800246, pos = { x = -431.419, y = 68.861, z = -433.002 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1012, gadget_id = 70800269, pos = { x = -431.466, y = 74.274, z = -433.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1013, gadget_id = 70800269, pos = { x = -431.466, y = 76.274, z = -433.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1014, gadget_id = 70800269, pos = { x = -431.466, y = 78.274, z = -433.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1015, gadget_id = 70800246, pos = { x = -476.960, y = 75.891, z = -358.508 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1016, gadget_id = 70800290, pos = { x = -402.697, y = 73.027, z = -409.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70800269, pos = { x = -535.581, y = 95.554, z = -290.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1019, gadget_id = 70800281, pos = { x = -444.066, y = 69.621, z = -422.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70800268, pos = { x = -446.921, y = 69.624, z = -425.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70800274, pos = { x = -500.143, y = 77.776, z = -418.466 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70800274, pos = { x = -504.090, y = 83.776, z = -414.449 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70800274, pos = { x = -522.096, y = 89.219, z = -304.097 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70800274, pos = { x = -518.560, y = 89.219, z = -307.633 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70800268, pos = { x = -525.486, y = 91.136, z = -300.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70800275, pos = { x = -506.308, y = 76.871, z = -402.146 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70800274, pos = { x = -496.575, y = 77.825, z = -414.883 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70800246, pos = { x = -504.618, y = 78.008, z = -403.746 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1032, gadget_id = 70800246, pos = { x = -459.203, y = 69.135, z = -438.329 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1033, gadget_id = 70800268, pos = { x = -449.886, y = 69.624, z = -428.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70800268, pos = { x = -452.882, y = 69.621, z = -431.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70800268, pos = { x = -455.958, y = 69.619, z = -434.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70800275, pos = { x = -497.823, y = 76.968, z = -396.489 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70800246, pos = { x = -467.776, y = 69.023, z = -420.266 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1039, gadget_id = 70360002, pos = { x = -504.196, y = 85.103, z = -414.433 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1040, gadget_id = 70800246, pos = { x = -493.701, y = 78.106, z = -392.278 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_OnOff"] = 1} },
	{ config_id = 1041, gadget_id = 70800247, pos = { x = -510.656, y = 78.767, z = -397.824 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1042, gadget_id = 70360001, pos = { x = -504.400, y = 85.789, z = -414.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1043, gadget_id = 70800246, pos = { x = -507.379, y = 72.973, z = -395.523 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1045, gadget_id = 70800276, pos = { x = -470.044, y = 80.139, z = -375.511 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, gadget_id = 70800276, pos = { x = -462.806, y = 75.975, z = -368.273 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70800274, pos = { x = -471.831, y = 70.139, z = -377.100 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70800269, pos = { x = -469.864, y = 83.000, z = -375.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1049, gadget_id = 70800269, pos = { x = -462.617, y = 78.505, z = -368.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1050, gadget_id = 70800269, pos = { x = -474.041, y = 71.190, z = -372.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1051, gadget_id = 70800269, pos = { x = -464.593, y = 80.815, z = -370.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1052, gadget_id = 70800269, pos = { x = -471.622, y = 71.337, z = -369.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1053, gadget_id = 70800247, pos = { x = -475.612, y = 70.782, z = -373.883 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1054, gadget_id = 70800246, pos = { x = -461.438, y = 69.975, z = -359.869 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1055, gadget_id = 70800246, pos = { x = -469.976, y = 70.073, z = -351.491 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1057, gadget_id = 70800281, pos = { x = -469.268, y = 70.853, z = -367.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70800268, pos = { x = -466.292, y = 70.850, z = -364.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70800268, pos = { x = -463.561, y = 70.850, z = -361.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70800268, pos = { x = -464.555, y = 70.820, z = -356.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70800268, pos = { x = -467.190, y = 70.823, z = -354.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, gadget_id = 70800268, pos = { x = -471.634, y = 70.850, z = -353.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1063, gadget_id = 70800268, pos = { x = -474.256, y = 70.850, z = -355.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1064, gadget_id = 70800268, pos = { x = -477.293, y = 70.850, z = -358.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1065, gadget_id = 70800268, pos = { x = -480.791, y = 70.853, z = -362.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70800269, pos = { x = -473.280, y = 77.026, z = -354.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1067, gadget_id = 70800269, pos = { x = -476.944, y = 79.545, z = -358.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1068, gadget_id = 70800276, pos = { x = -527.443, y = 89.187, z = -298.833 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1069, gadget_id = 70800274, pos = { x = -539.627, y = 93.218, z = -286.649 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1070, gadget_id = 70800246, pos = { x = -473.007, y = 81.784, z = -354.880 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1071, gadget_id = 70800269, pos = { x = -506.296, y = 92.753, z = -323.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1072, gadget_id = 70800269, pos = { x = -505.251, y = 94.755, z = -322.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1073, gadget_id = 70350355, pos = { x = -572.027, y = 89.816, z = -254.773 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1074, gadget_id = 70800269, pos = { x = -504.307, y = 92.753, z = -321.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1075, gadget_id = 70800276, pos = { x = -542.062, y = 86.187, z = -294.696 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70800281, pos = { x = -518.270, y = 91.816, z = -308.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70800276, pos = { x = -542.226, y = 85.184, z = -305.352 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1078, gadget_id = 70800246, pos = { x = -519.078, y = 86.740, z = -286.241 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1079, gadget_id = 70800246, pos = { x = -547.387, y = 86.737, z = -299.949 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1080, gadget_id = 70800274, pos = { x = -536.954, y = 83.544, z = -303.594 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1081, gadget_id = 70800247, pos = { x = -518.029, y = 91.389, z = -312.436 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1082, gadget_id = 70800274, pos = { x = -526.305, y = 81.493, z = -293.029 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1083, gadget_id = 70800274, pos = { x = -532.767, y = 88.216, z = -293.536 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1084, gadget_id = 70800246, pos = { x = -532.807, y = 89.499, z = -293.556 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1085, gadget_id = 70800246, pos = { x = -529.813, y = 82.847, z = -289.527 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1086, gadget_id = 70800268, pos = { x = -529.015, y = 91.136, z = -297.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1087, gadget_id = 70800268, pos = { x = -540.107, y = 88.136, z = -292.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1088, gadget_id = 70800268, pos = { x = -543.972, y = 88.136, z = -296.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70800268, pos = { x = -544.176, y = 87.133, z = -303.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1090, gadget_id = 70800268, pos = { x = -540.592, y = 87.133, z = -307.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70800268, pos = { x = -536.161, y = 85.494, z = -303.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1092, gadget_id = 70800268, pos = { x = -533.275, y = 85.494, z = -300.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1093, gadget_id = 70800274, pos = { x = -533.418, y = 83.544, z = -300.058 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1094, gadget_id = 70800269, pos = { x = -500.235, y = 74.376, z = -407.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1095, gadget_id = 70800269, pos = { x = -494.326, y = 74.343, z = -400.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1104, gadget_id = 70800246, pos = { x = -500.126, y = 79.070, z = -418.423 }, rot = { x = 0.000, y = 46.025, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 1106, gadget_id = 70800269, pos = { x = -501.875, y = 74.342, z = -402.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1107, gadget_id = 70800269, pos = { x = -498.605, y = 74.342, z = -399.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1108, gadget_id = 70800269, pos = { x = -495.481, y = 74.342, z = -407.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1109, gadget_id = 70800269, pos = { x = -493.109, y = 74.352, z = -405.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1110, gadget_id = 70800269, pos = { x = -537.803, y = 95.554, z = -288.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1111, gadget_id = 70800269, pos = { x = -540.119, y = 95.554, z = -285.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1112, gadget_id = 70800269, pos = { x = -519.121, y = 91.269, z = -286.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1113, gadget_id = 70800269, pos = { x = -519.028, y = 95.266, z = -286.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1114, gadget_id = 70800269, pos = { x = -519.054, y = 93.328, z = -286.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1115, gadget_id = 70800269, pos = { x = -483.918, y = 83.634, z = -343.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1116, gadget_id = 70800269, pos = { x = -487.115, y = 83.807, z = -339.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1117, gadget_id = 70800269, pos = { x = -396.844, y = 73.265, z = -403.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1118, gadget_id = 70800269, pos = { x = -398.790, y = 73.268, z = -405.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1120, gadget_id = 70800268, pos = { x = -522.082, y = 91.136, z = -304.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1121, gadget_id = 70800274, pos = { x = -536.302, y = 87.216, z = -290.001 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1123, gadget_id = 70800290, pos = { x = -444.923, y = 70.844, z = -422.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1124, gadget_id = 70800290, pos = { x = -496.951, y = 73.984, z = -403.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1125, gadget_id = 70800290, pos = { x = -476.674, y = 83.646, z = -379.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1126, gadget_id = 70800290, pos = { x = -484.364, y = 83.251, z = -342.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1127, gadget_id = 70800290, pos = { x = -571.998, y = 93.865, z = -254.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1132, gadget_id = 70800290, pos = { x = -504.153, y = 86.851, z = -414.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1136, gadget_id = 70800268, pos = { x = -470.014, y = 73.286, z = -351.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1137, gadget_id = 70800268, pos = { x = -470.014, y = 75.286, z = -351.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1141, gadget_id = 70800274, pos = { x = -529.841, y = 81.493, z = -289.494 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 1143, gadget_id = 70800274, pos = { x = -536.091, y = 93.218, z = -290.185 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 1144, gadget_id = 70800274, pos = { x = -468.295, y = 70.139, z = -373.565 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -571.055, y = 92.150, z = -255.524 } },
	{ config_id = 1023, shape = RegionShape.POLYGON, pos = { x = -419.657, y = 45.000, z = -418.465 }, height = 40.000, point_array = { { x = -378.187, y = -308.383 }, { x = -462.853, y = -386.545 }, { x = -449.357, y = -404.385 }, { x = -484.814, y = -433.965 }, { x = -520.436, y = -403.590 }, { x = -561.282, y = -427.702 }, { x = -571.704, y = -460.891 }, { x = -559.781, y = -493.248 }, { x = -501.527, y = -529.030 }, { x = -461.377, y = -529.270 }, { x = -267.610, y = -395.405 }, { x = -329.415, y = -307.661 } } },
	{ config_id = 1024, shape = RegionShape.POLYGON, pos = { x = -470.158, y = 47.000, z = -359.448 }, height = 40.000, point_array = { { x = -467.296, y = -322.570 }, { x = -508.238, y = -363.056 }, { x = -472.664, y = -396.326 }, { x = -432.078, y = -356.278 } } },
	{ config_id = 1025, shape = RegionShape.POLYGON, pos = { x = -530.875, y = 55.000, z = -300.759 }, height = 40.000, point_array = { { x = -490.353, y = -199.429 }, { x = -620.933, y = -341.609 }, { x = -577.161, y = -402.089 }, { x = -440.817, y = -249.934 } } },
	{ config_id = 1096, shape = RegionShape.SPHERE, radius = 5, pos = { x = -375.155, y = 77.370, z = -417.599 } },
	{ config_id = 1098, shape = RegionShape.SPHERE, radius = 5, pos = { x = -486.693, y = 73.393, z = -410.258 } },
	{ config_id = 1100, shape = RegionShape.SPHERE, radius = 5, pos = { x = -481.556, y = 83.943, z = -382.979 } },
	{ config_id = 1102, shape = RegionShape.SPHERE, radius = 5, pos = { x = -515.097, y = 90.704, z = -313.157 } },
	-- 目标
	{ config_id = 1128, shape = RegionShape.SPHERE, radius = 5, pos = { x = -376.976, y = 77.395, z = -414.712 } },
	-- 目标
	{ config_id = 1129, shape = RegionShape.SPHERE, radius = 5, pos = { x = -404.400, y = 72.319, z = -411.209 } },
	-- 目标
	{ config_id = 1130, shape = RegionShape.SPHERE, radius = 5, pos = { x = -443.471, y = 72.319, z = -424.077 } },
	-- 目标
	{ config_id = 1131, shape = RegionShape.SPHERE, radius = 5, pos = { x = -497.732, y = 72.891, z = -403.726 } },
	-- 目标
	{ config_id = 1133, shape = RegionShape.SPHERE, radius = 5, pos = { x = -476.559, y = 83.661, z = -379.630 } },
	-- 目标
	{ config_id = 1134, shape = RegionShape.SPHERE, radius = 5, pos = { x = -484.030, y = 83.661, z = -342.806 } },
	-- 目标
	{ config_id = 1135, shape = RegionShape.SPHERE, radius = 5, pos = { x = -569.806, y = 90.683, z = -255.393 } },
	-- 引导——开关
	{ config_id = 1138, shape = RegionShape.SPHERE, radius = 5, pos = { x = -393.861, y = 72.470, z = -400.664 } },
	-- 引导——开关
	{ config_id = 1139, shape = RegionShape.SPHERE, radius = 5, pos = { x = -440.536, y = 69.436, z = -419.212 } },
	-- 引导——下降平台
	{ config_id = 1140, shape = RegionShape.SPHERE, radius = 5, pos = { x = -475.913, y = 82.994, z = -380.954 } },
	{ config_id = 1142, shape = RegionShape.SPHERE, radius = 200, pos = { x = -460.098, y = 77.359, z = -367.354 } },
	-- 目标
	{ config_id = 1145, shape = RegionShape.SPHERE, radius = 5, pos = { x = -404.400, y = 72.319, z = -411.209 } },
	-- 目标
	{ config_id = 1146, shape = RegionShape.SPHERE, radius = 5, pos = { x = -443.471, y = 72.319, z = -424.077 } },
	-- 目标
	{ config_id = 1147, shape = RegionShape.SPHERE, radius = 5, pos = { x = -497.732, y = 72.891, z = -403.726 } },
	-- 目标
	{ config_id = 1148, shape = RegionShape.SPHERE, radius = 5, pos = { x = -476.559, y = 83.661, z = -379.630 } },
	-- 目标
	{ config_id = 1149, shape = RegionShape.SPHERE, radius = 5, pos = { x = -484.030, y = 83.661, z = -342.806 } },
	-- 目标
	{ config_id = 1150, shape = RegionShape.SPHERE, radius = 5, pos = { x = -569.806, y = 90.683, z = -255.393 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001023, name = "ENTER_REGION_1023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001025, name = "ENTER_REGION_1025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001036, name = "ANY_MONSTER_DIE_1036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1036", action = "action_EVENT_ANY_MONSTER_DIE_1036" },
	{ config_id = 1001044, name = "GADGET_CREATE_1044", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1044", action = "action_EVENT_GADGET_CREATE_1044" },
	{ config_id = 1001096, name = "ENTER_REGION_1096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001098, name = "ENTER_REGION_1098", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001100, name = "ENTER_REGION_1100", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001102, name = "ENTER_REGION_1102", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001105, name = "SELECT_OPTION_1105", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1105", action = "action_EVENT_SELECT_OPTION_1105", forbid_guest = false },
	-- 目标
	{ config_id = 1001128, name = "ENTER_REGION_1128", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1128", action = "action_EVENT_ENTER_REGION_1128", forbid_guest = false },
	-- 目标
	{ config_id = 1001129, name = "ENTER_REGION_1129", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1129", action = "action_EVENT_ENTER_REGION_1129", forbid_guest = false },
	-- 目标
	{ config_id = 1001130, name = "ENTER_REGION_1130", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1130", action = "action_EVENT_ENTER_REGION_1130", forbid_guest = false },
	-- 目标
	{ config_id = 1001131, name = "ENTER_REGION_1131", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1131", action = "action_EVENT_ENTER_REGION_1131" },
	-- 目标
	{ config_id = 1001133, name = "ENTER_REGION_1133", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1133", action = "action_EVENT_ENTER_REGION_1133", forbid_guest = false },
	-- 目标
	{ config_id = 1001134, name = "ENTER_REGION_1134", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1134", action = "action_EVENT_ENTER_REGION_1134", forbid_guest = false },
	-- 目标
	{ config_id = 1001135, name = "ENTER_REGION_1135", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1135", action = "action_EVENT_ENTER_REGION_1135", forbid_guest = false },
	-- 引导——开关
	{ config_id = 1001138, name = "ENTER_REGION_1138", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1138", action = "action_EVENT_ENTER_REGION_1138" },
	-- 引导——开关
	{ config_id = 1001139, name = "ENTER_REGION_1139", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1139", action = "action_EVENT_ENTER_REGION_1139" },
	-- 引导——下降平台
	{ config_id = 1001140, name = "ENTER_REGION_1140", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1140", action = "action_EVENT_ENTER_REGION_1140" },
	{ config_id = 1001142, name = "ENTER_REGION_1142", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	-- 目标
	{ config_id = 1001145, name = "ENTER_REGION_1145", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1145", action = "action_EVENT_ENTER_REGION_1145", trigger_count = 0, forbid_guest = false },
	-- 目标
	{ config_id = 1001146, name = "ENTER_REGION_1146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1146", action = "action_EVENT_ENTER_REGION_1146", trigger_count = 0, forbid_guest = false },
	-- 目标
	{ config_id = 1001147, name = "ENTER_REGION_1147", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1147", action = "action_EVENT_ENTER_REGION_1147", trigger_count = 0 },
	-- 目标
	{ config_id = 1001148, name = "ENTER_REGION_1148", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1148", action = "action_EVENT_ENTER_REGION_1148", trigger_count = 0, forbid_guest = false },
	-- 目标
	{ config_id = 1001149, name = "ENTER_REGION_1149", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1149", action = "action_EVENT_ENTER_REGION_1149", trigger_count = 0, forbid_guest = false },
	-- 目标
	{ config_id = 1001150, name = "ENTER_REGION_1150", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1150", action = "action_EVENT_ENTER_REGION_1150", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 1097, pos = { x = -384.569, y = 77.387, z = -405.461 }, rot = { x = 0.000, y = 315.000, z = 0.000 } },
	{ config_id = 1099, pos = { x = -489.851, y = 73.059, z = -408.398 }, rot = { x = 0.000, y = 315.000, z = 0.000 } },
	{ config_id = 1101, pos = { x = -475.964, y = 82.772, z = -382.913 }, rot = { x = 0.000, y = 45.000, z = 0.000 } },
	{ config_id = 1103, pos = { x = -514.957, y = 90.697, z = -311.543 }, rot = { x = 0.000, y = 315.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1003, gadget_id = 70800246, pos = { x = -399.461, y = 72.220, z = -410.295 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true }
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
		monsters = { 1001, 1011, 1018, 1119, 1122 },
		gadgets = { 1002, 1004, 1007, 1009, 1010, 1012, 1013, 1014, 1015, 1017, 1019, 1021, 1022, 1026, 1027, 1029, 1030, 1031, 1032, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1057, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1093, 1104, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1121, 1141, 1143, 1144 },
		regions = { 1005, 1023, 1024, 1025, 1096, 1098, 1100, 1102, 1128, 1129, 1130, 1131, 1133, 1134, 1135, 1138, 1139, 1140, 1142, 1145, 1146, 1147, 1148, 1149, 1150 },
		triggers = { "ENTER_REGION_1005", "ENTER_REGION_1023", "ENTER_REGION_1024", "ENTER_REGION_1025", "ANY_MONSTER_DIE_1036", "GADGET_CREATE_1044", "ENTER_REGION_1096", "ENTER_REGION_1098", "ENTER_REGION_1100", "ENTER_REGION_1102", "SELECT_OPTION_1105", "ENTER_REGION_1128", "ENTER_REGION_1129", "ENTER_REGION_1130", "ENTER_REGION_1131", "ENTER_REGION_1133", "ENTER_REGION_1134", "ENTER_REGION_1135", "ENTER_REGION_1138", "ENTER_REGION_1139", "ENTER_REGION_1140", "ENTER_REGION_1142", "ENTER_REGION_1145", "ENTER_REGION_1146", "ENTER_REGION_1147", "ENTER_REGION_1148", "ENTER_REGION_1149", "ENTER_REGION_1150" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1006, 1008, 1020, 1033, 1034, 1035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1028, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1120 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1136, 1137 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1094, 1095, 1106, 1107, 1108, 1109 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1123 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1124 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1132 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 1125 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 1126 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 1127 },
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
function condition_EVENT_ANY_MONSTER_DIE_1036(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 247021001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1036(context, evt)
	-- 将configid为 1043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-507.3787, y=73.40715, z=-395.5232}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-507.3787, y=73.40715, z=-395.5232}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 5)
	
	-- 调用提示id为 470210105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 470210105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1044(context, evt)
	if 1042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1044(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247021001, 1042, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1105(context, evt)
	-- 判断是gadgetid 1042 option_id 788
	if 1042 ~= evt.param1 then
		return false	
	end
	
	if 788 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1105(context, evt)
	-- 触发镜头注目，注目位置为坐标（-493.7006，79.10858，-392.2777），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-493.7006, y=79.10858, z=-392.2777}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 1040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除指定group： 247021001 ；指定config：1042；物件身上指定option：788；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247021001, 1042, 788) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1128(context, evt)
	if evt.param1 ~= 1128 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1128(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1129(context, evt)
	if evt.param1 ~= 1129 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1129(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1130(context, evt)
	if evt.param1 ~= 1130 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1130(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1131(context, evt)
	if evt.param1 ~= 1131 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1131(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1133(context, evt)
	if evt.param1 ~= 1133 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1133(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1134(context, evt)
	if evt.param1 ~= 1134 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1134(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247021001, 12)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1135(context, evt)
	if evt.param1 ~= 1135 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1135(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1138(context, evt)
	if evt.param1 ~= 1138 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1138(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 206, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1139(context, evt)
	if evt.param1 ~= 1139 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1139(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 206, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1140(context, evt)
	if evt.param1 ~= 1140 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1140(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 207, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1145(context, evt)
	if evt.param1 ~= 1145 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1145(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1146(context, evt)
	if evt.param1 ~= 1146 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1146(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1147(context, evt)
	if evt.param1 ~= 1147 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1147(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1148(context, evt)
	if evt.param1 ~= 1148 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1148(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1149(context, evt)
	if evt.param1 ~= 1149 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1149(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1150(context, evt)
	if evt.param1 ~= 1150 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1150(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247021001, 12)
	
	return 0
end

require "V3_1/Activity_WindMaze"
require "V3_1/Activity_WindMaze_Normal"