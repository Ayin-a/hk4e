-- 基础信息
local base_info = {
	group_id = 235852001
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter = 1001 ,
    --起始操作台选项
    option_id = 94,
    --波次之间延时 秒
    delay = 2,
    --挑战总时限 秒
    time_limit = 300,


challenge_id = 2010047,
--怪物潮信息
--monsters填入怪物configID，
--当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
--mona_buffs:莫娜地城限定，本次怪物潮对应的buff。1-弹飞 2-增伤 3-怪物群控。
tide_cfg = {

[1] = { monsters = {1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012}, min =4, max = 6,mona_buffs = {1,2,3}},
[2] = { monsters = {1013,1014,1015}, min = 3, max = 3, mona_buffs = {2}},
[3] = { monsters = {1016,1017,1018,1019}, min = 2, max = 4, mona_buffs = {1,2}},
[4] = { monsters = {1020,1021,1022,1023,1024}, min = 3, max = 4,mona_buffs = {1,2,3}},
[5] = { monsters = {1025,1026,1027,1028,1029}, min = 3, max = 4,mona_buffs = {1,2,3}},
[6] = { monsters = {1030,1031,1032,1033,1034,1035}, min = 4, max = 6,mona_buffs = {1,2,3}},
},
--怪物潮随机表
--随机固定顺序怪物潮组合 每次进地城随机取key。
--key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
rand_table = {
[1] = 
        {
            {1},
            {3},
            {2},
            {4},
            {5},

        },
        [2] = 
        {
            {3},
            {1},
            {4},
            {6},
            {2},
        },
        [3] = 
        {
            {5},
            {2},
            {3},
            {1},
            {4},
        },
    },

--谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
type = 4,

--莫娜、辛焱需配这里-随机suite池
rand_suites = {3},

--莫娜地城星星和压板对应关系
stars = {
--suite x
[3] = {{1038, 1044}, {1039,1045}, {1040,1046}, {1041,1047}, {1042,1048}, {1043,1049}},
},

move_water = { config_id = 1050 ,point_array = 54 ,point = {2,1} },

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1002] = { config_id = 1002, monster_id = 21010501, pos = { x = 154.442, y = 649.374, z = -1845.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, monster_id = 21010501, pos = { x = 149.160, y = 649.347, z = -1844.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1004] = { config_id = 1004, monster_id = 21010701, pos = { x = 142.780, y = 649.370, z = -1840.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1005] = { config_id = 1005, monster_id = 21010701, pos = { x = 140.289, y = 649.366, z = -1838.757 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1006] = { config_id = 1006, monster_id = 21010301, pos = { x = 150.562, y = 649.362, z = -1827.737 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 },
	[1007] = { config_id = 1007, monster_id = 21010301, pos = { x = 145.881, y = 649.360, z = -1831.595 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 },
	[1008] = { config_id = 1008, monster_id = 21010601, pos = { x = 159.345, y = 649.374, z = -1846.103 }, rot = { x = 0.000, y = 328.247, z = 0.000 }, level = 1 },
	[1009] = { config_id = 1009, monster_id = 21010601, pos = { x = 158.712, y = 649.372, z = -1843.466 }, rot = { x = 0.000, y = 322.901, z = 0.000 }, level = 1 },
	[1010] = { config_id = 1010, monster_id = 21030301, pos = { x = 160.933, y = 649.369, z = -1840.799 }, rot = { x = 0.000, y = 287.675, z = 0.000 }, level = 1 },
	[1011] = { config_id = 1011, monster_id = 21030601, pos = { x = 140.939, y = 649.361, z = -1833.392 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1012] = { config_id = 1012, monster_id = 21030101, pos = { x = 154.064, y = 649.360, z = -1823.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1013] = { config_id = 1013, monster_id = 22010101, pos = { x = 138.848, y = 649.362, z = -1831.851 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1014] = { config_id = 1014, monster_id = 22010101, pos = { x = 159.037, y = 649.365, z = -1834.010 }, rot = { x = 0.000, y = 218.960, z = 0.000 }, level = 1 },
	[1015] = { config_id = 1015, monster_id = 22010101, pos = { x = 155.260, y = 649.374, z = -1845.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1016] = { config_id = 1016, monster_id = 21020101, pos = { x = 150.818, y = 649.373, z = -1844.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1017] = { config_id = 1017, monster_id = 21020101, pos = { x = 145.961, y = 649.371, z = -1843.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1018] = { config_id = 1018, monster_id = 21020201, pos = { x = 152.136, y = 649.360, z = -1830.239 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 },
	[1019] = { config_id = 1019, monster_id = 21020201, pos = { x = 148.237, y = 649.360, z = -1830.790 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, monster_id = 21010701, pos = { x = 154.475, y = 649.362, z = -1831.548 }, rot = { x = 0.000, y = 203.320, z = 0.000 }, level = 1 },
	[1021] = { config_id = 1021, monster_id = 21010701, pos = { x = 156.988, y = 649.363, z = -1831.810 }, rot = { x = 0.000, y = 206.146, z = 0.000 }, level = 1 },
	[1022] = { config_id = 1022, monster_id = 21010701, pos = { x = 142.586, y = 649.363, z = -1835.738 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1023] = { config_id = 1023, monster_id = 21010701, pos = { x = 139.782, y = 649.366, z = -1836.406 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1024] = { config_id = 1024, monster_id = 21010701, pos = { x = 141.050, y = 649.364, z = -1834.019 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1025] = { config_id = 1025, monster_id = 21020201, pos = { x = 143.348, y = 649.371, z = -1842.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1026] = { config_id = 1026, monster_id = 21020201, pos = { x = 147.758, y = 649.372, z = -1844.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1027] = { config_id = 1027, monster_id = 21020201, pos = { x = 152.630, y = 649.373, z = -1845.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1028] = { config_id = 1028, monster_id = 21010601, pos = { x = 157.078, y = 649.374, z = -1845.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1029] = { config_id = 1029, monster_id = 21010601, pos = { x = 158.530, y = 649.372, z = -1848.440 }, rot = { x = 0.000, y = 325.767, z = 0.000 }, level = 1 },
	[1030] = { config_id = 1030, monster_id = 21010601, pos = { x = 160.662, y = 649.371, z = -1844.489 }, rot = { x = 0.000, y = 325.767, z = 0.000 }, level = 1 },
	[1031] = { config_id = 1031, monster_id = 20011301, pos = { x = 161.861, y = 649.370, z = -1841.079 }, rot = { x = 0.000, y = 287.675, z = 0.000 }, level = 1 },
	[1032] = { config_id = 1032, monster_id = 20011301, pos = { x = 160.355, y = 649.366, z = -1837.722 }, rot = { x = 0.000, y = 285.016, z = 0.000 }, level = 1 },
	[1033] = { config_id = 1033, monster_id = 20011301, pos = { x = 142.157, y = 649.360, z = -1833.659 }, rot = { x = 0.000, y = 107.237, z = 0.000 }, level = 1 },
	[1034] = { config_id = 1034, monster_id = 20011301, pos = { x = 149.513, y = 649.360, z = -1830.211 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 },
	[1035] = { config_id = 1035, monster_id = 20011301, pos = { x = 143.976, y = 649.360, z = -1831.024 }, rot = { x = 0.000, y = 185.173, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70360010, pos = { x = 151.374, y = 649.290, z = -1834.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 94 } } },
	[1036] = { config_id = 1036, gadget_id = 70900201, pos = { x = 151.374, y = 649.365, z = -1834.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1038] = { config_id = 1038, gadget_id = 70220119, pos = { x = 125.080, y = 673.610, z = -1861.873 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1038,  ["SGV_Constellation_Target"]= 1039} },
	[1039] = { config_id = 1039, gadget_id = 70220119, pos = { x = 125.014, y = 666.783, z = -1861.815 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1039,  ["SGV_Constellation_Target"]= 1040} },
	[1040] = { config_id = 1040, gadget_id = 70220119, pos = { x = 124.497, y = 662.400, z = -1854.562 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1040,  ["SGV_Constellation_Target"]= 1041} },
	[1041] = { config_id = 1041, gadget_id = 70220119, pos = { x = 118.897, y = 665.753, z = -1849.623 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1041,  ["SGV_Constellation_Target"]= 1042} },
	[1042] = { config_id = 1042, gadget_id = 70220119, pos = { x = 120.367, y = 657.136, z = -1850.919 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1042,  ["SGV_Constellation_Target"]= 1043} },
	[1043] = { config_id = 1043, gadget_id = 70220119, pos = { x = 129.423, y = 657.349, z = -1858.906 }, rot = { x = 0.000, y = 41.408, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1043,  ["SGV_Constellation_Target"]= 1042} },
	[1044] = { config_id = 1044, gadget_id = 70310323, pos = { x = 143.254, y = 649.355, z = -1850.449 }, rot = { x = 0.000, y = 321.849, z = 0.000 }, level = 1 },
	[1045] = { config_id = 1045, gadget_id = 70310323, pos = { x = 150.702, y = 649.371, z = -1844.903 }, rot = { x = 0.000, y = 324.714, z = 0.000 }, level = 1 },
	[1046] = { config_id = 1046, gadget_id = 70310323, pos = { x = 151.065, y = 649.366, z = -1836.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1047] = { config_id = 1047, gadget_id = 70310323, pos = { x = 144.433, y = 649.364, z = -1833.137 }, rot = { x = 0.000, y = 17.398, z = 0.000 }, level = 1 },
	[1048] = { config_id = 1048, gadget_id = 70310323, pos = { x = 157.278, y = 649.361, z = -1826.494 }, rot = { x = 0.000, y = 64.014, z = 0.000 }, level = 1 },
	[1049] = { config_id = 1049, gadget_id = 70310323, pos = { x = 163.603, y = 649.369, z = -1838.530 }, rot = { x = 0.000, y = 332.614, z = 0.000 }, level = 1 },
	[1050] = { config_id = 1050, gadget_id = 70380012, pos = { x = 148.915, y = 637.795, z = -1835.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1053] = { config_id = 1053, gadget_id = 70310457, pos = { x = 144.412, y = 649.354, z = -1849.603 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1054] = { config_id = 1054, gadget_id = 70310457, pos = { x = 145.109, y = 649.353, z = -1849.076 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1055] = { config_id = 1055, gadget_id = 70310457, pos = { x = 145.773, y = 649.352, z = -1848.575 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1056] = { config_id = 1056, gadget_id = 70310457, pos = { x = 146.448, y = 649.352, z = -1848.067 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1057] = { config_id = 1057, gadget_id = 70310457, pos = { x = 147.087, y = 649.351, z = -1847.584 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1058] = { config_id = 1058, gadget_id = 70310457, pos = { x = 147.765, y = 649.350, z = -1847.074 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1059] = { config_id = 1059, gadget_id = 70310457, pos = { x = 148.430, y = 649.350, z = -1846.573 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1060] = { config_id = 1060, gadget_id = 70310457, pos = { x = 148.845, y = 649.372, z = -1846.268 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	-- 分割线
	[1061] = { config_id = 1061, gadget_id = 70310457, pos = { x = 149.525, y = 649.372, z = -1845.755 }, rot = { x = 270.000, y = 143.002, z = 0.000 }, level = 1 },
	[1062] = { config_id = 1062, gadget_id = 70310457, pos = { x = 150.831, y = 649.372, z = -1844.413 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1063] = { config_id = 1063, gadget_id = 70310457, pos = { x = 150.861, y = 649.372, z = -1843.541 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1064] = { config_id = 1064, gadget_id = 70310457, pos = { x = 150.890, y = 649.372, z = -1842.709 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1065] = { config_id = 1065, gadget_id = 70310457, pos = { x = 150.919, y = 649.372, z = -1841.864 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1066] = { config_id = 1066, gadget_id = 70310457, pos = { x = 150.946, y = 649.372, z = -1841.065 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1067] = { config_id = 1067, gadget_id = 70310457, pos = { x = 150.975, y = 649.372, z = -1840.216 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1068] = { config_id = 1068, gadget_id = 70310457, pos = { x = 151.004, y = 649.372, z = -1839.384 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1069] = { config_id = 1069, gadget_id = 70310457, pos = { x = 151.030, y = 649.372, z = -1838.622 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	-- 分割线
	[1070] = { config_id = 1070, gadget_id = 70310457, pos = { x = 151.060, y = 649.372, z = -1837.771 }, rot = { x = 270.000, y = 91.980, z = 0.000 }, level = 1 },
	[1071] = { config_id = 1071, gadget_id = 70310457, pos = { x = 151.055, y = 649.372, z = -1836.475 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1072] = { config_id = 1072, gadget_id = 70310457, pos = { x = 150.290, y = 649.372, z = -1836.057 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1073] = { config_id = 1073, gadget_id = 70310457, pos = { x = 149.559, y = 649.372, z = -1835.658 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1074] = { config_id = 1074, gadget_id = 70310457, pos = { x = 148.817, y = 649.372, z = -1835.253 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1075] = { config_id = 1075, gadget_id = 70310457, pos = { x = 148.115, y = 649.372, z = -1834.870 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1076] = { config_id = 1076, gadget_id = 70310457, pos = { x = 147.369, y = 649.372, z = -1834.462 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1077] = { config_id = 1077, gadget_id = 70310457, pos = { x = 146.639, y = 649.372, z = -1834.063 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1078] = { config_id = 1078, gadget_id = 70310457, pos = { x = 145.970, y = 649.372, z = -1833.698 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	-- 分割线
	[1079] = { config_id = 1079, gadget_id = 70310457, pos = { x = 145.222, y = 649.372, z = -1833.290 }, rot = { x = 270.000, y = 28.644, z = 0.000 }, level = 1 },
	[1080] = { config_id = 1080, gadget_id = 70310457, pos = { x = 151.647, y = 649.372, z = -1829.385 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1081] = { config_id = 1081, gadget_id = 70310457, pos = { x = 150.871, y = 649.372, z = -1829.784 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1082] = { config_id = 1082, gadget_id = 70310457, pos = { x = 150.130, y = 649.372, z = -1830.164 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1083] = { config_id = 1083, gadget_id = 70310457, pos = { x = 149.378, y = 649.372, z = -1830.550 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1084] = { config_id = 1084, gadget_id = 70310457, pos = { x = 148.667, y = 649.372, z = -1830.916 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1085] = { config_id = 1085, gadget_id = 70310457, pos = { x = 147.911, y = 649.372, z = -1831.303 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1086] = { config_id = 1086, gadget_id = 70310457, pos = { x = 147.170, y = 649.372, z = -1831.684 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1087] = { config_id = 1087, gadget_id = 70310457, pos = { x = 146.492, y = 649.372, z = -1832.033 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1088] = { config_id = 1088, gadget_id = 70310457, pos = { x = 145.735, y = 649.372, z = -1832.422 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1089] = { config_id = 1089, gadget_id = 70310457, pos = { x = 155.299, y = 649.372, z = -1827.509 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1090] = { config_id = 1090, gadget_id = 70310457, pos = { x = 154.523, y = 649.372, z = -1827.908 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1091] = { config_id = 1091, gadget_id = 70310457, pos = { x = 153.783, y = 649.372, z = -1828.288 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1092] = { config_id = 1092, gadget_id = 70310457, pos = { x = 153.031, y = 649.372, z = -1828.674 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1093] = { config_id = 1093, gadget_id = 70310457, pos = { x = 152.320, y = 649.372, z = -1829.040 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	-- 分割线
	[1094] = { config_id = 1094, gadget_id = 70310457, pos = { x = 155.940, y = 649.372, z = -1827.182 }, rot = { x = 270.000, y = 332.826, z = 0.000 }, level = 1 },
	[1095] = { config_id = 1095, gadget_id = 70310457, pos = { x = 160.804, y = 649.372, z = -1833.185 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1096] = { config_id = 1096, gadget_id = 70310457, pos = { x = 160.394, y = 649.372, z = -1832.414 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1097] = { config_id = 1097, gadget_id = 70310457, pos = { x = 160.005, y = 649.372, z = -1831.678 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1098] = { config_id = 1098, gadget_id = 70310457, pos = { x = 159.609, y = 649.372, z = -1830.932 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1099] = { config_id = 1099, gadget_id = 70310457, pos = { x = 159.234, y = 649.372, z = -1830.226 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1100] = { config_id = 1100, gadget_id = 70310457, pos = { x = 158.837, y = 649.372, z = -1829.474 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1101] = { config_id = 1101, gadget_id = 70310457, pos = { x = 158.446, y = 649.372, z = -1828.739 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1102] = { config_id = 1102, gadget_id = 70310457, pos = { x = 158.088, y = 649.372, z = -1828.065 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1103] = { config_id = 1103, gadget_id = 70310457, pos = { x = 157.689, y = 649.372, z = -1827.313 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1104] = { config_id = 1104, gadget_id = 70310457, pos = { x = 162.728, y = 649.372, z = -1836.812 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1105] = { config_id = 1105, gadget_id = 70310457, pos = { x = 162.319, y = 649.372, z = -1836.041 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1106] = { config_id = 1106, gadget_id = 70310457, pos = { x = 161.929, y = 649.372, z = -1835.306 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1107] = { config_id = 1107, gadget_id = 70310457, pos = { x = 161.533, y = 649.372, z = -1834.559 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1108] = { config_id = 1108, gadget_id = 70310457, pos = { x = 161.158, y = 649.372, z = -1833.853 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	-- 分割线
	[1109] = { config_id = 1109, gadget_id = 70310457, pos = { x = 163.063, y = 649.372, z = -1837.448 }, rot = { x = 270.000, y = 62.068, z = 0.000 }, level = 1 },
	[1110] = { config_id = 1110, gadget_id = 70310075, pos = { x = 168.546, y = 649.541, z = -1827.859 }, rot = { x = 0.000, y = 61.091, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1052] = { config_id = 1052, shape = RegionShape.SPHERE, radius = 15, pos = { x = 152.365, y = 649.368, z = -1834.358 } }
}

-- 触发器
triggers = {
	{ config_id = 1001037, name = "SELECT_OPTION_1037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1037", action = "action_EVENT_SELECT_OPTION_1037", trigger_count = 0 },
	{ config_id = 1001051, name = "CHALLENGE_FAIL_1051", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010055", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1051", trigger_count = 0 },
	{ config_id = 1001052, name = "ENTER_REGION_1052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1052", action = "action_EVENT_ENTER_REGION_1052", trigger_count = 0 },
	{ config_id = 1001111, name = "CHALLENGE_SUCCESS_1111", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010055", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1111", trigger_count = 0 }
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
		gadgets = { 1001, 1050 },
		regions = { 1052 },
		triggers = { "SELECT_OPTION_1037", "CHALLENGE_FAIL_1051", "ENTER_REGION_1052", "CHALLENGE_SUCCESS_1111" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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
function condition_EVENT_SELECT_OPTION_1037(context, evt)
	-- 判断是gadgetid 1001 option_id 94
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1037(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 235852001 ；指定config：1001；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235852001, 1001, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为1110的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1110 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1051(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235852001, 1001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1110 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1052(context, evt)
	if evt.param1 ~= 1052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1052(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 235852001, EntityType.GADGET, 1036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1111(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1110 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/DLActivityDungeon"