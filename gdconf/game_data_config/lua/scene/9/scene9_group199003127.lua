-- 基础信息
local base_info = {
	group_id = 199003127
}

-- Trigger变量
local defs = {
	starter_worktop_id = 127095,
	final_stage = 5,
	dive_region = 127137,
	gallery_id = 21301,
	start_point = 127225,
	optimize_region = 127251,
	prepare_group_id = 199003125
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 11,
}

local monster_suite_chain =
{
    [7] = {8},
    [10] = {11},
    [11] = {12}
}

local stage = 
{
    [1] = {monster_suites = {2,3}, start_suites = {2,3}, tag = "Battle", revive_point = 127225},
    [2] = {monster_suites = {4,5},start_suites = {4,5}, tag = "Battle", revive_point = 127226},
    [3] = {monster_suites = {6,7,8},start_suites = {6,7}, tag = "Battle", revive_point = 127227},
    [4] = {monster_suites = {9,10,11,12},  start_suites = {9,10}, tag = "Battle", revive_point = 127228},
    [5] = {monster_suites = {13},  start_suites = {13}, tag = "Dive", revive_point = 127229}
}

local mechanism_ball_level_variable = 
{
        [127043] = "Ball_1",
        [127057] = "Ball_2",
        [127133] = "Ball_3",

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 21010101, pos = { x = -776.064, y = 352.952, z = 449.172 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127002, monster_id = 21010401, pos = { x = -774.316, y = 352.952, z = 451.907 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127003, monster_id = 21010101, pos = { x = -772.190, y = 352.952, z = 449.288 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127004, monster_id = 21010101, pos = { x = -754.748, y = 352.952, z = 449.131 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127005, monster_id = 21010401, pos = { x = -757.024, y = 352.952, z = 451.869 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127006, monster_id = 21010101, pos = { x = -758.697, y = 352.952, z = 449.452 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127011, monster_id = 21011201, pos = { x = -766.549, y = 228.108, z = 655.584 }, rot = { x = 0.000, y = 183.106, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127107, monster_id = 21010501, pos = { x = -748.706, y = 228.024, z = 635.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127108, monster_id = 21010201, pos = { x = -748.541, y = 227.746, z = 642.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127109, monster_id = 21010501, pos = { x = -785.873, y = 228.022, z = 634.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127110, monster_id = 21010201, pos = { x = -786.076, y = 227.988, z = 641.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127113, monster_id = 21020601, pos = { x = -767.396, y = 228.068, z = 677.975 }, rot = { x = 0.000, y = 180.123, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127114, monster_id = 21010901, pos = { x = -786.035, y = 228.091, z = 638.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127115, monster_id = 21010901, pos = { x = -748.386, y = 228.120, z = 638.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127116, monster_id = 21010901, pos = { x = -766.690, y = 228.115, z = 657.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127162, monster_id = 21010301, pos = { x = -756.789, y = 279.265, z = 507.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127163, monster_id = 21010301, pos = { x = -776.645, y = 279.283, z = 487.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127164, monster_id = 21010301, pos = { x = -757.633, y = 279.257, z = 486.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127165, monster_id = 21010301, pos = { x = -776.227, y = 279.266, z = 507.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127183, monster_id = 21011301, pos = { x = -743.450, y = 165.652, z = 796.035 }, rot = { x = 0.000, y = 287.880, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127189, monster_id = 21011301, pos = { x = -778.939, y = 165.652, z = 796.439 }, rot = { x = 0.000, y = 84.318, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127190, monster_id = 21011601, pos = { x = -762.808, y = 165.642, z = 778.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127191, monster_id = 21011601, pos = { x = -762.568, y = 165.612, z = 813.534 }, rot = { x = 0.000, y = 172.055, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127192, monster_id = 21010402, pos = { x = -762.870, y = 165.655, z = 779.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127193, monster_id = 21010501, pos = { x = -744.093, y = 165.645, z = 796.295 }, rot = { x = 0.000, y = 272.239, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127194, monster_id = 21010401, pos = { x = -762.613, y = 165.599, z = 813.024 }, rot = { x = 0.000, y = 178.116, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127195, monster_id = 21010501, pos = { x = -779.512, y = 165.642, z = 797.515 }, rot = { x = 0.000, y = 92.591, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127198, monster_id = 21010901, pos = { x = -763.203, y = 165.564, z = 793.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127199, monster_id = 21010901, pos = { x = -759.216, y = 165.628, z = 794.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127200, monster_id = 21010901, pos = { x = -766.374, y = 165.710, z = 795.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127201, monster_id = 21010601, pos = { x = -763.112, y = 165.306, z = 800.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127202, monster_id = 21010601, pos = { x = -759.928, y = 165.564, z = 798.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 127203, monster_id = 21010601, pos = { x = -766.267, y = 165.748, z = 798.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127007, gadget_id = 70380240, pos = { x = -747.992, y = 313.954, z = 479.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127008, gadget_id = 70380240, pos = { x = -747.992, y = 318.557, z = 479.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127009, gadget_id = 70380240, pos = { x = -747.992, y = 322.957, z = 479.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127010, gadget_id = 70380240, pos = { x = -747.992, y = 328.156, z = 479.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127012, gadget_id = 70360360, pos = { x = -766.258, y = 278.837, z = 516.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127013, gadget_id = 70360360, pos = { x = -766.258, y = 278.837, z = 535.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127014, gadget_id = 70380240, pos = { x = -766.328, y = 274.958, z = 552.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127015, gadget_id = 70380240, pos = { x = -766.328, y = 271.252, z = 560.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127016, gadget_id = 70380240, pos = { x = -766.328, y = 267.781, z = 567.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127017, gadget_id = 70380240, pos = { x = -766.328, y = 263.681, z = 574.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127018, gadget_id = 70380322, pos = { x = -762.568, y = 164.730, z = 813.578 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127019, gadget_id = 70380322, pos = { x = -744.662, y = 164.730, z = 795.642 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127020, gadget_id = 70380322, pos = { x = -780.304, y = 164.730, z = 796.266 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127028, gadget_id = 70380240, pos = { x = -766.328, y = 259.347, z = 581.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127029, gadget_id = 70380240, pos = { x = -765.207, y = 362.033, z = 424.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127030, gadget_id = 70380240, pos = { x = -763.659, y = 360.890, z = 428.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127031, gadget_id = 70380240, pos = { x = -766.559, y = 360.890, z = 428.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127032, gadget_id = 70380240, pos = { x = -767.899, y = 359.213, z = 433.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127033, gadget_id = 70360360, pos = { x = -765.382, y = 352.680, z = 450.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127034, gadget_id = 70380240, pos = { x = -747.992, y = 313.954, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127035, gadget_id = 70380240, pos = { x = -765.207, y = 363.321, z = 419.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127036, gadget_id = 70380240, pos = { x = -765.296, y = 364.392, z = 415.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127037, gadget_id = 70380321, pos = { x = -756.952, y = 352.047, z = 450.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403, is_enable_interact = false },
	{ config_id = 127038, gadget_id = 70380321, pos = { x = -774.017, y = 352.047, z = 450.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127039, gadget_id = 70380240, pos = { x = -747.992, y = 318.557, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127040, gadget_id = 70380240, pos = { x = -747.992, y = 322.957, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127041, gadget_id = 70380240, pos = { x = -747.992, y = 328.156, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127042, gadget_id = 70360360, pos = { x = -751.623, y = 352.786, z = 457.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127043, gadget_id = 70380227, pos = { x = -765.403, y = 354.116, z = 450.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127044, gadget_id = 70360360, pos = { x = -748.418, y = 297.378, z = 479.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127047, gadget_id = 70380322, pos = { x = -776.204, y = 278.384, z = 507.541 }, rot = { x = 0.000, y = 91.234, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127048, gadget_id = 70380322, pos = { x = -756.999, y = 278.384, z = 507.216 }, rot = { x = 0.000, y = 359.980, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127049, gadget_id = 70380240, pos = { x = -782.963, y = 313.954, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127050, gadget_id = 70380240, pos = { x = -782.963, y = 318.557, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127051, gadget_id = 70380238, pos = { x = -766.823, y = 257.185, z = 575.737 }, rot = { x = 2.093, y = 267.832, z = 335.144 }, level = 1, area_id = 403 },
	{ config_id = 127052, gadget_id = 70380238, pos = { x = -768.176, y = 251.857, z = 616.625 }, rot = { x = 2.093, y = 267.832, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127053, gadget_id = 70380316, pos = { x = -767.739, y = 253.067, z = 604.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900300031, area_id = 403 },
	{ config_id = 127054, gadget_id = 70380316, pos = { x = -767.739, y = 253.067, z = 586.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900300032, area_id = 403 },
	{ config_id = 127055, gadget_id = 70380238, pos = { x = -793.448, y = 250.920, z = 601.397 }, rot = { x = 1.602, y = 230.000, z = 358.653 }, level = 1, area_id = 403 },
	{ config_id = 127056, gadget_id = 70380238, pos = { x = -744.456, y = 252.732, z = 601.587 }, rot = { x = 2.091, y = 309.716, z = 0.099 }, level = 1, area_id = 403 },
	{ config_id = 127057, gadget_id = 70380227, pos = { x = -766.565, y = 280.198, z = 535.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127058, gadget_id = 70380238, pos = { x = -766.499, y = 190.254, z = 741.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127059, gadget_id = 70380240, pos = { x = -796.371, y = 253.903, z = 604.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127060, gadget_id = 70380240, pos = { x = -790.776, y = 253.903, z = 598.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127061, gadget_id = 70380240, pos = { x = -766.328, y = 222.458, z = 691.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127062, gadget_id = 70380240, pos = { x = -766.328, y = 219.328, z = 698.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127063, gadget_id = 70380240, pos = { x = -766.328, y = 215.857, z = 705.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127064, gadget_id = 70380240, pos = { x = -766.328, y = 212.824, z = 712.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127065, gadget_id = 70380240, pos = { x = -762.463, y = 192.756, z = 741.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127066, gadget_id = 70380238, pos = { x = -766.499, y = 192.527, z = 733.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127068, gadget_id = 70380240, pos = { x = -770.344, y = 192.786, z = 741.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127069, gadget_id = 70690006, pos = { x = -767.089, y = 169.751, z = 756.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127070, gadget_id = 70380322, pos = { x = -766.941, y = 227.199, z = 655.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 127071, gadget_id = 70380240, pos = { x = -782.963, y = 322.957, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127072, gadget_id = 70380240, pos = { x = -741.964, y = 255.417, z = 604.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127073, gadget_id = 70360359, pos = { x = -767.102, y = 169.838, z = 756.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127074, gadget_id = 70380322, pos = { x = -749.919, y = 227.199, z = 639.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 127075, gadget_id = 70360360, pos = { x = -756.462, y = 193.776, z = 735.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127076, gadget_id = 70360360, pos = { x = -776.949, y = 193.776, z = 735.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127077, gadget_id = 70380240, pos = { x = -760.558, y = 149.141, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127080, gadget_id = 70380240, pos = { x = -760.558, y = 145.203, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127081, gadget_id = 70380240, pos = { x = -782.963, y = 328.392, z = 514.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127082, gadget_id = 70380240, pos = { x = -760.558, y = 140.203, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127083, gadget_id = 70380240, pos = { x = -760.558, y = 135.203, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127084, gadget_id = 70380240, pos = { x = -760.558, y = 130.203, z = 832.237 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127087, gadget_id = 70380240, pos = { x = -766.114, y = 149.497, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127088, gadget_id = 70380240, pos = { x = -766.114, y = 144.497, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127089, gadget_id = 70380240, pos = { x = -766.114, y = 139.497, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127090, gadget_id = 70380240, pos = { x = -766.114, y = 134.497, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127091, gadget_id = 70380240, pos = { x = -766.114, y = 129.497, z = 832.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127092, gadget_id = 70380240, pos = { x = -765.403, y = 352.251, z = 458.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127093, gadget_id = 70380240, pos = { x = -765.403, y = 350.692, z = 461.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127094, gadget_id = 70360025, pos = { x = -762.793, y = 120.000, z = 829.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127096, gadget_id = 70350085, pos = { x = -756.858, y = 354.133, z = 448.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127097, gadget_id = 70350085, pos = { x = -774.017, y = 353.224, z = 450.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127098, gadget_id = 70350085, pos = { x = -757.518, y = 279.290, z = 487.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127099, gadget_id = 70350085, pos = { x = -756.999, y = 278.384, z = 507.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127100, gadget_id = 70350085, pos = { x = -776.836, y = 278.384, z = 488.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127101, gadget_id = 70350085, pos = { x = -776.204, y = 278.384, z = 507.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127102, gadget_id = 70380322, pos = { x = -783.980, y = 227.199, z = 639.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 127103, gadget_id = 70360360, pos = { x = -783.737, y = 297.091, z = 479.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127104, gadget_id = 70360360, pos = { x = -746.939, y = 297.657, z = 514.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127106, gadget_id = 70360360, pos = { x = -782.953, y = 298.005, z = 515.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127111, gadget_id = 70360360, pos = { x = -767.519, y = 227.930, z = 666.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127112, gadget_id = 70380322, pos = { x = -766.941, y = 227.199, z = 677.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 403 },
	{ config_id = 127117, gadget_id = 70350085, pos = { x = -785.069, y = 228.087, z = 638.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127118, gadget_id = 70350085, pos = { x = -767.216, y = 228.087, z = 656.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127119, gadget_id = 70350085, pos = { x = -767.216, y = 228.087, z = 679.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127120, gadget_id = 70380238, pos = { x = -766.499, y = 187.198, z = 750.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127121, gadget_id = 70360360, pos = { x = -766.658, y = 205.486, z = 721.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127125, gadget_id = 70380240, pos = { x = -777.197, y = 195.248, z = 735.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127126, gadget_id = 70380240, pos = { x = -756.810, y = 195.250, z = 735.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127129, gadget_id = 70380240, pos = { x = -762.463, y = 190.001, z = 750.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127132, gadget_id = 70380240, pos = { x = -770.344, y = 190.031, z = 750.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127133, gadget_id = 70380227, pos = { x = -766.328, y = 206.742, z = 721.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127134, gadget_id = 70380322, pos = { x = -763.188, y = 164.730, z = 778.109 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127135, gadget_id = 70350085, pos = { x = -763.043, y = 165.635, z = 778.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127136, gadget_id = 70350085, pos = { x = -762.793, y = 120.000, z = 829.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127139, gadget_id = 70380240, pos = { x = -783.949, y = 313.954, z = 479.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127140, gadget_id = 70380240, pos = { x = -783.949, y = 318.557, z = 479.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127149, gadget_id = 70380240, pos = { x = -765.403, y = 349.029, z = 464.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127154, gadget_id = 70380240, pos = { x = -762.057, y = 359.213, z = 433.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127155, gadget_id = 70380240, pos = { x = -759.073, y = 357.835, z = 438.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127157, gadget_id = 70380240, pos = { x = -770.678, y = 357.835, z = 438.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127158, gadget_id = 70350085, pos = { x = -748.866, y = 228.087, z = 638.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127159, gadget_id = 70360360, pos = { x = -779.241, y = 352.725, z = 457.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127160, gadget_id = 70380240, pos = { x = -783.949, y = 322.957, z = 479.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127161, gadget_id = 70380240, pos = { x = -783.949, y = 328.156, z = 479.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127166, gadget_id = 70360360, pos = { x = -760.146, y = 228.038, z = 645.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127167, gadget_id = 70360360, pos = { x = -773.597, y = 228.007, z = 645.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127169, gadget_id = 70380240, pos = { x = -746.271, y = 255.417, z = 599.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127170, gadget_id = 70380240, pos = { x = -768.217, y = 254.732, z = 621.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127173, gadget_id = 70690010, pos = { x = -762.993, y = 120.000, z = 795.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127174, gadget_id = 70380322, pos = { x = -757.780, y = 278.384, z = 487.388 }, rot = { x = 0.000, y = 359.980, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127175, gadget_id = 70380322, pos = { x = -776.836, y = 278.384, z = 488.437 }, rot = { x = 0.000, y = 91.234, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 127187, gadget_id = 70380240, pos = { x = -767.963, y = 254.665, z = 615.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127196, gadget_id = 70380322, pos = { x = -762.873, y = 164.730, z = 796.104 }, rot = { x = 0.000, y = 1.002, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 403 },
	{ config_id = 127204, gadget_id = 70350085, pos = { x = -763.043, y = 165.635, z = 813.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127205, gadget_id = 70350085, pos = { x = -779.147, y = 165.635, z = 796.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127206, gadget_id = 70350085, pos = { x = -745.329, y = 165.635, z = 796.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127207, gadget_id = 70350085, pos = { x = -761.905, y = 165.635, z = 796.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127210, gadget_id = 70380240, pos = { x = -758.863, y = 150.203, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127211, gadget_id = 70380240, pos = { x = -758.863, y = 145.203, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127212, gadget_id = 70380240, pos = { x = -758.863, y = 140.203, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127213, gadget_id = 70380240, pos = { x = -758.863, y = 135.203, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127214, gadget_id = 70380240, pos = { x = -758.863, y = 130.203, z = 824.550 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127217, gadget_id = 70380240, pos = { x = -764.419, y = 150.068, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127218, gadget_id = 70380240, pos = { x = -764.419, y = 145.068, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127219, gadget_id = 70380240, pos = { x = -764.419, y = 140.068, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127220, gadget_id = 70380240, pos = { x = -764.419, y = 135.068, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127221, gadget_id = 70380240, pos = { x = -764.419, y = 130.068, z = 824.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false },
	{ config_id = 127222, gadget_id = 70360359, pos = { x = -758.699, y = 260.967, z = 557.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127230, gadget_id = 70690006, pos = { x = -758.089, y = 260.942, z = 558.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 127235, gadget_id = 70690006, pos = { x = -756.033, y = 201.535, z = 712.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127236, gadget_id = 70360359, pos = { x = -756.046, y = 201.622, z = 712.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127237, gadget_id = 70690006, pos = { x = -777.274, y = 201.535, z = 712.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127238, gadget_id = 70360359, pos = { x = -777.287, y = 201.622, z = 712.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 127247, gadget_id = 70360360, pos = { x = -771.624, y = 165.403, z = 805.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127248, gadget_id = 70360360, pos = { x = -770.975, y = 165.177, z = 787.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127249, gadget_id = 70360360, pos = { x = -754.377, y = 165.347, z = 787.219 }, rot = { x = 0.000, y = 101.094, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 127250, gadget_id = 70360360, pos = { x = -753.693, y = 165.404, z = 804.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 127137, shape = RegionShape.CYLINDER, radius = 300, pos = { x = -758.129, y = 116.797, z = 537.312 }, height = 10.000, area_id = 403 },
	{ config_id = 127251, shape = RegionShape.POLYGON, pos = { x = -775.901, y = 275.000, z = 635.595 }, height = 350.000, point_array = { { x = -548.045, y = 260.462 }, { x = -1003.758, y = 284.679 }, { x = -949.082, y = 1010.728 }, { x = -609.379, y = 997.919 } }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1127045, name = "GADGET_CREATE_127045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127045", action = "action_EVENT_GADGET_CREATE_127045" },
	{ config_id = 1127046, name = "GADGET_CREATE_127046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127046", action = "action_EVENT_GADGET_CREATE_127046" },
	{ config_id = 1127067, name = "GADGET_CREATE_127067", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127067", action = "action_EVENT_GADGET_CREATE_127067" },
	{ config_id = 1127078, name = "GADGET_CREATE_127078", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127078", action = "action_EVENT_GADGET_CREATE_127078" },
	{ config_id = 1127079, name = "GADGET_CREATE_127079", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127079", action = "action_EVENT_GADGET_CREATE_127079" },
	{ config_id = 1127138, name = "VARIABLE_CHANGE_127138", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_127138", action = "action_EVENT_VARIABLE_CHANGE_127138" },
	{ config_id = 1127147, name = "GADGET_CREATE_127147", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127147", action = "action_EVENT_GADGET_CREATE_127147" },
	{ config_id = 1127168, name = "VARIABLE_CHANGE_127168", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_127168", action = "action_EVENT_VARIABLE_CHANGE_127168" },
	{ config_id = 1127184, name = "VARIABLE_CHANGE_127184", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_127184", action = "action_EVENT_VARIABLE_CHANGE_127184" },
	{ config_id = 1127197, name = "GADGET_CREATE_127197", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127197", action = "action_EVENT_GADGET_CREATE_127197" },
	{ config_id = 1127224, name = "GADGET_CREATE_127224", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127224", action = "action_EVENT_GADGET_CREATE_127224" },
	{ config_id = 1127251, name = "ENTER_REGION_127251", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 127150, pos = { x = -764.821, y = 367.821, z = 401.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127151, pos = { x = -764.800, y = 367.723, z = 398.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127152, pos = { x = -765.798, y = 367.771, z = 400.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127153, pos = { x = -763.146, y = 367.852, z = 400.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127225, pos = { x = -765.691, y = 367.798, z = 402.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127226, pos = { x = -766.058, y = 352.661, z = 450.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127227, pos = { x = -767.308, y = 280.289, z = 535.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127228, pos = { x = -767.634, y = 205.454, z = 721.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 127229, pos = { x = -762.730, y = 165.634, z = 780.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 }
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
		{ config_id = 127021, gadget_id = 70380313, pos = { x = -743.819, y = 165.410, z = 790.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127022, gadget_id = 70380313, pos = { x = -743.819, y = 165.410, z = 800.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127023, gadget_id = 70380313, pos = { x = -738.648, y = 165.410, z = 795.759 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127024, gadget_id = 70380313, pos = { x = -780.042, y = 165.410, z = 791.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127025, gadget_id = 70380313, pos = { x = -780.042, y = 165.410, z = 801.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127026, gadget_id = 70380313, pos = { x = -785.090, y = 165.410, z = 796.592 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127027, gadget_id = 70380313, pos = { x = -757.945, y = 165.410, z = 813.306 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127095, gadget_id = 70330140, pos = { x = -764.579, y = 367.821, z = 400.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 127177, gadget_id = 70380313, pos = { x = -762.950, y = 165.410, z = 818.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127178, gadget_id = 70380313, pos = { x = -767.997, y = 165.410, z = 813.528 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127179, gadget_id = 70380313, pos = { x = -757.945, y = 165.410, z = 778.084 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127180, gadget_id = 70380313, pos = { x = -762.950, y = 165.410, z = 773.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
		{ config_id = 127182, gadget_id = 70380313, pos = { x = -767.997, y = 165.410, z = 778.306 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 403 }
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
		regions = { 127137, 127251 },
		triggers = { "GADGET_CREATE_127067", "GADGET_CREATE_127078", "GADGET_CREATE_127079", "ENTER_REGION_127251" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一个跳跳乐阶段,
		monsters = { },
		gadgets = { 127029, 127030, 127031, 127032, 127035, 127036, 127096, 127097, 127154, 127155, 127157 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一个战斗阶段,
		monsters = { 127001, 127002, 127003, 127004, 127005, 127006 },
		gadgets = { 127033, 127037, 127038 },
		regions = { },
		triggers = { "GADGET_CREATE_127045" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二个跳跳乐阶段,
		monsters = { },
		gadgets = { 127007, 127008, 127009, 127010, 127034, 127039, 127040, 127041, 127042, 127043, 127044, 127049, 127050, 127071, 127081, 127092, 127093, 127103, 127104, 127106, 127139, 127140, 127149, 127159, 127160, 127161 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_127138" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 战斗阶段2,
		monsters = { 127162, 127163, 127164, 127165 },
		gadgets = { 127047, 127048, 127098, 127099, 127100, 127101, 127174, 127175 },
		regions = { },
		triggers = { "GADGET_CREATE_127046" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 跳跳乐阶段3,
		monsters = { },
		gadgets = { 127012, 127013, 127014, 127015, 127016, 127017, 127028, 127051, 127052, 127053, 127054, 127055, 127056, 127057, 127059, 127060, 127072, 127169, 127170, 127187, 127222, 127230 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_127168" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 战斗阶段3,
		monsters = { 127011, 127107, 127108, 127109, 127110 },
		gadgets = { 127070, 127074, 127102, 127117, 127118, 127158, 127166, 127167 },
		regions = { },
		triggers = { "GADGET_CREATE_127147" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 3-2,
		monsters = { 127113, 127114, 127115, 127116 },
		gadgets = { 127111, 127112, 127119 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 跳跳乐阶段4,
		monsters = { },
		gadgets = { 127058, 127061, 127062, 127063, 127064, 127065, 127066, 127068, 127069, 127073, 127075, 127076, 127120, 127121, 127125, 127126, 127129, 127132, 127133, 127235, 127236, 127237, 127238 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_127184" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 战斗阶段4,
		monsters = { 127183, 127189, 127190, 127191 },
		gadgets = { 127018, 127019, 127020, 127134, 127135, 127173, 127204, 127205, 127206, 127247, 127248, 127249, 127250 },
		regions = { },
		triggers = { "GADGET_CREATE_127197" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 4-2,
		monsters = { 127192, 127193, 127194, 127195 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 4-3,
		monsters = { 127198, 127199, 127200, 127201, 127202, 127203 },
		gadgets = { 127196, 127207 },
		regions = { },
		triggers = { "GADGET_CREATE_127224" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 127077, 127080, 127082, 127083, 127084, 127087, 127088, 127089, 127090, 127091, 127094, 127136, 127210, 127211, 127212, 127213, 127214, 127217, 127218, 127219, 127220, 127221 },
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
function condition_EVENT_GADGET_CREATE_127045(context, evt)
	if 127098 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127045(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127096 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127097 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127046(context, evt)
	if 127117 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127046(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127098 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127099 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127100 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127101 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127067(context, evt)
	if 127043 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127067(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127078(context, evt)
	if 127057 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127078(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127079(context, evt)
	if 127133 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127079(context, evt)
	-- 调用提示id为 400190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_127138(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_1"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_127138(context, evt)
	-- 将configid为 127048 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127048, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127174 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127174, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127175 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127175, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127147(context, evt)
	if 127061 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127147(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127117 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127118 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127158 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127119 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_127168(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_2"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_127168(context, evt)
	-- 将configid为 127070 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127070, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127074 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127074, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127102 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127102, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_127184(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_3"为1
	if ScriptLib.GetGroupVariableValue(context, "Ball_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_127184(context, evt)
	-- 将configid为 127018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127134 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127134, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127197(context, evt)
	if 127196 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127197(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127173 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127204 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127205 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127206 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127135 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127224(context, evt)
	if 127077 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127224(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 127207 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_DownHill"
require "V2_8/SocialActivity_Optimization"