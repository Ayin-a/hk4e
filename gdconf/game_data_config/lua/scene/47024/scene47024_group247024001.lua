-- 基础信息
local base_info = {
	group_id = 247024001
}

-- DEFS_MISCS
local defs ={
        gallery_id = 27007,
        finish_region = 1104,
        operator_time_1 = 20,
        operator_time_2 = 20,
        challenge_id = 20,
        ball_challenge_id = 19,
        ball_challenge_time = 50,
        ability_region = 1169,
    }

local windball_list = {
 [1014] = 2,
 [1080] = 4,
 [1054] = 12,
}


local operator_list = {

}

local revivepoint_list = {
        [1109] =1110,
        [1111] =1112,
        [1113] =1114,
        [1115] =1116,
        [1117] =1118,
        [1119] =1120,
}

local transfer_list = {
        --[region_configid] = point_id,
        [1134] =1112,
        [1135] =1114,
        [1162] =1114,
        [1136] =1118,
        [1171] =1118,
        [1172] =1118,
        [1173] =1118,
        [1137] =1120,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1045, monster_id = 21010101, pos = { x = -472.854, y = 9.754, z = -379.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, monster_id = 21030101, pos = { x = -472.055, y = 9.742, z = -380.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1063, monster_id = 21030301, pos = { x = -472.084, y = 9.744, z = -370.480 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1064, monster_id = 21020201, pos = { x = -475.938, y = 9.747, z = -375.840 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70800269, pos = { x = -375.691, y = 16.612, z = -340.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1002, gadget_id = 70800269, pos = { x = -368.892, y = 16.624, z = -341.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1003, gadget_id = 70800269, pos = { x = -358.239, y = 13.625, z = -341.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1004, gadget_id = 70800269, pos = { x = -352.084, y = 13.543, z = -341.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1005, gadget_id = 70800246, pos = { x = -343.718, y = -2.465, z = -367.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1006, gadget_id = 70800246, pos = { x = -358.480, y = -2.470, z = -368.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1007, gadget_id = 70800246, pos = { x = -343.480, y = 12.525, z = -360.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1} },
	{ config_id = 1008, gadget_id = 70800246, pos = { x = -343.422, y = 12.506, z = -375.552 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1} },
	{ config_id = 1009, gadget_id = 70800276, pos = { x = -351.021, y = 11.069, z = -360.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70800276, pos = { x = -351.157, y = 11.069, z = -375.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70800280, pos = { x = -358.675, y = 0.084, z = -368.009 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70800280, pos = { x = -343.675, y = 0.104, z = -368.046 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70800281, pos = { x = -343.291, y = 13.546, z = -355.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70800268, pos = { x = -348.838, y = 13.265, z = -360.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70800268, pos = { x = -353.102, y = 13.265, z = -360.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70800268, pos = { x = -358.521, y = 13.238, z = -360.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70800268, pos = { x = -358.521, y = 13.238, z = -365.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70800268, pos = { x = -358.521, y = 13.238, z = -369.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70800268, pos = { x = -358.521, y = 13.238, z = -375.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70800268, pos = { x = -353.330, y = 13.238, z = -375.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70800268, pos = { x = -349.010, y = 13.238, z = -375.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70800268, pos = { x = -343.433, y = 13.238, z = -370.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70800268, pos = { x = -343.433, y = 13.238, z = -365.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70800269, pos = { x = -371.391, y = 0.609, z = -372.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1026, gadget_id = 70800269, pos = { x = -371.650, y = 0.646, z = -369.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1027, gadget_id = 70800269, pos = { x = -371.446, y = 2.815, z = -370.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1028, gadget_id = 70800277, pos = { x = -392.304, y = -2.563, z = -372.195 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 2} },
	{ config_id = 1029, gadget_id = 70800277, pos = { x = -402.986, y = 0.658, z = -375.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 2} },
	{ config_id = 1030, gadget_id = 70800277, pos = { x = -402.986, y = 5.827, z = -367.087 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 2} },
	{ config_id = 1031, gadget_id = 70800246, pos = { x = -391.987, y = -2.415, z = -362.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch__Dir"] = 2} },
	{ config_id = 1032, gadget_id = 70800246, pos = { x = -392.275, y = -2.593, z = -389.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1033, gadget_id = 70800246, pos = { x = -402.233, y = 0.620, z = -372.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 2} },
	{ config_id = 1034, gadget_id = 70800246, pos = { x = -403.082, y = 6.226, z = -361.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 2} },
	{ config_id = 1035, gadget_id = 70800268, pos = { x = -392.335, y = 6.527, z = -381.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70800268, pos = { x = -403.282, y = 10.096, z = -379.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70360001, pos = { x = -397.256, y = 9.120, z = -371.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1038, gadget_id = 70800268, pos = { x = -392.459, y = 1.505, z = -389.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70800274, pos = { x = -397.321, y = 6.536, z = -370.987 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1040, gadget_id = 70800268, pos = { x = -408.165, y = 14.359, z = -367.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70360001, pos = { x = -413.447, y = 13.854, z = -362.793 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1042, gadget_id = 70800274, pos = { x = -413.385, y = 11.730, z = -362.925 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1044, gadget_id = 70800268, pos = { x = -392.459, y = 4.505, z = -389.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70800269, pos = { x = -410.104, y = 6.861, z = -376.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1050, gadget_id = 70800269, pos = { x = -363.477, y = 14.986, z = -341.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1051, gadget_id = 70800274, pos = { x = -473.562, y = 28.935, z = -486.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 1052, gadget_id = 70800268, pos = { x = -408.146, y = 14.352, z = -363.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70800269, pos = { x = -414.626, y = 6.861, z = -376.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1054, gadget_id = 70800281, pos = { x = -392.612, y = -1.743, z = -387.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70800246, pos = { x = -471.570, y = 9.746, z = -387.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1056, gadget_id = 70800269, pos = { x = -421.885, y = 7.021, z = -376.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1057, gadget_id = 70800269, pos = { x = -426.752, y = 7.021, z = -376.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1058, gadget_id = 70800269, pos = { x = -430.760, y = 7.028, z = -376.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1059, gadget_id = 70800269, pos = { x = -473.635, y = 37.329, z = -481.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1060, gadget_id = 70800269, pos = { x = -473.701, y = 38.539, z = -486.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1061, gadget_id = 70800274, pos = { x = -473.663, y = 32.647, z = -474.636 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1065, gadget_id = 70350005, pos = { x = -456.106, y = 9.514, z = -376.055 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70800277, pos = { x = -469.735, y = 19.120, z = -410.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 1, ["SGV_Right_Dir"] = 3} },
	{ config_id = 1069, gadget_id = 70800246, pos = { x = -472.807, y = 19.479, z = -409.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1} },
	{ config_id = 1070, gadget_id = 70800246, pos = { x = -458.372, y = 15.596, z = -409.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_Dir"] = 2} },
	{ config_id = 1071, gadget_id = 70800277, pos = { x = -487.220, y = 5.861, z = -413.546 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 2} },
	{ config_id = 1072, gadget_id = 70800277, pos = { x = -476.194, y = 5.834, z = -425.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Right_Dir"] = 3, ["SGV_Left_Dir"] = 1} },
	{ config_id = 1073, gadget_id = 70800246, pos = { x = -486.717, y = 5.983, z = -408.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_Dir"] = 2} },
	{ config_id = 1074, gadget_id = 70800246, pos = { x = -470.637, y = 5.959, z = -425.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_Dir"] = 3} },
	{ config_id = 1075, gadget_id = 70800290, pos = { x = -348.042, y = 14.154, z = -353.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70800268, pos = { x = -392.335, y = 6.527, z = -376.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70800269, pos = { x = -471.817, y = 31.065, z = -410.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1078, gadget_id = 70800269, pos = { x = -467.484, y = 29.662, z = -409.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1079, gadget_id = 70800269, pos = { x = -463.028, y = 28.814, z = -409.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1080, gadget_id = 70800281, pos = { x = -471.700, y = 16.323, z = -398.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1081, gadget_id = 70800268, pos = { x = -477.316, y = 18.734, z = -410.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1082, gadget_id = 70800268, pos = { x = -480.708, y = 17.258, z = -410.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1083, gadget_id = 70800268, pos = { x = -487.171, y = 17.266, z = -412.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1084, gadget_id = 70800268, pos = { x = -487.182, y = 15.119, z = -416.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1085, gadget_id = 70800268, pos = { x = -478.194, y = 15.097, z = -425.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1086, gadget_id = 70800268, pos = { x = -473.126, y = 16.086, z = -425.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1087, gadget_id = 70800268, pos = { x = -466.095, y = 16.439, z = -425.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1088, gadget_id = 70800268, pos = { x = -458.927, y = 16.664, z = -425.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70800268, pos = { x = -458.661, y = 16.667, z = -418.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1090, gadget_id = 70800268, pos = { x = -458.541, y = 16.664, z = -413.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70800268, pos = { x = -471.991, y = 18.855, z = -405.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1092, gadget_id = 70360001, pos = { x = -473.648, y = 35.205, z = -474.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1095, gadget_id = 70800246, pos = { x = -473.614, y = 23.518, z = -474.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_Dir"] = 2} },
	{ config_id = 1096, gadget_id = 70800246, pos = { x = -473.224, y = 15.459, z = -492.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1097, gadget_id = 70800246, pos = { x = -473.155, y = 20.484, z = -525.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1098, gadget_id = 70800246, pos = { x = -473.254, y = 22.438, z = -545.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1, ["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1099, gadget_id = 70800277, pos = { x = -473.562, y = 23.596, z = -477.862 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 2} },
	{ config_id = 1100, gadget_id = 70800280, pos = { x = -473.513, y = 17.935, z = -494.273 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1101, gadget_id = 70800280, pos = { x = -473.262, y = 23.014, z = -525.342 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1102, gadget_id = 70800280, pos = { x = -473.262, y = 25.049, z = -544.945 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1103, gadget_id = 70350355, pos = { x = -473.124, y = 34.633, z = -568.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1105, gadget_id = 70800269, pos = { x = -476.257, y = 10.746, z = -375.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1106, gadget_id = 70800269, pos = { x = -474.464, y = 10.744, z = -378.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1107, gadget_id = 70800269, pos = { x = -474.645, y = 10.773, z = -372.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1108, gadget_id = 70800290, pos = { x = -371.609, y = 1.087, z = -370.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1121, gadget_id = 70800269, pos = { x = -470.896, y = 10.745, z = -378.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1122, gadget_id = 70800268, pos = { x = -397.219, y = 8.290, z = -371.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1123, gadget_id = 70800269, pos = { x = -469.324, y = 10.745, z = -375.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1124, gadget_id = 70800269, pos = { x = -470.851, y = 10.745, z = -372.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1125, gadget_id = 70800269, pos = { x = -473.369, y = 36.418, z = -522.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1126, gadget_id = 70800269, pos = { x = -473.152, y = 36.418, z = -527.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1127, gadget_id = 70800269, pos = { x = -473.106, y = 38.650, z = -542.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1128, gadget_id = 70800269, pos = { x = -473.161, y = 38.650, z = -547.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1129, gadget_id = 70800269, pos = { x = -473.715, y = 41.772, z = -496.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1130, gadget_id = 70800269, pos = { x = -473.695, y = 39.988, z = -491.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1132, gadget_id = 70800246, pos = { x = -473.615, y = 26.151, z = -505.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_UpDown"] = 1} },
	{ config_id = 1133, gadget_id = 70800280, pos = { x = -473.634, y = 28.736, z = -505.599 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1139, gadget_id = 70800290, pos = { x = -471.920, y = 16.470, z = -391.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1140, gadget_id = 70800290, pos = { x = -473.115, y = 29.355, z = -414.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1141, gadget_id = 70800290, pos = { x = -473.074, y = 39.054, z = -567.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1147, gadget_id = 70800290, pos = { x = -417.464, y = 7.391, z = -376.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1150, gadget_id = 70800268, pos = { x = -392.412, y = 8.290, z = -372.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1151, gadget_id = 70800268, pos = { x = -403.362, y = 8.139, z = -381.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1152, gadget_id = 70800268, pos = { x = -403.282, y = 11.598, z = -376.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1153, gadget_id = 70800268, pos = { x = -403.331, y = 13.676, z = -373.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1154, gadget_id = 70800268, pos = { x = -403.331, y = 16.018, z = -367.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1156, gadget_id = 70800268, pos = { x = -413.483, y = 15.111, z = -368.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1157, gadget_id = 70800268, pos = { x = -413.483, y = 15.795, z = -372.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1158, gadget_id = 70800268, pos = { x = -413.483, y = 16.691, z = -377.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1159, gadget_id = 70800268, pos = { x = -413.483, y = 17.671, z = -382.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1160, gadget_id = 70800268, pos = { x = -413.483, y = 18.410, z = -387.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1174, gadget_id = 70800268, pos = { x = -397.219, y = 7.915, z = -376.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1175, gadget_id = 70800268, pos = { x = -397.219, y = 7.445, z = -381.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1176, gadget_id = 70800268, pos = { x = -403.331, y = 15.166, z = -370.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 教程——浮力
	{ config_id = 1013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -348.597, y = 12.546, z = -355.579 } },
	-- 怪物房间开门
	{ config_id = 1066, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 30.000 }, pos = { x = -451.412, y = 19.211, z = -375.174 } },
	{ config_id = 1104, shape = RegionShape.SPHERE, radius = 5, pos = { x = -473.231, y = 36.014, z = -568.671 } },
	{ config_id = 1109, shape = RegionShape.SPHERE, radius = 5, pos = { x = -379.102, y = 20.041, z = -322.104 } },
	{ config_id = 1111, shape = RegionShape.SPHERE, radius = 5, pos = { x = -348.491, y = 12.543, z = -348.144 } },
	{ config_id = 1113, shape = RegionShape.SPHERE, radius = 5, pos = { x = -372.074, y = 0.222, z = -370.507 } },
	{ config_id = 1115, shape = RegionShape.SPHERE, radius = 5, pos = { x = -454.699, y = 10.575, z = -375.140 } },
	{ config_id = 1117, shape = RegionShape.SPHERE, radius = 5, pos = { x = -471.937, y = 15.326, z = -394.301 } },
	{ config_id = 1119, shape = RegionShape.SPHERE, radius = 5, pos = { x = -473.238, y = 35.010, z = -455.602 } },
	-- 教程——倾斜
	{ config_id = 1131, shape = RegionShape.SPHERE, radius = 5, pos = { x = -386.979, y = -2.162, z = -371.780 } },
	{ config_id = 1134, shape = RegionShape.CUBIC, size = { x = 40.000, y = 40.000, z = 80.000 }, pos = { x = -352.102, y = -23.642, z = -356.231 } },
	{ config_id = 1135, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 80.000 }, pos = { x = -407.239, y = -26.923, z = -356.231 } },
	{ config_id = 1136, shape = RegionShape.CUBIC, size = { x = 90.000, y = 40.000, z = 60.000 }, pos = { x = -464.270, y = -17.136, z = -421.169 } },
	{ config_id = 1137, shape = RegionShape.CUBIC, size = { x = 60.000, y = 40.000, z = 120.000 }, pos = { x = -463.391, y = -4.797, z = -509.831 } },
	-- 目标点
	{ config_id = 1142, shape = RegionShape.SPHERE, radius = 5, pos = { x = -378.384, y = 19.526, z = -327.276 } },
	-- 目标点
	{ config_id = 1143, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 10.000 }, pos = { x = -347.715, y = 20.450, z = -352.717 } },
	-- 目标点
	{ config_id = 1144, shape = RegionShape.SPHERE, radius = 5, pos = { x = -416.748, y = 8.147, z = -376.776 } },
	-- 目标点
	{ config_id = 1145, shape = RegionShape.SPHERE, radius = 5, pos = { x = -471.667, y = 17.167, z = -392.888 } },
	-- 目标点
	{ config_id = 1146, shape = RegionShape.SPHERE, radius = 5, pos = { x = -472.970, y = 28.469, z = -414.474 } },
	-- 目标点
	{ config_id = 1148, shape = RegionShape.SPHERE, radius = 5, pos = { x = -472.970, y = 36.555, z = -567.818 } },
	-- 目标点
	{ config_id = 1149, shape = RegionShape.CUBIC, size = { x = 5.000, y = 30.000, z = 30.000 }, pos = { x = -370.946, y = 11.423, z = -375.559 } },
	{ config_id = 1162, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -380.359, y = -9.185, z = -384.657 } },
	{ config_id = 1169, shape = RegionShape.SPHERE, radius = 160, pos = { x = -437.248, y = 6.339, z = -441.046 } },
	{ config_id = 1170, shape = RegionShape.SPHERE, radius = 5, pos = { x = -380.470, y = -0.333, z = -373.583 } },
	{ config_id = 1171, shape = RegionShape.CUBIC, size = { x = 60.000, y = 30.000, z = 30.000 }, pos = { x = -515.106, y = 12.167, z = -447.895 } },
	{ config_id = 1172, shape = RegionShape.CUBIC, size = { x = 20.000, y = 30.000, z = 50.000 }, pos = { x = -503.874, y = 12.167, z = -399.940 } },
	{ config_id = 1173, shape = RegionShape.CUBIC, size = { x = 60.000, y = 30.000, z = 30.000 }, pos = { x = -425.412, y = 12.167, z = -447.895 } }
}

-- 触发器
triggers = {
	-- 教程——浮力
	{ config_id = 1001013, name = "ENTER_REGION_1013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1013", action = "action_EVENT_ENTER_REGION_1013" },
	{ config_id = 1001043, name = "GADGET_CREATE_1043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1043", action = "action_EVENT_GADGET_CREATE_1043" },
	{ config_id = 1001046, name = "GADGET_CREATE_1046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1046", action = "action_EVENT_GADGET_CREATE_1046" },
	{ config_id = 1001047, name = "SELECT_OPTION_1047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1047", action = "action_EVENT_SELECT_OPTION_1047", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001049, name = "SELECT_OPTION_1049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1049", action = "action_EVENT_SELECT_OPTION_1049", trigger_count = 0, forbid_guest = false },
	-- 怪物房间开门
	{ config_id = 1001066, name = "ENTER_REGION_1066", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1066", action = "action_EVENT_ENTER_REGION_1066", forbid_guest = false },
	{ config_id = 1001067, name = "ANY_MONSTER_DIE_1067", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1067", action = "action_EVENT_ANY_MONSTER_DIE_1067" },
	{ config_id = 1001093, name = "GADGET_CREATE_1093", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1093", action = "action_EVENT_GADGET_CREATE_1093" },
	{ config_id = 1001094, name = "SELECT_OPTION_1094", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1094", action = "action_EVENT_SELECT_OPTION_1094", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001104, name = "ENTER_REGION_1104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001109, name = "ENTER_REGION_1109", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001111, name = "ENTER_REGION_1111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001113, name = "ENTER_REGION_1113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001115, name = "ENTER_REGION_1115", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001117, name = "ENTER_REGION_1117", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1001119, name = "ENTER_REGION_1119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	-- 教程——倾斜
	{ config_id = 1001131, name = "ENTER_REGION_1131", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1131", action = "action_EVENT_ENTER_REGION_1131" },
	{ config_id = 1001134, name = "ENTER_REGION_1134", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001135, name = "ENTER_REGION_1135", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001136, name = "ENTER_REGION_1136", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001137, name = "ENTER_REGION_1137", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	-- 移动平台1
	{ config_id = 1001138, name = "PLATFORM_ARRIVAL_1138", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1138", action = "action_EVENT_PLATFORM_ARRIVAL_1138", trigger_count = 0 },
	-- 目标点
	{ config_id = 1001142, name = "ENTER_REGION_1142", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1142", action = "action_EVENT_ENTER_REGION_1142", forbid_guest = false },
	-- 目标点
	{ config_id = 1001143, name = "ENTER_REGION_1143", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1143", action = "action_EVENT_ENTER_REGION_1143", forbid_guest = false },
	-- 目标点
	{ config_id = 1001144, name = "ENTER_REGION_1144", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1144", action = "action_EVENT_ENTER_REGION_1144", forbid_guest = false },
	-- 目标点
	{ config_id = 1001145, name = "ENTER_REGION_1145", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1145", action = "action_EVENT_ENTER_REGION_1145", forbid_guest = false },
	-- 目标点
	{ config_id = 1001146, name = "ENTER_REGION_1146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1146", action = "action_EVENT_ENTER_REGION_1146", forbid_guest = false },
	-- 目标点
	{ config_id = 1001148, name = "ENTER_REGION_1148", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1148", action = "action_EVENT_ENTER_REGION_1148", forbid_guest = false },
	-- 目标点
	{ config_id = 1001149, name = "ENTER_REGION_1149", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1149", action = "action_EVENT_ENTER_REGION_1149", forbid_guest = false },
	-- 移动平台2
	{ config_id = 1001155, name = "PLATFORM_ARRIVAL_1155", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1155", action = "action_EVENT_PLATFORM_ARRIVAL_1155", trigger_count = 0 },
	-- 移动平台3
	{ config_id = 1001161, name = "PLATFORM_ARRIVAL_1161", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1161", action = "action_EVENT_PLATFORM_ARRIVAL_1161", trigger_count = 0 },
	{ config_id = 1001162, name = "ENTER_REGION_1162", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	-- 移动平台1
	{ config_id = 1001163, name = "TIME_AXIS_PASS_1163", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1163", action = "action_EVENT_TIME_AXIS_PASS_1163", trigger_count = 0 },
	-- 移动平台1
	{ config_id = 1001164, name = "PLATFORM_ARRIVAL_1164", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1164", action = "action_EVENT_PLATFORM_ARRIVAL_1164", trigger_count = 0 },
	-- 移动平台2
	{ config_id = 1001165, name = "TIME_AXIS_PASS_1165", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1165", action = "action_EVENT_TIME_AXIS_PASS_1165", trigger_count = 0 },
	-- 移动平台2
	{ config_id = 1001166, name = "PLATFORM_ARRIVAL_1166", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1166", action = "action_EVENT_PLATFORM_ARRIVAL_1166", trigger_count = 0 },
	-- 移动平台3
	{ config_id = 1001167, name = "TIME_AXIS_PASS_1167", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1167", action = "action_EVENT_TIME_AXIS_PASS_1167", trigger_count = 0 },
	-- 移动平台3
	{ config_id = 1001168, name = "PLATFORM_ARRIVAL_1168", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_1168", action = "action_EVENT_PLATFORM_ARRIVAL_1168", trigger_count = 0 },
	{ config_id = 1001169, name = "ENTER_REGION_1169", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001170, name = "ENTER_REGION_1170", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1170", action = "action_EVENT_ENTER_REGION_1170" },
	{ config_id = 1001171, name = "ENTER_REGION_1171", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001172, name = "ENTER_REGION_1172", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001173, name = "ENTER_REGION_1173", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 1110, pos = { x = -372.564, y = 16.531, z = -341.391 }, rot = { x = 0.000, y = 91.196, z = 0.000 } },
	{ config_id = 1112, pos = { x = -348.341, y = 12.543, z = -349.599 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1114, pos = { x = -379.322, y = -0.257, z = -371.425 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1116, pos = { x = -457.656, y = 9.753, z = -376.002 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1118, pos = { x = -471.929, y = 15.326, z = -395.667 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1120, pos = { x = -473.403, y = 34.415, z = -456.615 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1177, gadget_id = 70800274, pos = { x = -473.662, y = 39.779, z = -498.059 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 7, start_route = false }
	}
}

-- 视野组
sight_groups = {
	{ 1012, 1005 },
	{ 1011, 1006 },
	{ 1031, 1028 },
	{ 1029, 1030, 1033, 1034 },
	{ 1071, 1073 },
	{ 1072, 1074 },
	{ 1096, 1100 },
	{ 1097, 1101 },
	{ 1098, 1102 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1014, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1037, 1039, 1041, 1042, 1048, 1050, 1051, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1065, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1077, 1078, 1079, 1080, 1092, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1125, 1126, 1127, 1128, 1129, 1130, 1132, 1133 },
		regions = { 1013, 1066, 1104, 1109, 1111, 1113, 1115, 1117, 1119, 1131, 1134, 1135, 1136, 1137, 1142, 1143, 1144, 1145, 1146, 1148, 1149, 1162, 1169, 1170, 1171, 1172, 1173 },
		triggers = { "ENTER_REGION_1013", "GADGET_CREATE_1043", "GADGET_CREATE_1046", "SELECT_OPTION_1047", "SELECT_OPTION_1049", "ENTER_REGION_1066", "GADGET_CREATE_1093", "SELECT_OPTION_1094", "ENTER_REGION_1104", "ENTER_REGION_1109", "ENTER_REGION_1111", "ENTER_REGION_1113", "ENTER_REGION_1115", "ENTER_REGION_1117", "ENTER_REGION_1119", "ENTER_REGION_1131", "ENTER_REGION_1134", "ENTER_REGION_1135", "ENTER_REGION_1136", "ENTER_REGION_1137", "PLATFORM_ARRIVAL_1138", "ENTER_REGION_1142", "ENTER_REGION_1143", "ENTER_REGION_1144", "ENTER_REGION_1145", "ENTER_REGION_1146", "ENTER_REGION_1148", "ENTER_REGION_1149", "PLATFORM_ARRIVAL_1155", "PLATFORM_ARRIVAL_1161", "ENTER_REGION_1162", "TIME_AXIS_PASS_1163", "PLATFORM_ARRIVAL_1164", "TIME_AXIS_PASS_1165", "PLATFORM_ARRIVAL_1166", "TIME_AXIS_PASS_1167", "PLATFORM_ARRIVAL_1168", "ENTER_REGION_1169", "ENTER_REGION_1170", "ENTER_REGION_1171", "ENTER_REGION_1172", "ENTER_REGION_1173" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1062, 1063, 1064 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1067" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1105, 1106, 1107, 1121, 1123, 1124 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1075 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1108 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1147 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1139 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 1140 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 1141 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 1035, 1036, 1038, 1040, 1044, 1052, 1076, 1122, 1150, 1151, 1152, 1153, 1154, 1156, 1157, 1158, 1159, 1160, 1174, 1175, 1176 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
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
function condition_EVENT_ENTER_REGION_1013(context, evt)
	if evt.param1 ~= 1013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1013(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 209, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1043(context, evt)
	if 1037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1043(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1037, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1046(context, evt)
	if 1041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1041, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1047(context, evt)
	-- 判断是gadgetid 1037 option_id 788
	if 1037 ~= evt.param1 then
		return false	
	end
	
	if 788 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1047(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 247024001 ；指定config：1037；物件身上指定option：788；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247024001, 1037, 788) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1049(context, evt)
	-- 判断是gadgetid 1041 option_id 788
	if 1041 ~= evt.param1 then
		return false	
	end
	
	if 788 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1049(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 247024001 ；指定config：1041；物件身上指定option：788；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247024001, 1041, 788) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1066(context, evt)
	if evt.param1 ~= 1066 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1066(context, evt)
	-- 将configid为 1065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1067(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 247024001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1067(context, evt)
	-- 将configid为 1055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 5)
	
	-- 调用提示id为 470210105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 470210105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-471.5702, y=9.746119, z=-387.4375}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-471.5702, y=9.746119, z=-387.4375}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1093(context, evt)
	if 1092 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1093(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1092, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1094(context, evt)
	-- 判断是gadgetid 1092 option_id 788
	if 1092 ~= evt.param1 then
		return false	
	end
	
	if 788 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1094(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 247024001 ；指定config：1092；物件身上指定option：788；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247024001, 1092, 788) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
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
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 208, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1138(context, evt)
	-- 判断是gadgetid 为 1039的移动平台，是否到达了5 的路线中的 1 点
	
	if 1039 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1138(context, evt)
	-- 创建标识为"timer1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer1", {2}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1039, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1142(context, evt)
	if evt.param1 ~= 1142 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1142(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1143(context, evt)
	if evt.param1 ~= 1143 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1143(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1144(context, evt)
	if evt.param1 ~= 1144 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1144(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 9)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
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
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 10)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
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
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 10)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 11)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
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
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
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
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247024001, 8)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247024001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1155(context, evt)
	-- 判断是gadgetid 为 1042的移动平台，是否到达了6 的路线中的 1 点
	
	if 1042 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1155(context, evt)
	-- 创建标识为"timer2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer2", {2}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1042, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1161(context, evt)
	-- 判断是gadgetid 为 1061的移动平台，是否到达了7 的路线中的 1 点
	
	if 1061 ~= evt.param1 then
	  return false
	end
	
	if 7 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1161(context, evt)
	-- 创建标识为"timer3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer3", {2}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1061, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1163(context, evt)
	if "timer1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1163(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1164(context, evt)
	-- 判断是gadgetid 为 1039的移动平台，是否到达了8 的路线中的 1 点
	
	if 1039 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1164(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1039, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1037, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1165(context, evt)
	if "timer2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1165(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1166(context, evt)
	-- 判断是gadgetid 为 1042的移动平台，是否到达了9 的路线中的 1 点
	
	if 1042 ~= evt.param1 then
	  return false
	end
	
	if 9 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1166(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1042, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1041, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1167(context, evt)
	if "timer3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1167(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_1168(context, evt)
	-- 判断是gadgetid 为 1061的移动平台，是否到达了10 的路线中的 1 点
	
	if 1061 ~= evt.param1 then
	  return false
	end
	
	if 10 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_1168(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1061, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247024001, 1092, {788}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1170(context, evt)
	if evt.param1 ~= 1170 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1170(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-392.6119, y=-1.743446, z=-387.7961}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-392.6119, y=-1.743446, z=-387.7961}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_1/Activity_WindMaze"
require "V3_1/Activity_WindMaze_Normal"