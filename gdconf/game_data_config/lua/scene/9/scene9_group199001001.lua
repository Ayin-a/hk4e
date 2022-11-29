-- 基础信息
local base_info = {
	group_id = 199001001
}

-- Trigger变量
local defs = {
	starter_worktop_id = 1032,
	pointarray_route = 900100002,
	final_stage = 9,
	route_num = 40,
	gallery_id = 21100,
	optimize_region = 1038,
	prepare_group_id = 199001002
}

-- DEFS_MISCS
--物件池物件gadgetid
local pool_object_gadget_id =
{
    70380225,70380226
}

monster_drop_num = 
{1,1}

local monster_suite_chain =
{
    [3] = {8},
    [5] = {6},
    [9] = {10},
    [12] = {13}
}

local elite_drop = 
{
    [1098] = {2,2},
    [1101] = {2,2},
    [1022] = {2,2},
    [1018] = {2,2},
    [1020] = {2,2},
    [1109] = {2,2},
    [1046] = {2,2},
    [1047] = {2,2},
    [1075] = {2,2},
    [1141] = {2,2},
    [1089] = {2,2},
    [1090] = {2,2},
    [1201] = {2,2},
    [1202] = {2,2},
    [1210] = {2,2},
    [1211] = {3,3},
}


local point_id_array = 
{
       from = 1,
       to = 40,
       except = {37}
}

local fuel = {
        --初始燃料数量
        init_fuel = 100,
        --给发动机补充能量时，每秒消耗的燃料数量
        fuel_consume_by_tick = 5,
        --燃料球加的燃料数
        fuel_ball = 20,
}

local energy = {
        --初始发动机能量
        init_energy = 100,
        --发动机最大能量
        max_energy = 100,
        --运行时每秒消耗的能量
        energy_consume_by_tick = 1,
        --受到攻击时，消耗的能量
        energy_consume_by_hit = 5,
        --给发动机补充能量时，每秒增加的能量
        energy_heal_by_tick = 5,
        energy_consume_by_cloud_net_hit = 2
}


local part = {
        --初始零件数
        init_part = 100,
        --修补分块时，每秒消耗的零件数
        part_consume_by_tick = 2,
        --修补分块时，分块每秒恢复的生命百分比
        hp_recover_by_tick = 2,
        --零件球加的零件数
        part_ball = 10
}


local score = {
    checkpoint = 20,
    monster = 5,
}

local raft = 
{
    engine = 1001,
    part_1 = 1024,
    part_2 = 1025,
    part_3 = 1026,
    part_4 = 1031
}

local checkpoint = 
{12,20,30,39,40}

local stage = 
{
    [1] = {monster_suites = {2},start_suites = {2}, tag = "Sailing",obstacle = {1099},revive_point = 1233},
    [2] = {monster_suites = {3},start_suites = {3}, tag = "KillMonster", obstacle = {1099},revive_point = 1234},
    [3] = {monster_suites = {4},start_suites = {4}, tag = "Sailing",obstacle = {1017},revive_point = 1235},
    [4] = {monster_suites = {5},start_suites = {5}, tag = "KillMonster", obstacle = {1017},revive_point = 1236},
    [5] = {monster_suites = {7},start_suites = {7}, tag = "Sailing",obstacle = {1135},revive_point = 1237},
    [6] = {monster_suites = {9},start_suites = {9}, tag = "KillMonster", obstacle = {1135},revive_point = 1238},
    [7] = {monster_suites = {11},start_suites = {11}, tag = "Sailing",obstacle = {1084},revive_point = 1239},
    [8] = {monster_suites = {12},start_suites = {12}, tag = "KillMonster", obstacle = {1084},revive_point = 1240},
    [9] = {monster_suites = {14},start_suites = {14}, tag = "Sailing",revive_point = 1241},

}

CloudNets = {
    { net_1 = 1004, pillar_1  = 1005, pillar_2 = 1006},
    { net_1 = 1030, pillar_1  = 1033, pillar_2 = 1036},
    { net_1 = 1037, pillar_1  = 1039, pillar_2 = 1043},
    { net_1 = 1080, pillar_1  = 1081, pillar_2 = 1082},
    { net_1 = 1174, pillar_1  = 1175, pillar_2 = 1176}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1010, monster_id = 21010401, pos = { x = 701.353, y = 155.653, z = 277.524 }, rot = { x = 0.000, y = 335.244, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1012, monster_id = 21011001, pos = { x = 657.632, y = 130.359, z = 311.497 }, rot = { x = 0.000, y = 250.472, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1018, monster_id = 21010901, pos = { x = 722.199, y = 171.232, z = 279.680 }, rot = { x = 0.000, y = 2.494, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1020, monster_id = 21010901, pos = { x = 749.077, y = 171.306, z = 281.252 }, rot = { x = 0.000, y = 259.622, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1021, monster_id = 21010301, pos = { x = 719.642, y = 171.375, z = 284.064 }, rot = { x = 0.000, y = 2.494, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1022, monster_id = 21011001, pos = { x = 714.281, y = 162.792, z = 284.257 }, rot = { x = 0.000, y = 302.021, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1028, monster_id = 21010201, pos = { x = 698.716, y = 155.668, z = 274.825 }, rot = { x = 0.000, y = 297.518, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1046, monster_id = 21010501, pos = { x = 758.054, y = 189.241, z = 267.265 }, rot = { x = 0.000, y = 285.615, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1047, monster_id = 21010501, pos = { x = 751.247, y = 188.767, z = 241.028 }, rot = { x = 0.000, y = 285.615, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1055, monster_id = 21010101, pos = { x = 700.945, y = 155.532, z = 279.056 }, rot = { x = 0.000, y = 208.115, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1072, monster_id = 21010501, pos = { x = 779.008, y = 186.890, z = 264.927 }, rot = { x = 0.000, y = 293.563, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1073, monster_id = 21010501, pos = { x = 781.958, y = 186.890, z = 262.437 }, rot = { x = 0.000, y = 293.563, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1074, monster_id = 21010501, pos = { x = 783.087, y = 186.890, z = 266.783 }, rot = { x = 0.000, y = 293.563, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1075, monster_id = 21010401, pos = { x = 783.884, y = 186.890, z = 231.469 }, rot = { x = 0.000, y = 264.936, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1076, monster_id = 21010201, pos = { x = 780.683, y = 186.643, z = 234.186 }, rot = { x = 0.000, y = 290.820, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1089, monster_id = 21010901, pos = { x = 812.761, y = 193.702, z = 227.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1090, monster_id = 21010901, pos = { x = 812.850, y = 193.718, z = 255.681 }, rot = { x = 0.000, y = 169.113, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1098, monster_id = 21011302, pos = { x = 670.444, y = 142.428, z = 277.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1101, monster_id = 21010901, pos = { x = 700.651, y = 155.644, z = 272.863 }, rot = { x = 0.000, y = 301.126, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1102, monster_id = 21010201, pos = { x = 695.987, y = 155.744, z = 278.533 }, rot = { x = 0.000, y = 322.173, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1107, monster_id = 21010301, pos = { x = 746.168, y = 171.346, z = 283.451 }, rot = { x = 0.000, y = 266.210, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1109, monster_id = 21010201, pos = { x = 747.350, y = 171.276, z = 281.146 }, rot = { x = 0.000, y = 320.744, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1111, monster_id = 21010101, pos = { x = 722.054, y = 171.261, z = 281.961 }, rot = { x = 0.000, y = 24.281, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1134, monster_id = 21010201, pos = { x = 780.690, y = 186.684, z = 230.027 }, rot = { x = 0.000, y = 292.484, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1141, monster_id = 21010701, pos = { x = 784.844, y = 186.851, z = 264.283 }, rot = { x = 0.000, y = 249.225, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1142, monster_id = 21010301, pos = { x = 782.049, y = 186.853, z = 262.838 }, rot = { x = 0.000, y = 225.462, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1143, monster_id = 21010101, pos = { x = 782.520, y = 186.872, z = 231.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1144, monster_id = 21010101, pos = { x = 779.898, y = 186.980, z = 230.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1201, monster_id = 21011001, pos = { x = 835.761, y = 200.192, z = 222.325 }, rot = { x = 0.000, y = 315.263, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1202, monster_id = 21011001, pos = { x = 838.734, y = 199.806, z = 258.550 }, rot = { x = 0.000, y = 239.114, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1203, monster_id = 21010201, pos = { x = 831.875, y = 199.899, z = 255.418 }, rot = { x = 0.000, y = 206.145, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1204, monster_id = 21010201, pos = { x = 835.798, y = 199.982, z = 251.395 }, rot = { x = 0.000, y = 206.145, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1205, monster_id = 21010201, pos = { x = 832.884, y = 200.033, z = 228.998 }, rot = { x = 0.000, y = 315.263, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1206, monster_id = 21010201, pos = { x = 829.544, y = 199.685, z = 225.791 }, rot = { x = 0.000, y = 315.263, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1210, monster_id = 21011301, pos = { x = 834.578, y = 199.897, z = 256.834 }, rot = { x = 0.000, y = 296.707, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1211, monster_id = 21011301, pos = { x = 831.217, y = 200.152, z = 223.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 1251, monster_id = 21010401, pos = { x = 729.814, y = 179.440, z = 244.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70380224, pos = { x = 633.183, y = 122.508, z = 313.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 402 },
	{ config_id = 1002, gadget_id = 70380311, pos = { x = 670.094, y = 141.573, z = 278.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- fighting 1
	{ config_id = 1003, gadget_id = 70380312, pos = { x = 698.381, y = 154.795, z = 275.615 }, rot = { x = 0.000, y = 0.000, z = 0.041 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1004, gadget_id = 70380308, pos = { x = 673.755, y = 144.161, z = 290.544 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1005, gadget_id = 70380307, pos = { x = 674.137, y = 143.989, z = 300.889 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1006, gadget_id = 70380307, pos = { x = 673.472, y = 143.884, z = 279.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1007, gadget_id = 70690010, pos = { x = 766.204, y = 143.123, z = 226.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1008, gadget_id = 70360360, pos = { x = 853.744, y = 199.356, z = 239.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1009, gadget_id = 70710126, pos = { x = 853.497, y = 199.309, z = 238.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1011, gadget_id = 70380311, pos = { x = 657.459, y = 129.438, z = 312.027 }, rot = { x = 0.023, y = 0.000, z = 1.041 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1013, gadget_id = 70380240, pos = { x = 853.468, y = 204.897, z = 238.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1014, gadget_id = 70380311, pos = { x = 714.002, y = 161.888, z = 284.037 }, rot = { x = 0.161, y = 0.000, z = 0.016 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- fighting 2
	{ config_id = 1015, gadget_id = 70380312, pos = { x = 720.372, y = 171.735, z = 268.388 }, rot = { x = 0.000, y = 92.215, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- fighting 2
	{ config_id = 1016, gadget_id = 70380312, pos = { x = 748.991, y = 171.735, z = 268.942 }, rot = { x = 0.000, y = 87.366, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- fighting 2
	{ config_id = 1017, gadget_id = 70380310, pos = { x = 734.590, y = 172.588, z = 278.649 }, rot = { x = 0.000, y = 359.512, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1019, gadget_id = 70360360, pos = { x = 673.238, y = 142.298, z = 300.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1023, gadget_id = 70690029, pos = { x = 814.657, y = 193.755, z = 253.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1024, gadget_id = 70380220, pos = { x = 636.653, y = 120.250, z = 317.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1025, gadget_id = 70380221, pos = { x = 636.796, y = 120.250, z = 310.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1026, gadget_id = 70380222, pos = { x = 629.560, y = 120.250, z = 317.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1027, gadget_id = 70360360, pos = { x = 723.140, y = 172.750, z = 256.895 }, rot = { x = 0.000, y = 36.118, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402, is_enable_interact = false },
	{ config_id = 1029, gadget_id = 70360360, pos = { x = 720.797, y = 175.943, z = 248.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402, is_enable_interact = false },
	{ config_id = 1030, gadget_id = 70380240, pos = { x = 704.229, y = 156.704, z = 299.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1031, gadget_id = 70380223, pos = { x = 629.605, y = 120.250, z = 310.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1032, gadget_id = 70350083, pos = { x = 633.174, y = 120.250, z = 316.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1033, gadget_id = 70380240, pos = { x = 718.705, y = 173.909, z = 264.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1034, gadget_id = 70690008, pos = { x = 783.319, y = 186.873, z = 233.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1035, gadget_id = 70690010, pos = { x = 815.645, y = 156.248, z = 209.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402, is_enable_interact = false },
	{ config_id = 1036, gadget_id = 70380240, pos = { x = 719.111, y = 173.865, z = 267.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1037, gadget_id = 70380308, pos = { x = 802.315, y = 196.386, z = 240.509 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1039, gadget_id = 70380307, pos = { x = 802.687, y = 195.295, z = 251.839 }, rot = { x = 0.000, y = 174.801, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1041, gadget_id = 70380323, pos = { x = 633.022, y = 122.645, z = 313.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1042, gadget_id = 70690008, pos = { x = 714.231, y = 162.780, z = 283.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1043, gadget_id = 70380307, pos = { x = 801.858, y = 195.240, z = 229.214 }, rot = { x = 0.000, y = 354.801, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1044, gadget_id = 70380311, pos = { x = 803.668, y = 192.869, z = 228.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402, is_enable_interact = false },
	{ config_id = 1045, gadget_id = 70380311, pos = { x = 803.949, y = 192.869, z = 253.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1048, gadget_id = 70380240, pos = { x = 669.690, y = 144.406, z = 274.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1049, gadget_id = 70380240, pos = { x = 670.286, y = 144.406, z = 278.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	-- fighting 1
	{ config_id = 1050, gadget_id = 70380240, pos = { x = 695.548, y = 157.029, z = 276.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	-- fighting 1
	{ config_id = 1051, gadget_id = 70380240, pos = { x = 701.192, y = 157.128, z = 277.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1052, gadget_id = 70380240, pos = { x = 715.672, y = 164.727, z = 282.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1053, gadget_id = 70380240, pos = { x = 712.280, y = 164.716, z = 285.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1054, gadget_id = 70380240, pos = { x = 801.718, y = 195.380, z = 254.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1056, gadget_id = 70690008, pos = { x = 729.577, y = 179.431, z = 244.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1057, gadget_id = 70380240, pos = { x = 805.124, y = 195.508, z = 254.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1058, gadget_id = 70380240, pos = { x = 812.358, y = 195.428, z = 254.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1059, gadget_id = 70380240, pos = { x = 815.877, y = 195.491, z = 254.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1060, gadget_id = 70380240, pos = { x = 801.769, y = 195.417, z = 226.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1061, gadget_id = 70380240, pos = { x = 758.880, y = 191.477, z = 270.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1062, gadget_id = 70380240, pos = { x = 760.033, y = 192.188, z = 274.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1063, gadget_id = 70380240, pos = { x = 749.108, y = 191.484, z = 234.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1064, gadget_id = 70380240, pos = { x = 805.471, y = 195.518, z = 225.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1065, gadget_id = 70380240, pos = { x = 812.377, y = 195.409, z = 225.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1066, gadget_id = 70380240, pos = { x = 720.345, y = 177.311, z = 248.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1067, gadget_id = 70380240, pos = { x = 750.105, y = 190.558, z = 239.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	-- fighting 3
	{ config_id = 1068, gadget_id = 70380312, pos = { x = 784.123, y = 185.984, z = 262.475 }, rot = { x = 0.000, y = 359.176, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- fighting 3
	{ config_id = 1069, gadget_id = 70380312, pos = { x = 782.709, y = 185.984, z = 234.191 }, rot = { x = 0.000, y = 2.478, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1070, gadget_id = 70380240, pos = { x = 816.119, y = 195.495, z = 225.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1071, gadget_id = 70690029, pos = { x = 814.657, y = 193.755, z = 227.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1077, gadget_id = 70690010, pos = { x = 815.645, y = 120.000, z = 209.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402, is_enable_interact = false },
	{ config_id = 1078, gadget_id = 70380311, pos = { x = 722.218, y = 170.380, z = 281.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1079, gadget_id = 70380311, pos = { x = 747.038, y = 170.387, z = 282.045 }, rot = { x = 0.161, y = 0.000, z = 0.016 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1080, gadget_id = 70380308, pos = { x = 734.733, y = 175.046, z = 263.306 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1081, gadget_id = 70380307, pos = { x = 746.115, y = 173.955, z = 263.440 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1082, gadget_id = 70380307, pos = { x = 723.475, y = 173.900, z = 263.272 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1083, gadget_id = 70380240, pos = { x = 718.952, y = 173.963, z = 271.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	-- fighting 4
	{ config_id = 1084, gadget_id = 70380310, pos = { x = 839.192, y = 201.355, z = 239.253 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 402, is_enable_interact = false },
	{ config_id = 1085, gadget_id = 70380311, pos = { x = 813.884, y = 192.869, z = 228.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402, is_enable_interact = false },
	{ config_id = 1086, gadget_id = 70380311, pos = { x = 814.166, y = 192.869, z = 253.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1087, gadget_id = 70380240, pos = { x = 749.352, y = 173.919, z = 265.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1088, gadget_id = 70380240, pos = { x = 749.209, y = 174.010, z = 272.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1091, gadget_id = 70690010, pos = { x = 711.550, y = 120.000, z = 240.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1092, gadget_id = 70690010, pos = { x = 711.550, y = 136.732, z = 240.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1093, gadget_id = 70380240, pos = { x = 723.464, y = 173.849, z = 256.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	-- fighting 1
	{ config_id = 1099, gadget_id = 70380310, pos = { x = 704.720, y = 157.014, z = 288.605 }, rot = { x = 0.000, y = 273.386, z = 0.000 }, level = 36, area_id = 402 },
	-- fighting 1
	{ config_id = 1100, gadget_id = 70380240, pos = { x = 698.206, y = 157.029, z = 272.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1103, gadget_id = 70360360, pos = { x = 705.042, y = 155.266, z = 299.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1104, gadget_id = 70380240, pos = { x = 749.075, y = 173.909, z = 269.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1105, gadget_id = 70380240, pos = { x = 732.305, y = 180.870, z = 241.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1106, gadget_id = 70380240, pos = { x = 728.931, y = 180.840, z = 245.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1108, gadget_id = 70380240, pos = { x = 751.565, y = 190.371, z = 244.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1110, gadget_id = 70380240, pos = { x = 758.098, y = 190.371, z = 266.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 1112, gadget_id = 70380240, pos = { x = 720.259, y = 172.482, z = 280.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1113, gadget_id = 70380240, pos = { x = 723.347, y = 172.569, z = 283.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1114, gadget_id = 70380240, pos = { x = 745.901, y = 172.583, z = 283.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1115, gadget_id = 70380240, pos = { x = 748.368, y = 172.722, z = 281.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1116, gadget_id = 70380240, pos = { x = 672.791, y = 143.926, z = 301.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1121, gadget_id = 70690010, pos = { x = 766.204, y = 122.607, z = 226.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1124, gadget_id = 70690029, pos = { x = 748.819, y = 172.614, z = 269.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1126, gadget_id = 70360360, pos = { x = 710.906, y = 158.948, z = 277.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1131, gadget_id = 70380240, pos = { x = 710.041, y = 161.203, z = 277.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1132, gadget_id = 70690010, pos = { x = 749.307, y = 131.258, z = 297.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	-- fighting 3
	{ config_id = 1135, gadget_id = 70380310, pos = { x = 788.325, y = 188.201, z = 248.757 }, rot = { x = 0.000, y = 273.425, z = 0.000 }, level = 36, area_id = 402, is_enable_interact = false },
	{ config_id = 1136, gadget_id = 70690013, pos = { x = 684.107, y = 125.426, z = 260.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1137, gadget_id = 70360360, pos = { x = 770.190, y = 185.046, z = 261.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1140, gadget_id = 70380240, pos = { x = 770.151, y = 186.661, z = 261.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1155, gadget_id = 70690008, pos = { x = 783.319, y = 186.850, z = 262.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 1174, gadget_id = 70380308, pos = { x = 817.374, y = 196.386, z = 240.509 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1175, gadget_id = 70380307, pos = { x = 817.746, y = 195.295, z = 251.839 }, rot = { x = 0.000, y = 174.801, z = 0.000 }, level = 36, area_id = 402 },
	{ config_id = 1176, gadget_id = 70380307, pos = { x = 816.917, y = 195.240, z = 229.214 }, rot = { x = 0.000, y = 354.801, z = 0.000 }, level = 36, area_id = 402 },
	-- fighting 4
	{ config_id = 1190, gadget_id = 70380312, pos = { x = 834.241, y = 199.215, z = 225.006 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402, is_enable_interact = false },
	-- fighting 4
	{ config_id = 1193, gadget_id = 70380312, pos = { x = 835.168, y = 198.990, z = 254.202 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1244, gadget_id = 70380311, pos = { x = 730.131, y = 178.560, z = 244.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 1249, gadget_id = 70690011, pos = { x = 669.527, y = 120.515, z = 312.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 1038, shape = RegionShape.POLYGON, pos = { x = 732.514, y = 174.389, z = 228.772 }, height = 151.222, point_array = { { x = 595.762, y = 443.406 }, { x = 472.940, y = 344.849 }, { x = 514.952, y = 255.055 }, { x = 639.758, y = 23.077 }, { x = 777.325, y = 9.896 }, { x = 992.089, y = 56.140 }, { x = 987.906, y = 350.611 }, { x = 790.251, y = 447.647 } }, area_id = 402 },
	{ config_id = 1040, shape = RegionShape.POLYGON, pos = { x = 739.968, y = 175.000, z = 243.898 }, height = 150.000, point_array = { { x = 677.058, y = 366.544 }, { x = 602.416, y = 324.536 }, { x = 627.338, y = 278.448 }, { x = 762.936, y = 184.917 }, { x = 805.743, y = 121.252 }, { x = 877.521, y = 181.726 }, { x = 850.365, y = 272.461 }, { x = 723.407, y = 342.916 } }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1001194, name = "GADGET_CREATE_1194", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1194", action = "action_EVENT_GADGET_CREATE_1194" }
}

-- 点位
points = {
	{ config_id = 1094, pos = { x = 633.644, y = 122.156, z = 311.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1095, pos = { x = 632.508, y = 122.191, z = 311.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1096, pos = { x = 631.909, y = 122.263, z = 311.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1097, pos = { x = 634.918, y = 122.325, z = 311.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1233, pos = { x = 669.248, y = 144.410, z = 275.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1234, pos = { x = 698.742, y = 157.655, z = 275.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1235, pos = { x = 713.925, y = 164.736, z = 284.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1236, pos = { x = 720.475, y = 173.316, z = 281.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1237, pos = { x = 750.666, y = 174.563, z = 269.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1238, pos = { x = 781.021, y = 188.813, z = 231.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1239, pos = { x = 785.817, y = 188.965, z = 261.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1240, pos = { x = 831.476, y = 202.136, z = 223.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 1241, pos = { x = 834.591, y = 201.855, z = 254.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 }
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
		gadgets = { },
		regions = { 1038, 1040 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = sailing1,
		monsters = { 1012, 1098 },
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1011, 1019, 1030, 1048, 1049, 1050, 1051, 1099, 1100, 1103, 1116, 1136, 1249 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = fighting1,
		monsters = { 1010, 1101, 1102 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = sailing2,
		monsters = { 1022 },
		gadgets = { 1014, 1015, 1016, 1017, 1033, 1036, 1042, 1052, 1053, 1078, 1079, 1080, 1081, 1082, 1083, 1087, 1088, 1104, 1112, 1113, 1114, 1115, 1126, 1131, 1132 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = fighting2,
		monsters = { 1018, 1020, 1021, 1107 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = fighting2第二波次,
		monsters = { 1109, 1111 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = sailing3,
		monsters = { 1046, 1047, 1251 },
		gadgets = { 1007, 1015, 1016, 1027, 1029, 1037, 1039, 1043, 1044, 1045, 1056, 1061, 1062, 1063, 1066, 1067, 1068, 1069, 1080, 1081, 1082, 1091, 1092, 1093, 1105, 1106, 1108, 1110, 1121, 1124, 1135, 1137, 1140, 1244 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 第一次停船点的第二波怪,
		monsters = { 1028, 1055 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = fighting3,
		monsters = { 1072, 1073, 1074, 1075, 1076, 1134 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = fighting3第二波次,
		monsters = { 1141, 1142, 1143, 1144 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = sailing4,
		monsters = { 1089, 1090 },
		gadgets = { 1023, 1034, 1035, 1037, 1039, 1043, 1044, 1045, 1054, 1057, 1058, 1059, 1060, 1064, 1065, 1068, 1070, 1071, 1077, 1084, 1085, 1086, 1155, 1174, 1175, 1176, 1190, 1193 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = fighting4,
		monsters = { 1201, 1202, 1203, 1204, 1205, 1206 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_1194" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = fighting4波次2,
		monsters = { 1210, 1211 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 1008, 1009, 1013 },
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
function condition_EVENT_GADGET_CREATE_1194(context, evt)
	if 1196 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1194(context, evt)
	-- 将configid为 1193 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1193, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1190 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1190, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_RaftChallenge"
require "V2_8/LuaGadgetPool"
require "V2_8/CloudNet"
require "V2_8/SocialActivity_Optimization"