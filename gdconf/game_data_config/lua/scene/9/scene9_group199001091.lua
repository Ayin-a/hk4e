-- 基础信息
local base_info = {
	group_id = 199001091
}

-- Trigger变量
local defs = {
	starter_worktop_id = 91085,
	final_stage = 5,
	dive_region = 91086,
	gallery_id = 21300,
	start_point = 91094,
	optimize_region = 91250,
	prepare_group_id = 199001114
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 11,
}

local monster_suite_chain =
{
    [5] = {8},
    [7] = {9},
    [11] = {12}
}

local stage = 
{
    [1] = {monster_suites = {2,3}, start_suites = {2,3}, tag = "Battle",revive_point = 91245},
    [2] = {monster_suites = {4,5,8},start_suites = {4,5}, tag = "Battle",revive_point = 91246},
    [3] = {monster_suites = {6,7,9},start_suites = {6,7}, tag = "Battle",revive_point = 91247},
    [4] = {monster_suites = {10,11,12},  start_suites = {10,11}, tag = "Battle",revive_point = 91248},
    [5] = {monster_suites = {13},  start_suites = {13}, tag = "Dive",revive_point = 91249},
}

local mechanism_ball_level_variable = 
{
        [91022] = "Ball_1",
        [91053] = "Ball_2",
        [91144] = "Ball_3",
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91012, monster_id = 21010101, pos = { x = 665.279, y = 367.100, z = 641.901 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91013, monster_id = 21010101, pos = { x = 667.027, y = 367.100, z = 644.636 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91014, monster_id = 21010101, pos = { x = 669.152, y = 367.100, z = 642.017 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91015, monster_id = 21010101, pos = { x = 681.546, y = 367.100, z = 641.860 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91016, monster_id = 21010101, pos = { x = 679.270, y = 367.100, z = 644.598 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91017, monster_id = 21010101, pos = { x = 677.597, y = 367.100, z = 642.181 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91033, monster_id = 21010501, pos = { x = 665.886, y = 338.816, z = 706.171 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91034, monster_id = 21010501, pos = { x = 681.463, y = 338.816, z = 706.153 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91035, monster_id = 21010901, pos = { x = 695.991, y = 338.278, z = 695.908 }, rot = { x = 0.000, y = 210.035, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91036, monster_id = 21010901, pos = { x = 650.379, y = 338.278, z = 695.830 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91062, monster_id = 21010201, pos = { x = 673.831, y = 286.740, z = 766.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	-- 战斗阶段2波次2
	{ config_id = 91107, monster_id = 21010301, pos = { x = 681.202, y = 338.777, z = 705.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	-- 战斗阶段2波次2
	{ config_id = 91108, monster_id = 21010301, pos = { x = 665.813, y = 338.770, z = 706.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	-- 战斗阶段2波次2
	{ config_id = 91109, monster_id = 21011001, pos = { x = 696.031, y = 338.269, z = 695.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	-- 战斗阶段2波次2
	{ config_id = 91110, monster_id = 21011001, pos = { x = 650.048, y = 338.250, z = 696.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91117, monster_id = 21010601, pos = { x = 676.738, y = 286.704, z = 764.484 }, rot = { x = 0.000, y = 318.335, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91118, monster_id = 21010601, pos = { x = 669.696, y = 286.486, z = 771.898 }, rot = { x = 0.000, y = 129.349, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91147, monster_id = 21010201, pos = { x = 674.618, y = 229.773, z = 820.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91148, monster_id = 21010201, pos = { x = 670.893, y = 229.947, z = 823.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91149, monster_id = 21010201, pos = { x = 678.140, y = 229.864, z = 822.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91150, monster_id = 21010201, pos = { x = 674.565, y = 229.722, z = 828.064 }, rot = { x = 0.000, y = 189.978, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91151, monster_id = 21010201, pos = { x = 671.187, y = 229.767, z = 826.644 }, rot = { x = 0.000, y = 189.978, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91152, monster_id = 21010201, pos = { x = 678.168, y = 229.816, z = 825.703 }, rot = { x = 0.000, y = 189.978, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91153, monster_id = 21010301, pos = { x = 672.425, y = 229.839, z = 820.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91154, monster_id = 21010301, pos = { x = 675.785, y = 229.765, z = 820.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91155, monster_id = 21010301, pos = { x = 672.645, y = 229.797, z = 827.271 }, rot = { x = 0.000, y = 283.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91156, monster_id = 21010301, pos = { x = 675.483, y = 229.806, z = 827.081 }, rot = { x = 0.000, y = 272.426, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91251, monster_id = 21010201, pos = { x = 670.709, y = 286.740, z = 770.347 }, rot = { x = 0.000, y = 175.316, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91252, monster_id = 21011301, pos = { x = 676.193, y = 286.740, z = 770.978 }, rot = { x = 0.000, y = 175.316, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91253, monster_id = 21011301, pos = { x = 673.831, y = 286.740, z = 768.584 }, rot = { x = 0.000, y = 175.316, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91254, monster_id = 21011301, pos = { x = 670.464, y = 286.740, z = 765.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 91255, monster_id = 21010201, pos = { x = 677.089, y = 286.740, z = 764.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91001, gadget_id = 70360360, pos = { x = 685.199, y = 314.073, z = 766.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91002, gadget_id = 70360360, pos = { x = 676.772, y = 381.422, z = 623.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91003, gadget_id = 70360360, pos = { x = 668.895, y = 381.422, z = 623.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91004, gadget_id = 70360360, pos = { x = 664.765, y = 381.422, z = 629.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91005, gadget_id = 70360360, pos = { x = 681.906, y = 381.422, z = 629.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91006, gadget_id = 70380240, pos = { x = 668.890, y = 382.584, z = 624.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91007, gadget_id = 70380240, pos = { x = 676.636, y = 382.584, z = 623.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91008, gadget_id = 70380240, pos = { x = 681.888, y = 382.593, z = 629.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91009, gadget_id = 70380240, pos = { x = 665.054, y = 382.592, z = 630.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91010, gadget_id = 70380321, pos = { x = 679.342, y = 366.194, z = 643.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91011, gadget_id = 70380321, pos = { x = 667.326, y = 366.194, z = 643.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91020, gadget_id = 70380238, pos = { x = 660.852, y = 351.121, z = 670.624 }, rot = { x = 0.000, y = 56.492, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91021, gadget_id = 70380238, pos = { x = 684.388, y = 351.121, z = 671.967 }, rot = { x = 0.000, y = 121.988, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91022, gadget_id = 70380227, pos = { x = 673.467, y = 367.248, z = 651.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91023, gadget_id = 70360360, pos = { x = 673.479, y = 350.504, z = 681.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91026, gadget_id = 70380322, pos = { x = 650.467, y = 337.372, z = 695.632 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91027, gadget_id = 70380322, pos = { x = 695.944, y = 337.372, z = 695.664 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91028, gadget_id = 70380321, pos = { x = 665.899, y = 337.911, z = 706.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91029, gadget_id = 70380321, pos = { x = 681.272, y = 337.911, z = 706.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91030, gadget_id = 70360360, pos = { x = 661.330, y = 314.073, z = 766.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91031, gadget_id = 70380240, pos = { x = 685.072, y = 315.832, z = 766.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91032, gadget_id = 70380240, pos = { x = 660.965, y = 315.838, z = 766.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91037, gadget_id = 70360360, pos = { x = 681.174, y = 318.602, z = 741.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91038, gadget_id = 70360360, pos = { x = 665.782, y = 318.602, z = 741.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91039, gadget_id = 70360360, pos = { x = 673.706, y = 338.739, z = 711.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91040, gadget_id = 70360360, pos = { x = 690.062, y = 337.800, z = 705.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91042, gadget_id = 70360360, pos = { x = 673.629, y = 366.707, z = 650.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91043, gadget_id = 70380237, pos = { x = 669.487, y = 316.727, z = 750.879 }, rot = { x = 0.000, y = 92.595, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91044, gadget_id = 70380237, pos = { x = 673.870, y = 316.765, z = 750.943 }, rot = { x = 0.000, y = 91.651, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91045, gadget_id = 70380240, pos = { x = 681.447, y = 315.558, z = 759.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91047, gadget_id = 70380240, pos = { x = 672.523, y = 390.479, z = 612.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91048, gadget_id = 70380240, pos = { x = 673.793, y = 388.962, z = 617.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91049, gadget_id = 70360360, pos = { x = 665.782, y = 314.073, z = 758.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91050, gadget_id = 70360360, pos = { x = 681.174, y = 314.073, z = 759.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91051, gadget_id = 70360360, pos = { x = 665.782, y = 314.073, z = 773.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91052, gadget_id = 70360360, pos = { x = 681.174, y = 314.073, z = 773.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91053, gadget_id = 70380227, pos = { x = 673.519, y = 340.134, z = 711.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91057, gadget_id = 70380322, pos = { x = 673.502, y = 285.834, z = 767.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91058, gadget_id = 70360360, pos = { x = 673.467, y = 286.606, z = 756.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91060, gadget_id = 70360360, pos = { x = 662.315, y = 286.777, z = 767.483 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91061, gadget_id = 70360360, pos = { x = 684.900, y = 286.727, z = 767.483 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91063, gadget_id = 70380240, pos = { x = 681.102, y = 321.183, z = 742.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91064, gadget_id = 70380240, pos = { x = 665.952, y = 320.860, z = 742.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91065, gadget_id = 70380240, pos = { x = 670.667, y = 388.962, z = 617.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91066, gadget_id = 70380240, pos = { x = 675.876, y = 392.148, z = 608.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91071, gadget_id = 70380237, pos = { x = 678.469, y = 316.549, z = 750.928 }, rot = { x = 0.000, y = 94.447, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91072, gadget_id = 70380240, pos = { x = 677.823, y = 201.375, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91073, gadget_id = 70380240, pos = { x = 677.823, y = 196.375, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91074, gadget_id = 70380240, pos = { x = 677.823, y = 191.375, z = 851.836 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91075, gadget_id = 70380240, pos = { x = 677.823, y = 186.375, z = 851.836 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91076, gadget_id = 70380240, pos = { x = 677.823, y = 181.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91077, gadget_id = 70380240, pos = { x = 677.823, y = 176.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91078, gadget_id = 70380240, pos = { x = 677.823, y = 171.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91079, gadget_id = 70380240, pos = { x = 677.823, y = 166.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91080, gadget_id = 70380240, pos = { x = 677.823, y = 161.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91081, gadget_id = 70380240, pos = { x = 677.823, y = 156.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91082, gadget_id = 70380240, pos = { x = 677.823, y = 151.357, z = 851.836 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91084, gadget_id = 70360025, pos = { x = 673.537, y = 120.000, z = 852.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91085, gadget_id = 70330140, pos = { x = 672.715, y = 393.603, z = 599.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91098, gadget_id = 70350085, pos = { x = 679.531, y = 367.083, z = 642.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91099, gadget_id = 70350085, pos = { x = 667.433, y = 367.076, z = 642.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91101, gadget_id = 70350085, pos = { x = 696.194, y = 338.235, z = 695.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91102, gadget_id = 70350085, pos = { x = 681.097, y = 338.778, z = 706.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91103, gadget_id = 70350085, pos = { x = 665.495, y = 338.781, z = 705.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91104, gadget_id = 70350085, pos = { x = 649.580, y = 338.247, z = 695.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91106, gadget_id = 70380240, pos = { x = 665.797, y = 316.578, z = 758.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91111, gadget_id = 70380240, pos = { x = 681.703, y = 353.456, z = 669.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91114, gadget_id = 70380240, pos = { x = 663.498, y = 353.431, z = 667.248 }, rot = { x = 0.000, y = 11.492, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91115, gadget_id = 70350085, pos = { x = 672.908, y = 286.751, z = 768.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91119, gadget_id = 70380316, pos = { x = 682.205, y = 264.485, z = 802.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100018, area_id = 402 },
	{ config_id = 91120, gadget_id = 70380316, pos = { x = 688.136, y = 265.189, z = 810.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100019, area_id = 402 },
	{ config_id = 91121, gadget_id = 70380316, pos = { x = 653.418, y = 266.027, z = 818.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100020, area_id = 402 },
	{ config_id = 91122, gadget_id = 70690001, pos = { x = 653.749, y = 268.488, z = 823.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91123, gadget_id = 70690001, pos = { x = 692.090, y = 268.488, z = 823.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91124, gadget_id = 70690001, pos = { x = 654.475, y = 268.488, z = 831.382 }, rot = { x = 0.000, y = 19.550, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91125, gadget_id = 70690001, pos = { x = 691.908, y = 268.488, z = 831.382 }, rot = { x = 0.000, y = 340.500, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91126, gadget_id = 70690001, pos = { x = 657.200, y = 268.488, z = 837.468 }, rot = { x = 0.000, y = 38.030, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91127, gadget_id = 70690001, pos = { x = 689.597, y = 268.488, z = 837.320 }, rot = { x = 0.000, y = 322.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91128, gadget_id = 70690001, pos = { x = 685.172, y = 268.488, z = 841.805 }, rot = { x = 0.000, y = 296.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91129, gadget_id = 70690001, pos = { x = 661.249, y = 268.488, z = 841.981 }, rot = { x = 0.000, y = 64.438, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91130, gadget_id = 70380240, pos = { x = 673.556, y = 265.897, z = 802.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91131, gadget_id = 70690001, pos = { x = 666.473, y = 268.488, z = 844.194 }, rot = { x = 0.000, y = 79.131, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91132, gadget_id = 70380240, pos = { x = 673.799, y = 266.602, z = 810.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91133, gadget_id = 70690001, pos = { x = 672.181, y = 268.488, z = 844.989 }, rot = { x = 0.000, y = 88.292, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91134, gadget_id = 70380240, pos = { x = 673.931, y = 267.455, z = 817.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91135, gadget_id = 70690001, pos = { x = 678.237, y = 268.488, z = 844.811 }, rot = { x = 0.000, y = 98.170, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91136, gadget_id = 70380240, pos = { x = 654.122, y = 267.455, z = 827.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91137, gadget_id = 70380240, pos = { x = 692.263, y = 267.455, z = 827.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91138, gadget_id = 70380240, pos = { x = 682.023, y = 267.455, z = 843.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91139, gadget_id = 70380240, pos = { x = 663.347, y = 267.455, z = 843.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91140, gadget_id = 70380240, pos = { x = 658.393, y = 267.455, z = 839.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91141, gadget_id = 70380240, pos = { x = 655.470, y = 267.455, z = 834.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91142, gadget_id = 70380240, pos = { x = 690.568, y = 267.455, z = 834.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91143, gadget_id = 70380240, pos = { x = 687.862, y = 267.455, z = 839.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91144, gadget_id = 70380227, pos = { x = 675.396, y = 267.455, z = 844.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91145, gadget_id = 70380322, pos = { x = 674.184, y = 228.958, z = 824.165 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91157, gadget_id = 70350085, pos = { x = 674.251, y = 229.845, z = 823.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91159, gadget_id = 70350085, pos = { x = 673.537, y = 120.000, z = 852.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91160, gadget_id = 70380240, pos = { x = 678.408, y = 390.479, z = 613.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91161, gadget_id = 70380240, pos = { x = 669.247, y = 392.148, z = 608.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91162, gadget_id = 70380240, pos = { x = 666.804, y = 390.479, z = 613.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91163, gadget_id = 70380240, pos = { x = 679.550, y = 388.962, z = 618.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91164, gadget_id = 70380240, pos = { x = 665.841, y = 388.962, z = 618.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91165, gadget_id = 70380237, pos = { x = 668.368, y = 362.441, z = 659.762 }, rot = { x = 0.000, y = 66.995, z = 14.426 }, level = 1, area_id = 402 },
	{ config_id = 91166, gadget_id = 70380237, pos = { x = 678.315, y = 363.155, z = 660.970 }, rot = { x = 350.396, y = 108.130, z = 10.815 }, level = 1, area_id = 402 },
	{ config_id = 91167, gadget_id = 70380240, pos = { x = 677.541, y = 366.389, z = 659.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91168, gadget_id = 70380240, pos = { x = 678.564, y = 365.650, z = 662.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91169, gadget_id = 70380240, pos = { x = 679.401, y = 365.200, z = 664.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91170, gadget_id = 70380240, pos = { x = 669.619, y = 365.907, z = 657.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91171, gadget_id = 70380240, pos = { x = 668.390, y = 365.100, z = 660.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91172, gadget_id = 70380240, pos = { x = 667.322, y = 364.457, z = 662.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91173, gadget_id = 70360360, pos = { x = 673.629, y = 340.071, z = 662.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91174, gadget_id = 70690006, pos = { x = 673.064, y = 340.022, z = 662.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91175, gadget_id = 70360360, pos = { x = 657.699, y = 338.555, z = 705.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91176, gadget_id = 70380240, pos = { x = 678.482, y = 319.753, z = 752.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91177, gadget_id = 70380240, pos = { x = 673.925, y = 319.582, z = 752.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91178, gadget_id = 70380240, pos = { x = 669.726, y = 319.552, z = 752.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91179, gadget_id = 70380240, pos = { x = 678.482, y = 319.518, z = 748.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91180, gadget_id = 70380240, pos = { x = 673.752, y = 319.604, z = 748.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91181, gadget_id = 70380240, pos = { x = 669.726, y = 319.626, z = 748.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91183, gadget_id = 70380240, pos = { x = 673.519, y = 337.128, z = 716.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91184, gadget_id = 70380240, pos = { x = 673.519, y = 333.969, z = 721.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91185, gadget_id = 70360360, pos = { x = 673.584, y = 285.971, z = 778.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91186, gadget_id = 70380240, pos = { x = 673.519, y = 330.262, z = 727.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91188, gadget_id = 70380240, pos = { x = 673.296, y = 287.032, z = 778.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91189, gadget_id = 70380240, pos = { x = 673.296, y = 287.651, z = 782.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91190, gadget_id = 70380240, pos = { x = 673.296, y = 285.921, z = 785.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91191, gadget_id = 70380240, pos = { x = 673.296, y = 284.300, z = 789.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91192, gadget_id = 70380240, pos = { x = 673.296, y = 282.341, z = 792.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 91197, gadget_id = 70380240, pos = { x = 669.304, y = 201.375, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91198, gadget_id = 70380240, pos = { x = 669.304, y = 196.375, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91199, gadget_id = 70380240, pos = { x = 669.304, y = 191.375, z = 851.836 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91200, gadget_id = 70380240, pos = { x = 669.304, y = 186.375, z = 851.836 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91201, gadget_id = 70380240, pos = { x = 669.304, y = 181.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91202, gadget_id = 70380240, pos = { x = 669.304, y = 176.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91203, gadget_id = 70380240, pos = { x = 669.304, y = 171.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91204, gadget_id = 70380240, pos = { x = 669.304, y = 166.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91205, gadget_id = 70380240, pos = { x = 669.304, y = 161.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91206, gadget_id = 70380240, pos = { x = 669.304, y = 156.357, z = 851.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91207, gadget_id = 70380240, pos = { x = 669.304, y = 151.357, z = 851.836 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91213, gadget_id = 70380240, pos = { x = 669.315, y = 201.375, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91214, gadget_id = 70380240, pos = { x = 669.315, y = 196.375, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91215, gadget_id = 70380240, pos = { x = 669.315, y = 191.375, z = 859.054 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91216, gadget_id = 70380240, pos = { x = 669.315, y = 186.375, z = 859.054 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91217, gadget_id = 70380240, pos = { x = 669.315, y = 181.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91218, gadget_id = 70380240, pos = { x = 669.315, y = 176.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91219, gadget_id = 70380240, pos = { x = 669.315, y = 171.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91220, gadget_id = 70380240, pos = { x = 669.315, y = 166.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91221, gadget_id = 70380240, pos = { x = 669.315, y = 161.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91222, gadget_id = 70380240, pos = { x = 669.315, y = 156.357, z = 859.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91223, gadget_id = 70380240, pos = { x = 669.315, y = 151.357, z = 859.054 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91226, gadget_id = 70380240, pos = { x = 677.179, y = 151.357, z = 859.115 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91227, gadget_id = 70380240, pos = { x = 677.179, y = 161.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91228, gadget_id = 70380240, pos = { x = 677.179, y = 156.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91229, gadget_id = 70380240, pos = { x = 677.179, y = 166.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91230, gadget_id = 70380240, pos = { x = 677.179, y = 176.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91231, gadget_id = 70380240, pos = { x = 677.179, y = 171.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91232, gadget_id = 70380240, pos = { x = 677.179, y = 186.375, z = 859.115 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91233, gadget_id = 70380240, pos = { x = 677.179, y = 181.357, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91234, gadget_id = 70380240, pos = { x = 677.179, y = 191.375, z = 859.115 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91235, gadget_id = 70380240, pos = { x = 677.179, y = 196.375, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91236, gadget_id = 70380240, pos = { x = 677.179, y = 201.375, z = 859.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91241, gadget_id = 70360360, pos = { x = 674.144, y = 229.292, z = 834.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91242, gadget_id = 70360360, pos = { x = 684.998, y = 229.295, z = 824.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91243, gadget_id = 70360360, pos = { x = 674.169, y = 229.428, z = 813.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91244, gadget_id = 70360360, pos = { x = 664.388, y = 229.680, z = 824.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 91086, shape = RegionShape.CYLINDER, radius = 160, pos = { x = 679.165, y = 117.457, z = 727.252 }, height = 10.000, area_id = 402 },
	{ config_id = 91250, shape = RegionShape.POLYGON, pos = { x = 677.286, y = 275.000, z = 709.619 }, height = 350.000, point_array = { { x = 463.298, y = 965.613 }, { x = 486.744, y = 461.575 }, { x = 891.274, y = 453.625 }, { x = 888.538, y = 957.154 } }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1091018, name = "GADGET_CREATE_91018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91018", action = "action_EVENT_GADGET_CREATE_91018" },
	{ config_id = 1091019, name = "GADGET_CREATE_91019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91019", action = "action_EVENT_GADGET_CREATE_91019" },
	{ config_id = 1091024, name = "GADGET_CREATE_91024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91024", action = "action_EVENT_GADGET_CREATE_91024" },
	{ config_id = 1091087, name = "VARIABLE_CHANGE_91087", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91087", action = "action_EVENT_VARIABLE_CHANGE_91087" },
	{ config_id = 1091090, name = "VARIABLE_CHANGE_91090", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91090", action = "action_EVENT_VARIABLE_CHANGE_91090" },
	{ config_id = 1091100, name = "GADGET_CREATE_91100", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91100", action = "action_EVENT_GADGET_CREATE_91100" },
	{ config_id = 1091105, name = "GADGET_CREATE_91105", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91105", action = "action_EVENT_GADGET_CREATE_91105" },
	{ config_id = 1091116, name = "VARIABLE_CHANGE_91116", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91116", action = "action_EVENT_VARIABLE_CHANGE_91116" },
	{ config_id = 1091146, name = "VARIABLE_CHANGE_91146", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91146", action = "action_EVENT_VARIABLE_CHANGE_91146" },
	{ config_id = 1091158, name = "GADGET_CREATE_91158", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91158", action = "action_EVENT_GADGET_CREATE_91158" }
}

-- 点位
points = {
	{ config_id = 91094, pos = { x = 672.473, y = 393.603, z = 600.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91095, pos = { x = 672.493, y = 393.603, z = 598.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91096, pos = { x = 671.495, y = 393.603, z = 599.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91097, pos = { x = 674.148, y = 393.603, z = 599.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91245, pos = { x = 671.430, y = 393.574, z = 599.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91246, pos = { x = 673.201, y = 350.453, z = 681.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91247, pos = { x = 665.447, y = 318.569, z = 741.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91248, pos = { x = 672.784, y = 285.925, z = 778.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 },
	{ config_id = 91249, pos = { x = 674.403, y = 229.830, z = 823.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Ball_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "Ball_2", value = 0, no_refresh = false },
	{ config_id = 3, name = "Ball_3", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 91059, gadget_id = 70360360, pos = { x = 673.467, y = 286.349, z = 770.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
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
		gadgets = { },
		regions = { 91086, 91250 },
		triggers = { "GADGET_CREATE_91018", "GADGET_CREATE_91019", "GADGET_CREATE_91024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一个跳跳乐阶段,
		monsters = { },
		gadgets = { 91002, 91003, 91004, 91005, 91006, 91007, 91008, 91009, 91047, 91048, 91065, 91066, 91098, 91099, 91160, 91161, 91162, 91163, 91164 },
		regions = { },
		triggers = { "GADGET_CREATE_91100" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一个战斗阶段,
		monsters = { 91012, 91013, 91014, 91015, 91016, 91017 },
		gadgets = { 91010, 91011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二个跳跳乐阶段，机制球创生风圈,
		monsters = { },
		gadgets = { 91020, 91021, 91022, 91023, 91042, 91111, 91114, 91165, 91166, 91167, 91168, 91169, 91170, 91171, 91172, 91173, 91174 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_91087" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二个战斗阶段,
		monsters = { 91033, 91034, 91035, 91036 },
		gadgets = { 91026, 91027, 91028, 91029, 91101, 91102, 91103, 91104 },
		regions = { },
		triggers = { "GADGET_CREATE_91105" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三个跳跳乐阶段，大跳球跑平台，机制球创生屏障,
		monsters = { },
		gadgets = { 91001, 91030, 91031, 91032, 91037, 91038, 91039, 91040, 91043, 91044, 91045, 91049, 91050, 91051, 91052, 91053, 91063, 91064, 91071, 91106, 91175, 91176, 91177, 91178, 91179, 91180, 91181, 91183, 91184, 91186 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_91090" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第三个战斗阶段，大体积强敌战斗，利用屏障,
		monsters = { 91062, 91251, 91252, 91253, 91254, 91255 },
		gadgets = { 91057, 91115 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_91116" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 战斗阶段2波次2,
		monsters = { 91107, 91108, 91109, 91110 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 战斗阶段3波次2,
		monsters = { 91117, 91118 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 第四个跳跳乐阶段,
		monsters = { },
		gadgets = { 91119, 91120, 91121, 91122, 91123, 91124, 91125, 91126, 91127, 91128, 91129, 91130, 91131, 91132, 91133, 91134, 91135, 91136, 91137, 91138, 91139, 91140, 91141, 91142, 91143, 91144, 91185, 91188, 91189, 91190, 91191, 91192 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_91146" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 战斗阶段4,
		monsters = { 91147, 91148, 91149, 91150, 91151, 91152 },
		gadgets = { 91145, 91157, 91241, 91242, 91243, 91244 },
		regions = { },
		triggers = { "GADGET_CREATE_91158" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 战斗阶段4波次2,
		monsters = { 91153, 91154, 91155, 91156 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 入水,
		monsters = { },
		gadgets = { 91072, 91073, 91074, 91075, 91076, 91077, 91078, 91079, 91080, 91081, 91082, 91084, 91159, 91197, 91198, 91199, 91200, 91201, 91202, 91203, 91204, 91205, 91206, 91207, 91213, 91214, 91215, 91216, 91217, 91218, 91219, 91220, 91221, 91222, 91223, 91226, 91227, 91228, 91229, 91230, 91231, 91232, 91233, 91234, 91235, 91236 },
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
function condition_EVENT_GADGET_CREATE_91018(context, evt)
	if 91022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91018(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91019(context, evt)
	if 91053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91019(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91024(context, evt)
	if 91144 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91024(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91087(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_1"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91087(context, evt)
	-- 将configid为 91027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91090(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_2"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91090(context, evt)
	-- 将configid为 91057 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91057, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为91058的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91058 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91060 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91061的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91061 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91100(context, evt)
	if 91020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91100(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91098 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91099 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91105(context, evt)
	if 91038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91105(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91101 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91102 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91103 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91104 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91116(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"current_stage"为4
	if ScriptLib.GetGroupVariableValue(context, "current_stage") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91116(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91115 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001091, EntityType.GADGET, 91058 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001091, EntityType.GADGET, 91059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001091, EntityType.GADGET, 91060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001091, EntityType.GADGET, 91061 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91146(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_3"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91146(context, evt)
	-- 将configid为 91145 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91145, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91158(context, evt)
	if 91072 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91158(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91157 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_DownHill"
require "V2_8/SocialActivity_Optimization"