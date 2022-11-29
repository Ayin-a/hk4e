-- 基础信息
local base_info = {
	group_id = 166001574
}

-- DEFS_MISCS
defs = {
        region_vision = 574001, --性能优化圈的configid
        fail_region = 574001, --挑战失败圈的configid
        operator_id = 574048, --操作台的configid
        option_id = 175, --操作台的option id
        Pursina_id = 574021, --挖掘桩的configid
        pursina_tip = 574100, --挖掘桩的configid
        mud_cover_id = 574040, -- 包裹住光钉的黑泥包裹物
        delay_time = 4, -- 场上刷出黑泥地毯之后，多久刷出黑泥包裹物
        reminder_id = 400139, -- 每波刷出黑泥时，弹出remindert提示
        reminder_id2 = 400151, -- 光钉进入故障状态时，弹出remindert提示
        enemy_gadget = 574102, --播空特效的物件
}

-- 黑泥配置。每个黑泥核心死亡时，将对应的黑泥物件给remove掉，并且将对应的charge_point_mud_cover_id黑泥包裹物件给清掉
-- 当出现黑泥核心时，会创生mud_id对应的黑泥物件，会创生charge_point_mud_cover_id对应的黑泥包裹物
local black_mud_list = {
    [1] = {core_id = 574028, mud_id = 574034, charge_point_mud_cover_id = 574095},
    [2] = {core_id = 574029, mud_id = 574035, charge_point_mud_cover_id = 574095},
    [3] = {core_id = 574030, mud_id = 574036, charge_point_mud_cover_id = 574095},
    [4] = {core_id = 574031, mud_id = 574037, charge_point_mud_cover_id = 574096},
    [5] = {core_id = 574032, mud_id = 574038, charge_point_mud_cover_id = 574096},
    [6] = {core_id = 574033, mud_id = 574039, charge_point_mud_cover_id = 574096},
}


-- 发光蜜虫配置。
-- 发光蜜虫初始存在
-- 当场景中出现对应mud_cover_id的黑泥包裹物时，将发光蜜虫移除；当该黑泥包裹物被清除时，将发光蜜虫刷回来
local charge_point_list = {
    [574095] = 574093,
    [574096] = 574094,
}

-- 黑泥相关规则
-- 该波次场上刷出黑泥时，出现黑泥包裹物包裹住光钉，光钉停止运作
-- 当前场上所有的黑泥被清掉时，杀掉黑泥包裹物，并让光钉回复正常状态
-- 特殊情况：当之前的波次黑泥没有被干掉，下个波次继续刷，补刷黑泥
local monster_list = {
        ---1波：丘丘人
        { tide_mons = {574002,574003,574004,574005,574006,574050}, mud = {}, next_tide = 2,min = 6, max = 6, next_time = 2}, 
        --- 黑泥波+史莱姆
        { tide_mons = {574007,574008,574009,574010,574052}, mud = {3}, next_tide = 3,min = 5, max = 5, tide_delay = 4, next_time = 2},
        ---3波：精英暴徒+丘丘人
        { tide_mons = {574011,574012,574013,574014,574015,574054}, mud = {}, next_tide = 4,min = 6, max = 6, next_time = 2}, 
        --- 黑泥波+史莱姆
        { tide_mons = {574016,574017,574018,574019,574020}, mud = {4}, next_tide = 5,min = 5, max = 5, tide_delay = 4, next_time = 2},
        ---5波：遗迹怪
        { tide_mons = {574058,574059,574057}, mud = {}, next_tide = 6,min = 3, max = 3, next_time = 2},
        --- 黑泥波+丘丘人
        { tide_mons = {574061,574062,574063,574064,574065,574066}, mud = {1}, next_tide = 7,min = 6, max = 6, tide_delay = 4, next_time = 2},
        ---7波：遗迹
        { tide_mons = {574067,574068,574069}, mud = {}, next_tide = 8,min = 2, max = 2, next_time = 2}, 
        --- 黑泥波+丘丘人
        { tide_mons = {574071,574072,574073,574074,574075,574076}, mud = {4,6}, next_tide = 9,min = 6, max = 6, tide_delay = 5, next_time = 2},
        ---9波：猎犬
        { tide_mons = {574077,574078,574079,574080,574081}, mud = {}, next_tide = 10,min = 4, max = 4, next_time = 2},
        --- 黑泥波+丘丘人
        { tide_mons = {574083,574084,574085,574086,574087,574088}, mud = {1,3,4}, next_tide = 11,min = 6, max = 6, tide_delay = 5, next_time = 2},
        ---11波：黑蛇骑士
        { tide_mons = {574089,574090}, mud = {}, next_tide = 6,min = 2, max = 2, next_time = 2},  
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 1
	[574002] = { config_id = 574002, monster_id = 21030103, pos = { x = 790.555, y = 706.021, z = 226.138 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, area_id = 300 },
	-- 1
	[574003] = { config_id = 574003, monster_id = 21010401, pos = { x = 792.967, y = 706.072, z = 228.063 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 1
	[574004] = { config_id = 574004, monster_id = 21010401, pos = { x = 792.418, y = 706.077, z = 224.657 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 1
	[574005] = { config_id = 574005, monster_id = 21010201, pos = { x = 789.037, y = 706.014, z = 228.514 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 1
	[574006] = { config_id = 574006, monster_id = 21010201, pos = { x = 787.829, y = 705.957, z = 224.676 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574007] = { config_id = 574007, monster_id = 20011401, pos = { x = 796.058, y = 706.164, z = 221.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574008] = { config_id = 574008, monster_id = 20011401, pos = { x = 797.935, y = 706.197, z = 219.022 }, rot = { x = 0.000, y = 342.317, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574009] = { config_id = 574009, monster_id = 20011401, pos = { x = 793.896, y = 706.031, z = 217.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574010] = { config_id = 574010, monster_id = 20011401, pos = { x = 799.765, y = 706.172, z = 220.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 3
	[574011] = { config_id = 574011, monster_id = 21020202, pos = { x = 795.527, y = 706.168, z = 232.610 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, area_id = 300 },
	-- 3
	[574012] = { config_id = 574012, monster_id = 21020703, pos = { x = 792.951, y = 706.265, z = 233.428 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, area_id = 300 },
	-- 3
	[574013] = { config_id = 574013, monster_id = 21010501, pos = { x = 796.125, y = 706.227, z = 235.465 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 3
	[574014] = { config_id = 574014, monster_id = 21010201, pos = { x = 797.635, y = 706.205, z = 232.477 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 3
	[574015] = { config_id = 574015, monster_id = 21010201, pos = { x = 794.816, y = 706.159, z = 231.252 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574016] = { config_id = 574016, monster_id = 20011401, pos = { x = 806.242, y = 706.229, z = 238.537 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574017] = { config_id = 574017, monster_id = 20011401, pos = { x = 802.075, y = 706.210, z = 239.415 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574018] = { config_id = 574018, monster_id = 20011401, pos = { x = 802.016, y = 706.168, z = 234.784 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574019] = { config_id = 574019, monster_id = 20011401, pos = { x = 806.841, y = 706.222, z = 236.576 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574020] = { config_id = 574020, monster_id = 20011401, pos = { x = 804.656, y = 706.189, z = 237.451 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 1
	[574050] = { config_id = 574050, monster_id = 21010201, pos = { x = 791.133, y = 706.118, z = 229.985 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 1
	[574051] = { config_id = 574051, monster_id = 21010201, pos = { x = 789.916, y = 705.995, z = 224.988 }, rot = { x = 0.000, y = 95.294, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574052] = { config_id = 574052, monster_id = 20011401, pos = { x = 793.544, y = 706.069, z = 220.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 2
	[574053] = { config_id = 574053, monster_id = 20011401, pos = { x = 796.308, y = 706.147, z = 218.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 3
	[574054] = { config_id = 574054, monster_id = 21010201, pos = { x = 794.358, y = 706.200, z = 234.208 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 3
	[574055] = { config_id = 574055, monster_id = 21010201, pos = { x = 792.313, y = 706.273, z = 231.755 }, rot = { x = 0.000, y = 147.894, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 4
	[574056] = { config_id = 574056, monster_id = 20011401, pos = { x = 806.713, y = 706.217, z = 235.566 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 5
	[574057] = { config_id = 574057, monster_id = 24020201, pos = { x = 806.211, y = 706.260, z = 230.326 }, rot = { x = 0.000, y = 193.896, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 300 },
	-- 5
	[574058] = { config_id = 574058, monster_id = 24020401, pos = { x = 805.893, y = 706.265, z = 227.464 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 100, area_id = 300 },
	-- 5
	[574059] = { config_id = 574059, monster_id = 24020201, pos = { x = 808.801, y = 706.256, z = 228.031 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 300 },
	-- 5
	[574060] = { config_id = 574060, monster_id = 21010201, pos = { x = 806.389, y = 706.262, z = 224.425 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574061] = { config_id = 574061, monster_id = 21010501, pos = { x = 798.330, y = 706.180, z = 221.246 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574062] = { config_id = 574062, monster_id = 21010501, pos = { x = 795.759, y = 706.158, z = 222.426 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574063] = { config_id = 574063, monster_id = 21010501, pos = { x = 798.924, y = 706.150, z = 224.099 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574064] = { config_id = 574064, monster_id = 21010201, pos = { x = 800.432, y = 706.161, z = 221.110 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574065] = { config_id = 574065, monster_id = 21010201, pos = { x = 798.639, y = 706.189, z = 219.850 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 6
	[574066] = { config_id = 574066, monster_id = 21010201, pos = { x = 792.483, y = 706.060, z = 221.374 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 7
	[574067] = { config_id = 574067, monster_id = 24010101, pos = { x = 793.900, y = 706.103, z = 227.693 }, rot = { x = 0.000, y = 88.374, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 100, area_id = 300 },
	-- 7
	[574068] = { config_id = 574068, monster_id = 24020201, pos = { x = 790.303, y = 706.002, z = 225.063 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 300 },
	-- 7
	[574069] = { config_id = 574069, monster_id = 24020201, pos = { x = 788.116, y = 706.061, z = 229.401 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 300 },
	-- 7
	[574070] = { config_id = 574070, monster_id = 24020101, pos = { x = 790.544, y = 706.040, z = 228.590 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 300 },
	-- 8
	[574071] = { config_id = 574071, monster_id = 21010501, pos = { x = 805.000, y = 706.191, z = 236.560 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 8
	[574072] = { config_id = 574072, monster_id = 21010501, pos = { x = 799.091, y = 706.197, z = 236.977 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 8
	[574073] = { config_id = 574073, monster_id = 21010501, pos = { x = 805.363, y = 706.178, z = 238.347 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 8
	[574074] = { config_id = 574074, monster_id = 21010201, pos = { x = 806.874, y = 706.223, z = 235.358 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 8
	[574075] = { config_id = 574075, monster_id = 21010201, pos = { x = 805.643, y = 706.288, z = 231.862 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 8
	[574076] = { config_id = 574076, monster_id = 21010201, pos = { x = 802.286, y = 706.175, z = 234.199 }, rot = { x = 0.000, y = 192.130, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 9
	[574077] = { config_id = 574077, monster_id = 22050201, pos = { x = 808.010, y = 706.268, z = 226.422 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 101, area_id = 300 },
	-- 9
	[574078] = { config_id = 574078, monster_id = 22040201, pos = { x = 804.416, y = 706.212, z = 223.796 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 300 },
	-- 9
	[574079] = { config_id = 574079, monster_id = 22040201, pos = { x = 804.840, y = 706.226, z = 228.624 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 300 },
	-- 9
	[574080] = { config_id = 574080, monster_id = 22040201, pos = { x = 809.570, y = 706.214, z = 229.759 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 300 },
	-- 9
	[574081] = { config_id = 574081, monster_id = 22040201, pos = { x = 808.111, y = 706.331, z = 223.231 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 300 },
	-- 9
	[574082] = { config_id = 574082, monster_id = 22040201, pos = { x = 809.809, y = 706.219, z = 226.952 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 300 },
	-- 10
	[574083] = { config_id = 574083, monster_id = 21010501, pos = { x = 798.462, y = 706.170, z = 221.872 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 10
	[574084] = { config_id = 574084, monster_id = 21010501, pos = { x = 795.878, y = 706.155, z = 222.690 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 10
	[574085] = { config_id = 574085, monster_id = 21010501, pos = { x = 799.053, y = 706.142, z = 224.725 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 10
	[574086] = { config_id = 574086, monster_id = 21010201, pos = { x = 800.562, y = 706.159, z = 221.735 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 10
	[574087] = { config_id = 574087, monster_id = 21010201, pos = { x = 798.766, y = 706.187, z = 220.664 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 10
	[574088] = { config_id = 574088, monster_id = 21010201, pos = { x = 793.800, y = 706.114, z = 221.580 }, rot = { x = 0.000, y = 2.170, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 },
	-- 11
	[574089] = { config_id = 574089, monster_id = 22080101, pos = { x = 790.676, y = 706.022, z = 227.195 }, rot = { x = 0.000, y = 100.431, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 101, area_id = 300 },
	-- 11
	[574090] = { config_id = 574090, monster_id = 22080101, pos = { x = 793.832, y = 706.103, z = 225.466 }, rot = { x = 0.000, y = 100.431, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 101, area_id = 300 },
	-- 11
	[574091] = { config_id = 574091, monster_id = 22080101, pos = { x = 791.645, y = 706.099, z = 229.802 }, rot = { x = 0.000, y = 100.431, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 101, area_id = 300 },
	-- 11
	[574092] = { config_id = 574092, monster_id = 22080101, pos = { x = 794.073, y = 706.091, z = 228.992 }, rot = { x = 0.000, y = 100.431, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008, 1044 }, pose_id = 101, area_id = 300 },
	-- 5
	[574099] = { config_id = 574099, monster_id = 21010201, pos = { x = 808.129, y = 706.262, z = 225.302 }, rot = { x = 0.000, y = 259.110, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[574021] = { config_id = 574021, gadget_id = 70800190, pos = { x = 799.069, y = 706.170, z = 229.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574022] = { config_id = 574022, gadget_id = 70290266, pos = { x = 796.001, y = 706.137, z = 219.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574023] = { config_id = 574023, gadget_id = 70290266, pos = { x = 790.907, y = 705.983, z = 219.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574024] = { config_id = 574024, gadget_id = 70290266, pos = { x = 790.615, y = 706.022, z = 227.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574025] = { config_id = 574025, gadget_id = 70290266, pos = { x = 801.926, y = 706.167, z = 236.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574026] = { config_id = 574026, gadget_id = 70290266, pos = { x = 808.904, y = 706.239, z = 236.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574027] = { config_id = 574027, gadget_id = 70290266, pos = { x = 809.131, y = 706.215, z = 229.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574028] = { config_id = 574028, gadget_id = 70290204, pos = { x = 796.001, y = 706.137, z = 220.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574029] = { config_id = 574029, gadget_id = 70290204, pos = { x = 791.029, y = 705.979, z = 219.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574030] = { config_id = 574030, gadget_id = 70290204, pos = { x = 790.636, y = 706.022, z = 227.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574031] = { config_id = 574031, gadget_id = 70290204, pos = { x = 801.861, y = 706.166, z = 236.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574032] = { config_id = 574032, gadget_id = 70290204, pos = { x = 809.083, y = 706.249, z = 236.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574033] = { config_id = 574033, gadget_id = 70290204, pos = { x = 809.123, y = 706.214, z = 229.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574034] = { config_id = 574034, gadget_id = 70290233, pos = { x = 796.275, y = 706.142, z = 220.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574035] = { config_id = 574035, gadget_id = 70290233, pos = { x = 791.098, y = 705.992, z = 219.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574036] = { config_id = 574036, gadget_id = 70290233, pos = { x = 790.602, y = 706.021, z = 227.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574037] = { config_id = 574037, gadget_id = 70290233, pos = { x = 801.843, y = 706.166, z = 236.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574038] = { config_id = 574038, gadget_id = 70290233, pos = { x = 808.814, y = 706.301, z = 236.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574039] = { config_id = 574039, gadget_id = 70290233, pos = { x = 809.120, y = 706.214, z = 230.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574040] = { config_id = 574040, gadget_id = 70360342, pos = { x = 799.112, y = 705.464, z = 229.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574048] = { config_id = 574048, gadget_id = 70360001, pos = { x = 798.973, y = 706.219, z = 228.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574093] = { config_id = 574093, gadget_id = 70290353, pos = { x = 796.210, y = 706.141, z = 226.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574094] = { config_id = 574094, gadget_id = 70290353, pos = { x = 804.190, y = 706.259, z = 232.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574095] = { config_id = 574095, gadget_id = 70360342, pos = { x = 796.032, y = 705.383, z = 226.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574096] = { config_id = 574096, gadget_id = 70360342, pos = { x = 804.075, y = 705.417, z = 232.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	[574097] = { config_id = 574097, gadget_id = 70290353, pos = { x = 814.103, y = 707.833, z = 213.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574098] = { config_id = 574098, gadget_id = 70290353, pos = { x = 788.210, y = 708.182, z = 241.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574100] = { config_id = 574100, gadget_id = 70800222, pos = { x = 799.069, y = 706.170, z = 229.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574102] = { config_id = 574102, gadget_id = 70800227, pos = { x = 799.000, y = 706.000, z = 229.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574103] = { config_id = 574103, gadget_id = 70290353, pos = { x = 786.560, y = 705.952, z = 217.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	[574104] = { config_id = 574104, gadget_id = 70290353, pos = { x = 812.428, y = 706.422, z = 242.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	-- 性能优化圈+fail region
	[574001] = { config_id = 574001, shape = RegionShape.SPHERE, radius = 50, pos = { x = 799.069, y = 706.170, z = 229.026 }, area_id = 300 },
	-- vision type圈
	[574049] = { config_id = 574049, shape = RegionShape.SPHERE, radius = 100, pos = { x = 799.069, y = 706.170, z = 229.026 }, area_id = 300, vision_type_list = { 60010020 } },
	-- 初次图文教学
	[574101] = { config_id = 574101, shape = RegionShape.SPHERE, radius = 10, pos = { x = 799.069, y = 706.170, z = 229.026 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- 初次图文教学
	{ config_id = 1574101, name = "ENTER_REGION_574101", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_574101", action = "action_EVENT_ENTER_REGION_574101" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Mud", value = 6, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1574041, name = "ANY_GADGET_DIE_574041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574041", action = "action_EVENT_ANY_GADGET_DIE_574041", trigger_count = 0 },
		{ config_id = 1574042, name = "ANY_GADGET_DIE_574042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574042", action = "action_EVENT_ANY_GADGET_DIE_574042", trigger_count = 0 },
		{ config_id = 1574043, name = "ANY_GADGET_DIE_574043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574043", action = "action_EVENT_ANY_GADGET_DIE_574043", trigger_count = 0 },
		{ config_id = 1574044, name = "ANY_GADGET_DIE_574044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574044", action = "action_EVENT_ANY_GADGET_DIE_574044", trigger_count = 0 },
		{ config_id = 1574045, name = "ANY_GADGET_DIE_574045", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574045", action = "action_EVENT_ANY_GADGET_DIE_574045", trigger_count = 0 },
		{ config_id = 1574046, name = "ANY_GADGET_DIE_574046", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_574046", action = "action_EVENT_ANY_GADGET_DIE_574046", trigger_count = 0 },
		{ config_id = 1574047, name = "VARIABLE_CHANGE_574047", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_574047", action = "action_EVENT_VARIABLE_CHANGE_574047", trigger_count = 0 }
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
		gadgets = { 574021, 574022, 574024, 574025, 574027, 574048, 574093, 574094, 574097, 574098, 574100, 574103, 574104 },
		regions = { 574001, 574049, 574101 },
		triggers = { "ENTER_REGION_574101" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ENTER_REGION_574101(context, evt)
	if evt.param1 ~= 574101 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_574101(context, evt)
	-- 显示id为183的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,183,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

require "V2_7/Activity_LumenArena"