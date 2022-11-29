-- 基础信息
local base_info = {
	group_id = 235853001
}

-- DEFS_MISCS
local defs = {
    --起始操作台
    starter = 1001 ,
    --起始操作台选项
    option_id = 94 ,
    --波次之间延时 秒
    delay = 2,
    --挑战总时限 秒
    time_limit = 300,
challenge_id= 2010047,
--怪物潮信息
--monsters填入怪物configID，
--当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
--mona_buffs:莫娜地城限定，本次怪物潮对应的buff。1-弹飞 2-增伤 3-怪物群控。
tide_cfg = {

[1] = { monsters = {1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012}, min =6, max = 8,mona_buffs = {1,2,3}},
[2] = { monsters = {1013,1014,1015}, min = 3, max = 3, mona_buffs = {2}},
[3] = { monsters = {1016,1017,1018,1019}, min = 2, max = 4, mona_buffs = {1,2}},
[4] = { monsters = {1020,1021,1022,1023,1024}, min = 3, max = 4,mona_buffs = {1,3}},
[5] = { monsters = {1025,1026,1027,1028,1029}, min = 3, max = 4,mona_buffs = {1,3}},
[6] = { monsters = {1030,1031,1032,1033,1034,1035}, min = 4, max = 6,mona_buffs = {1,3}},
[7] = { monsters = {1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049}, min = 6, max = 8,mona_buffs = {1,2,3}},
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
            {7},
            {4},
        },
        [4] = 
        {
            {4},
            {7},
            {6},
            {2},
            {3},
        },
    },

--谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
type = 4,

--莫娜、辛焱需配这里-随机suite池
rand_suites = {3,4,5},

--莫娜地城星星和压板对应关系
stars = {
--suite x
[3] = {{1052, 1057}, {1051,1056}, {1053,1058}, {1050,1059}, {1061,1063}, {1054,1060}, {1055,1062}},
[4] = {{1064, 1065}, {1066,1073}, {1067,1074}, {1068,1075}, {1069,1076}, {1070,1077}, {1071,1078}, {1072,1079}},
[5] = {{1080, 1091}, {1081,1092}, {1082,1093}, {1083,1094}, {1084,1095}, {1085,1096}, {1086,1097}, {1087,1098}, {1088,1101}, {1089,1100}, {1090,1099}},
},

move_water = { config_id = 1036 ,point_array = 54 ,point = {1,2} },

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1002] = { config_id = 1002, monster_id = 21010501, pos = { x = 144.529, y = 649.363, z = -1833.756 }, rot = { x = 0.000, y = 98.607, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1003] = { config_id = 1003, monster_id = 21010701, pos = { x = 151.222, y = 649.373, z = -1843.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1004] = { config_id = 1004, monster_id = 21010701, pos = { x = 161.192, y = 649.372, z = -1845.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1005] = { config_id = 1005, monster_id = 21010501, pos = { x = 153.511, y = 649.360, z = -1823.875 }, rot = { x = 0.000, y = 174.622, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1006] = { config_id = 1006, monster_id = 21010301, pos = { x = 162.660, y = 649.364, z = -1828.827 }, rot = { x = 0.000, y = 241.331, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1007] = { config_id = 1007, monster_id = 21010301, pos = { x = 145.260, y = 649.370, z = -1843.893 }, rot = { x = 0.000, y = 82.342, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1008] = { config_id = 1008, monster_id = 21010601, pos = { x = 157.964, y = 649.369, z = -1836.036 }, rot = { x = 0.000, y = 274.304, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1009] = { config_id = 1009, monster_id = 21010601, pos = { x = 146.821, y = 649.359, z = -1831.266 }, rot = { x = 0.000, y = 155.954, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1010] = { config_id = 1010, monster_id = 21030301, pos = { x = 151.958, y = 649.359, z = -1831.693 }, rot = { x = 0.000, y = 154.453, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1011] = { config_id = 1011, monster_id = 21030101, pos = { x = 143.705, y = 649.366, z = -1837.770 }, rot = { x = 0.000, y = 71.503, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1012] = { config_id = 1012, monster_id = 21030601, pos = { x = 156.379, y = 649.373, z = -1843.047 }, rot = { x = 0.000, y = 311.779, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1013] = { config_id = 1013, monster_id = 22010101, pos = { x = 157.904, y = 649.366, z = -1833.998 }, rot = { x = 0.000, y = 253.336, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1014] = { config_id = 1014, monster_id = 22010101, pos = { x = 147.991, y = 649.371, z = -1843.704 }, rot = { x = 0.000, y = 35.479, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1015] = { config_id = 1015, monster_id = 22010101, pos = { x = 147.540, y = 649.360, z = -1830.132 }, rot = { x = 0.000, y = 136.831, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1016] = { config_id = 1016, monster_id = 21020101, pos = { x = 157.287, y = 649.362, z = -1831.838 }, rot = { x = 0.000, y = 182.642, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1017] = { config_id = 1017, monster_id = 21020101, pos = { x = 158.845, y = 649.371, z = -1838.173 }, rot = { x = 0.000, y = 286.395, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1018] = { config_id = 1018, monster_id = 21020201, pos = { x = 145.086, y = 649.368, z = -1840.656 }, rot = { x = 0.000, y = 64.287, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1019] = { config_id = 1019, monster_id = 21020201, pos = { x = 148.989, y = 649.360, z = -1828.018 }, rot = { x = 0.000, y = 123.194, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1020] = { config_id = 1020, monster_id = 21010701, pos = { x = 158.769, y = 649.367, z = -1834.891 }, rot = { x = 0.000, y = 270.535, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1021] = { config_id = 1021, monster_id = 21010701, pos = { x = 159.677, y = 649.364, z = -1830.829 }, rot = { x = 0.000, y = 242.699, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1022] = { config_id = 1022, monster_id = 20011301, pos = { x = 143.793, y = 649.364, z = -1835.830 }, rot = { x = 0.000, y = 96.877, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1023] = { config_id = 1023, monster_id = 20011301, pos = { x = 144.020, y = 649.362, z = -1830.393 }, rot = { x = 0.000, y = 86.819, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1024] = { config_id = 1024, monster_id = 20011301, pos = { x = 143.323, y = 649.361, z = -1842.890 }, rot = { x = 0.000, y = 92.544, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1025] = { config_id = 1025, monster_id = 21020201, pos = { x = 158.329, y = 649.374, z = -1845.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1026] = { config_id = 1026, monster_id = 21020201, pos = { x = 154.080, y = 649.374, z = -1845.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1027] = { config_id = 1027, monster_id = 21020201, pos = { x = 147.198, y = 649.372, z = -1845.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1028] = { config_id = 1028, monster_id = 21010601, pos = { x = 154.670, y = 649.360, z = -1827.855 }, rot = { x = 0.000, y = 197.442, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1029] = { config_id = 1029, monster_id = 21010601, pos = { x = 155.329, y = 649.360, z = -1829.877 }, rot = { x = 0.000, y = 214.159, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1030] = { config_id = 1030, monster_id = 20011301, pos = { x = 147.578, y = 649.359, z = -1831.100 }, rot = { x = 0.000, y = 180.945, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1031] = { config_id = 1031, monster_id = 20011301, pos = { x = 149.438, y = 649.358, z = -1830.265 }, rot = { x = 0.000, y = 170.472, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1032] = { config_id = 1032, monster_id = 20011301, pos = { x = 143.286, y = 649.369, z = -1845.851 }, rot = { x = 0.000, y = 94.588, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1033] = { config_id = 1033, monster_id = 20011301, pos = { x = 143.388, y = 649.371, z = -1840.661 }, rot = { x = 0.000, y = 38.846, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1034] = { config_id = 1034, monster_id = 20011301, pos = { x = 164.823, y = 649.370, z = -1840.573 }, rot = { x = 0.000, y = 288.838, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1035] = { config_id = 1035, monster_id = 20011301, pos = { x = 163.007, y = 649.372, z = -1845.099 }, rot = { x = 0.000, y = 306.895, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1037] = { config_id = 1037, monster_id = 21010501, pos = { x = 142.258, y = 649.363, z = -1832.584 }, rot = { x = 0.000, y = 98.607, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1038] = { config_id = 1038, monster_id = 21010701, pos = { x = 151.222, y = 649.373, z = -1842.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1039] = { config_id = 1039, monster_id = 21010701, pos = { x = 161.192, y = 649.372, z = -1845.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1040] = { config_id = 1040, monster_id = 21010501, pos = { x = 153.511, y = 649.360, z = -1823.875 }, rot = { x = 0.000, y = 174.622, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1041] = { config_id = 1041, monster_id = 21010301, pos = { x = 162.660, y = 649.364, z = -1828.827 }, rot = { x = 0.000, y = 241.331, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1042] = { config_id = 1042, monster_id = 21010301, pos = { x = 146.706, y = 649.370, z = -1843.211 }, rot = { x = 0.000, y = 64.764, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1043] = { config_id = 1043, monster_id = 21011201, pos = { x = 165.617, y = 649.369, z = -1838.249 }, rot = { x = 0.000, y = 286.898, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1044] = { config_id = 1044, monster_id = 21011201, pos = { x = 144.017, y = 649.359, z = -1824.982 }, rot = { x = 0.000, y = 155.954, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1045] = { config_id = 1045, monster_id = 21030401, pos = { x = 147.945, y = 649.359, z = -1823.297 }, rot = { x = 0.000, y = 154.453, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1046] = { config_id = 1046, monster_id = 21030101, pos = { x = 146.891, y = 649.366, z = -1836.704 }, rot = { x = 0.000, y = 71.503, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1047] = { config_id = 1047, monster_id = 21030201, pos = { x = 159.452, y = 649.373, z = -1842.707 }, rot = { x = 0.000, y = 320.953, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1048] = { config_id = 1048, monster_id = 21010601, pos = { x = 144.017, y = 649.359, z = -1824.982 }, rot = { x = 0.000, y = 155.954, z = 0.000 }, level = 1, drop_id = 1000100 },
	[1049] = { config_id = 1049, monster_id = 21010601, pos = { x = 165.617, y = 649.369, z = -1838.249 }, rot = { x = 0.000, y = 286.898, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 70360010, pos = { x = 161.512, y = 649.243, z = -1828.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 94 } } },
	[1036] = { config_id = 1036, gadget_id = 70380015, pos = { x = 146.192, y = 613.774, z = -1838.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1050] = { config_id = 1050, gadget_id = 70220119, pos = { x = 119.829, y = 663.405, z = -1871.626 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1050,  ["SGV_Constellation_Target"]= 1054} },
	[1051] = { config_id = 1051, gadget_id = 70220119, pos = { x = 113.388, y = 678.786, z = -1863.638 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1051,  ["SGV_Constellation_Target"]= 1061} },
	[1052] = { config_id = 1052, gadget_id = 70220119, pos = { x = 107.089, y = 676.244, z = -1855.829 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1052,  ["SGV_Constellation_Target"]= 1051} },
	[1053] = { config_id = 1053, gadget_id = 70220119, pos = { x = 111.908, y = 669.839, z = -1861.804 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1053,  ["SGV_Constellation_Target"]= 1052} },
	[1054] = { config_id = 1054, gadget_id = 70220119, pos = { x = 112.162, y = 659.083, z = -1862.119 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1054,  ["SGV_Constellation_Target"]= 1055} },
	[1055] = { config_id = 1055, gadget_id = 70220119, pos = { x = 103.972, y = 663.300, z = -1851.965 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1055,  ["SGV_Constellation_Target"]= 0} },
	[1056] = { config_id = 1056, gadget_id = 70310323, pos = { x = 141.141, y = 649.369, z = -1843.899 }, rot = { x = 0.000, y = 347.030, z = 0.000 }, level = 1 },
	[1057] = { config_id = 1057, gadget_id = 70310323, pos = { x = 138.751, y = 649.361, z = -1829.827 }, rot = { x = 0.000, y = 352.605, z = 0.000 }, level = 1 },
	[1058] = { config_id = 1058, gadget_id = 70310323, pos = { x = 153.229, y = 649.366, z = -1834.133 }, rot = { x = 0.000, y = 297.956, z = 0.000 }, level = 1 },
	[1059] = { config_id = 1059, gadget_id = 70310323, pos = { x = 162.718, y = 649.367, z = -1839.922 }, rot = { x = 0.000, y = 46.671, z = 0.000 }, level = 1 },
	[1060] = { config_id = 1060, gadget_id = 70310323, pos = { x = 161.934, y = 649.362, z = -1828.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1061] = { config_id = 1061, gadget_id = 70220119, pos = { x = 119.829, y = 673.235, z = -1871.626 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1061,  ["SGV_Constellation_Target"]= 1050} },
	[1062] = { config_id = 1062, gadget_id = 70310323, pos = { x = 152.638, y = 649.359, z = -1822.547 }, rot = { x = 0.000, y = 27.508, z = 0.000 }, level = 1 },
	[1063] = { config_id = 1063, gadget_id = 70310323, pos = { x = 154.173, y = 649.372, z = -1847.017 }, rot = { x = 0.000, y = 9.280, z = 0.000 }, level = 1 },
	[1064] = { config_id = 1064, gadget_id = 70220119, pos = { x = 105.528, y = 671.781, z = -1862.533 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1064,  ["SGV_Constellation_Target"]= 1068} },
	[1065] = { config_id = 1065, gadget_id = 70310323, pos = { x = 151.031, y = 649.366, z = -1836.197 }, rot = { x = 0.000, y = 25.179, z = 0.000 }, level = 1 },
	[1066] = { config_id = 1066, gadget_id = 70220119, pos = { x = 113.925, y = 681.994, z = -1872.944 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1066,  ["SGV_Constellation_Target"]= 1064} },
	[1067] = { config_id = 1067, gadget_id = 70220119, pos = { x = 111.120, y = 674.149, z = -1869.467 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1067,  ["SGV_Constellation_Target"]= 1066} },
	[1068] = { config_id = 1068, gadget_id = 70220119, pos = { x = 116.741, y = 666.513, z = -1876.436 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1068,  ["SGV_Constellation_Target"]= 1067} },
	[1069] = { config_id = 1069, gadget_id = 70220119, pos = { x = 97.572, y = 680.246, z = -1852.669 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1069,  ["SGV_Constellation_Target"]= 1064} },
	[1070] = { config_id = 1070, gadget_id = 70220119, pos = { x = 100.570, y = 669.008, z = -1856.386 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1070,  ["SGV_Constellation_Target"]= 1069} },
	[1071] = { config_id = 1071, gadget_id = 70220119, pos = { x = 100.094, y = 658.751, z = -1855.796 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1071,  ["SGV_Constellation_Target"]= 1070} },
	[1072] = { config_id = 1072, gadget_id = 70220119, pos = { x = 108.458, y = 666.546, z = -1866.167 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1072,  ["SGV_Constellation_Target"]= 1064} },
	[1073] = { config_id = 1073, gadget_id = 70310323, pos = { x = 143.970, y = 649.373, z = -1850.979 }, rot = { x = 0.000, y = 20.082, z = 0.000 }, level = 1 },
	[1074] = { config_id = 1074, gadget_id = 70310323, pos = { x = 152.423, y = 649.369, z = -1843.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1075] = { config_id = 1075, gadget_id = 70310323, pos = { x = 164.118, y = 649.369, z = -1843.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1076] = { config_id = 1076, gadget_id = 70310323, pos = { x = 138.358, y = 649.361, z = -1826.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1077] = { config_id = 1077, gadget_id = 70310323, pos = { x = 152.199, y = 649.363, z = -1829.516 }, rot = { x = 0.000, y = 16.650, z = 0.000 }, level = 1 },
	[1078] = { config_id = 1078, gadget_id = 70310323, pos = { x = 161.737, y = 649.362, z = -1826.107 }, rot = { x = 0.000, y = 340.825, z = 0.000 }, level = 1 },
	[1079] = { config_id = 1079, gadget_id = 70310323, pos = { x = 161.110, y = 649.366, z = -1832.996 }, rot = { x = 0.000, y = 344.831, z = 0.000 }, level = 1 },
	[1080] = { config_id = 1080, gadget_id = 70220119, pos = { x = 113.914, y = 679.560, z = -1864.292 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1080,  ["SGV_Constellation_Target"]= 1081} },
	[1081] = { config_id = 1081, gadget_id = 70220119, pos = { x = 117.980, y = 672.768, z = -1869.334 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1081,  ["SGV_Constellation_Target"]= 1082} },
	[1082] = { config_id = 1082, gadget_id = 70220119, pos = { x = 110.676, y = 667.051, z = -1860.278 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1082,  ["SGV_Constellation_Target"]= 1083} },
	[1083] = { config_id = 1083, gadget_id = 70220119, pos = { x = 107.364, y = 675.317, z = -1856.171 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1083,  ["SGV_Constellation_Target"]= 1084} },
	[1084] = { config_id = 1084, gadget_id = 70220119, pos = { x = 111.069, y = 675.317, z = -1860.765 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1084,  ["SGV_Constellation_Target"]= 1080} },
	[1085] = { config_id = 1085, gadget_id = 70220119, pos = { x = 103.762, y = 672.078, z = -1851.705 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1085,  ["SGV_Constellation_Target"]= 1082} },
	[1086] = { config_id = 1086, gadget_id = 70220119, pos = { x = 105.097, y = 668.198, z = -1853.360 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1086,  ["SGV_Constellation_Target"]= 1085} },
	[1087] = { config_id = 1087, gadget_id = 70220119, pos = { x = 103.197, y = 663.301, z = -1851.005 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1087,  ["SGV_Constellation_Target"]= 1086} },
	[1088] = { config_id = 1088, gadget_id = 70220119, pos = { x = 116.398, y = 656.342, z = -1867.373 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1088,  ["SGV_Constellation_Target"]= 1082} },
	[1089] = { config_id = 1089, gadget_id = 70220119, pos = { x = 117.903, y = 661.830, z = -1869.238 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1089,  ["SGV_Constellation_Target"]= 1088} },
	[1090] = { config_id = 1090, gadget_id = 70220119, pos = { x = 122.922, y = 665.142, z = -1875.462 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1090,  ["SGV_Constellation_Target"]= 1089} },
	[1091] = { config_id = 1091, gadget_id = 70310323, pos = { x = 141.406, y = 649.371, z = -1848.305 }, rot = { x = 0.000, y = 43.176, z = 0.000 }, level = 1 },
	[1092] = { config_id = 1092, gadget_id = 70310323, pos = { x = 151.801, y = 649.373, z = -1848.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1093] = { config_id = 1093, gadget_id = 70310323, pos = { x = 151.614, y = 649.365, z = -1837.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1094] = { config_id = 1094, gadget_id = 70310323, pos = { x = 138.151, y = 649.364, z = -1834.746 }, rot = { x = 0.000, y = 11.431, z = 0.000 }, level = 1 },
	[1095] = { config_id = 1095, gadget_id = 70310323, pos = { x = 141.713, y = 649.367, z = -1839.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1096] = { config_id = 1096, gadget_id = 70310323, pos = { x = 145.416, y = 649.360, z = -1824.210 }, rot = { x = 0.000, y = 335.708, z = 0.000 }, level = 1 },
	[1097] = { config_id = 1097, gadget_id = 70310323, pos = { x = 152.374, y = 649.361, z = -1827.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1098] = { config_id = 1098, gadget_id = 70310323, pos = { x = 157.267, y = 649.360, z = -1822.903 }, rot = { x = 0.000, y = 10.430, z = 0.000 }, level = 1 },
	[1099] = { config_id = 1099, gadget_id = 70310323, pos = { x = 162.733, y = 649.371, z = -1847.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1100] = { config_id = 1100, gadget_id = 70310323, pos = { x = 162.840, y = 649.370, z = -1837.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1101] = { config_id = 1101, gadget_id = 70310323, pos = { x = 165.888, y = 649.365, z = -1831.278 }, rot = { x = 0.000, y = 18.925, z = 0.000 }, level = 1 },
	[1104] = { config_id = 1104, gadget_id = 70310457, pos = { x = 148.883, y = 649.331, z = -1832.585 }, rot = { x = 272.232, y = 166.822, z = 210.899 }, level = 1 },
	[1105] = { config_id = 1105, gadget_id = 70310457, pos = { x = 148.071, y = 649.348, z = -1832.326 }, rot = { x = 272.233, y = 166.821, z = 210.900 }, level = 1 },
	[1106] = { config_id = 1106, gadget_id = 70310457, pos = { x = 147.284, y = 649.365, z = -1832.075 }, rot = { x = 272.230, y = 166.822, z = 210.899 }, level = 1 },
	[1107] = { config_id = 1107, gadget_id = 70310457, pos = { x = 146.468, y = 649.382, z = -1831.815 }, rot = { x = 272.234, y = 166.821, z = 210.900 }, level = 1 },
	[1108] = { config_id = 1108, gadget_id = 70310457, pos = { x = 145.660, y = 649.399, z = -1831.556 }, rot = { x = 272.230, y = 166.821, z = 210.900 }, level = 1 },
	[1109] = { config_id = 1109, gadget_id = 70310457, pos = { x = 144.879, y = 649.416, z = -1831.307 }, rot = { x = 272.230, y = 166.821, z = 210.900 }, level = 1 },
	[1110] = { config_id = 1110, gadget_id = 70310457, pos = { x = 144.095, y = 649.432, z = -1831.057 }, rot = { x = 272.231, y = 166.821, z = 210.900 }, level = 1 },
	[1111] = { config_id = 1111, gadget_id = 70310457, pos = { x = 143.306, y = 649.449, z = -1830.805 }, rot = { x = 272.230, y = 166.821, z = 210.900 }, level = 1 },
	[1112] = { config_id = 1112, gadget_id = 70310457, pos = { x = 142.553, y = 649.465, z = -1830.565 }, rot = { x = 272.234, y = 166.821, z = 210.900 }, level = 1 },
	[1113] = { config_id = 1113, gadget_id = 70310457, pos = { x = 141.787, y = 649.481, z = -1830.321 }, rot = { x = 272.229, y = 166.821, z = 210.900 }, level = 1 },
	[1114] = { config_id = 1114, gadget_id = 70310457, pos = { x = 141.221, y = 649.492, z = -1830.140 }, rot = { x = 272.229, y = 166.821, z = 210.900 }, level = 1 },
	[1115] = { config_id = 1115, gadget_id = 70310457, pos = { x = 140.393, y = 649.510, z = -1829.876 }, rot = { x = 272.227, y = 166.821, z = 210.900 }, level = 1 },
	-- -
	[1116] = { config_id = 1116, gadget_id = 70310457, pos = { x = 140.454, y = 649.331, z = -1840.075 }, rot = { x = 272.235, y = 229.856, z = 210.901 }, level = 1 },
	[1117] = { config_id = 1117, gadget_id = 70310457, pos = { x = 140.317, y = 649.348, z = -1839.233 }, rot = { x = 272.232, y = 229.858, z = 210.900 }, level = 1 },
	[1118] = { config_id = 1118, gadget_id = 70310457, pos = { x = 140.184, y = 649.365, z = -1838.417 }, rot = { x = 272.228, y = 229.858, z = 210.899 }, level = 1 },
	[1119] = { config_id = 1119, gadget_id = 70310457, pos = { x = 140.046, y = 649.382, z = -1837.573 }, rot = { x = 272.230, y = 229.857, z = 210.901 }, level = 1 },
	[1120] = { config_id = 1120, gadget_id = 70310457, pos = { x = 139.910, y = 649.399, z = -1836.735 }, rot = { x = 272.227, y = 229.856, z = 210.900 }, level = 1 },
	[1121] = { config_id = 1121, gadget_id = 70310457, pos = { x = 139.777, y = 649.416, z = -1835.926 }, rot = { x = 272.227, y = 229.857, z = 210.900 }, level = 1 },
	[1122] = { config_id = 1122, gadget_id = 70310457, pos = { x = 139.645, y = 649.432, z = -1835.114 }, rot = { x = 272.228, y = 229.856, z = 210.900 }, level = 1 },
	[1123] = { config_id = 1123, gadget_id = 70310457, pos = { x = 139.512, y = 649.449, z = -1834.297 }, rot = { x = 272.227, y = 229.857, z = 210.900 }, level = 1 },
	[1124] = { config_id = 1124, gadget_id = 70310457, pos = { x = 139.384, y = 649.465, z = -1833.516 }, rot = { x = 272.230, y = 229.857, z = 210.901 }, level = 1 },
	[1125] = { config_id = 1125, gadget_id = 70310457, pos = { x = 139.256, y = 649.481, z = -1832.723 }, rot = { x = 272.230, y = 229.857, z = 210.900 }, level = 1 },
	[1126] = { config_id = 1126, gadget_id = 70310457, pos = { x = 139.159, y = 649.492, z = -1832.136 }, rot = { x = 272.230, y = 229.857, z = 210.900 }, level = 1 },
	[1127] = { config_id = 1127, gadget_id = 70310457, pos = { x = 139.019, y = 649.510, z = -1831.279 }, rot = { x = 272.229, y = 229.856, z = 210.901 }, level = 1 },
	[1128] = { config_id = 1128, gadget_id = 70310457, pos = { x = 140.593, y = 649.314, z = -1840.925 }, rot = { x = 272.229, y = 229.857, z = 210.900 }, level = 1 },
	[1129] = { config_id = 1129, gadget_id = 70310457, pos = { x = 140.593, y = 649.314, z = -1840.925 }, rot = { x = 272.229, y = 229.857, z = 210.900 }, level = 1 },
	[1130] = { config_id = 1130, gadget_id = 70310457, pos = { x = 140.695, y = 649.301, z = -1841.554 }, rot = { x = 272.229, y = 229.857, z = 210.900 }, level = 1 },
	-- -
	[1131] = { config_id = 1131, gadget_id = 70310457, pos = { x = 140.822, y = 649.286, z = -1842.334 }, rot = { x = 272.226, y = 229.857, z = 210.900 }, level = 1 },
	[1132] = { config_id = 1132, gadget_id = 70310457, pos = { x = 149.580, y = 649.348, z = -1846.022 }, rot = { x = 272.225, y = 161.255, z = 210.899 }, level = 1 },
	[1133] = { config_id = 1133, gadget_id = 70310457, pos = { x = 148.772, y = 649.365, z = -1845.848 }, rot = { x = 272.220, y = 161.255, z = 210.899 }, level = 1 },
	[1134] = { config_id = 1134, gadget_id = 70310457, pos = { x = 147.936, y = 649.382, z = -1845.669 }, rot = { x = 272.224, y = 161.255, z = 210.899 }, level = 1 },
	[1135] = { config_id = 1135, gadget_id = 70310457, pos = { x = 147.106, y = 649.399, z = -1845.489 }, rot = { x = 272.217, y = 161.254, z = 210.901 }, level = 1 },
	[1136] = { config_id = 1136, gadget_id = 70310457, pos = { x = 146.304, y = 649.416, z = -1845.318 }, rot = { x = 272.218, y = 161.255, z = 210.899 }, level = 1 },
	[1137] = { config_id = 1137, gadget_id = 70310457, pos = { x = 145.500, y = 649.432, z = -1845.145 }, rot = { x = 272.222, y = 161.254, z = 210.900 }, level = 1 },
	[1138] = { config_id = 1138, gadget_id = 70310457, pos = { x = 144.690, y = 649.449, z = -1844.970 }, rot = { x = 272.218, y = 161.255, z = 210.899 }, level = 1 },
	[1139] = { config_id = 1139, gadget_id = 70310457, pos = { x = 143.917, y = 649.465, z = -1844.804 }, rot = { x = 272.224, y = 161.255, z = 210.899 }, level = 1 },
	[1140] = { config_id = 1140, gadget_id = 70310457, pos = { x = 143.132, y = 649.481, z = -1844.635 }, rot = { x = 272.223, y = 161.255, z = 210.900 }, level = 1 },
	[1141] = { config_id = 1141, gadget_id = 70310457, pos = { x = 142.550, y = 649.492, z = -1844.511 }, rot = { x = 272.223, y = 161.255, z = 210.900 }, level = 1 },
	[1142] = { config_id = 1142, gadget_id = 70310457, pos = { x = 141.702, y = 649.510, z = -1844.328 }, rot = { x = 272.222, y = 161.254, z = 210.900 }, level = 1 },
	[1143] = { config_id = 1143, gadget_id = 70310457, pos = { x = 150.452, y = 649.330, z = -1846.209 }, rot = { x = 272.221, y = 161.254, z = 210.899 }, level = 1 },
	[1144] = { config_id = 1144, gadget_id = 70310457, pos = { x = 151.257, y = 649.314, z = -1846.382 }, rot = { x = 272.222, y = 161.254, z = 210.899 }, level = 1 },
	[1145] = { config_id = 1145, gadget_id = 70310457, pos = { x = 151.879, y = 649.301, z = -1846.516 }, rot = { x = 272.221, y = 161.255, z = 210.899 }, level = 1 },
	-- -
	[1146] = { config_id = 1146, gadget_id = 70310457, pos = { x = 152.652, y = 649.286, z = -1846.682 }, rot = { x = 272.217, y = 161.255, z = 210.898 }, level = 1 },
	[1147] = { config_id = 1147, gadget_id = 70310457, pos = { x = 161.260, y = 649.348, z = -1841.244 }, rot = { x = 272.218, y = 109.590, z = 210.898 }, level = 1 },
	[1148] = { config_id = 1148, gadget_id = 70310457, pos = { x = 160.623, y = 649.365, z = -1841.770 }, rot = { x = 272.202, y = 109.588, z = 210.899 }, level = 1 },
	[1149] = { config_id = 1149, gadget_id = 70310457, pos = { x = 159.964, y = 649.382, z = -1842.315 }, rot = { x = 272.209, y = 109.588, z = 210.898 }, level = 1 },
	[1150] = { config_id = 1150, gadget_id = 70310457, pos = { x = 159.308, y = 649.399, z = -1842.853 }, rot = { x = 272.203, y = 109.587, z = 210.901 }, level = 1 },
	[1151] = { config_id = 1151, gadget_id = 70310457, pos = { x = 158.677, y = 649.416, z = -1843.377 }, rot = { x = 272.209, y = 109.589, z = 210.899 }, level = 1 },
	[1152] = { config_id = 1152, gadget_id = 70310457, pos = { x = 158.042, y = 649.432, z = -1843.900 }, rot = { x = 272.210, y = 109.589, z = 210.898 }, level = 1 },
	[1153] = { config_id = 1153, gadget_id = 70310457, pos = { x = 157.402, y = 649.449, z = -1844.426 }, rot = { x = 272.209, y = 109.589, z = 210.899 }, level = 1 },
	[1154] = { config_id = 1154, gadget_id = 70310457, pos = { x = 156.793, y = 649.465, z = -1844.930 }, rot = { x = 272.209, y = 109.588, z = 210.898 }, level = 1 },
	[1155] = { config_id = 1155, gadget_id = 70310457, pos = { x = 156.173, y = 649.481, z = -1845.441 }, rot = { x = 272.209, y = 109.587, z = 210.901 }, level = 1 },
	[1156] = { config_id = 1156, gadget_id = 70310457, pos = { x = 155.715, y = 649.492, z = -1845.821 }, rot = { x = 272.209, y = 109.587, z = 210.901 }, level = 1 },
	[1157] = { config_id = 1157, gadget_id = 70310457, pos = { x = 155.045, y = 649.510, z = -1846.372 }, rot = { x = 272.204, y = 109.587, z = 210.900 }, level = 1 },
	-- -
	[1158] = { config_id = 1158, gadget_id = 70310457, pos = { x = 161.948, y = 649.330, z = -1840.675 }, rot = { x = 272.205, y = 109.587, z = 210.900 }, level = 1 },
	[1159] = { config_id = 1159, gadget_id = 70310457, pos = { x = 161.260, y = 649.348, z = -1841.244 }, rot = { x = 272.218, y = 109.590, z = 210.898 }, level = 1 },
	[1160] = { config_id = 1160, gadget_id = 70310457, pos = { x = 160.623, y = 649.365, z = -1841.770 }, rot = { x = 272.202, y = 109.588, z = 210.899 }, level = 1 },
	[1161] = { config_id = 1161, gadget_id = 70310457, pos = { x = 159.964, y = 649.382, z = -1842.315 }, rot = { x = 272.209, y = 109.588, z = 210.898 }, level = 1 },
	[1162] = { config_id = 1162, gadget_id = 70310457, pos = { x = 159.308, y = 649.399, z = -1842.853 }, rot = { x = 272.203, y = 109.587, z = 210.901 }, level = 1 },
	[1163] = { config_id = 1163, gadget_id = 70310457, pos = { x = 158.677, y = 649.416, z = -1843.377 }, rot = { x = 272.209, y = 109.589, z = 210.899 }, level = 1 },
	[1164] = { config_id = 1164, gadget_id = 70310457, pos = { x = 158.042, y = 649.432, z = -1843.900 }, rot = { x = 272.210, y = 109.589, z = 210.898 }, level = 1 },
	[1165] = { config_id = 1165, gadget_id = 70310457, pos = { x = 157.402, y = 649.449, z = -1844.426 }, rot = { x = 272.209, y = 109.589, z = 210.899 }, level = 1 },
	[1166] = { config_id = 1166, gadget_id = 70310457, pos = { x = 156.793, y = 649.465, z = -1844.930 }, rot = { x = 272.209, y = 109.588, z = 210.898 }, level = 1 },
	[1167] = { config_id = 1167, gadget_id = 70310457, pos = { x = 156.173, y = 649.481, z = -1845.441 }, rot = { x = 272.209, y = 109.587, z = 210.901 }, level = 1 },
	[1168] = { config_id = 1168, gadget_id = 70310457, pos = { x = 155.715, y = 649.492, z = -1845.821 }, rot = { x = 272.209, y = 109.587, z = 210.901 }, level = 1 },
	[1169] = { config_id = 1169, gadget_id = 70310457, pos = { x = 155.045, y = 649.510, z = -1846.372 }, rot = { x = 272.204, y = 109.587, z = 210.900 }, level = 1 },
	-- -
	[1170] = { config_id = 1170, gadget_id = 70310457, pos = { x = 161.948, y = 649.330, z = -1840.675 }, rot = { x = 272.205, y = 109.587, z = 210.900 }, level = 1 },
	[1171] = { config_id = 1171, gadget_id = 70310457, pos = { x = 162.046, y = 649.348, z = -1830.535 }, rot = { x = 272.212, y = 55.231, z = 210.898 }, level = 1 },
	[1172] = { config_id = 1172, gadget_id = 70310457, pos = { x = 162.102, y = 649.365, z = -1831.360 }, rot = { x = 272.199, y = 55.229, z = 210.898 }, level = 1 },
	[1173] = { config_id = 1173, gadget_id = 70310457, pos = { x = 162.161, y = 649.382, z = -1832.213 }, rot = { x = 272.204, y = 55.229, z = 210.898 }, level = 1 },
	[1174] = { config_id = 1174, gadget_id = 70310457, pos = { x = 162.216, y = 649.399, z = -1833.060 }, rot = { x = 272.198, y = 55.227, z = 210.901 }, level = 1 },
	[1175] = { config_id = 1175, gadget_id = 70310457, pos = { x = 162.274, y = 649.416, z = -1833.878 }, rot = { x = 272.202, y = 55.229, z = 210.899 }, level = 1 },
	[1176] = { config_id = 1176, gadget_id = 70310457, pos = { x = 162.329, y = 649.432, z = -1834.698 }, rot = { x = 272.203, y = 55.230, z = 210.898 }, level = 1 },
	[1177] = { config_id = 1177, gadget_id = 70310457, pos = { x = 162.384, y = 649.449, z = -1835.525 }, rot = { x = 272.202, y = 55.229, z = 210.899 }, level = 1 },
	[1178] = { config_id = 1178, gadget_id = 70310457, pos = { x = 162.438, y = 649.465, z = -1836.314 }, rot = { x = 272.204, y = 55.229, z = 210.898 }, level = 1 },
	[1179] = { config_id = 1179, gadget_id = 70310457, pos = { x = 162.492, y = 649.481, z = -1837.115 }, rot = { x = 272.205, y = 55.229, z = 210.899 }, level = 1 },
	[1180] = { config_id = 1180, gadget_id = 70310457, pos = { x = 162.534, y = 649.492, z = -1837.709 }, rot = { x = 272.205, y = 55.229, z = 210.899 }, level = 1 },
	[1181] = { config_id = 1181, gadget_id = 70310457, pos = { x = 162.592, y = 649.510, z = -1838.574 }, rot = { x = 272.198, y = 55.229, z = 210.899 }, level = 1 },
	-- -
	[1182] = { config_id = 1182, gadget_id = 70310457, pos = { x = 161.984, y = 649.330, z = -1829.645 }, rot = { x = 272.198, y = 55.229, z = 210.899 }, level = 1 },
	[1183] = { config_id = 1183, gadget_id = 70310457, pos = { x = 153.874, y = 649.348, z = -1823.217 }, rot = { x = 272.202, y = 359.611, z = 210.898 }, level = 1 },
	[1184] = { config_id = 1184, gadget_id = 70310457, pos = { x = 154.587, y = 649.365, z = -1823.636 }, rot = { x = 272.193, y = 359.609, z = 210.899 }, level = 1 },
	[1185] = { config_id = 1185, gadget_id = 70310457, pos = { x = 155.324, y = 649.382, z = -1824.070 }, rot = { x = 272.197, y = 359.610, z = 210.898 }, level = 1 },
	[1186] = { config_id = 1186, gadget_id = 70310457, pos = { x = 156.054, y = 649.399, z = -1824.502 }, rot = { x = 272.190, y = 359.607, z = 210.901 }, level = 1 },
	[1187] = { config_id = 1187, gadget_id = 70310457, pos = { x = 156.762, y = 649.416, z = -1824.917 }, rot = { x = 272.201, y = 359.609, z = 210.899 }, level = 1 },
	[1188] = { config_id = 1188, gadget_id = 70310457, pos = { x = 157.470, y = 649.432, z = -1825.334 }, rot = { x = 272.197, y = 359.610, z = 210.897 }, level = 1 },
	[1189] = { config_id = 1189, gadget_id = 70310457, pos = { x = 158.183, y = 649.449, z = -1825.756 }, rot = { x = 272.201, y = 359.609, z = 210.899 }, level = 1 },
	[1190] = { config_id = 1190, gadget_id = 70310457, pos = { x = 158.865, y = 649.465, z = -1826.156 }, rot = { x = 272.197, y = 359.610, z = 210.898 }, level = 1 },
	[1191] = { config_id = 1191, gadget_id = 70310457, pos = { x = 159.557, y = 649.481, z = -1826.564 }, rot = { x = 272.198, y = 359.609, z = 210.900 }, level = 1 },
	[1192] = { config_id = 1192, gadget_id = 70310457, pos = { x = 160.071, y = 649.492, z = -1826.865 }, rot = { x = 272.198, y = 359.609, z = 210.900 }, level = 1 },
	[1193] = { config_id = 1193, gadget_id = 70310457, pos = { x = 160.817, y = 649.510, z = -1827.306 }, rot = { x = 272.192, y = 359.610, z = 210.898 }, level = 1 },
	[1194] = { config_id = 1194, gadget_id = 70310457, pos = { x = 149.561, y = 649.317, z = -1832.801 }, rot = { x = 272.231, y = 166.822, z = 210.899 }, level = 1 },
	[1195] = { config_id = 1195, gadget_id = 70310457, pos = { x = 150.267, y = 649.302, z = -1833.027 }, rot = { x = 272.231, y = 166.822, z = 210.899 }, level = 1 },
	[1196] = { config_id = 1196, gadget_id = 70310457, pos = { x = 151.001, y = 649.287, z = -1833.261 }, rot = { x = 272.231, y = 166.822, z = 210.899 }, level = 1 },
	-- -
	[1197] = { config_id = 1197, gadget_id = 70310457, pos = { x = 151.613, y = 649.274, z = -1833.456 }, rot = { x = 272.231, y = 166.822, z = 210.899 }, level = 1 },
	[1198] = { config_id = 1198, gadget_id = 70310457, pos = { x = 146.861, y = 649.348, z = -1844.895 }, rot = { x = 272.191, y = 264.715, z = 210.899 }, level = 1 },
	[1199] = { config_id = 1199, gadget_id = 70310457, pos = { x = 147.218, y = 649.365, z = -1844.150 }, rot = { x = 272.184, y = 264.712, z = 210.900 }, level = 1 },
	[1200] = { config_id = 1200, gadget_id = 70310457, pos = { x = 147.587, y = 649.382, z = -1843.377 }, rot = { x = 272.185, y = 264.715, z = 210.898 }, level = 1 },
	[1201] = { config_id = 1201, gadget_id = 70310457, pos = { x = 147.956, y = 649.399, z = -1842.629 }, rot = { x = 272.163, y = 263.864, z = 210.901 }, level = 1 },
	[1202] = { config_id = 1202, gadget_id = 70310457, pos = { x = 148.297, y = 649.416, z = -1841.882 }, rot = { x = 272.171, y = 263.868, z = 210.897 }, level = 1 },
	[1203] = { config_id = 1203, gadget_id = 70310457, pos = { x = 148.642, y = 649.432, z = -1841.137 }, rot = { x = 272.173, y = 263.869, z = 210.896 }, level = 1 },
	[1204] = { config_id = 1204, gadget_id = 70310457, pos = { x = 148.991, y = 649.449, z = -1840.385 }, rot = { x = 272.171, y = 263.868, z = 210.897 }, level = 1 },
	[1205] = { config_id = 1205, gadget_id = 70310457, pos = { x = 149.371, y = 649.227, z = -1839.651 }, rot = { x = 272.174, y = 312.272, z = 165.791 }, level = 1 },
	[1206] = { config_id = 1206, gadget_id = 70310457, pos = { x = 149.711, y = 649.481, z = -1838.947 }, rot = { x = 272.188, y = 264.715, z = 210.899 }, level = 1 },
	[1207] = { config_id = 1207, gadget_id = 70310457, pos = { x = 149.967, y = 649.492, z = -1838.410 }, rot = { x = 272.188, y = 264.715, z = 210.899 }, level = 1 },
	[1208] = { config_id = 1208, gadget_id = 70310457, pos = { x = 150.343, y = 649.510, z = -1837.628 }, rot = { x = 272.179, y = 264.716, z = 210.898 }, level = 1 },
	[1209] = { config_id = 1209, gadget_id = 70310457, pos = { x = 146.507, y = 649.317, z = -1845.636 }, rot = { x = 272.179, y = 264.715, z = 210.898 }, level = 1 },
	[1210] = { config_id = 1210, gadget_id = 70310457, pos = { x = 146.160, y = 649.302, z = -1846.379 }, rot = { x = 272.179, y = 264.716, z = 210.898 }, level = 1 },
	[1211] = { config_id = 1211, gadget_id = 70310457, pos = { x = 145.816, y = 649.287, z = -1847.103 }, rot = { x = 272.179, y = 264.716, z = 210.898 }, level = 1 },
	[1212] = { config_id = 1212, gadget_id = 70310457, pos = { x = 145.458, y = 649.274, z = -1847.861 }, rot = { x = 272.179, y = 264.716, z = 210.898 }, level = 1 },
	[1213] = { config_id = 1213, gadget_id = 70310457, pos = { x = 145.100, y = 649.258, z = -1848.616 }, rot = { x = 272.175, y = 264.716, z = 210.898 }, level = 1 },
	-- -
	[1214] = { config_id = 1214, gadget_id = 70310457, pos = { x = 144.669, y = 649.238, z = -1849.517 }, rot = { x = 272.172, y = 264.716, z = 210.898 }, level = 1 },
	[1215] = { config_id = 1215, gadget_id = 70310457, pos = { x = 148.310, y = 649.317, z = -1847.343 }, rot = { x = 272.176, y = 286.627, z = 210.898 }, level = 1 },
	[1216] = { config_id = 1216, gadget_id = 70310457, pos = { x = 147.711, y = 649.302, z = -1847.902 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	[1217] = { config_id = 1217, gadget_id = 70310457, pos = { x = 147.121, y = 649.287, z = -1848.445 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	[1218] = { config_id = 1218, gadget_id = 70310457, pos = { x = 146.506, y = 649.274, z = -1849.016 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	[1219] = { config_id = 1219, gadget_id = 70310457, pos = { x = 145.893, y = 649.258, z = -1849.583 }, rot = { x = 272.169, y = 286.627, z = 210.898 }, level = 1 },
	[1220] = { config_id = 1220, gadget_id = 70310457, pos = { x = 145.156, y = 649.238, z = -1850.257 }, rot = { x = 272.163, y = 286.627, z = 210.898 }, level = 1 },
	[1221] = { config_id = 1221, gadget_id = 70310457, pos = { x = 151.373, y = 649.317, z = -1844.509 }, rot = { x = 272.174, y = 286.626, z = 210.899 }, level = 1 },
	[1222] = { config_id = 1222, gadget_id = 70310457, pos = { x = 150.774, y = 649.302, z = -1845.068 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	[1223] = { config_id = 1223, gadget_id = 70310457, pos = { x = 150.184, y = 649.287, z = -1845.611 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	[1224] = { config_id = 1224, gadget_id = 70310457, pos = { x = 149.569, y = 649.274, z = -1846.182 }, rot = { x = 272.173, y = 286.627, z = 210.898 }, level = 1 },
	-- -
	[1225] = { config_id = 1225, gadget_id = 70310457, pos = { x = 148.956, y = 649.258, z = -1846.749 }, rot = { x = 272.166, y = 286.626, z = 210.898 }, level = 1 },
	[1226] = { config_id = 1226, gadget_id = 70310457, pos = { x = 158.153, y = 649.317, z = -1843.368 }, rot = { x = 272.169, y = 147.408, z = 210.898 }, level = 1 },
	[1227] = { config_id = 1227, gadget_id = 70310457, pos = { x = 158.972, y = 649.302, z = -1843.336 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	[1228] = { config_id = 1228, gadget_id = 70310457, pos = { x = 159.773, y = 649.287, z = -1843.309 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	[1229] = { config_id = 1229, gadget_id = 70310457, pos = { x = 160.611, y = 649.274, z = -1843.279 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	[1230] = { config_id = 1230, gadget_id = 70310457, pos = { x = 161.446, y = 649.258, z = -1843.250 }, rot = { x = 272.162, y = 147.409, z = 210.898 }, level = 1 },
	[1231] = { config_id = 1231, gadget_id = 70310457, pos = { x = 162.444, y = 649.238, z = -1843.221 }, rot = { x = 272.156, y = 147.409, z = 210.897 }, level = 1 },
	[1232] = { config_id = 1232, gadget_id = 70310457, pos = { x = 153.982, y = 649.317, z = -1843.513 }, rot = { x = 272.167, y = 147.408, z = 210.898 }, level = 1 },
	[1233] = { config_id = 1233, gadget_id = 70310457, pos = { x = 154.801, y = 649.302, z = -1843.481 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	[1234] = { config_id = 1234, gadget_id = 70310457, pos = { x = 155.602, y = 649.287, z = -1843.455 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	[1235] = { config_id = 1235, gadget_id = 70310457, pos = { x = 156.441, y = 649.274, z = -1843.424 }, rot = { x = 272.169, y = 147.409, z = 210.898 }, level = 1 },
	-- -
	[1236] = { config_id = 1236, gadget_id = 70310457, pos = { x = 157.276, y = 649.258, z = -1843.395 }, rot = { x = 272.160, y = 147.408, z = 210.898 }, level = 1 },
	[1237] = { config_id = 1237, gadget_id = 70310457, pos = { x = 158.547, y = 649.348, z = -1840.107 }, rot = { x = 272.186, y = 175.415, z = 210.898 }, level = 1 },
	[1238] = { config_id = 1238, gadget_id = 70310457, pos = { x = 157.806, y = 649.365, z = -1839.741 }, rot = { x = 272.176, y = 175.413, z = 210.900 }, level = 1 },
	[1239] = { config_id = 1239, gadget_id = 70310457, pos = { x = 157.037, y = 649.382, z = -1839.362 }, rot = { x = 272.178, y = 175.414, z = 210.899 }, level = 1 },
	[1240] = { config_id = 1240, gadget_id = 70310457, pos = { x = 156.279, y = 649.399, z = -1838.985 }, rot = { x = 272.167, y = 175.412, z = 210.901 }, level = 1 },
	[1241] = { config_id = 1241, gadget_id = 70310457, pos = { x = 155.542, y = 649.416, z = -1838.623 }, rot = { x = 272.181, y = 175.414, z = 210.900 }, level = 1 },
	[1242] = { config_id = 1242, gadget_id = 70310457, pos = { x = 154.805, y = 649.432, z = -1838.259 }, rot = { x = 272.180, y = 175.416, z = 210.897 }, level = 1 },
	[1243] = { config_id = 1243, gadget_id = 70310457, pos = { x = 154.063, y = 649.449, z = -1837.890 }, rot = { x = 272.181, y = 175.414, z = 210.900 }, level = 1 },
	[1244] = { config_id = 1244, gadget_id = 70310457, pos = { x = 153.354, y = 649.465, z = -1837.541 }, rot = { x = 272.178, y = 175.414, z = 210.899 }, level = 1 },
	[1245] = { config_id = 1245, gadget_id = 70310457, pos = { x = 152.634, y = 649.481, z = -1837.185 }, rot = { x = 272.184, y = 175.415, z = 210.899 }, level = 1 },
	[1246] = { config_id = 1246, gadget_id = 70310457, pos = { x = 152.100, y = 649.492, z = -1836.922 }, rot = { x = 272.184, y = 175.415, z = 210.899 }, level = 1 },
	[1247] = { config_id = 1247, gadget_id = 70310457, pos = { x = 151.323, y = 649.510, z = -1836.537 }, rot = { x = 272.174, y = 175.416, z = 210.898 }, level = 1 },
	[1248] = { config_id = 1248, gadget_id = 70310457, pos = { x = 159.283, y = 649.317, z = -1840.470 }, rot = { x = 272.174, y = 175.415, z = 210.899 }, level = 1 },
	[1249] = { config_id = 1249, gadget_id = 70310457, pos = { x = 160.022, y = 649.302, z = -1840.827 }, rot = { x = 272.170, y = 175.416, z = 210.898 }, level = 1 },
	[1250] = { config_id = 1250, gadget_id = 70310457, pos = { x = 160.742, y = 649.287, z = -1841.179 }, rot = { x = 272.170, y = 175.416, z = 210.898 }, level = 1 },
	[1251] = { config_id = 1251, gadget_id = 70310457, pos = { x = 161.495, y = 649.274, z = -1841.547 }, rot = { x = 272.170, y = 175.416, z = 210.898 }, level = 1 },
	[1252] = { config_id = 1252, gadget_id = 70310457, pos = { x = 162.246, y = 649.258, z = -1841.914 }, rot = { x = 272.165, y = 175.416, z = 210.898 }, level = 1 },
	-- -
	[1253] = { config_id = 1253, gadget_id = 70310457, pos = { x = 163.141, y = 649.238, z = -1842.356 }, rot = { x = 272.163, y = 175.417, z = 210.897 }, level = 1 },
	[1254] = { config_id = 1254, gadget_id = 70310457, pos = { x = 156.184, y = 649.317, z = -1834.539 }, rot = { x = 272.169, y = 312.178, z = 210.898 }, level = 1 },
	[1255] = { config_id = 1255, gadget_id = 70310457, pos = { x = 155.402, y = 649.302, z = -1834.785 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	[1256] = { config_id = 1256, gadget_id = 70310457, pos = { x = 154.637, y = 649.287, z = -1835.021 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	[1257] = { config_id = 1257, gadget_id = 70310457, pos = { x = 153.835, y = 649.274, z = -1835.270 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	[1258] = { config_id = 1258, gadget_id = 70310457, pos = { x = 153.038, y = 649.258, z = -1835.518 }, rot = { x = 272.159, y = 312.178, z = 210.898 }, level = 1 },
	[1259] = { config_id = 1259, gadget_id = 70310457, pos = { x = 152.082, y = 649.238, z = -1835.808 }, rot = { x = 272.151, y = 312.177, z = 210.898 }, level = 1 },
	[1260] = { config_id = 1260, gadget_id = 70310457, pos = { x = 160.170, y = 649.317, z = -1833.304 }, rot = { x = 272.161, y = 312.178, z = 210.897 }, level = 1 },
	[1261] = { config_id = 1261, gadget_id = 70310457, pos = { x = 159.388, y = 649.302, z = -1833.549 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	[1262] = { config_id = 1262, gadget_id = 70310457, pos = { x = 158.622, y = 649.287, z = -1833.785 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	[1263] = { config_id = 1263, gadget_id = 70310457, pos = { x = 157.821, y = 649.274, z = -1834.035 }, rot = { x = 272.168, y = 312.178, z = 210.898 }, level = 1 },
	-- -
	[1264] = { config_id = 1264, gadget_id = 70310457, pos = { x = 157.023, y = 649.258, z = -1834.282 }, rot = { x = 272.155, y = 312.179, z = 210.896 }, level = 1 },
	[1265] = { config_id = 1265, gadget_id = 70310457, pos = { x = 145.801, y = 649.348, z = -1832.594 }, rot = { x = 272.188, y = 186.083, z = 210.899 }, level = 1 },
	[1266] = { config_id = 1266, gadget_id = 70310457, pos = { x = 145.141, y = 649.365, z = -1832.097 }, rot = { x = 272.180, y = 186.080, z = 210.901 }, level = 1 },
	[1267] = { config_id = 1267, gadget_id = 70310457, pos = { x = 144.456, y = 649.382, z = -1831.583 }, rot = { x = 272.180, y = 186.082, z = 210.899 }, level = 1 },
	[1268] = { config_id = 1268, gadget_id = 70310457, pos = { x = 143.780, y = 649.399, z = -1831.071 }, rot = { x = 272.172, y = 186.080, z = 210.901 }, level = 1 },
	[1269] = { config_id = 1269, gadget_id = 70310457, pos = { x = 143.122, y = 649.416, z = -1830.579 }, rot = { x = 272.186, y = 186.082, z = 210.900 }, level = 1 },
	[1270] = { config_id = 1270, gadget_id = 70310457, pos = { x = 142.466, y = 649.432, z = -1830.085 }, rot = { x = 272.180, y = 186.085, z = 210.895 }, level = 1 },
	[1271] = { config_id = 1271, gadget_id = 70310457, pos = { x = 141.806, y = 649.449, z = -1829.585 }, rot = { x = 272.186, y = 186.082, z = 210.900 }, level = 1 },
	[1272] = { config_id = 1272, gadget_id = 70310457, pos = { x = 141.173, y = 649.465, z = -1829.111 }, rot = { x = 272.180, y = 186.082, z = 210.899 }, level = 1 },
	[1273] = { config_id = 1273, gadget_id = 70310457, pos = { x = 140.531, y = 649.481, z = -1828.628 }, rot = { x = 272.184, y = 186.084, z = 210.899 }, level = 1 },
	[1274] = { config_id = 1274, gadget_id = 70310457, pos = { x = 140.055, y = 649.492, z = -1828.270 }, rot = { x = 272.184, y = 186.084, z = 210.899 }, level = 1 },
	[1275] = { config_id = 1275, gadget_id = 70310457, pos = { x = 139.363, y = 649.510, z = -1827.748 }, rot = { x = 272.175, y = 186.084, z = 210.898 }, level = 1 },
	[1276] = { config_id = 1276, gadget_id = 70310457, pos = { x = 146.458, y = 649.317, z = -1833.087 }, rot = { x = 272.175, y = 186.083, z = 210.898 }, level = 1 },
	[1277] = { config_id = 1277, gadget_id = 70310457, pos = { x = 147.118, y = 649.302, z = -1833.574 }, rot = { x = 272.175, y = 186.084, z = 210.898 }, level = 1 },
	[1278] = { config_id = 1278, gadget_id = 70310457, pos = { x = 147.760, y = 649.287, z = -1834.054 }, rot = { x = 272.175, y = 186.084, z = 210.898 }, level = 1 },
	[1279] = { config_id = 1279, gadget_id = 70310457, pos = { x = 148.432, y = 649.274, z = -1834.554 }, rot = { x = 272.175, y = 186.084, z = 210.898 }, level = 1 },
	[1280] = { config_id = 1280, gadget_id = 70310457, pos = { x = 149.102, y = 649.258, z = -1835.054 }, rot = { x = 272.170, y = 186.084, z = 210.898 }, level = 1 },
	-- -
	[1281] = { config_id = 1281, gadget_id = 70310457, pos = { x = 149.900, y = 649.238, z = -1835.655 }, rot = { x = 272.166, y = 186.084, z = 210.898 }, level = 1 },
	[1282] = { config_id = 1282, gadget_id = 70310457, pos = { x = 146.616, y = 649.365, z = -1828.251 }, rot = { x = 272.175, y = 160.935, z = 210.901 }, level = 1 },
	[1283] = { config_id = 1283, gadget_id = 70310457, pos = { x = 145.777, y = 649.382, z = -1828.077 }, rot = { x = 272.176, y = 160.937, z = 210.898 }, level = 1 },
	[1284] = { config_id = 1284, gadget_id = 70310457, pos = { x = 144.948, y = 649.399, z = -1827.900 }, rot = { x = 272.168, y = 160.935, z = 210.900 }, level = 1 },
	[1285] = { config_id = 1285, gadget_id = 70310457, pos = { x = 144.144, y = 649.416, z = -1827.734 }, rot = { x = 272.181, y = 160.937, z = 210.899 }, level = 1 },
	[1286] = { config_id = 1286, gadget_id = 70310457, pos = { x = 143.340, y = 649.432, z = -1827.566 }, rot = { x = 272.177, y = 160.940, z = 210.895 }, level = 1 },
	[1287] = { config_id = 1287, gadget_id = 70310457, pos = { x = 142.529, y = 649.449, z = -1827.394 }, rot = { x = 272.181, y = 160.937, z = 210.899 }, level = 1 },
	[1288] = { config_id = 1288, gadget_id = 70310457, pos = { x = 141.755, y = 649.465, z = -1827.234 }, rot = { x = 272.176, y = 160.937, z = 210.898 }, level = 1 },
	[1289] = { config_id = 1289, gadget_id = 70310457, pos = { x = 140.969, y = 649.481, z = -1827.069 }, rot = { x = 272.183, y = 160.939, z = 210.899 }, level = 1 },
	[1290] = { config_id = 1290, gadget_id = 70310457, pos = { x = 140.386, y = 649.492, z = -1826.948 }, rot = { x = 272.183, y = 160.939, z = 210.899 }, level = 1 },
	[1291] = { config_id = 1291, gadget_id = 70310457, pos = { x = 139.537, y = 649.510, z = -1826.769 }, rot = { x = 272.170, y = 160.939, z = 210.898 }, level = 1 },
	[1292] = { config_id = 1292, gadget_id = 70310457, pos = { x = 147.432, y = 649.317, z = -1828.413 }, rot = { x = 272.169, y = 160.938, z = 210.898 }, level = 1 },
	[1293] = { config_id = 1293, gadget_id = 70310457, pos = { x = 148.237, y = 649.302, z = -1828.573 }, rot = { x = 272.173, y = 160.938, z = 210.898 }, level = 1 },
	[1294] = { config_id = 1294, gadget_id = 70310457, pos = { x = 149.022, y = 649.287, z = -1828.735 }, rot = { x = 272.173, y = 160.938, z = 210.898 }, level = 1 },
	[1295] = { config_id = 1295, gadget_id = 70310457, pos = { x = 149.843, y = 649.274, z = -1828.902 }, rot = { x = 272.173, y = 160.938, z = 210.898 }, level = 1 },
	-- -
	[1296] = { config_id = 1296, gadget_id = 70310457, pos = { x = 150.665, y = 649.258, z = -1829.074 }, rot = { x = 272.172, y = 160.938, z = 210.898 }, level = 1 },
	-- -
	[1297] = { config_id = 1297, gadget_id = 70310457, pos = { x = 160.327, y = 649.365, z = -1826.663 }, rot = { x = 272.169, y = 129.761, z = 210.900 }, level = 1 },
	[1298] = { config_id = 1298, gadget_id = 70310457, pos = { x = 159.520, y = 649.382, z = -1826.948 }, rot = { x = 272.170, y = 129.763, z = 210.898 }, level = 1 },
	[1299] = { config_id = 1299, gadget_id = 70310457, pos = { x = 158.719, y = 649.399, z = -1827.226 }, rot = { x = 272.159, y = 129.760, z = 210.900 }, level = 1 },
	[1300] = { config_id = 1300, gadget_id = 70310457, pos = { x = 157.944, y = 649.416, z = -1827.501 }, rot = { x = 272.177, y = 129.762, z = 210.899 }, level = 1 },
	[1301] = { config_id = 1301, gadget_id = 70310457, pos = { x = 157.170, y = 649.432, z = -1827.774 }, rot = { x = 272.171, y = 129.764, z = 210.895 }, level = 1 },
	[1302] = { config_id = 1302, gadget_id = 70310457, pos = { x = 156.387, y = 649.449, z = -1828.046 }, rot = { x = 272.177, y = 129.762, z = 210.899 }, level = 1 },
	[1303] = { config_id = 1303, gadget_id = 70310457, pos = { x = 155.642, y = 649.465, z = -1828.309 }, rot = { x = 272.170, y = 129.763, z = 210.898 }, level = 1 },
	[1304] = { config_id = 1304, gadget_id = 70310457, pos = { x = 154.884, y = 649.481, z = -1828.575 }, rot = { x = 272.176, y = 129.764, z = 210.899 }, level = 1 },
	[1305] = { config_id = 1305, gadget_id = 70310457, pos = { x = 154.323, y = 649.492, z = -1828.773 }, rot = { x = 272.176, y = 129.764, z = 210.899 }, level = 1 },
	-- -
	[1306] = { config_id = 1306, gadget_id = 70310457, pos = { x = 153.504, y = 649.510, z = -1829.060 }, rot = { x = 272.165, y = 129.765, z = 210.897 }, level = 1 },
	[1307] = { config_id = 1307, gadget_id = 70310457, pos = { x = 158.562, y = 649.317, z = -1829.192 }, rot = { x = 272.150, y = 108.870, z = 210.899 }, level = 1 },
	[1308] = { config_id = 1308, gadget_id = 70310457, pos = { x = 159.183, y = 649.302, z = -1828.657 }, rot = { x = 272.154, y = 108.871, z = 210.897 }, level = 1 },
	[1309] = { config_id = 1309, gadget_id = 70310457, pos = { x = 159.794, y = 649.287, z = -1828.138 }, rot = { x = 272.154, y = 108.871, z = 210.897 }, level = 1 },
	[1310] = { config_id = 1310, gadget_id = 70310457, pos = { x = 160.430, y = 649.274, z = -1827.593 }, rot = { x = 272.154, y = 108.871, z = 210.897 }, level = 1 },
	[1311] = { config_id = 1311, gadget_id = 70310457, pos = { x = 161.071, y = 649.258, z = -1827.050 }, rot = { x = 272.154, y = 108.870, z = 210.898 }, level = 1 },
	[1312] = { config_id = 1312, gadget_id = 70310457, pos = { x = 156.044, y = 649.317, z = -1831.342 }, rot = { x = 272.147, y = 108.871, z = 210.897 }, level = 1 },
	[1313] = { config_id = 1313, gadget_id = 70310457, pos = { x = 156.665, y = 649.302, z = -1830.807 }, rot = { x = 272.151, y = 108.870, z = 210.898 }, level = 1 },
	[1314] = { config_id = 1314, gadget_id = 70310457, pos = { x = 157.276, y = 649.287, z = -1830.287 }, rot = { x = 272.151, y = 108.870, z = 210.898 }, level = 1 },
	[1315] = { config_id = 1315, gadget_id = 70310457, pos = { x = 157.912, y = 649.274, z = -1829.742 }, rot = { x = 272.151, y = 108.870, z = 210.898 }, level = 1 },
	[1316] = { config_id = 1316, gadget_id = 70310457, pos = { x = 153.507, y = 649.317, z = -1833.503 }, rot = { x = 272.146, y = 108.871, z = 210.897 }, level = 1 },
	[1317] = { config_id = 1317, gadget_id = 70310457, pos = { x = 154.128, y = 649.302, z = -1832.968 }, rot = { x = 272.150, y = 108.871, z = 210.897 }, level = 1 },
	[1318] = { config_id = 1318, gadget_id = 70310457, pos = { x = 154.738, y = 649.287, z = -1832.448 }, rot = { x = 272.150, y = 108.871, z = 210.897 }, level = 1 },
	[1319] = { config_id = 1319, gadget_id = 70310457, pos = { x = 155.375, y = 649.274, z = -1831.904 }, rot = { x = 272.150, y = 108.871, z = 210.897 }, level = 1 },
	[1320] = { config_id = 1320, gadget_id = 70310457, pos = { x = 151.792, y = 649.348, z = -1846.494 }, rot = { x = 272.183, y = 237.456, z = 210.900 }, level = 1 },
	[1321] = { config_id = 1321, gadget_id = 70310457, pos = { x = 151.610, y = 649.302, z = -1835.124 }, rot = { x = 272.143, y = 108.870, z = 210.897 }, level = 1 },
	[1322] = { config_id = 1322, gadget_id = 70310457, pos = { x = 152.221, y = 649.287, z = -1834.605 }, rot = { x = 272.143, y = 108.870, z = 210.897 }, level = 1 },
	[1323] = { config_id = 1323, gadget_id = 70310457, pos = { x = 152.857, y = 649.274, z = -1834.060 }, rot = { x = 272.143, y = 108.870, z = 210.897 }, level = 1 },
	[1324] = { config_id = 1324, gadget_id = 70310457, pos = { x = 151.768, y = 649.365, z = -1845.669 }, rot = { x = 272.163, y = 237.452, z = 210.901 }, level = 1 },
	[1325] = { config_id = 1325, gadget_id = 70310457, pos = { x = 151.742, y = 649.382, z = -1844.813 }, rot = { x = 272.176, y = 237.456, z = 210.899 }, level = 1 },
	[1326] = { config_id = 1326, gadget_id = 70310457, pos = { x = 150.032, y = 649.346, z = -1837.467 }, rot = { x = 272.155, y = 280.307, z = 272.924 }, level = 1 },
	[1327] = { config_id = 1327, gadget_id = 70310457, pos = { x = 151.718, y = 649.429, z = -1843.946 }, rot = { x = 277.448, y = 263.090, z = 186.017 }, level = 1 },
	[1328] = { config_id = 1328, gadget_id = 70310457, pos = { x = 151.706, y = 649.441, z = -1843.126 }, rot = { x = 277.448, y = 263.092, z = 186.014 }, level = 1 },
	[1329] = { config_id = 1329, gadget_id = 70310457, pos = { x = 151.694, y = 649.453, z = -1842.298 }, rot = { x = 277.448, y = 263.090, z = 186.017 }, level = 1 },
	[1330] = { config_id = 1330, gadget_id = 70310457, pos = { x = 151.680, y = 649.464, z = -1841.507 }, rot = { x = 277.452, y = 263.077, z = 186.030 }, level = 1 },
	[1331] = { config_id = 1331, gadget_id = 70310457, pos = { x = 151.667, y = 649.476, z = -1840.705 }, rot = { x = 277.456, y = 263.060, z = 186.047 }, level = 1 },
	[1332] = { config_id = 1332, gadget_id = 70310457, pos = { x = 151.656, y = 649.484, z = -1840.109 }, rot = { x = 277.456, y = 263.060, z = 186.047 }, level = 1 },
	[1333] = { config_id = 1333, gadget_id = 70310457, pos = { x = 151.642, y = 649.496, z = -1839.240 }, rot = { x = 277.442, y = 263.109, z = 185.999 }, level = 1 },
	[1334] = { config_id = 1334, gadget_id = 70310457, pos = { x = 150.225, y = 649.317, z = -1848.358 }, rot = { x = 272.166, y = 328.944, z = 210.899 }, level = 1 },
	[1335] = { config_id = 1335, gadget_id = 70310457, pos = { x = 149.406, y = 649.302, z = -1848.368 }, rot = { x = 272.171, y = 328.945, z = 210.898 }, level = 1 },
	[1336] = { config_id = 1336, gadget_id = 70310457, pos = { x = 148.603, y = 649.287, z = -1848.374 }, rot = { x = 272.171, y = 328.945, z = 210.898 }, level = 1 },
	[1337] = { config_id = 1337, gadget_id = 70310457, pos = { x = 147.766, y = 649.274, z = -1848.380 }, rot = { x = 272.171, y = 328.945, z = 210.898 }, level = 1 },
	[1338] = { config_id = 1338, gadget_id = 70310457, pos = { x = 146.931, y = 649.258, z = -1848.387 }, rot = { x = 272.164, y = 328.946, z = 210.897 }, level = 1 },
	[1339] = { config_id = 1339, gadget_id = 70310457, pos = { x = 146.091, y = 649.238, z = -1848.389 }, rot = { x = 272.162, y = 328.946, z = 210.897 }, level = 1 },
	[1340] = { config_id = 1340, gadget_id = 70310457, pos = { x = 140.399, y = 649.348, z = -1837.965 }, rot = { x = 272.170, y = 204.010, z = 210.900 }, level = 1 },
	[1341] = { config_id = 1341, gadget_id = 70310457, pos = { x = 139.924, y = 649.365, z = -1837.289 }, rot = { x = 272.164, y = 204.008, z = 210.900 }, level = 1 },
	[1342] = { config_id = 1342, gadget_id = 70310457, pos = { x = 139.430, y = 649.382, z = -1836.589 }, rot = { x = 272.172, y = 204.010, z = 210.899 }, level = 1 },
	[1343] = { config_id = 1343, gadget_id = 70310457, pos = { x = 142.741, y = 649.352, z = -1848.360 }, rot = { x = 272.157, y = 281.385, z = 260.281 }, level = 1 },
	[1344] = { config_id = 1344, gadget_id = 70310457, pos = { x = 143.582, y = 649.416, z = -1848.373 }, rot = { x = 271.109, y = 282.397, z = 258.377 }, level = 1 },
	[1345] = { config_id = 1345, gadget_id = 70310457, pos = { x = 144.402, y = 649.432, z = -1848.386 }, rot = { x = 271.105, y = 282.118, z = 258.654 }, level = 1 },
	[1346] = { config_id = 1346, gadget_id = 70310457, pos = { x = 145.231, y = 649.448, z = -1848.399 }, rot = { x = 271.109, y = 282.397, z = 258.377 }, level = 1 },
	-- -
	[1347] = { config_id = 1347, gadget_id = 70310457, pos = { x = 140.821, y = 649.337, z = -1838.564 }, rot = { x = 272.156, y = 204.009, z = 210.899 }, level = 1 },
	[1348] = { config_id = 1348, gadget_id = 70310457, pos = { x = 141.663, y = 649.238, z = -1840.647 }, rot = { x = 272.157, y = 240.928, z = 210.897 }, level = 1 },
	[1349] = { config_id = 1349, gadget_id = 70310457, pos = { x = 141.663, y = 649.238, z = -1840.647 }, rot = { x = 272.157, y = 240.928, z = 210.897 }, level = 1 },
	[1350] = { config_id = 1350, gadget_id = 70310457, pos = { x = 141.476, y = 649.348, z = -1846.487 }, rot = { x = 272.168, y = 240.925, z = 210.900 }, level = 1 },
	[1351] = { config_id = 1351, gadget_id = 70310457, pos = { x = 141.502, y = 649.365, z = -1845.661 }, rot = { x = 272.165, y = 240.924, z = 210.899 }, level = 1 },
	[1352] = { config_id = 1352, gadget_id = 70310457, pos = { x = 141.528, y = 649.382, z = -1844.805 }, rot = { x = 272.172, y = 240.925, z = 210.899 }, level = 1 },
	[1353] = { config_id = 1353, gadget_id = 70310457, pos = { x = 141.557, y = 649.399, z = -1843.958 }, rot = { x = 272.152, y = 240.923, z = 210.900 }, level = 1 },
	[1354] = { config_id = 1354, gadget_id = 70310457, pos = { x = 141.580, y = 649.416, z = -1843.135 }, rot = { x = 272.163, y = 240.925, z = 210.899 }, level = 1 },
	[1355] = { config_id = 1355, gadget_id = 70310457, pos = { x = 141.607, y = 649.432, z = -1842.316 }, rot = { x = 272.152, y = 240.927, z = 210.896 }, level = 1 },
	[1356] = { config_id = 1356, gadget_id = 70310457, pos = { x = 141.635, y = 649.449, z = -1841.488 }, rot = { x = 272.163, y = 240.925, z = 210.899 }, level = 1 },
	-- -
	[1357] = { config_id = 1357, gadget_id = 70310457, pos = { x = 141.454, y = 649.337, z = -1847.219 }, rot = { x = 272.160, y = 240.922, z = 210.901 }, level = 1 },
	[1358] = { config_id = 1358, gadget_id = 70310457, pos = { x = 141.476, y = 649.348, z = -1846.487 }, rot = { x = 272.168, y = 240.925, z = 210.900 }, level = 1 },
	[1359] = { config_id = 1359, gadget_id = 70310457, pos = { x = 141.502, y = 649.365, z = -1845.661 }, rot = { x = 272.165, y = 240.924, z = 210.899 }, level = 1 },
	[1360] = { config_id = 1360, gadget_id = 70310457, pos = { x = 141.528, y = 649.382, z = -1844.805 }, rot = { x = 272.172, y = 240.925, z = 210.899 }, level = 1 },
	[1361] = { config_id = 1361, gadget_id = 70310457, pos = { x = 141.557, y = 649.399, z = -1843.958 }, rot = { x = 272.152, y = 240.923, z = 210.900 }, level = 1 },
	[1362] = { config_id = 1362, gadget_id = 70310457, pos = { x = 141.580, y = 649.416, z = -1843.135 }, rot = { x = 272.163, y = 240.925, z = 210.899 }, level = 1 },
	[1363] = { config_id = 1363, gadget_id = 70310457, pos = { x = 141.607, y = 649.432, z = -1842.316 }, rot = { x = 272.152, y = 240.927, z = 210.896 }, level = 1 },
	[1364] = { config_id = 1364, gadget_id = 70310457, pos = { x = 141.635, y = 649.449, z = -1841.488 }, rot = { x = 272.163, y = 240.925, z = 210.899 }, level = 1 },
	-- -
	[1365] = { config_id = 1365, gadget_id = 70310457, pos = { x = 141.454, y = 649.337, z = -1847.219 }, rot = { x = 272.160, y = 240.922, z = 210.901 }, level = 1 },
	[1366] = { config_id = 1366, gadget_id = 70310457, pos = { x = 138.919, y = 649.399, z = -1835.862 }, rot = { x = 272.171, y = 204.010, z = 210.899 }, level = 1 },
	[1367] = { config_id = 1367, gadget_id = 70310457, pos = { x = 149.505, y = 649.317, z = -1832.282 }, rot = { x = 272.158, y = 212.422, z = 210.896 }, level = 1 },
	[1368] = { config_id = 1368, gadget_id = 70310457, pos = { x = 140.521, y = 649.330, z = -1835.314 }, rot = { x = 272.206, y = 162.596, z = 210.898 }, level = 1 },
	[1369] = { config_id = 1369, gadget_id = 70310457, pos = { x = 141.321, y = 649.314, z = -1835.504 }, rot = { x = 272.210, y = 162.595, z = 210.900 }, level = 1 },
	[1370] = { config_id = 1370, gadget_id = 70310457, pos = { x = 139.700, y = 649.662, z = -1835.125 }, rot = { x = 272.205, y = 84.909, z = 287.580 }, level = 1 },
	[1371] = { config_id = 1371, gadget_id = 70310457, pos = { x = 150.631, y = 649.317, z = -1834.499 }, rot = { x = 272.162, y = 212.422, z = 210.897 }, level = 1 },
	[1372] = { config_id = 1372, gadget_id = 70310457, pos = { x = 151.006, y = 649.302, z = -1835.228 }, rot = { x = 272.170, y = 212.422, z = 210.898 }, level = 1 },
	[1373] = { config_id = 1373, gadget_id = 70310457, pos = { x = 151.379, y = 649.287, z = -1835.968 }, rot = { x = 272.170, y = 212.422, z = 210.898 }, level = 1 },
	[1374] = { config_id = 1374, gadget_id = 70310457, pos = { x = 149.208, y = 649.348, z = -1837.276 }, rot = { x = 272.175, y = 161.115, z = 210.899 }, level = 1 },
	[1375] = { config_id = 1375, gadget_id = 70310457, pos = { x = 148.423, y = 649.365, z = -1837.103 }, rot = { x = 272.154, y = 161.111, z = 210.900 }, level = 1 },
	[1376] = { config_id = 1376, gadget_id = 70310457, pos = { x = 147.585, y = 649.382, z = -1836.926 }, rot = { x = 272.163, y = 161.114, z = 210.899 }, level = 1 },
	[1377] = { config_id = 1377, gadget_id = 70310457, pos = { x = 146.737, y = 649.429, z = -1836.745 }, rot = { x = 277.446, y = 186.749, z = 186.016 }, level = 1 },
	[1378] = { config_id = 1378, gadget_id = 70310457, pos = { x = 145.937, y = 649.441, z = -1836.563 }, rot = { x = 277.445, y = 186.750, z = 186.014 }, level = 1 },
	[1379] = { config_id = 1379, gadget_id = 70310457, pos = { x = 145.129, y = 649.453, z = -1836.379 }, rot = { x = 277.446, y = 186.749, z = 186.016 }, level = 1 },
	[1380] = { config_id = 1380, gadget_id = 70310457, pos = { x = 144.357, y = 649.464, z = -1836.207 }, rot = { x = 277.451, y = 186.736, z = 186.030 }, level = 1 },
	[1381] = { config_id = 1381, gadget_id = 70310457, pos = { x = 143.575, y = 649.476, z = -1836.030 }, rot = { x = 277.455, y = 186.719, z = 186.047 }, level = 1 },
	[1382] = { config_id = 1382, gadget_id = 70310457, pos = { x = 142.993, y = 649.484, z = -1835.899 }, rot = { x = 277.455, y = 186.719, z = 186.047 }, level = 1 },
	[1383] = { config_id = 1383, gadget_id = 70310457, pos = { x = 142.146, y = 649.496, z = -1835.708 }, rot = { x = 277.441, y = 186.768, z = 185.999 }, level = 1 },
	[1384] = { config_id = 1384, gadget_id = 70310457, pos = { x = 149.880, y = 649.302, z = -1833.011 }, rot = { x = 272.167, y = 212.422, z = 210.898 }, level = 1 },
	[1385] = { config_id = 1385, gadget_id = 70310457, pos = { x = 150.253, y = 649.287, z = -1833.751 }, rot = { x = 272.167, y = 212.422, z = 210.898 }, level = 1 },
	[1386] = { config_id = 1386, gadget_id = 70310457, pos = { x = 148.374, y = 649.317, z = -1830.039 }, rot = { x = 272.152, y = 212.422, z = 210.896 }, level = 1 },
	[1387] = { config_id = 1387, gadget_id = 70310457, pos = { x = 148.749, y = 649.302, z = -1830.768 }, rot = { x = 272.164, y = 212.422, z = 210.898 }, level = 1 },
	[1388] = { config_id = 1388, gadget_id = 70310457, pos = { x = 149.122, y = 649.287, z = -1831.508 }, rot = { x = 272.164, y = 212.422, z = 210.898 }, level = 1 },
	[1389] = { config_id = 1389, gadget_id = 70310457, pos = { x = 147.241, y = 649.317, z = -1827.820 }, rot = { x = 272.151, y = 212.422, z = 210.896 }, level = 1 },
	[1390] = { config_id = 1390, gadget_id = 70310457, pos = { x = 147.616, y = 649.302, z = -1828.549 }, rot = { x = 272.164, y = 212.422, z = 210.898 }, level = 1 },
	[1391] = { config_id = 1391, gadget_id = 70310457, pos = { x = 147.989, y = 649.287, z = -1829.289 }, rot = { x = 272.164, y = 212.422, z = 210.898 }, level = 1 },
	[1392] = { config_id = 1392, gadget_id = 70310457, pos = { x = 146.109, y = 649.317, z = -1825.639 }, rot = { x = 272.150, y = 212.422, z = 210.896 }, level = 1 },
	[1393] = { config_id = 1393, gadget_id = 70310457, pos = { x = 146.484, y = 649.302, z = -1826.368 }, rot = { x = 272.162, y = 212.422, z = 210.898 }, level = 1 },
	[1394] = { config_id = 1394, gadget_id = 70310457, pos = { x = 146.857, y = 649.287, z = -1827.108 }, rot = { x = 272.162, y = 212.422, z = 210.898 }, level = 1 },
	[1395] = { config_id = 1395, gadget_id = 70310457, pos = { x = 149.755, y = 649.310, z = -1825.850 }, rot = { x = 272.162, y = 119.949, z = 260.998 }, level = 1 },
	[1396] = { config_id = 1396, gadget_id = 70310457, pos = { x = 154.025, y = 649.314, z = -1825.667 }, rot = { x = 272.166, y = 119.965, z = 199.368 }, level = 1 },
	[1397] = { config_id = 1397, gadget_id = 70310457, pos = { x = 151.317, y = 649.317, z = -1826.472 }, rot = { x = 272.149, y = 171.445, z = 210.896 }, level = 1 },
	[1398] = { config_id = 1398, gadget_id = 70310457, pos = { x = 148.998, y = 649.316, z = -1825.562 }, rot = { x = 272.146, y = 171.446, z = 210.896 }, level = 1 },
	[1399] = { config_id = 1399, gadget_id = 70310457, pos = { x = 153.373, y = 649.291, z = -1826.226 }, rot = { x = 272.151, y = 171.471, z = 147.994 }, level = 1 },
	[1400] = { config_id = 1400, gadget_id = 70310457, pos = { x = 150.535, y = 649.287, z = -1826.158 }, rot = { x = 272.159, y = 171.445, z = 210.898 }, level = 1 },
	[1401] = { config_id = 1401, gadget_id = 70310457, pos = { x = 146.722, y = 649.317, z = -1824.636 }, rot = { x = 272.145, y = 171.445, z = 210.896 }, level = 1 },
	[1402] = { config_id = 1402, gadget_id = 70310457, pos = { x = 147.483, y = 649.302, z = -1824.940 }, rot = { x = 272.157, y = 171.445, z = 210.898 }, level = 1 },
	[1403] = { config_id = 1403, gadget_id = 70310457, pos = { x = 148.251, y = 649.287, z = -1825.254 }, rot = { x = 272.157, y = 171.445, z = 210.898 }, level = 1 },
	[1404] = { config_id = 1404, gadget_id = 70310457, pos = { x = 154.678, y = 649.291, z = -1825.109 }, rot = { x = 272.149, y = 171.471, z = 147.994 }, level = 1 },
	[1405] = { config_id = 1405, gadget_id = 70310457, pos = { x = 155.330, y = 649.314, z = -1824.550 }, rot = { x = 272.159, y = 119.966, z = 199.367 }, level = 1 },
	[1406] = { config_id = 1406, gadget_id = 70310457, pos = { x = 155.977, y = 649.291, z = -1823.993 }, rot = { x = 272.142, y = 171.471, z = 147.994 }, level = 1 },
	-- -
	[1407] = { config_id = 1407, gadget_id = 70310457, pos = { x = 156.628, y = 649.314, z = -1823.434 }, rot = { x = 272.152, y = 119.966, z = 199.366 }, level = 1 },
	[1408] = { config_id = 1408, gadget_id = 70310457, pos = { x = 154.351, y = 649.319, z = -1831.429 }, rot = { x = 272.160, y = 259.778, z = 210.897 }, level = 1 },
	[1409] = { config_id = 1409, gadget_id = 70310457, pos = { x = 155.218, y = 649.317, z = -1829.096 }, rot = { x = 272.145, y = 259.778, z = 210.896 }, level = 1 },
	[1410] = { config_id = 1410, gadget_id = 70310457, pos = { x = 154.936, y = 649.302, z = -1829.866 }, rot = { x = 272.158, y = 259.777, z = 210.898 }, level = 1 },
	[1411] = { config_id = 1411, gadget_id = 70310457, pos = { x = 154.644, y = 649.287, z = -1830.642 }, rot = { x = 272.158, y = 259.777, z = 210.898 }, level = 1 },
	[1412] = { config_id = 1412, gadget_id = 70310457, pos = { x = 156.083, y = 649.317, z = -1826.760 }, rot = { x = 272.144, y = 259.779, z = 210.894 }, level = 1 },
	[1413] = { config_id = 1413, gadget_id = 70310457, pos = { x = 155.801, y = 649.302, z = -1827.529 }, rot = { x = 272.156, y = 259.778, z = 210.897 }, level = 1 },
	[1414] = { config_id = 1414, gadget_id = 70310457, pos = { x = 155.509, y = 649.287, z = -1828.305 }, rot = { x = 272.156, y = 259.778, z = 210.897 }, level = 1 },
	[1415] = { config_id = 1415, gadget_id = 70310457, pos = { x = 156.920, y = 649.317, z = -1824.450 }, rot = { x = 272.143, y = 259.777, z = 210.896 }, level = 1 },
	[1416] = { config_id = 1416, gadget_id = 70310457, pos = { x = 156.638, y = 649.302, z = -1825.219 }, rot = { x = 272.154, y = 259.776, z = 210.899 }, level = 1 },
	[1417] = { config_id = 1417, gadget_id = 70310457, pos = { x = 156.347, y = 649.287, z = -1825.995 }, rot = { x = 272.154, y = 259.776, z = 210.899 }, level = 1 },
	[1418] = { config_id = 1418, gadget_id = 70310457, pos = { x = 154.061, y = 649.317, z = -1832.219 }, rot = { x = 272.142, y = 259.777, z = 210.896 }, level = 1 },
	[1419] = { config_id = 1419, gadget_id = 70310457, pos = { x = 153.779, y = 649.302, z = -1832.988 }, rot = { x = 272.149, y = 259.777, z = 210.898 }, level = 1 },
	[1420] = { config_id = 1420, gadget_id = 70310457, pos = { x = 153.487, y = 649.287, z = -1833.764 }, rot = { x = 272.149, y = 259.777, z = 210.898 }, level = 1 },
	[1421] = { config_id = 1421, gadget_id = 70310457, pos = { x = 153.196, y = 649.317, z = -1834.534 }, rot = { x = 272.141, y = 259.777, z = 210.896 }, level = 1 },
	[1422] = { config_id = 1422, gadget_id = 70310457, pos = { x = 152.913, y = 649.302, z = -1835.303 }, rot = { x = 272.149, y = 259.777, z = 210.898 }, level = 1 },
	[1423] = { config_id = 1423, gadget_id = 70310457, pos = { x = 152.622, y = 649.287, z = -1836.079 }, rot = { x = 272.149, y = 259.777, z = 210.898 }, level = 1 },
	-- -
	[1424] = { config_id = 1424, gadget_id = 70310457, pos = { x = 152.321, y = 649.270, z = -1836.877 }, rot = { x = 272.147, y = 259.777, z = 210.898 }, level = 1 },
	[1425] = { config_id = 1425, gadget_id = 70310457, pos = { x = 157.973, y = 649.319, z = -1843.420 }, rot = { x = 272.154, y = 192.147, z = 210.897 }, level = 1 },
	[1426] = { config_id = 1426, gadget_id = 70310457, pos = { x = 156.146, y = 649.317, z = -1841.730 }, rot = { x = 272.139, y = 192.147, z = 210.895 }, level = 1 },
	[1427] = { config_id = 1427, gadget_id = 70310457, pos = { x = 156.750, y = 649.302, z = -1842.284 }, rot = { x = 272.153, y = 192.146, z = 210.898 }, level = 1 },
	[1428] = { config_id = 1428, gadget_id = 70310457, pos = { x = 157.357, y = 649.287, z = -1842.849 }, rot = { x = 272.153, y = 192.146, z = 210.898 }, level = 1 },
	[1429] = { config_id = 1429, gadget_id = 70310457, pos = { x = 154.315, y = 649.317, z = -1840.041 }, rot = { x = 272.139, y = 192.148, z = 210.894 }, level = 1 },
	[1430] = { config_id = 1430, gadget_id = 70310457, pos = { x = 154.919, y = 649.302, z = -1840.595 }, rot = { x = 272.149, y = 192.146, z = 210.898 }, level = 1 },
	[1431] = { config_id = 1431, gadget_id = 70310457, pos = { x = 155.525, y = 649.287, z = -1841.160 }, rot = { x = 272.149, y = 192.146, z = 210.898 }, level = 1 },
	[1432] = { config_id = 1432, gadget_id = 70310457, pos = { x = 152.497, y = 649.317, z = -1838.388 }, rot = { x = 272.137, y = 192.146, z = 210.896 }, level = 1 },
	[1433] = { config_id = 1433, gadget_id = 70310457, pos = { x = 153.101, y = 649.302, z = -1838.941 }, rot = { x = 272.146, y = 192.146, z = 210.898 }, level = 1 },
	[1434] = { config_id = 1434, gadget_id = 70310457, pos = { x = 153.708, y = 649.287, z = -1839.506 }, rot = { x = 272.146, y = 192.146, z = 210.898 }, level = 1 },
	[1435] = { config_id = 1435, gadget_id = 70310457, pos = { x = 158.593, y = 649.317, z = -1843.989 }, rot = { x = 272.138, y = 192.145, z = 210.897 }, level = 1 },
	[1436] = { config_id = 1436, gadget_id = 70310457, pos = { x = 159.197, y = 649.302, z = -1844.542 }, rot = { x = 272.145, y = 192.146, z = 210.897 }, level = 1 },
	[1437] = { config_id = 1437, gadget_id = 70310457, pos = { x = 159.804, y = 649.287, z = -1845.107 }, rot = { x = 272.145, y = 192.146, z = 210.897 }, level = 1 },
	[1438] = { config_id = 1438, gadget_id = 70310457, pos = { x = 160.405, y = 649.317, z = -1845.670 }, rot = { x = 272.136, y = 192.146, z = 210.896 }, level = 1 },
	[1439] = { config_id = 1439, gadget_id = 70310457, pos = { x = 161.009, y = 649.302, z = -1846.224 }, rot = { x = 272.142, y = 192.145, z = 210.898 }, level = 1 },
	-- -
	[1440] = { config_id = 1440, gadget_id = 70310457, pos = { x = 161.615, y = 649.287, z = -1846.788 }, rot = { x = 272.142, y = 192.145, z = 210.898 }, level = 1 },
	[1441] = { config_id = 1441, gadget_id = 70310457, pos = { x = 162.770, y = 649.319, z = -1846.274 }, rot = { x = 272.149, y = 240.190, z = 210.897 }, level = 1 },
	[1442] = { config_id = 1442, gadget_id = 70310457, pos = { x = 162.805, y = 649.317, z = -1843.786 }, rot = { x = 272.137, y = 240.190, z = 210.895 }, level = 1 },
	[1443] = { config_id = 1443, gadget_id = 70310457, pos = { x = 162.797, y = 649.302, z = -1844.606 }, rot = { x = 272.146, y = 240.189, z = 210.897 }, level = 1 },
	[1444] = { config_id = 1444, gadget_id = 70310457, pos = { x = 162.783, y = 649.287, z = -1845.435 }, rot = { x = 272.146, y = 240.189, z = 210.897 }, level = 1 },
	[1445] = { config_id = 1445, gadget_id = 70310457, pos = { x = 162.837, y = 649.317, z = -1841.295 }, rot = { x = 272.133, y = 240.191, z = 210.894 }, level = 1 },
	[1446] = { config_id = 1446, gadget_id = 70310457, pos = { x = 162.829, y = 649.302, z = -1842.114 }, rot = { x = 272.146, y = 240.189, z = 210.898 }, level = 1 },
	[1447] = { config_id = 1447, gadget_id = 70310457, pos = { x = 162.814, y = 649.287, z = -1842.943 }, rot = { x = 272.146, y = 240.189, z = 210.898 }, level = 1 },
	[1448] = { config_id = 1448, gadget_id = 70310457, pos = { x = 162.851, y = 649.317, z = -1838.838 }, rot = { x = 272.135, y = 240.190, z = 210.895 }, level = 1 },
	[1449] = { config_id = 1449, gadget_id = 70310457, pos = { x = 162.843, y = 649.302, z = -1839.657 }, rot = { x = 272.139, y = 240.188, z = 210.898 }, level = 1 },
	-- -
	[1450] = { config_id = 1450, gadget_id = 70310457, pos = { x = 162.829, y = 649.287, z = -1840.486 }, rot = { x = 272.139, y = 240.188, z = 210.898 }, level = 1 },
	[1451] = { config_id = 1451, gadget_id = 70310457, pos = { x = 163.647, y = 649.319, z = -1836.575 }, rot = { x = 272.144, y = 263.323, z = 210.897 }, level = 1 },
	[1452] = { config_id = 1452, gadget_id = 70310457, pos = { x = 164.657, y = 649.317, z = -1834.301 }, rot = { x = 272.130, y = 263.323, z = 210.895 }, level = 1 },
	[1453] = { config_id = 1453, gadget_id = 70310457, pos = { x = 164.327, y = 649.302, z = -1835.052 }, rot = { x = 272.138, y = 263.323, z = 210.897 }, level = 1 },
	[1454] = { config_id = 1454, gadget_id = 70310457, pos = { x = 163.988, y = 649.287, z = -1835.809 }, rot = { x = 272.138, y = 263.323, z = 210.897 }, level = 1 },
	[1455] = { config_id = 1455, gadget_id = 70310457, pos = { x = 165.346, y = 649.302, z = -1832.753 }, rot = { x = 272.136, y = 263.323, z = 210.897 }, level = 1 },
	[1456] = { config_id = 1456, gadget_id = 70310457, pos = { x = 165.007, y = 649.287, z = -1833.510 }, rot = { x = 272.136, y = 263.323, z = 210.897 }, level = 1 },
	[1457] = { config_id = 1457, gadget_id = 70310457, pos = { x = 160.679, y = 649.319, z = -1832.958 }, rot = { x = 272.147, y = 123.936, z = 210.896 }, level = 1 },
	[1458] = { config_id = 1458, gadget_id = 70310457, pos = { x = 158.432, y = 649.317, z = -1834.027 }, rot = { x = 272.132, y = 123.935, z = 210.895 }, level = 1 },
	[1459] = { config_id = 1459, gadget_id = 70310457, pos = { x = 159.171, y = 649.302, z = -1833.672 }, rot = { x = 272.148, y = 123.933, z = 210.899 }, level = 1 },
	[1460] = { config_id = 1460, gadget_id = 70310457, pos = { x = 159.920, y = 649.287, z = -1833.317 }, rot = { x = 272.148, y = 123.933, z = 210.899 }, level = 1 },
	[1461] = { config_id = 1461, gadget_id = 70310457, pos = { x = 156.184, y = 649.317, z = -1835.101 }, rot = { x = 272.131, y = 123.935, z = 210.895 }, level = 1 },
	[1462] = { config_id = 1462, gadget_id = 70310457, pos = { x = 156.922, y = 649.302, z = -1834.745 }, rot = { x = 272.145, y = 123.934, z = 210.898 }, level = 1 },
	[1463] = { config_id = 1463, gadget_id = 70310457, pos = { x = 157.672, y = 649.287, z = -1834.391 }, rot = { x = 272.145, y = 123.934, z = 210.898 }, level = 1 },
	[1464] = { config_id = 1464, gadget_id = 70310457, pos = { x = 153.974, y = 649.317, z = -1836.174 }, rot = { x = 272.132, y = 123.934, z = 210.896 }, level = 1 },
	[1465] = { config_id = 1465, gadget_id = 70310457, pos = { x = 154.712, y = 649.302, z = -1835.818 }, rot = { x = 272.140, y = 123.933, z = 210.899 }, level = 1 },
	[1466] = { config_id = 1466, gadget_id = 70310457, pos = { x = 155.462, y = 649.287, z = -1835.465 }, rot = { x = 272.140, y = 123.933, z = 210.899 }, level = 1 },
	[1467] = { config_id = 1467, gadget_id = 70310457, pos = { x = 161.438, y = 649.317, z = -1832.592 }, rot = { x = 272.131, y = 123.933, z = 210.896 }, level = 1 },
	[1468] = { config_id = 1468, gadget_id = 70310457, pos = { x = 162.175, y = 649.302, z = -1832.237 }, rot = { x = 272.139, y = 123.934, z = 210.897 }, level = 1 },
	[1469] = { config_id = 1469, gadget_id = 70310457, pos = { x = 162.925, y = 649.287, z = -1831.884 }, rot = { x = 272.139, y = 123.934, z = 210.897 }, level = 1 },
	[1470] = { config_id = 1470, gadget_id = 70310457, pos = { x = 163.671, y = 649.317, z = -1831.534 }, rot = { x = 272.128, y = 123.934, z = 210.895 }, level = 1 },
	[1471] = { config_id = 1471, gadget_id = 70310457, pos = { x = 164.410, y = 649.302, z = -1831.180 }, rot = { x = 272.136, y = 123.933, z = 210.898 }, level = 1 },
	[1472] = { config_id = 1472, gadget_id = 70310457, pos = { x = 152.469, y = 649.317, z = -1836.897 }, rot = { x = 272.131, y = 123.934, z = 210.896 }, level = 1 },
	[1473] = { config_id = 1473, gadget_id = 70310457, pos = { x = 153.207, y = 649.302, z = -1836.541 }, rot = { x = 272.136, y = 123.933, z = 210.898 }, level = 1 },
	[1474] = { config_id = 1474, gadget_id = 70220119, pos = { x = 100.094, y = 658.751, z = -1855.796 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1474,  ["SGV_Constellation_Target"]= 1064} },
	[1475] = { config_id = 1475, gadget_id = 70220119, pos = { x = 110.676, y = 667.051, z = -1860.278 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1475,  ["SGV_Constellation_Target"]= 1087} },
	[1476] = { config_id = 1476, gadget_id = 70220119, pos = { x = 110.676, y = 667.051, z = -1860.278 }, rot = { x = 0.000, y = 321.113, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 1476,  ["SGV_Constellation_Target"]= 1090} },
	[1477] = { config_id = 1477, gadget_id = 70310075, pos = { x = 168.019, y = 649.572, z = -1827.151 }, rot = { x = 0.000, y = 59.988, z = 0.000 }, level = 1 },
	[1479] = { config_id = 1479, gadget_id = 70310075, pos = { x = 185.717, y = 647.304, z = -1818.544 }, rot = { x = 0.000, y = 61.147, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001102, name = "SELECT_OPTION_1102", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1102", action = "action_EVENT_SELECT_OPTION_1102", trigger_count = 0 },
	{ config_id = 1001103, name = "CHALLENGE_FAIL_1103", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1103", trigger_count = 0 },
	{ config_id = 1001478, name = "CHALLENGE_SUCCESS_1478", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1478", trigger_count = 0 }
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
		gadgets = { 1001, 1036, 1479 },
		regions = { },
		triggers = { "SELECT_OPTION_1102", "CHALLENGE_FAIL_1103", "CHALLENGE_SUCCESS_1478" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1321, 1322, 1323, 1474 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1320, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1475, 1476 },
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
function condition_EVENT_SELECT_OPTION_1102(context, evt)
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
function action_EVENT_SELECT_OPTION_1102(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1477的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1477 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1103(context, evt)
	-- 改变指定group组235853001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235853001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235853001, 1001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1477 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1478(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1477 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/DLActivityDungeon"