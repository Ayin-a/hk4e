-- 基础信息
local base_info = {
	group_id = 199003126
}

-- Trigger变量
local defs = {
	starter_worktop_id = 126080,
	pointarray_route = 900300022,
	final_stage = 7,
	route_num = 49,
	gallery_id = 21101,
	optimize_region = 126113,
	prepare_group_id = 199001005
}

-- DEFS_MISCS
--物件池物件gadgetid
local pool_object_gadget_id =
{
    70380225,70380226
}

monster_drop_num = 
{1,1}

local elite_drop = 
{
    [126001] = {3,3},
    [126006] = {2,2},
    [126003] = {2,2},
    [126037] = {2,2},
    [126038] = {2,2},
    [126134] = {2,2},
    [126143] = {2,2},
    [126043] = {2,2},
    [126046] = {3,3},
    [126014] = {2,3},
    [126023] = {3,2},
    [126027] = {2,3},
    [126097] = {3,2},
    [126100] = {3,3},
}



local point_id_array = 
{
       from = 1,
       to = 49,

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
    engine = 126062,
    part_1 = 126073,
    part_2 = 126074,
    part_3 = 126075,
    part_4 = 126079
}

local checkpoint = 
{15,28,46,49}

local stage = 
{
    [1] = {monster_suites = {2},start_suites = {2}, tag = "Sailing",obstacle = {126120},revive_point = 126237},
    [2] = {monster_suites = {3},start_suites = {3}, tag = "KillMonster", obstacle = {126120},revive_point = 126238},
    [3] = {monster_suites = {4},start_suites = {4}, tag = "Sailing",obstacle = {126072},revive_point = 126239},
    [4] = {monster_suites = {5},start_suites = {5}, tag = "KillMonster", obstacle = {126072},revive_point = 126240},
    [5] = {monster_suites = {6},start_suites = {6}, tag = "Sailing",obstacle = {126138},revive_point = 126241},
    [6] = {monster_suites = {7},start_suites = {7}, tag = "KillMonster", obstacle = {126138},revive_point = 126242},
    [7] = {monster_suites = {8},start_suites = {8}, tag = "Sailing",revive_point = 126243},
}

CloudNets = {
    { net_1 = 126065, pillar_1  = 126066, pillar_2 = 126067},
    { net_1 = 126059, pillar_1  = 126076, pillar_2 = 126077},
    { net_1 = 126012, pillar_1  = 126015, pillar_2 = 126016},
    { net_1 = 126017, pillar_1  = 126018, pillar_2 = 126021}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21010901, pos = { x = -610.928, y = 120.311, z = 899.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126003, monster_id = 21011001, pos = { x = -569.632, y = 120.263, z = 890.864 }, rot = { x = 0.000, y = 302.234, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126004, monster_id = 21011001, pos = { x = -572.126, y = 120.364, z = 922.698 }, rot = { x = 0.000, y = 234.202, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126006, monster_id = 21010502, pos = { x = -611.675, y = 120.333, z = 924.841 }, rot = { x = 0.000, y = 231.202, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 403 },
	{ config_id = 126011, monster_id = 21011001, pos = { x = -549.930, y = 120.365, z = 894.656 }, rot = { x = 0.000, y = 302.021, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126014, monster_id = 21010501, pos = { x = -515.881, y = 120.373, z = 848.013 }, rot = { x = 0.000, y = 275.264, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126019, monster_id = 21010501, pos = { x = -556.023, y = 120.249, z = 850.870 }, rot = { x = 0.000, y = 51.499, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126022, monster_id = 21011001, pos = { x = -584.761, y = 124.069, z = 827.516 }, rot = { x = 0.000, y = 37.218, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126023, monster_id = 21010501, pos = { x = -531.734, y = 120.378, z = 827.573 }, rot = { x = 0.000, y = 264.656, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126024, monster_id = 21010901, pos = { x = -572.253, y = 120.270, z = 852.744 }, rot = { x = 0.000, y = 244.423, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126025, monster_id = 21010901, pos = { x = -570.096, y = 120.365, z = 855.946 }, rot = { x = 0.000, y = 244.423, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126026, monster_id = 21010901, pos = { x = -574.538, y = 120.400, z = 856.599 }, rot = { x = 0.000, y = 244.423, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126027, monster_id = 21030501, pos = { x = -601.542, y = 120.269, z = 853.892 }, rot = { x = 0.000, y = 21.995, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126028, monster_id = 21010201, pos = { x = -602.406, y = 120.383, z = 858.289 }, rot = { x = 0.000, y = 47.879, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126037, monster_id = 21011301, pos = { x = -568.289, y = 120.399, z = 918.558 }, rot = { x = 0.000, y = 212.580, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126038, monster_id = 21011301, pos = { x = -572.993, y = 120.393, z = 895.730 }, rot = { x = 0.000, y = 322.173, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126043, monster_id = 21010701, pos = { x = -550.189, y = 120.419, z = 876.480 }, rot = { x = 0.000, y = 23.153, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126044, monster_id = 21010201, pos = { x = -544.066, y = 120.362, z = 876.041 }, rot = { x = 0.000, y = 55.105, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126045, monster_id = 21010201, pos = { x = -548.292, y = 120.179, z = 871.961 }, rot = { x = 0.000, y = 29.350, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126046, monster_id = 21010501, pos = { x = -513.741, y = 120.336, z = 871.208 }, rot = { x = 0.000, y = 316.561, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126047, monster_id = 21010201, pos = { x = -517.269, y = 120.012, z = 876.455 }, rot = { x = 0.000, y = 321.376, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126048, monster_id = 21010201, pos = { x = -521.556, y = 120.446, z = 873.845 }, rot = { x = 0.000, y = 318.933, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126049, monster_id = 21010201, pos = { x = -604.392, y = 120.341, z = 854.636 }, rot = { x = 0.000, y = 49.543, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126097, monster_id = 21010901, pos = { x = -557.297, y = 120.343, z = 823.466 }, rot = { x = 0.000, y = 86.850, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126100, monster_id = 21010901, pos = { x = -599.601, y = 120.309, z = 829.112 }, rot = { x = 0.000, y = 19.042, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126117, monster_id = 21010401, pos = { x = -522.619, y = 124.068, z = 909.537 }, rot = { x = 0.000, y = 318.322, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126134, monster_id = 21010501, pos = { x = -515.298, y = 120.317, z = 894.241 }, rot = { x = 0.000, y = 266.725, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 126143, monster_id = 21010501, pos = { x = -540.197, y = 120.264, z = 921.929 }, rot = { x = 0.000, y = 155.510, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- fighting1
	{ config_id = 126002, gadget_id = 70380312, pos = { x = -571.053, y = 119.489, z = 922.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126005, gadget_id = 70380311, pos = { x = -575.075, y = 119.457, z = 827.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126012, gadget_id = 70380308, pos = { x = -577.519, y = 121.802, z = 840.551 }, rot = { x = 0.000, y = 271.414, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126013, gadget_id = 70360360, pos = { x = -565.653, y = 124.133, z = 823.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126015, gadget_id = 70380307, pos = { x = -577.014, y = 121.802, z = 851.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126016, gadget_id = 70380307, pos = { x = -577.647, y = 121.802, z = 829.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126017, gadget_id = 70380308, pos = { x = -532.174, y = 121.796, z = 887.009 }, rot = { x = 0.000, y = 181.936, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126018, gadget_id = 70380307, pos = { x = -543.256, y = 121.796, z = 887.387 }, rot = { x = 0.000, y = 89.247, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126020, gadget_id = 70690008, pos = { x = -561.188, y = 120.907, z = 883.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126021, gadget_id = 70380307, pos = { x = -520.777, y = 121.796, z = 886.690 }, rot = { x = 0.000, y = 269.247, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126029, gadget_id = 70290196, pos = { x = -538.046, y = 120.000, z = 784.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 126031, gadget_id = 70380240, pos = { x = -543.663, y = 122.783, z = 906.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126032, gadget_id = 70380240, pos = { x = -537.190, y = 122.783, z = 903.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126033, gadget_id = 70380240, pos = { x = -532.182, y = 122.783, z = 898.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126034, gadget_id = 70380240, pos = { x = -530.725, y = 122.783, z = 885.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126035, gadget_id = 70360360, pos = { x = -522.215, y = 124.133, z = 909.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126036, gadget_id = 70360360, pos = { x = -561.162, y = 124.491, z = 898.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126039, gadget_id = 70380240, pos = { x = -523.797, y = 125.789, z = 839.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 126040, gadget_id = 70380240, pos = { x = -565.815, y = 125.790, z = 823.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126041, gadget_id = 70380312, pos = { x = -555.096, y = 119.457, z = 851.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126042, gadget_id = 70380311, pos = { x = -533.440, y = 119.457, z = 827.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126050, gadget_id = 70380240, pos = { x = -530.964, y = 122.783, z = 880.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126052, gadget_id = 70380240, pos = { x = -533.907, y = 122.911, z = 848.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126053, gadget_id = 70380240, pos = { x = -588.146, y = 122.864, z = 844.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126054, gadget_id = 70380240, pos = { x = -583.080, y = 122.911, z = 840.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126056, gadget_id = 70380240, pos = { x = -587.791, y = 122.911, z = 839.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126057, gadget_id = 70690027, pos = { x = -554.164, y = 120.000, z = 863.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126058, gadget_id = 70690008, pos = { x = -630.119, y = 120.000, z = 922.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126059, gadget_id = 70380308, pos = { x = -558.791, y = 121.802, z = 837.161 }, rot = { x = 0.000, y = 271.414, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126060, gadget_id = 70360360, pos = { x = -600.155, y = 122.999, z = 895.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126061, gadget_id = 70380240, pos = { x = -576.420, y = 123.367, z = 824.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 126062, gadget_id = 70380224, pos = { x = -647.983, y = 122.118, z = 935.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 403 },
	{ config_id = 126063, gadget_id = 70380311, pos = { x = -611.786, y = 119.457, z = 899.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- fighting1
	{ config_id = 126064, gadget_id = 70380312, pos = { x = -571.421, y = 119.489, z = 894.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126065, gadget_id = 70380308, pos = { x = -608.288, y = 121.866, z = 912.052 }, rot = { x = 0.000, y = 92.210, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126066, gadget_id = 70380307, pos = { x = -608.014, y = 121.866, z = 922.396 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126067, gadget_id = 70380307, pos = { x = -608.678, y = 121.866, z = 901.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126068, gadget_id = 70380311, pos = { x = -611.172, y = 119.424, z = 923.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126069, gadget_id = 70380312, pos = { x = -546.812, y = 119.456, z = 891.179 }, rot = { x = 0.161, y = 0.000, z = 0.016 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- fighting2
	{ config_id = 126070, gadget_id = 70380312, pos = { x = -546.973, y = 119.457, z = 874.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- fighting2
	{ config_id = 126071, gadget_id = 70380312, pos = { x = -516.671, y = 119.457, z = 873.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- fighting2
	{ config_id = 126072, gadget_id = 70380310, pos = { x = -532.026, y = 121.660, z = 868.801 }, rot = { x = 0.000, y = 2.421, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126073, gadget_id = 70380220, pos = { x = -644.513, y = 120.000, z = 938.803 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126074, gadget_id = 70380221, pos = { x = -644.370, y = 120.000, z = 931.548 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126075, gadget_id = 70380222, pos = { x = -651.606, y = 120.000, z = 938.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126076, gadget_id = 70380307, pos = { x = -558.286, y = 121.802, z = 848.592 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126077, gadget_id = 70380307, pos = { x = -558.919, y = 121.802, z = 826.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126078, gadget_id = 70690027, pos = { x = -543.548, y = 120.000, z = 824.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126079, gadget_id = 70380223, pos = { x = -651.561, y = 120.000, z = 931.545 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126080, gadget_id = 70350083, pos = { x = -647.992, y = 121.952, z = 937.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 126081, gadget_id = 70360360, pos = { x = -588.498, y = 122.999, z = 895.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126082, gadget_id = 70380240, pos = { x = -600.238, y = 124.484, z = 895.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126083, gadget_id = 70380240, pos = { x = -588.570, y = 124.486, z = 895.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126084, gadget_id = 70380312, pos = { x = -555.438, y = 119.457, z = 822.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126085, gadget_id = 70380311, pos = { x = -517.311, y = 119.457, z = 848.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403, is_enable_interact = false },
	{ config_id = 126086, gadget_id = 70360360, pos = { x = -601.713, y = 122.999, z = 927.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126087, gadget_id = 70380240, pos = { x = -609.849, y = 122.178, z = 898.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126088, gadget_id = 70360360, pos = { x = -593.954, y = 125.383, z = 927.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126091, gadget_id = 70380240, pos = { x = -547.425, y = 122.345, z = 894.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126093, gadget_id = 70380312, pos = { x = -517.510, y = 119.436, z = 890.624 }, rot = { x = 0.161, y = 1.267, z = 0.016 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126094, gadget_id = 70380311, pos = { x = -540.355, y = 119.378, z = 921.726 }, rot = { x = 0.161, y = 1.267, z = 0.016 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126095, gadget_id = 70380240, pos = { x = -517.588, y = 122.553, z = 848.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126096, gadget_id = 70380240, pos = { x = -555.871, y = 122.599, z = 853.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126098, gadget_id = 70690027, pos = { x = -574.331, y = 120.000, z = 811.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126099, gadget_id = 70380311, pos = { x = -598.054, y = 119.457, z = 830.331 }, rot = { x = 0.000, y = 5.721, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126101, gadget_id = 70380240, pos = { x = -542.115, y = 122.911, z = 840.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126102, gadget_id = 70380240, pos = { x = -561.467, y = 125.655, z = 898.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126103, gadget_id = 70380240, pos = { x = -537.503, y = 122.864, z = 844.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 126104, gadget_id = 70380240, pos = { x = -561.467, y = 127.976, z = 898.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- fighting3
	{ config_id = 126105, gadget_id = 70380312, pos = { x = -572.699, y = 119.457, z = 855.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- fighting3
	{ config_id = 126106, gadget_id = 70380312, pos = { x = -602.685, y = 119.457, z = 856.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126107, gadget_id = 70690008, pos = { x = -627.341, y = 120.000, z = 897.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126108, gadget_id = 70690008, pos = { x = -555.939, y = 120.000, z = 922.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126109, gadget_id = 70690008, pos = { x = -529.124, y = 120.000, z = 913.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126110, gadget_id = 70690008, pos = { x = -515.764, y = 120.000, z = 860.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126111, gadget_id = 70690008, pos = { x = -605.036, y = 120.000, z = 842.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126112, gadget_id = 70380240, pos = { x = -565.766, y = 127.760, z = 823.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126115, gadget_id = 70380323, pos = { x = -647.932, y = 121.737, z = 935.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126116, gadget_id = 70380240, pos = { x = -561.467, y = 130.123, z = 898.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126118, gadget_id = 70380240, pos = { x = -523.797, y = 127.871, z = 839.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 126119, gadget_id = 70380240, pos = { x = -533.004, y = 121.969, z = 828.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	-- fighting1
	{ config_id = 126120, gadget_id = 70380309, pos = { x = -566.360, y = 121.585, z = 908.155 }, rot = { x = 0.000, y = 272.710, z = 0.000 }, level = 36, area_id = 403 },
	{ config_id = 126122, gadget_id = 70360360, pos = { x = -586.195, y = 127.254, z = 927.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126123, gadget_id = 70380240, pos = { x = -523.797, y = 129.824, z = 839.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 126127, gadget_id = 70380240, pos = { x = -565.766, y = 129.813, z = 823.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126128, gadget_id = 70380240, pos = { x = -602.106, y = 123.948, z = 927.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126129, gadget_id = 70380240, pos = { x = -586.533, y = 128.199, z = 927.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126130, gadget_id = 70380240, pos = { x = -594.253, y = 126.326, z = 927.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126131, gadget_id = 70380240, pos = { x = -583.764, y = 122.945, z = 909.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126132, gadget_id = 70380240, pos = { x = -579.027, y = 122.945, z = 908.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126133, gadget_id = 70360360, pos = { x = -584.245, y = 124.133, z = 826.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126135, gadget_id = 70360360, pos = { x = -543.377, y = 124.133, z = 863.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126136, gadget_id = 70380240, pos = { x = -543.528, y = 125.177, z = 863.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126137, gadget_id = 70380240, pos = { x = -543.528, y = 127.206, z = 863.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- fighting3
	{ config_id = 126138, gadget_id = 70380310, pos = { x = -587.478, y = 121.616, z = 860.806 }, rot = { x = 0.000, y = 1.289, z = 0.000 }, level = 36, area_id = 403, is_enable_interact = false },
	{ config_id = 126139, gadget_id = 70380240, pos = { x = -543.528, y = 129.195, z = 863.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126140, gadget_id = 70360360, pos = { x = -587.632, y = 124.133, z = 880.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 126141, gadget_id = 70380240, pos = { x = -587.921, y = 124.994, z = 880.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126142, gadget_id = 70710126, pos = { x = -587.857, y = 124.089, z = 880.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126144, gadget_id = 70690027, pos = { x = -527.509, y = 120.000, z = 914.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126145, gadget_id = 70380240, pos = { x = -540.771, y = 122.130, z = 921.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126146, gadget_id = 70380240, pos = { x = -519.277, y = 122.283, z = 892.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126147, gadget_id = 70380240, pos = { x = -527.647, y = 125.788, z = 914.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 126154, gadget_id = 70360360, pos = { x = -523.816, y = 124.133, z = 839.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 126113, shape = RegionShape.CYLINDER, radius = 120, pos = { x = -577.027, y = 120.000, z = 871.016 }, height = 60.000, area_id = 403 },
	{ config_id = 126114, shape = RegionShape.CYLINDER, radius = 200, pos = { x = -577.027, y = 120.000, z = 819.718 }, height = 30.000, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1126030, name = "GADGET_CREATE_126030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126030", action = "action_EVENT_GADGET_CREATE_126030" },
	{ config_id = 1126228, name = "PLATFORM_REACH_POINT_126228", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_126228", action = "action_EVENT_PLATFORM_REACH_POINT_126228" },
	{ config_id = 1126229, name = "PLATFORM_REACH_POINT_126229", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_126229", action = "action_EVENT_PLATFORM_REACH_POINT_126229" }
}

-- 点位
points = {
	{ config_id = 126233, pos = { x = -647.522, y = 122.537, z = 933.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126234, pos = { x = -648.658, y = 122.571, z = 933.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126235, pos = { x = -649.257, y = 122.643, z = 932.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126236, pos = { x = -646.248, y = 122.705, z = 933.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126237, pos = { x = -611.216, y = 122.132, z = 897.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126238, pos = { x = -573.013, y = 121.826, z = 892.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126239, pos = { x = -546.549, y = 122.148, z = 890.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126240, pos = { x = -549.071, y = 121.826, z = 874.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126241, pos = { x = -516.194, y = 121.826, z = 874.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 126242, pos = { x = -602.824, y = 122.156, z = 856.569 }, rot = { x = 0.000, y = 47.052, z = 0.000 }, area_id = 403 },
	{ config_id = 126243, pos = { x = -517.399, y = 122.736, z = 797.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 }
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
		regions = { 126113, 126114 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = sailing1,
		monsters = { 126001, 126006 },
		gadgets = { 126002, 126058, 126060, 126063, 126064, 126065, 126066, 126067, 126068, 126081, 126082, 126083, 126086, 126087, 126088, 126107, 126120, 126122, 126128, 126129, 126130, 126131, 126132 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = fighting1,
		monsters = { 126003, 126004, 126037, 126038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = sailing2,
		monsters = { 126011, 126117, 126134, 126143 },
		gadgets = { 126017, 126018, 126020, 126021, 126031, 126032, 126033, 126034, 126035, 126036, 126050, 126069, 126070, 126071, 126072, 126091, 126093, 126094, 126102, 126104, 126108, 126109, 126116, 126144, 126145, 126146, 126147 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = fighting2,
		monsters = { 126043, 126044, 126045, 126046, 126047, 126048 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_126030" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = sailing3,
		monsters = { 126014, 126019, 126022, 126023, 126097, 126100 },
		gadgets = { 126005, 126012, 126013, 126015, 126016, 126039, 126040, 126041, 126042, 126052, 126053, 126054, 126056, 126057, 126059, 126061, 126076, 126077, 126078, 126084, 126085, 126095, 126096, 126098, 126099, 126101, 126103, 126105, 126106, 126110, 126111, 126112, 126118, 126119, 126123, 126127, 126133, 126135, 126136, 126137, 126138, 126139, 126154 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_126228", "PLATFORM_REACH_POINT_126229" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = fighting3,
		monsters = { 126024, 126025, 126026, 126027, 126028, 126049 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 126029, 126140, 126141, 126142 },
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
function condition_EVENT_GADGET_CREATE_126030(context, evt)
	if 126009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126030(context, evt)
	-- 将configid为 126071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_126228(context, evt)
	-- 判断是gadgetid 为 126062的移动平台，是否到达了900100002 的点集中的 27 点
	
	if 126062 ~= evt.param1 then
	  return false
	end
	
	if 900100002 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_126228(context, evt)
	-- 创建id为126127的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126127 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为126128的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126128 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为126129的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126129 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为126130的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126130 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_126229(context, evt)
	-- 判断是gadgetid 为 126062的移动平台，是否到达了900100002 的点集中的 29 点
	
	if 126062 ~= evt.param1 then
	  return false
	end
	
	if 900100002 ~= evt.param2 then
	  return false
	end
	
	if 29 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_126229(context, evt)
	-- 创建id为126137的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126137 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_RaftChallenge"
require "V2_8/LuaGadgetPool"
require "V2_8/CloudNet"
require "V2_8/SocialActivity_Optimization"