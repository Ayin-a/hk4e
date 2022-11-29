-- 基础信息
local base_info = {
	group_id = 166001581
}

-- Trigger变量
local defs = {
	challenge_time = 300,
	pursina = 581032,
	muds_lv1 = {581066,581067,581068,581069,581070,581071},
	muds_lv2 = {581014,581016},
	score_lv1 = 3,
	score_lv2 = 6,
	pursina_tip = 581105,
	fail_region = 581197,
	enemy_gadget = 581198
}

-- DEFS_MISCS
local extra_info = {
    start_operator = 581002,
    lantern = 581011,
}

local mud_list = {
--普通黑泥
[581016] = { mud_id = 581009, cover_list= {}, respawn_time = 8, mutex_id = 0, score = 6, cover_content = {} },
[581014] = { mud_id = 581008, cover_list= {}, respawn_time = 8, mutex_id = 0, score = 6, cover_content = {} },

--黑泥核心1
[581066] = { mud_id = 581082, cover_list= {581094}, respawn_time = 4, mutex_id = 581067, score = 3,
    cover_content = { 
        [1] = {581025}, 
        [2] = {581033}, 
        [3] = {581051}, 
        [4] = {581079},
        [5] = {581123},}
},
--黑泥核心2
[581068]  = { mud_id = 581081, cover_list= {581095,581096}, respawn_time = 4, mutex_id = 581071, score = 3,
    cover_content = { 
    [1] = {581020,581026}, 
    [2] = {581049,581044}, 
    [3] = {581054,581055}, 
    [4] = {581108,581080},
    [5] = {581127,581124},}
},
--黑泥核心3
[581069] = { mud_id = 581083, cover_list= {581093}, respawn_time = 4, mutex_id = 581070, score = 3,
    cover_content = { 
        [1] = {581022}, 
        [2] = {581045}, 
        [3] = {581099}, 
        [4] = {581098},
        [5] = {581125},}
}, 
--黑泥核心4
[581067] = {mud_id = 581084, cover_list = {581091, 581092}, respawn_time = 6, mutex_id = 581066, score = 3,
    cover_content = { 
        [1] = {581031,581036},
        [2] = {581053,581046},
        [3] = {581056,581100},
        [4] = {581101,581113},
        [5] = {581126,581128},}, 
},
--黑泥核心5
[581070] = {mud_id = 581085, cover_list = {581087, 581088}, respawn_time = 6, mutex_id = 581069, score = 3,
    cover_content = { 
        [1] = {581029,581039},
        [2] = {581047,581048},
        [3] = {581102,581103},
        [4] = {581115,581116},
        [5] = {581129,581130},}, 
},
--黑泥核心6
[581071] = {mud_id = 581086, cover_list = {581017,581019,581089, 581090}, respawn_time = 6, mutex_id = 581068, score = 3,
    cover_content = { 
        [1] = {581040,581041,581042,581043},
        [2] = {581052,581058,581059,581050},
        [3] = {581104,581106,581057,581076},
        [4] = {581078,581119,581118,581117},
        [5] = {581122,581131,581132,581139},}, 
},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581001, monster_id = 21011201, pos = { x = 1033.866, y = 842.956, z = 565.412 }, rot = { x = 0.000, y = 171.980, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581007, monster_id = 20011001, pos = { x = 1024.522, y = 842.418, z = 550.670 }, rot = { x = 0.000, y = 70.441, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581013, monster_id = 20011501, pos = { x = 1033.667, y = 843.087, z = 567.142 }, rot = { x = 0.000, y = 171.391, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581030, monster_id = 20011201, pos = { x = 1035.208, y = 843.071, z = 566.814 }, rot = { x = 0.000, y = 177.114, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581034, monster_id = 21010701, pos = { x = 1043.058, y = 843.032, z = 547.051 }, rot = { x = 0.000, y = 318.590, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581035, monster_id = 21010301, pos = { x = 1040.696, y = 842.760, z = 544.139 }, rot = { x = 0.000, y = 332.298, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581037, monster_id = 21020301, pos = { x = 1023.229, y = 842.335, z = 551.650 }, rot = { x = 0.000, y = 80.055, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581038, monster_id = 21011601, pos = { x = 1032.222, y = 842.977, z = 566.210 }, rot = { x = 0.000, y = 165.860, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581077, monster_id = 21010601, pos = { x = 1040.523, y = 842.835, z = 547.106 }, rot = { x = 0.000, y = 313.449, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581112, monster_id = 20011201, pos = { x = 1031.292, y = 842.737, z = 543.471 }, rot = { x = 0.000, y = 31.074, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581114, monster_id = 21020201, pos = { x = 1029.670, y = 842.680, z = 543.408 }, rot = { x = 0.000, y = 40.689, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581120, monster_id = 21020701, pos = { x = 1028.079, y = 842.602, z = 544.989 }, rot = { x = 0.000, y = 49.413, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581121, monster_id = 21010701, pos = { x = 1030.584, y = 842.454, z = 544.834 }, rot = { x = 0.000, y = 41.475, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581192, monster_id = 20011301, pos = { x = 1041.733, y = 842.931, z = 545.727 }, rot = { x = 0.000, y = 312.761, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581193, monster_id = 20011101, pos = { x = 1023.001, y = 842.950, z = 553.881 }, rot = { x = 0.000, y = 88.779, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 581194, monster_id = 21010201, pos = { x = 1024.838, y = 842.479, z = 552.173 }, rot = { x = 0.000, y = 80.841, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 581002, gadget_id = 70360001, pos = { x = 1035.000, y = 842.881, z = 552.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581008, gadget_id = 70290233, pos = { x = 1036.397, y = 843.965, z = 583.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581009, gadget_id = 70290233, pos = { x = 1050.019, y = 840.338, z = 518.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581010, gadget_id = 70290200, pos = { x = 1055.881, y = 844.096, z = 550.677 }, rot = { x = 352.236, y = 359.564, z = 6.414 }, level = 1, area_id = 300 },
	{ config_id = 581011, gadget_id = 70290300, pos = { x = 1058.009, y = 845.184, z = 552.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 581012, gadget_id = 70290200, pos = { x = 1023.526, y = 842.258, z = 580.484 }, rot = { x = 352.320, y = 359.804, z = 2.924 }, level = 1, area_id = 300 },
	-- 二级深渊核心2
	{ config_id = 581014, gadget_id = 70290205, pos = { x = 1025.331, y = 843.106, z = 587.424 }, rot = { x = 357.527, y = 359.803, z = 9.088 }, level = 1, area_id = 300 },
	{ config_id = 581015, gadget_id = 70290200, pos = { x = 1012.391, y = 843.364, z = 530.228 }, rot = { x = 0.000, y = 359.940, z = 0.000 }, level = 1, area_id = 300 },
	-- 二级深渊核心1
	{ config_id = 581016, gadget_id = 70290205, pos = { x = 1052.072, y = 839.011, z = 513.149 }, rot = { x = 346.997, y = 0.805, z = 352.946 }, level = 1, area_id = 300 },
	-- 黑泥包裹物6-3
	{ config_id = 581017, gadget_id = 70360342, pos = { x = 1008.666, y = 843.157, z = 537.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 二级深渊喷口1
	{ config_id = 581018, gadget_id = 70290266, pos = { x = 1051.975, y = 839.017, z = 512.930 }, rot = { x = 349.481, y = 0.738, z = 351.995 }, level = 1, area_id = 300 },
	-- 黑泥包裹物6-4
	{ config_id = 581019, gadget_id = 70360342, pos = { x = 1021.706, y = 842.587, z = 536.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-1
	{ config_id = 581020, gadget_id = 70290308, pos = { x = 1027.060, y = 841.910, z = 564.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 二级深渊喷口2
	{ config_id = 581021, gadget_id = 70290266, pos = { x = 1025.211, y = 842.984, z = 587.447 }, rot = { x = 0.000, y = 0.000, z = 8.128 }, level = 1, area_id = 300 },
	-- 3-1
	{ config_id = 581022, gadget_id = 70290353, pos = { x = 1035.149, y = 842.768, z = 543.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 1-1
	{ config_id = 581025, gadget_id = 70220005, pos = { x = 1051.222, y = 843.870, z = 551.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-2
	{ config_id = 581026, gadget_id = 70290323, pos = { x = 1031.122, y = 843.029, z = 572.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-1
	{ config_id = 581029, gadget_id = 70290353, pos = { x = 1041.324, y = 843.592, z = 533.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-2
	{ config_id = 581031, gadget_id = 70290323, pos = { x = 1038.347, y = 843.283, z = 571.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581032, gadget_id = 70800189, pos = { x = 1035.000, y = 842.881, z = 552.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	-- 1-1
	{ config_id = 581033, gadget_id = 70290323, pos = { x = 1051.082, y = 843.859, z = 551.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-1
	{ config_id = 581036, gadget_id = 70290309, pos = { x = 1031.020, y = 842.824, z = 573.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-2
	{ config_id = 581039, gadget_id = 70220005, pos = { x = 1052.204, y = 843.241, z = 543.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-1
	{ config_id = 581040, gadget_id = 70290309, pos = { x = 1015.558, y = 842.306, z = 542.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-2
	{ config_id = 581041, gadget_id = 70220005, pos = { x = 1012.511, y = 841.666, z = 552.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-3
	{ config_id = 581042, gadget_id = 70290323, pos = { x = 1008.745, y = 843.201, z = 538.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-4
	{ config_id = 581043, gadget_id = 70290309, pos = { x = 1021.461, y = 842.476, z = 536.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-2
	{ config_id = 581044, gadget_id = 70290309, pos = { x = 1031.102, y = 843.017, z = 573.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 3-1
	{ config_id = 581045, gadget_id = 70290308, pos = { x = 1035.277, y = 842.731, z = 544.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-2
	{ config_id = 581046, gadget_id = 70290323, pos = { x = 1038.339, y = 843.278, z = 571.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-2
	{ config_id = 581047, gadget_id = 70290323, pos = { x = 1052.185, y = 843.237, z = 543.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-1
	{ config_id = 581048, gadget_id = 70290309, pos = { x = 1040.942, y = 843.641, z = 533.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-1
	{ config_id = 581049, gadget_id = 70290353, pos = { x = 1026.838, y = 841.885, z = 564.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-3
	{ config_id = 581050, gadget_id = 70290323, pos = { x = 1021.594, y = 842.543, z = 536.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 1-1
	{ config_id = 581051, gadget_id = 70290309, pos = { x = 1051.238, y = 843.872, z = 551.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-4
	{ config_id = 581052, gadget_id = 70290353, pos = { x = 1021.495, y = 842.749, z = 536.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-1
	{ config_id = 581053, gadget_id = 70290308, pos = { x = 1031.120, y = 842.835, z = 573.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-2
	{ config_id = 581054, gadget_id = 70290323, pos = { x = 1027.924, y = 842.812, z = 557.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-1
	{ config_id = 581055, gadget_id = 70290309, pos = { x = 1027.231, y = 841.836, z = 564.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-2
	{ config_id = 581056, gadget_id = 70220005, pos = { x = 1038.235, y = 843.266, z = 571.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-2
	{ config_id = 581057, gadget_id = 70220005, pos = { x = 1012.717, y = 841.833, z = 552.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-1
	{ config_id = 581058, gadget_id = 70220005, pos = { x = 1015.671, y = 842.316, z = 543.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-2
	{ config_id = 581059, gadget_id = 70290309, pos = { x = 1012.671, y = 841.824, z = 552.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊喷口1
	{ config_id = 581060, gadget_id = 70290266, pos = { x = 1044.199, y = 843.149, z = 550.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊喷口2
	{ config_id = 581061, gadget_id = 70290266, pos = { x = 1036.462, y = 843.189, z = 564.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊喷口3
	{ config_id = 581062, gadget_id = 70290266, pos = { x = 1022.099, y = 842.215, z = 549.303 }, rot = { x = 0.000, y = 13.337, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊喷口6
	{ config_id = 581063, gadget_id = 70290266, pos = { x = 1011.435, y = 843.221, z = 534.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊喷口5
	{ config_id = 581064, gadget_id = 70290266, pos = { x = 1052.576, y = 842.301, z = 532.788 }, rot = { x = 352.019, y = 359.688, z = 4.467 }, level = 1, area_id = 300 },
	-- 深渊喷口4
	{ config_id = 581065, gadget_id = 70290266, pos = { x = 1024.857, y = 842.782, z = 576.087 }, rot = { x = 0.000, y = 0.000, z = 3.145 }, level = 1, area_id = 300 },
	-- 深渊核心1
	{ config_id = 581066, gadget_id = 70290204, pos = { x = 1044.030, y = 843.157, z = 550.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊核心4
	{ config_id = 581067, gadget_id = 70290204, pos = { x = 1024.851, y = 842.625, z = 576.165 }, rot = { x = 0.000, y = 57.532, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊核心2
	{ config_id = 581068, gadget_id = 70290204, pos = { x = 1036.528, y = 843.161, z = 564.645 }, rot = { x = 0.000, y = 308.183, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊核心3
	{ config_id = 581069, gadget_id = 70290204, pos = { x = 1022.078, y = 842.214, z = 549.421 }, rot = { x = 0.000, y = 13.337, z = 0.000 }, level = 1, area_id = 300 },
	-- 深渊核心5
	{ config_id = 581070, gadget_id = 70290204, pos = { x = 1052.575, y = 842.319, z = 532.913 }, rot = { x = 349.552, y = 359.501, z = 5.456 }, level = 1, area_id = 300 },
	-- 深渊核心6
	{ config_id = 581071, gadget_id = 70290204, pos = { x = 1011.547, y = 843.229, z = 534.534 }, rot = { x = 0.000, y = 46.601, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-4
	{ config_id = 581076, gadget_id = 70290323, pos = { x = 1021.717, y = 842.587, z = 536.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-3
	{ config_id = 581078, gadget_id = 70290323, pos = { x = 1008.688, y = 842.960, z = 538.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 1-1
	{ config_id = 581079, gadget_id = 70290323, pos = { x = 1051.048, y = 843.886, z = 551.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-2
	{ config_id = 581080, gadget_id = 70290308, pos = { x = 1027.680, y = 842.830, z = 557.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥2
	{ config_id = 581081, gadget_id = 70290233, pos = { x = 1030.226, y = 842.455, z = 562.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥1
	{ config_id = 581082, gadget_id = 70290233, pos = { x = 1047.473, y = 843.607, z = 553.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥3
	{ config_id = 581083, gadget_id = 70290233, pos = { x = 1028.226, y = 842.692, z = 546.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥4
	{ config_id = 581084, gadget_id = 70290233, pos = { x = 1034.755, y = 843.037, z = 566.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥5
	{ config_id = 581085, gadget_id = 70290233, pos = { x = 1051.412, y = 842.818, z = 539.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥6
	{ config_id = 581086, gadget_id = 70290233, pos = { x = 1016.286, y = 842.893, z = 538.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物5-1
	{ config_id = 581087, gadget_id = 70360342, pos = { x = 1041.107, y = 843.475, z = 533.989 }, rot = { x = 350.112, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物5-2
	{ config_id = 581088, gadget_id = 70360342, pos = { x = 1052.294, y = 843.100, z = 543.329 }, rot = { x = 0.000, y = 0.000, z = 6.459 }, level = 1, area_id = 300 },
	-- 黑泥包裹物6-1
	{ config_id = 581089, gadget_id = 70360342, pos = { x = 1015.662, y = 842.251, z = 542.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物6-2
	{ config_id = 581090, gadget_id = 70360342, pos = { x = 1012.673, y = 841.678, z = 552.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物4-1
	{ config_id = 581091, gadget_id = 70360342, pos = { x = 1030.995, y = 842.807, z = 573.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物4-2
	{ config_id = 581092, gadget_id = 70360342, pos = { x = 1038.213, y = 843.158, z = 571.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物3-1
	{ config_id = 581093, gadget_id = 70360342, pos = { x = 1035.229, y = 842.544, z = 544.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物1-1
	{ config_id = 581094, gadget_id = 70360342, pos = { x = 1051.076, y = 843.626, z = 551.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物2-1
	{ config_id = 581095, gadget_id = 70360342, pos = { x = 1026.854, y = 841.784, z = 564.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 黑泥包裹物2-2
	{ config_id = 581096, gadget_id = 70360342, pos = { x = 1027.692, y = 842.239, z = 557.071 }, rot = { x = 0.000, y = 348.419, z = 0.000 }, level = 1, area_id = 300 },
	-- 3-1
	{ config_id = 581098, gadget_id = 70290323, pos = { x = 1035.289, y = 842.755, z = 544.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 3-1
	{ config_id = 581099, gadget_id = 70290353, pos = { x = 1035.271, y = 842.750, z = 544.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-1
	{ config_id = 581100, gadget_id = 70290309, pos = { x = 1031.172, y = 843.041, z = 572.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-2
	{ config_id = 581101, gadget_id = 70290308, pos = { x = 1038.297, y = 843.265, z = 571.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-1
	{ config_id = 581102, gadget_id = 70290308, pos = { x = 1041.158, y = 843.638, z = 534.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-2
	{ config_id = 581103, gadget_id = 70220005, pos = { x = 1052.432, y = 843.271, z = 543.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-1
	{ config_id = 581104, gadget_id = 70290309, pos = { x = 1015.676, y = 842.318, z = 542.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581105, gadget_id = 70800222, pos = { x = 1035.000, y = 842.881, z = 552.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-3
	{ config_id = 581106, gadget_id = 70290353, pos = { x = 1008.781, y = 843.190, z = 537.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-1
	{ config_id = 581108, gadget_id = 70290353, pos = { x = 1026.832, y = 841.881, z = 564.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-1
	{ config_id = 581113, gadget_id = 70290323, pos = { x = 1031.016, y = 842.945, z = 573.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-1
	{ config_id = 581115, gadget_id = 70290323, pos = { x = 1041.134, y = 843.638, z = 533.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-2
	{ config_id = 581116, gadget_id = 70290353, pos = { x = 1052.367, y = 843.245, z = 543.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-4
	{ config_id = 581117, gadget_id = 70290309, pos = { x = 1021.600, y = 842.731, z = 536.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-2
	{ config_id = 581118, gadget_id = 70290309, pos = { x = 1012.658, y = 841.829, z = 552.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-1
	{ config_id = 581119, gadget_id = 70290308, pos = { x = 1015.754, y = 842.325, z = 542.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-3
	{ config_id = 581122, gadget_id = 70290309, pos = { x = 1008.688, y = 842.960, z = 538.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 1-1
	{ config_id = 581123, gadget_id = 70220005, pos = { x = 1051.048, y = 843.886, z = 551.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-2
	{ config_id = 581124, gadget_id = 70290353, pos = { x = 1027.680, y = 842.830, z = 557.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 3-1
	{ config_id = 581125, gadget_id = 70290308, pos = { x = 1035.289, y = 842.755, z = 544.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-2
	{ config_id = 581126, gadget_id = 70290308, pos = { x = 1038.297, y = 843.265, z = 571.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 2-1
	{ config_id = 581127, gadget_id = 70290309, pos = { x = 1026.832, y = 841.881, z = 564.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 4-1
	{ config_id = 581128, gadget_id = 70290323, pos = { x = 1031.016, y = 842.945, z = 573.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-1
	{ config_id = 581129, gadget_id = 70290309, pos = { x = 1041.134, y = 843.638, z = 533.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 5-2
	{ config_id = 581130, gadget_id = 70290323, pos = { x = 1052.367, y = 843.245, z = 543.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-2
	{ config_id = 581131, gadget_id = 70290353, pos = { x = 1012.658, y = 841.829, z = 552.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-1
	{ config_id = 581132, gadget_id = 70220005, pos = { x = 1015.754, y = 842.325, z = 542.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 6-4
	{ config_id = 581139, gadget_id = 70290353, pos = { x = 1021.610, y = 842.551, z = 536.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 581198, gadget_id = 70800227, pos = { x = 1035.000, y = 843.000, z = 553.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	-- ShowTemplateReminder
	{ config_id = 581196, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1035.000, y = 843.000, z = 553.000 }, area_id = 300 },
	-- fail_region
	{ config_id = 581197, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1035.000, y = 843.000, z = 553.000 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- ShowTemplateReminder
	{ config_id = 1581196, name = "ENTER_REGION_581196", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_581196", action = "action_EVENT_ENTER_REGION_581196" }
}

-- 变量
variables = {
	{ config_id = 1, name = "energy", value = 0, no_refresh = false },
	{ config_id = 2, name = "stage", value = 1, no_refresh = false },
	{ config_id = 3, name = "failed", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1581003, name = "GADGET_CREATE_581003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_581003", action = "action_EVENT_GADGET_CREATE_581003" },
		{ config_id = 1581004, name = "SELECT_OPTION_581004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_581004", action = "action_EVENT_SELECT_OPTION_581004" },
		{ config_id = 1581005, name = "CHALLENGE_SUCCESS_581005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_581005" },
		{ config_id = 1581006, name = "CHALLENGE_FAIL_581006", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_581006" },
		{ config_id = 1581023, name = "ANY_GADGET_DIE_581023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581023", action = "action_EVENT_ANY_GADGET_DIE_581023", trigger_count = 0 },
		{ config_id = 1581024, name = "ANY_GADGET_DIE_581024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581024", action = "action_EVENT_ANY_GADGET_DIE_581024", trigger_count = 0 },
		{ config_id = 1581027, name = "TIME_AXIS_PASS_581027", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawn2", condition = "condition_EVENT_TIME_AXIS_PASS_581027", action = "action_EVENT_TIME_AXIS_PASS_581027", trigger_count = 0 },
		{ config_id = 1581028, name = "TIME_AXIS_PASS_581028", event = EventType.EVENT_TIME_AXIS_PASS, source = "repawn3", condition = "condition_EVENT_TIME_AXIS_PASS_581028", action = "action_EVENT_TIME_AXIS_PASS_581028", trigger_count = 0 },
		{ config_id = 1581072, name = "VARIABLE_CHANGE_581072", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581072", action = "action_EVENT_VARIABLE_CHANGE_581072", tag = "888" },
		{ config_id = 1581073, name = "VARIABLE_CHANGE_581073", event = EventType.EVENT_VARIABLE_CHANGE, source = "energy", condition = "condition_EVENT_VARIABLE_CHANGE_581073", action = "action_EVENT_VARIABLE_CHANGE_581073" },
		{ config_id = 1581074, name = "VARIABLE_CHANGE_581074", event = EventType.EVENT_VARIABLE_CHANGE, source = "energy", condition = "condition_EVENT_VARIABLE_CHANGE_581074", action = "action_EVENT_VARIABLE_CHANGE_581074" },
		{ config_id = 1581075, name = "VARIABLE_CHANGE_581075", event = EventType.EVENT_VARIABLE_CHANGE, source = "energy", condition = "condition_EVENT_VARIABLE_CHANGE_581075", action = "action_EVENT_VARIABLE_CHANGE_581075" },
		{ config_id = 1581097, name = "ANY_GADGET_DIE_581097", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581097", action = "action_EVENT_ANY_GADGET_DIE_581097", trigger_count = 0 },
		{ config_id = 1581107, name = "VARIABLE_CHANGE_581107", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581107", action = "action_EVENT_VARIABLE_CHANGE_581107" },
		{ config_id = 1581109, name = "TIME_AXIS_PASS_581109", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner3", condition = "condition_EVENT_TIME_AXIS_PASS_581109", action = "action_EVENT_TIME_AXIS_PASS_581109", trigger_count = 0 },
		{ config_id = 1581110, name = "ANY_GADGET_DIE_581110", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581110", action = "action_EVENT_ANY_GADGET_DIE_581110", trigger_count = 0 },
		{ config_id = 1581111, name = "VARIABLE_CHANGE_581111", event = EventType.EVENT_VARIABLE_CHANGE, source = "energy", condition = "condition_EVENT_VARIABLE_CHANGE_581111", action = "action_EVENT_VARIABLE_CHANGE_581111" },
		{ config_id = 1581133, name = "ANY_GADGET_DIE_581133", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581133", action = "action_EVENT_ANY_GADGET_DIE_581133", trigger_count = 0 },
		{ config_id = 1581134, name = "TIME_AXIS_PASS_581134", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner1", condition = "condition_EVENT_TIME_AXIS_PASS_581134", action = "action_EVENT_TIME_AXIS_PASS_581134", trigger_count = 0 },
		{ config_id = 1581135, name = "ANY_GADGET_DIE_581135", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581135", action = "action_EVENT_ANY_GADGET_DIE_581135", trigger_count = 0 },
		{ config_id = 1581136, name = "TIME_AXIS_PASS_581136", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner1", condition = "condition_EVENT_TIME_AXIS_PASS_581136", action = "action_EVENT_TIME_AXIS_PASS_581136", trigger_count = 0 },
		{ config_id = 1581137, name = "ANY_GADGET_DIE_581137", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581137", action = "action_EVENT_ANY_GADGET_DIE_581137", trigger_count = 0 },
		{ config_id = 1581138, name = "TIME_AXIS_PASS_581138", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner1", condition = "condition_EVENT_TIME_AXIS_PASS_581138", action = "action_EVENT_TIME_AXIS_PASS_581138", trigger_count = 0 },
		{ config_id = 1581140, name = "ANY_GADGET_DIE_581140", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581140", action = "action_EVENT_ANY_GADGET_DIE_581140", trigger_count = 0 },
		{ config_id = 1581141, name = "TIME_AXIS_PASS_581141", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner2", condition = "condition_EVENT_TIME_AXIS_PASS_581141", action = "action_EVENT_TIME_AXIS_PASS_581141", trigger_count = 0 },
		{ config_id = 1581142, name = "ANY_GADGET_DIE_581142", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581142", action = "action_EVENT_ANY_GADGET_DIE_581142", trigger_count = 0 },
		{ config_id = 1581143, name = "ANY_GADGET_DIE_581143", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581143", action = "action_EVENT_ANY_GADGET_DIE_581143", trigger_count = 0 },
		{ config_id = 1581144, name = "TIME_AXIS_PASS_581144", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner2", condition = "condition_EVENT_TIME_AXIS_PASS_581144", action = "action_EVENT_TIME_AXIS_PASS_581144", trigger_count = 0 },
		{ config_id = 1581145, name = "ANY_GADGET_DIE_581145", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581145", action = "action_EVENT_ANY_GADGET_DIE_581145", trigger_count = 0 },
		{ config_id = 1581146, name = "TIME_AXIS_PASS_581146", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner2", condition = "condition_EVENT_TIME_AXIS_PASS_581146", action = "action_EVENT_TIME_AXIS_PASS_581146", trigger_count = 0 },
		{ config_id = 1581147, name = "ANY_GADGET_DIE_581147", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581147", action = "action_EVENT_ANY_GADGET_DIE_581147", trigger_count = 0 },
		{ config_id = 1581148, name = "ANY_GADGET_DIE_581148", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581148", action = "action_EVENT_ANY_GADGET_DIE_581148", trigger_count = 0 },
		{ config_id = 1581149, name = "ANY_GADGET_DIE_581149", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581149", action = "action_EVENT_ANY_GADGET_DIE_581149", trigger_count = 0 },
		{ config_id = 1581150, name = "TIME_AXIS_PASS_581150", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner3", condition = "condition_EVENT_TIME_AXIS_PASS_581150", action = "action_EVENT_TIME_AXIS_PASS_581150", trigger_count = 0 },
		{ config_id = 1581151, name = "ANY_GADGET_DIE_581151", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581151", action = "action_EVENT_ANY_GADGET_DIE_581151", trigger_count = 0 },
		{ config_id = 1581152, name = "TIME_AXIS_PASS_581152", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner2", condition = "condition_EVENT_TIME_AXIS_PASS_581152", action = "action_EVENT_TIME_AXIS_PASS_581152", trigger_count = 0 },
		{ config_id = 1581153, name = "TIME_AXIS_PASS_581153", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner3", condition = "condition_EVENT_TIME_AXIS_PASS_581153", action = "action_EVENT_TIME_AXIS_PASS_581153", trigger_count = 0 },
		{ config_id = 1581154, name = "ANY_GADGET_DIE_581154", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581154", action = "action_EVENT_ANY_GADGET_DIE_581154", trigger_count = 0 },
		{ config_id = 1581155, name = "ANY_GADGET_DIE_581155", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581155", action = "action_EVENT_ANY_GADGET_DIE_581155", trigger_count = 0 },
		{ config_id = 1581156, name = "TIME_AXIS_PASS_581156", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner3", condition = "condition_EVENT_TIME_AXIS_PASS_581156", action = "action_EVENT_TIME_AXIS_PASS_581156", trigger_count = 0 },
		{ config_id = 1581157, name = "TIME_AXIS_PASS_581157", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner1", condition = "condition_EVENT_TIME_AXIS_PASS_581157", action = "action_EVENT_TIME_AXIS_PASS_581157", trigger_count = 0 },
		{ config_id = 1581158, name = "TIME_AXIS_PASS_581158", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner1", condition = "condition_EVENT_TIME_AXIS_PASS_581158", action = "action_EVENT_TIME_AXIS_PASS_581158", trigger_count = 0 },
		{ config_id = 1581159, name = "TIME_AXIS_PASS_581159", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner2", condition = "condition_EVENT_TIME_AXIS_PASS_581159", action = "action_EVENT_TIME_AXIS_PASS_581159", trigger_count = 0 },
		{ config_id = 1581160, name = "ANY_GADGET_DIE_581160", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581160", action = "action_EVENT_ANY_GADGET_DIE_581160", trigger_count = 0 },
		{ config_id = 1581161, name = "TIME_AXIS_PASS_581161", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter1", condition = "condition_EVENT_TIME_AXIS_PASS_581161", action = "action_EVENT_TIME_AXIS_PASS_581161", trigger_count = 0 },
		{ config_id = 1581162, name = "ANY_GADGET_DIE_581162", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581162", action = "action_EVENT_ANY_GADGET_DIE_581162", trigger_count = 0 },
		{ config_id = 1581163, name = "TIME_AXIS_PASS_581163", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter1", condition = "condition_EVENT_TIME_AXIS_PASS_581163", action = "action_EVENT_TIME_AXIS_PASS_581163", trigger_count = 0 },
		{ config_id = 1581164, name = "ANY_GADGET_DIE_581164", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581164", action = "action_EVENT_ANY_GADGET_DIE_581164", trigger_count = 0 },
		{ config_id = 1581165, name = "ANY_GADGET_DIE_581165", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581165", action = "action_EVENT_ANY_GADGET_DIE_581165", trigger_count = 0 },
		{ config_id = 1581166, name = "TIME_AXIS_PASS_581166", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter1", condition = "condition_EVENT_TIME_AXIS_PASS_581166", action = "action_EVENT_TIME_AXIS_PASS_581166", trigger_count = 0 },
		{ config_id = 1581167, name = "TIME_AXIS_PASS_581167", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter1", condition = "condition_EVENT_TIME_AXIS_PASS_581167", action = "action_EVENT_TIME_AXIS_PASS_581167", trigger_count = 0 },
		{ config_id = 1581168, name = "TIME_AXIS_PASS_581168", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnInner3", condition = "condition_EVENT_TIME_AXIS_PASS_581168", action = "action_EVENT_TIME_AXIS_PASS_581168", trigger_count = 0 },
		{ config_id = 1581169, name = "ANY_GADGET_DIE_581169", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581169", action = "action_EVENT_ANY_GADGET_DIE_581169", trigger_count = 0 },
		{ config_id = 1581170, name = "ANY_GADGET_DIE_581170", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581170", action = "action_EVENT_ANY_GADGET_DIE_581170", trigger_count = 0 },
		{ config_id = 1581171, name = "TIME_AXIS_PASS_581171", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter2", condition = "condition_EVENT_TIME_AXIS_PASS_581171", action = "action_EVENT_TIME_AXIS_PASS_581171", trigger_count = 0 },
		{ config_id = 1581172, name = "TIME_AXIS_PASS_581172", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter2", condition = "condition_EVENT_TIME_AXIS_PASS_581172", action = "action_EVENT_TIME_AXIS_PASS_581172", trigger_count = 0 },
		{ config_id = 1581173, name = "ANY_GADGET_DIE_581173", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581173", action = "action_EVENT_ANY_GADGET_DIE_581173", trigger_count = 0 },
		{ config_id = 1581174, name = "ANY_GADGET_DIE_581174", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581174", action = "action_EVENT_ANY_GADGET_DIE_581174", trigger_count = 0 },
		{ config_id = 1581175, name = "TIME_AXIS_PASS_581175", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter2", condition = "condition_EVENT_TIME_AXIS_PASS_581175", action = "action_EVENT_TIME_AXIS_PASS_581175", trigger_count = 0 },
		{ config_id = 1581176, name = "TIME_AXIS_PASS_581176", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter3", condition = "condition_EVENT_TIME_AXIS_PASS_581176", action = "action_EVENT_TIME_AXIS_PASS_581176", trigger_count = 0 },
		{ config_id = 1581177, name = "ANY_GADGET_DIE_581177", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581177", action = "action_EVENT_ANY_GADGET_DIE_581177", trigger_count = 0 },
		{ config_id = 1581178, name = "ANY_GADGET_DIE_581178", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581178", action = "action_EVENT_ANY_GADGET_DIE_581178", trigger_count = 0 },
		{ config_id = 1581179, name = "TIME_AXIS_PASS_581179", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter2", condition = "condition_EVENT_TIME_AXIS_PASS_581179", action = "action_EVENT_TIME_AXIS_PASS_581179", trigger_count = 0 },
		{ config_id = 1581180, name = "ANY_GADGET_DIE_581180", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581180", action = "action_EVENT_ANY_GADGET_DIE_581180", trigger_count = 0 },
		{ config_id = 1581181, name = "ANY_GADGET_DIE_581181", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581181", action = "action_EVENT_ANY_GADGET_DIE_581181", trigger_count = 0 },
		{ config_id = 1581182, name = "ANY_GADGET_DIE_581182", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581182", action = "action_EVENT_ANY_GADGET_DIE_581182", trigger_count = 0 },
		{ config_id = 1581183, name = "TIME_AXIS_PASS_581183", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter3", condition = "condition_EVENT_TIME_AXIS_PASS_581183", action = "action_EVENT_TIME_AXIS_PASS_581183", trigger_count = 0 },
		{ config_id = 1581184, name = "ANY_GADGET_DIE_581184", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581184", action = "action_EVENT_ANY_GADGET_DIE_581184", trigger_count = 0 },
		{ config_id = 1581185, name = "TIME_AXIS_PASS_581185", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter3", condition = "condition_EVENT_TIME_AXIS_PASS_581185", action = "action_EVENT_TIME_AXIS_PASS_581185", trigger_count = 0 },
		{ config_id = 1581186, name = "TIME_AXIS_PASS_581186", event = EventType.EVENT_TIME_AXIS_PASS, source = "energyBasic", condition = "condition_EVENT_TIME_AXIS_PASS_581186", action = "action_EVENT_TIME_AXIS_PASS_581186", trigger_count = 0 },
		{ config_id = 1581187, name = "ANY_GADGET_DIE_581187", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_581187", action = "action_EVENT_ANY_GADGET_DIE_581187", trigger_count = 0 },
		{ config_id = 1581188, name = "TIME_AXIS_PASS_581188", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter3", condition = "condition_EVENT_TIME_AXIS_PASS_581188", action = "action_EVENT_TIME_AXIS_PASS_581188", trigger_count = 0 },
		{ config_id = 1581189, name = "TIME_AXIS_PASS_581189", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter1", condition = "condition_EVENT_TIME_AXIS_PASS_581189", action = "action_EVENT_TIME_AXIS_PASS_581189", trigger_count = 0 },
		{ config_id = 1581190, name = "TIME_AXIS_PASS_581190", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter2", condition = "condition_EVENT_TIME_AXIS_PASS_581190", action = "action_EVENT_TIME_AXIS_PASS_581190", trigger_count = 0 },
		{ config_id = 1581191, name = "ANY_MONSTER_LIVE_581191", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_581191" },
		{ config_id = 1581195, name = "TIME_AXIS_PASS_581195", event = EventType.EVENT_TIME_AXIS_PASS, source = "respawnOuter3", condition = "condition_EVENT_TIME_AXIS_PASS_581195", action = "action_EVENT_TIME_AXIS_PASS_581195", trigger_count = 0 }
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
	end_suite = 16,
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
		-- description = start_suite,
		monsters = { },
		gadgets = { 581002, 581010, 581011, 581012, 581015, 581018, 581021, 581032, 581060, 581061, 581062, 581063, 581064, 581065, 581105 },
		regions = { 581196, 581197 },
		triggers = { "ENTER_REGION_581196" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 初始黑泥,
		monsters = { },
		gadgets = { 581008, 581009, 581014, 581016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 内圈黑泥,
		monsters = { },
		gadgets = { 581066, 581068, 581069, 581081, 581082, 581083, 581093, 581094, 581095, 581096 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 外圈黑泥,
		monsters = { },
		gadgets = { 581017, 581019, 581067, 581070, 581071, 581084, 581085, 581086, 581087, 581088, 581089, 581090, 581091, 581092 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物1,
		monsters = { 581001, 581013, 581030, 581038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 怪物2,
		monsters = { 581034, 581035, 581077, 581192 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物3,
		monsters = { 581007, 581037, 581193, 581194 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 黑泥包裹物怪物1（废弃）,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 黑泥包裹物物件1,
		monsters = { },
		gadgets = { 581020, 581022, 581025, 581026, 581029, 581031, 581036, 581039, 581040, 581041, 581042, 581043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 黑泥包裹物怪物2（废弃）,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 黑泥包裹物物件2,
		monsters = { },
		gadgets = { 581033, 581044, 581045, 581046, 581047, 581048, 581049, 581050, 581052, 581053, 581058, 581059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 黑泥包裹物怪物3（废弃）,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 黑泥包裹物物件3,
		monsters = { },
		gadgets = { 581051, 581054, 581055, 581056, 581057, 581076, 581099, 581100, 581102, 581103, 581104, 581106 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 黑泥包裹物怪物4(废弃),
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 黑泥包裹物物件4,
		monsters = { },
		gadgets = { 581078, 581079, 581080, 581098, 581101, 581108, 581113, 581115, 581116, 581117, 581118, 581119 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 怪物4,
		monsters = { 581112, 581114, 581120, 581121 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 黑泥包裹物5,
		monsters = { },
		gadgets = { 581122, 581123, 581124, 581125, 581126, 581127, 581128, 581129, 581130, 581131, 581132, 581139 },
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
function condition_EVENT_ENTER_REGION_581196(context, evt)
	if evt.param1 ~= 581196 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_581196(context, evt)
	-- 显示id为180的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,180,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_7/Activity_LumenCharge"