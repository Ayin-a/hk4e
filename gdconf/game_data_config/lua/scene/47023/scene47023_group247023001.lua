-- 基础信息
local base_info = {
	group_id = 247023001
}

-- DEFS_MISCS
local defs ={
        gallery_id = 27006,
        finish_region = 1094,
        --关闭机关持续时间
        operator_time_1 = 20,
        --加强机关持续时间
        operator_time_2 = 20,

        ball_challenge_time = 40,

        --活动表里的两个主挑战id，每关复制一下

        challenge_id=14,
        ball_challenge_id=13,
        ability_region = 1196,
    }


--[]内为大疾风微粒id，后面为要刷的suit
local windball_list = {
[1049]=2,
[1113]=5,
[1159]=6,
}


--[]内为关闭/加强机关id，后面为控制的吹风机id
local operator_list = {

[1020]={1016},
[1021]={1017,1135,1136,1156},
[1023]={1127,1137,1138,1139},
[1024]={1019},
[1184]={1145,1016},


}


local transfer_list = {
        --[region_configid] = point_id,
        [1180] =1080,
        [1181] =1081,
        [1186] =1084,
        [1187] =1086,
}




--[]内为region，后面为控制的pointid,进入region后会会切换到对应的point
local revivepoint_list={
[1087]=1080,
[1088]=1081,
[1089]=1082,
[1090]=1083,
[1091]=1084,
[1092]=1085,
[1093]=1086,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1104, monster_id = 20010301, pos = { x = -376.242, y = 30.854, z = -318.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1105, monster_id = 20010301, pos = { x = -382.389, y = 30.846, z = -318.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1106, monster_id = 20010401, pos = { x = -370.598, y = 31.279, z = -314.709 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1107, monster_id = 20010301, pos = { x = -376.242, y = 30.856, z = -309.574 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1108, monster_id = 20010301, pos = { x = -382.389, y = 30.846, z = -309.574 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70800274, pos = { x = -380.062, y = 9.200, z = -449.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 1002, gadget_id = 70800274, pos = { x = -374.972, y = 9.200, z = -440.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 1003, gadget_id = 70800275, pos = { x = -465.711, y = 15.180, z = -355.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70800275, pos = { x = -392.704, y = 9.200, z = -429.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70800274, pos = { x = -402.703, y = 9.200, z = -429.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70800275, pos = { x = -372.434, y = 9.770, z = -399.744 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70800275, pos = { x = -416.362, y = 16.468, z = -360.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 12 },
	{ config_id = 1010, gadget_id = 70800276, pos = { x = -512.661, y = 21.714, z = -360.415 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1011, gadget_id = 70800274, pos = { x = -422.337, y = 21.219, z = -373.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70800274, pos = { x = -427.330, y = 21.219, z = -373.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70800274, pos = { x = -432.336, y = 21.219, z = -373.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70800274, pos = { x = -439.113, y = 21.437, z = -350.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70800274, pos = { x = -455.740, y = 16.468, z = -355.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70800246, pos = { x = -407.891, y = 10.596, z = -429.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1017, gadget_id = 70800246, pos = { x = -382.133, y = 11.054, z = -377.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1018, gadget_id = 70800246, pos = { x = -443.848, y = 22.652, z = -342.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 1,["SGV_Switch_OnOff"] = 0,}  },
	{ config_id = 1019, gadget_id = 70800246, pos = { x = -508.795, y = 23.022, z = -371.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	{ config_id = 1020, gadget_id = 70800248, pos = { x = -403.487, y = 11.247, z = -431.117 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1021, gadget_id = 70800247, pos = { x = -380.910, y = 12.667, z = -410.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1023, gadget_id = 70800248, pos = { x = -428.688, y = 28.576, z = -345.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1024, gadget_id = 70800248, pos = { x = -504.769, y = 28.736, z = -371.569 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1025, gadget_id = 70800269, pos = { x = -376.965, y = 22.075, z = -423.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1026, gadget_id = 70800269, pos = { x = -407.891, y = 14.748, z = -429.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1027, gadget_id = 70800269, pos = { x = -407.891, y = 17.561, z = -429.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1028, gadget_id = 70800268, pos = { x = -403.777, y = 21.691, z = -425.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70800268, pos = { x = -406.483, y = 22.090, z = -424.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70800268, pos = { x = -389.444, y = 17.687, z = -424.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70800268, pos = { x = -392.628, y = 17.694, z = -424.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70800268, pos = { x = -396.226, y = 17.635, z = -424.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70800268, pos = { x = -401.629, y = 21.302, z = -425.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70800269, pos = { x = -382.264, y = 18.770, z = -377.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1035, gadget_id = 70800269, pos = { x = -382.265, y = 16.360, z = -377.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1036, gadget_id = 70800269, pos = { x = -382.214, y = 20.934, z = -377.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1037, gadget_id = 70800275, pos = { x = -418.929, y = 26.494, z = -320.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70800275, pos = { x = -428.721, y = 26.553, z = -325.176 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70800277, pos = { x = -439.147, y = 22.541, z = -341.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Left_Dir"] = 1, ["SGV_Right_Dir"] = 3} },
	{ config_id = 1040, gadget_id = 70800275, pos = { x = -428.693, y = 26.542, z = -340.087 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70800275, pos = { x = -439.107, y = 21.547, z = -340.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70800274, pos = { x = -444.020, y = 21.399, z = -345.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70800269, pos = { x = -489.579, y = 19.023, z = -330.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1044, gadget_id = 70800269, pos = { x = -494.003, y = 19.023, z = -330.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1045, gadget_id = 70800269, pos = { x = -498.515, y = 19.023, z = -330.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1046, gadget_id = 70800269, pos = { x = -512.689, y = 28.052, z = -352.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1047, gadget_id = 70800269, pos = { x = -512.689, y = 28.052, z = -349.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1048, gadget_id = 70800269, pos = { x = -512.689, y = 28.052, z = -346.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1049, gadget_id = 70800281, pos = { x = -427.829, y = 28.379, z = -341.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70800268, pos = { x = -430.352, y = 28.103, z = -341.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, gadget_id = 70800268, pos = { x = -432.993, y = 29.478, z = -341.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70800268, pos = { x = -446.283, y = 31.198, z = -332.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70800268, pos = { x = -437.594, y = 31.487, z = -338.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70800268, pos = { x = -441.144, y = 31.193, z = -332.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70800268, pos = { x = -447.022, y = 31.489, z = -359.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70800268, pos = { x = -442.239, y = 26.122, z = -369.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70800268, pos = { x = -436.753, y = 31.639, z = -359.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70800268, pos = { x = -442.239, y = 27.836, z = -369.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70800268, pos = { x = -442.239, y = 23.759, z = -369.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1095, gadget_id = 70800269, pos = { x = -407.891, y = 20.309, z = -429.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1096, gadget_id = 70800268, pos = { x = -379.090, y = 21.904, z = -424.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1097, gadget_id = 70800290, pos = { x = -377.062, y = 12.437, z = -415.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1098, gadget_id = 70800269, pos = { x = -379.095, y = 31.796, z = -311.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1099, gadget_id = 70800269, pos = { x = -374.002, y = 31.805, z = -311.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1100, gadget_id = 70800290, pos = { x = -403.086, y = 20.145, z = -357.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1101, gadget_id = 70800269, pos = { x = -374.144, y = 31.793, z = -318.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1102, gadget_id = 70800269, pos = { x = -378.806, y = 31.792, z = -318.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1103, gadget_id = 70800274, pos = { x = -475.473, y = 15.163, z = -355.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1111, gadget_id = 70800276, pos = { x = -512.661, y = 20.722, z = -350.347 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1112, gadget_id = 70800275, pos = { x = -485.425, y = 15.898, z = -355.724 }, rot = { x = 0.000, y = 0.000, z = 355.000 }, level = 1 },
	{ config_id = 1113, gadget_id = 70800281, pos = { x = -407.833, y = 23.500, z = -429.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1114, gadget_id = 70800268, pos = { x = -376.998, y = 21.918, z = -424.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1115, gadget_id = 70800268, pos = { x = -374.943, y = 21.903, z = -424.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1116, gadget_id = 70800274, pos = { x = -495.032, y = 16.665, z = -355.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1118, gadget_id = 70800276, pos = { x = -512.661, y = 19.596, z = -340.357 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1119, gadget_id = 70800290, pos = { x = -395.434, y = 31.120, z = -314.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1120, gadget_id = 70800269, pos = { x = -465.826, y = 17.322, z = -356.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1121, gadget_id = 70800269, pos = { x = -508.824, y = 28.428, z = -371.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1122, gadget_id = 70800269, pos = { x = -473.659, y = 17.454, z = -356.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1123, gadget_id = 70800269, pos = { x = -489.516, y = 28.982, z = -370.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1124, gadget_id = 70800269, pos = { x = -481.419, y = 17.781, z = -355.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1125, gadget_id = 70800269, pos = { x = -489.133, y = 24.147, z = -351.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1126, gadget_id = 70800290, pos = { x = -455.728, y = 18.226, z = -355.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 临时替代
	{ config_id = 1127, gadget_id = 70800246, pos = { x = -442.277, y = 17.885, z = -370.062 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	{ config_id = 1128, gadget_id = 70350355, pos = { x = -512.472, y = 19.136, z = -326.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1129, gadget_id = 70800274, pos = { x = -442.249, y = 16.489, z = -370.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1130, gadget_id = 70800269, pos = { x = -512.558, y = 20.316, z = -333.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1131, gadget_id = 70800269, pos = { x = -410.031, y = 20.617, z = -346.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1132, gadget_id = 70800269, pos = { x = -410.258, y = 24.789, z = -333.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1133, gadget_id = 70800290, pos = { x = -512.456, y = 19.646, z = -328.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1134, gadget_id = 70800269, pos = { x = -399.091, y = 31.487, z = -314.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 临时替代
	{ config_id = 1135, gadget_id = 70800246, pos = { x = -378.796, y = 15.134, z = -396.962 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 1,["SGV_Switch_OnOff"] = 1,} },
	-- 临时替代
	{ config_id = 1136, gadget_id = 70800246, pos = { x = -362.605, y = 11.166, z = -389.699 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	-- 临时替代
	{ config_id = 1137, gadget_id = 70800246, pos = { x = -428.071, y = 17.551, z = -349.980 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	-- 临时替代
	{ config_id = 1138, gadget_id = 70800246, pos = { x = -437.142, y = 22.721, z = -359.228 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	-- 临时替代
	{ config_id = 1139, gadget_id = 70800246, pos = { x = -447.256, y = 22.721, z = -359.228 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	{ config_id = 1140, gadget_id = 70800274, pos = { x = -439.113, y = 21.385, z = -355.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1141, gadget_id = 70800274, pos = { x = -434.216, y = 21.435, z = -345.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1142, gadget_id = 70800269, pos = { x = -419.046, y = 28.632, z = -320.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1145, gadget_id = 70800246, pos = { x = -380.252, y = 10.570, z = -425.478 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	{ config_id = 1146, gadget_id = 70800280, pos = { x = -377.617, y = 13.587, z = -425.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1147, gadget_id = 70800275, pos = { x = -393.000, y = 16.107, z = -424.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1148, gadget_id = 70800276, pos = { x = -405.372, y = 19.260, z = -424.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1149, gadget_id = 70800274, pos = { x = -407.708, y = 9.200, z = -429.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1150, gadget_id = 70800269, pos = { x = -422.739, y = 28.625, z = -320.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1151, gadget_id = 70350327, pos = { x = -375.196, y = 9.835, z = -430.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1152, gadget_id = 70800274, pos = { x = -362.517, y = 9.770, z = -389.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1153, gadget_id = 70800274, pos = { x = -378.917, y = 13.738, z = -397.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1154, gadget_id = 70800274, pos = { x = -373.320, y = 15.048, z = -393.627 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1155, gadget_id = 70800274, pos = { x = -382.390, y = 9.770, z = -401.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 临时替代
	{ config_id = 1156, gadget_id = 70800246, pos = { x = -382.478, y = 11.166, z = -401.775 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_UpDown"] = 0,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 1,} },
	{ config_id = 1158, gadget_id = 70800268, pos = { x = -436.783, y = 27.975, z = -359.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1159, gadget_id = 70800281, pos = { x = -372.456, y = 12.563, z = -408.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1160, gadget_id = 70800268, pos = { x = -372.493, y = 11.363, z = -404.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1161, gadget_id = 70800268, pos = { x = -372.493, y = 11.363, z = -400.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1162, gadget_id = 70800268, pos = { x = -372.493, y = 11.363, z = -397.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1163, gadget_id = 70800268, pos = { x = -372.493, y = 11.363, z = -393.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1164, gadget_id = 70800268, pos = { x = -368.217, y = 11.363, z = -390.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1165, gadget_id = 70800268, pos = { x = -364.425, y = 11.682, z = -389.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1166, gadget_id = 70800268, pos = { x = -362.655, y = 14.756, z = -389.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1167, gadget_id = 70800268, pos = { x = -362.655, y = 16.998, z = -389.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1168, gadget_id = 70800268, pos = { x = -368.160, y = 17.138, z = -390.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1169, gadget_id = 70800268, pos = { x = -370.843, y = 17.138, z = -391.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1170, gadget_id = 70800268, pos = { x = -373.335, y = 17.138, z = -393.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1171, gadget_id = 70800268, pos = { x = -378.711, y = 21.030, z = -397.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1172, gadget_id = 70800268, pos = { x = -378.806, y = 18.744, z = -385.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1173, gadget_id = 70800268, pos = { x = -378.806, y = 20.789, z = -394.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1174, gadget_id = 70800268, pos = { x = -378.806, y = 20.414, z = -391.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1177, gadget_id = 70800268, pos = { x = -378.806, y = 19.772, z = -388.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1178, gadget_id = 70800268, pos = { x = -436.783, y = 29.901, z = -359.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1179, gadget_id = 70800268, pos = { x = -446.036, y = 33.043, z = -343.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1182, gadget_id = 70800268, pos = { x = -447.022, y = 28.667, z = -359.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1183, gadget_id = 70800268, pos = { x = -447.022, y = 26.198, z = -359.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1184, gadget_id = 70800247, pos = { x = -371.937, y = 11.283, z = -432.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 1185, gadget_id = 70800269, pos = { x = -427.517, y = 28.655, z = -320.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 1197, gadget_id = 70800274, pos = { x = -369.227, y = 15.048, z = -390.764 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, server_global_value_config = {["SGV_Switch_StrongWind"] = 0,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 0,["SGV_Switch_OnOff"] = 0,} },
	{ config_id = 1198, gadget_id = 70800268, pos = { x = -438.591, y = 31.193, z = -335.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1199, gadget_id = 70800268, pos = { x = -446.361, y = 32.391, z = -337.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1200, gadget_id = 70800268, pos = { x = -437.163, y = 31.717, z = -340.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1201, gadget_id = 70800274, pos = { x = -377.351, y = 9.770, z = -401.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1202, gadget_id = 70800274, pos = { x = -367.510, y = 9.770, z = -389.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1203, gadget_id = 70800274, pos = { x = -372.500, y = 9.770, z = -389.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1087, shape = RegionShape.CUBIC, size = { x = 80.000, y = 40.000, z = 50.000 }, pos = { x = -386.900, y = 10.784, z = -467.299 } },
	{ config_id = 1088, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 10.000 }, pos = { x = -373.833, y = 10.763, z = -410.269 } },
	{ config_id = 1089, shape = RegionShape.CUBIC, size = { x = 5.000, y = 30.000, z = 10.000 }, pos = { x = -382.408, y = 11.023, z = -380.058 } },
	{ config_id = 1090, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 20.000 }, pos = { x = -380.346, y = 12.718, z = -359.100 } },
	{ config_id = 1091, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 10.000 }, pos = { x = -408.028, y = 19.608, z = -357.967 } },
	{ config_id = 1092, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -494.507, y = 18.117, z = -351.003 } },
	{ config_id = 1093, shape = RegionShape.CUBIC, size = { x = 15.000, y = 20.000, z = 15.000 }, pos = { x = -511.913, y = 23.015, z = -370.102 } },
	{ config_id = 1094, shape = RegionShape.SPHERE, radius = 5, pos = { x = -512.305, y = 19.168, z = -326.121 } },
	-- 房间招怪
	{ config_id = 1109, shape = RegionShape.CUBIC, size = { x = 15.000, y = 30.000, z = 15.000 }, pos = { x = -400.629, y = 30.858, z = -314.935 } },
	-- 注视
	{ config_id = 1143, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 10.000 }, pos = { x = -390.557, y = 14.552, z = -457.042 } },
	-- 注视
	{ config_id = 1144, shape = RegionShape.SPHERE, radius = 6, pos = { x = -411.023, y = 19.607, z = -357.563 } },
	-- 黄点1
	{ config_id = 1157, shape = RegionShape.CUBIC, size = { x = 7.000, y = 15.000, z = 4.000 }, pos = { x = -377.144, y = 12.032, z = -415.518 } },
	-- 复活区域
	{ config_id = 1180, shape = RegionShape.CUBIC, size = { x = 140.000, y = 40.000, z = 100.000 }, pos = { x = -382.408, y = -12.500, z = -465.144 } },
	-- 复活区域
	{ config_id = 1181, shape = RegionShape.CUBIC, size = { x = 68.000, y = 40.000, z = 110.000 }, pos = { x = -364.071, y = -13.471, z = -360.289 } },
	-- 复活区域
	{ config_id = 1186, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = -450.359, y = -26.227, z = -345.117 } },
	-- 复活区域
	{ config_id = 1187, shape = RegionShape.CUBIC, size = { x = 40.000, y = 40.000, z = 40.000 }, pos = { x = -520.553, y = -5.000, z = -350.959 } },
	-- 教程——开关
	{ config_id = 1188, shape = RegionShape.SPHERE, radius = 5, pos = { x = -371.887, y = 10.740, z = -432.737 } },
	-- 教程——加强
	{ config_id = 1189, shape = RegionShape.SPHERE, radius = 5, pos = { x = -401.337, y = 10.740, z = -429.880 } },
	-- 教程——浮力
	{ config_id = 1190, shape = RegionShape.SPHERE, radius = 5, pos = { x = -379.813, y = 10.740, z = -426.587 } },
	-- 教程——倾斜
	{ config_id = 1191, shape = RegionShape.SPHERE, radius = 5, pos = { x = -429.322, y = 28.026, z = -343.198 } },
	-- 黄点1
	{ config_id = 1192, shape = RegionShape.CUBIC, size = { x = 4.000, y = 15.000, z = 7.000 }, pos = { x = -402.986, y = 19.733, z = -358.137 } },
	-- 黄点1
	{ config_id = 1193, shape = RegionShape.CUBIC, size = { x = 15.000, y = 20.000, z = 10.000 }, pos = { x = -461.902, y = 17.817, z = -356.085 } },
	-- 黄点1
	{ config_id = 1194, shape = RegionShape.SPHERE, radius = 4, pos = { x = -512.471, y = 19.674, z = -328.635 } },
	-- 黄点1
	{ config_id = 1195, shape = RegionShape.CUBIC, size = { x = 4.000, y = 15.000, z = 7.000 }, pos = { x = -395.371, y = 30.722, z = -314.666 } },
	{ config_id = 1196, shape = RegionShape.SPHERE, radius = 150, pos = { x = -411.337, y = 17.794, z = -383.067 } }
}

-- 触发器
triggers = {
	{ config_id = 1001094, name = "ENTER_REGION_1094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	-- 房间招怪
	{ config_id = 1001109, name = "ENTER_REGION_1109", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1109", action = "action_EVENT_ENTER_REGION_1109", forbid_guest = false },
	{ config_id = 1001110, name = "ANY_MONSTER_DIE_1110", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1110", action = "action_EVENT_ANY_MONSTER_DIE_1110" },
	-- 注视
	{ config_id = 1001143, name = "ENTER_REGION_1143", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1143", action = "action_EVENT_ENTER_REGION_1143" },
	-- 注视
	{ config_id = 1001144, name = "ENTER_REGION_1144", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1144", action = "action_EVENT_ENTER_REGION_1144" },
	-- 黄点1
	{ config_id = 1001157, name = "ENTER_REGION_1157", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1157", action = "action_EVENT_ENTER_REGION_1157", forbid_guest = false },
	-- 教程——开关
	{ config_id = 1001188, name = "ENTER_REGION_1188", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1188", action = "action_EVENT_ENTER_REGION_1188" },
	-- 教程——加强
	{ config_id = 1001189, name = "ENTER_REGION_1189", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1189", action = "action_EVENT_ENTER_REGION_1189" },
	-- 教程——浮力
	{ config_id = 1001190, name = "ENTER_REGION_1190", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1190", action = "action_EVENT_ENTER_REGION_1190" },
	-- 教程——倾斜
	{ config_id = 1001191, name = "ENTER_REGION_1191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1191", action = "action_EVENT_ENTER_REGION_1191" },
	-- 黄点1
	{ config_id = 1001192, name = "ENTER_REGION_1192", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1192", action = "action_EVENT_ENTER_REGION_1192", forbid_guest = false },
	-- 黄点1
	{ config_id = 1001193, name = "ENTER_REGION_1193", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1193", action = "action_EVENT_ENTER_REGION_1193", forbid_guest = false },
	-- 黄点1
	{ config_id = 1001194, name = "ENTER_REGION_1194", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1194", action = "action_EVENT_ENTER_REGION_1194", forbid_guest = false },
	-- 黄点1
	{ config_id = 1001195, name = "ENTER_REGION_1195", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1195", action = "action_EVENT_ENTER_REGION_1195", forbid_guest = false },
	{ config_id = 1001196, name = "ENTER_REGION_1196", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 1080, pos = { x = -379.454, y = 10.784, z = -455.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1081, pos = { x = -377.795, y = 11.967, z = -410.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1082, pos = { x = -382.408, y = 11.023, z = -380.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1083, pos = { x = -380.346, y = 12.718, z = -359.100 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1084, pos = { x = -410.523, y = 19.608, z = -357.967 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1085, pos = { x = -494.507, y = 18.117, z = -351.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1086, pos = { x = -511.699, y = 23.015, z = -370.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1007, gadget_id = 70800274, pos = { x = -373.696, y = 15.000, z = -377.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7 },
		{ config_id = 1008, gadget_id = 70800274, pos = { x = -368.807, y = 15.000, z = -372.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8 },
		{ config_id = 1022, gadget_id = 70800247, pos = { x = -412.787, y = 20.290, z = -349.170 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
		{ config_id = 1060, gadget_id = 70800282, pos = { x = -348.790, y = 11.010, z = -397.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1061, gadget_id = 70800282, pos = { x = -343.790, y = 11.010, z = -397.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1062, gadget_id = 70800282, pos = { x = -338.790, y = 11.010, z = -397.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1063, gadget_id = 70800282, pos = { x = -333.790, y = 11.010, z = -397.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1064, gadget_id = 70800282, pos = { x = -348.790, y = 11.010, z = -389.195 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1065, gadget_id = 70800282, pos = { x = -343.790, y = 11.010, z = -389.195 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1066, gadget_id = 70800282, pos = { x = -338.790, y = 11.010, z = -389.195 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1067, gadget_id = 70800282, pos = { x = -333.790, y = 11.010, z = -389.195 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1068, gadget_id = 70800282, pos = { x = -423.161, y = 17.500, z = -403.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1069, gadget_id = 70800282, pos = { x = -423.161, y = 17.500, z = -406.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1070, gadget_id = 70800282, pos = { x = -423.161, y = 17.500, z = -409.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1071, gadget_id = 70800282, pos = { x = -428.083, y = 17.500, z = -413.471 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1072, gadget_id = 70800282, pos = { x = -428.083, y = 17.500, z = -416.471 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1073, gadget_id = 70800282, pos = { x = -428.083, y = 17.500, z = -419.471 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1074, gadget_id = 70800282, pos = { x = -446.394, y = 17.500, z = -395.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1075, gadget_id = 70800282, pos = { x = -446.394, y = 17.500, z = -400.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1076, gadget_id = 70800282, pos = { x = -446.394, y = 17.500, z = -405.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1077, gadget_id = 70800282, pos = { x = -451.640, y = 17.500, z = -407.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1078, gadget_id = 70800282, pos = { x = -451.640, y = 17.500, z = -412.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1079, gadget_id = 70800282, pos = { x = -451.640, y = 17.500, z = -417.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1117, gadget_id = 70800282, pos = { x = -467.781, y = 17.419, z = -355.985 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1175, gadget_id = 70800246, pos = { x = -378.796, y = 21.000, z = -402.005 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_StrongWind"] = 1,["SGV_Switch_UpDown"] = 1,["SGV_Switch_Dir"] = 1,["SGV_Switch_OnOff"] = 1,} },
		{ config_id = 1176, gadget_id = 70800274, pos = { x = -378.917, y = 19.846, z = -402.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
}

-- 视野组
sight_groups = {
	{ 1145, 1146 },
	{ 1018, 1039 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1023, 1024, 1025, 1026, 1027, 1034, 1035, 1036, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1095, 1097, 1103, 1111, 1112, 1113, 1116, 1118, 1120, 1121, 1122, 1123, 1124, 1125, 1127, 1128, 1129, 1130, 1131, 1132, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1145, 1146, 1147, 1148, 1149, 1151, 1152, 1153, 1154, 1155, 1156, 1159, 1184, 1197, 1201, 1202, 1203 },
		regions = { 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1109, 1143, 1144, 1157, 1180, 1181, 1186, 1187, 1188, 1189, 1190, 1191, 1196 },
		triggers = { "ENTER_REGION_1094", "ENTER_REGION_1109", "ENTER_REGION_1143", "ENTER_REGION_1144", "ENTER_REGION_1157", "ENTER_REGION_1188", "ENTER_REGION_1189", "ENTER_REGION_1190", "ENTER_REGION_1191", "ENTER_REGION_1196" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1158, 1178, 1179, 1182, 1183, 1198, 1199, 1200 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1037, 1038, 1098, 1099, 1101, 1102, 1142, 1150, 1185 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1104, 1105, 1106, 1107, 1108 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1110" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1028, 1029, 1030, 1031, 1032, 1033, 1096, 1114, 1115 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1177 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 黄点1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 黄点2,
		monsters = { },
		gadgets = { 1100 },
		regions = { 1192 },
		triggers = { "ENTER_REGION_1192" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 黄点3,
		monsters = { },
		gadgets = { 1126 },
		regions = { 1193 },
		triggers = { "ENTER_REGION_1193" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 黄点4,
		monsters = { },
		gadgets = { 1133 },
		regions = { 1194 },
		triggers = { "ENTER_REGION_1194" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 黄点2.5,
		monsters = { },
		gadgets = { 1119 },
		regions = { 1195 },
		triggers = { "ENTER_REGION_1195" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1109(context, evt)
	if evt.param1 ~= 1109 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1109(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1110(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 247023001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1110(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 3)
	
	-- 调用提示id为 470210105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 470210105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
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
	-- 触发镜头注目，注目位置为坐标（-402.7935，23.5，-429.9759），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-402.7935, y=23.5, z=-429.9759}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
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
	-- 触发镜头注目，注目位置为坐标（-428，28，-342.5），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-428, y=28, z=-342.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1157(context, evt)
	if evt.param1 ~= 1157 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1157(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 8)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247023001, EntityType.GADGET, 1097 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1188(context, evt)
	if evt.param1 ~= 1188 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1188(context, evt)
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
function condition_EVENT_ENTER_REGION_1189(context, evt)
	if evt.param1 ~= 1189 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1189(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 210, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1190(context, evt)
	if evt.param1 ~= 1190 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1190(context, evt)
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
function condition_EVENT_ENTER_REGION_1191(context, evt)
	if evt.param1 ~= 1191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1191(context, evt)
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
function condition_EVENT_ENTER_REGION_1192(context, evt)
	if evt.param1 ~= 1192 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1192(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 11)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247023001, EntityType.GADGET, 1100 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1193(context, evt)
	if evt.param1 ~= 1193 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1193(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 10)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247023001, EntityType.GADGET, 1126 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1194(context, evt)
	if evt.param1 ~= 1194 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1194(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247023001, EntityType.GADGET, 1133 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1195(context, evt)
	if evt.param1 ~= 1195 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1195(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247023001, 9)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247023001, EntityType.GADGET, 1119 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_1/Activity_WindMaze"
require "V3_1/Activity_WindMaze_Normal"