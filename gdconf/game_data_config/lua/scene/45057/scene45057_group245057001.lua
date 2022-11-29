-- 基础信息
local base_info = {
	group_id = 245057001
}

-- DEFS_MISCS
--defs相关配置
        defs = {
                is_offical = true, --是否是官方关
                startpoint = 1009, --起点ConfigID
                connect_region = 1005,
synchronizer = 1089,
        }
--misc相关配置
        --官方关对应的配置，非官方关可以填空List
        offical_settings = {
                max_lives = 10, --可以使用的命数
                has_dest = 1,        --是否需要到达终点，如果没有终点则填0
                time = 600,                --时间限制，如果填0表示没有时间限制
                coins_collect = 60,--需要收集的金币数量，如果填0表示没有金币需要收集
                coins_max = 100,        --场上金币总数，用在挑战的显示里
                editors = {1010,1011,1029,1030},
        }
        --房间和空气墙映射关系的配置
    airwall_graph = {
        [1] = {next_room = 2, airwall_suite = 2}, --房间1连接的房间，中间空气墙所在的Suite
        [2] = {next_room = 3, airwall_suite = 3}, --房间2连接的房间，中间空气墙所在的Suite
        [3] = {next_room = 4, airwall_suite = 4}, --0表示没有下一个房间，不存在空气墙
        [4] = {next_room = 0, airwall_suite = 0}, --0表示没有下一个房间，不存在空气墙
    }

room_infos = {
         {        
                room_cur = 1, 
                room_next = 2, 
                wall_connect = 1013, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙 
                region_self = 1109,      --记录处于所属房间region
                point_safe = 1031 --传送安全点的configID
         },
         {        
                room_cur = 2, 
                room_next = 3, 
                wall_connect = 1015, --到下一个房间的空气墙
                region_enter =1047, --弱网拦截用的
                region_wall_enter = 1014, --弱网拦截用的空气墙 
                region_self = 1110,      --记录处于所属房间region
                point_safe = 1044 --传送安全点的configID
         },
         {        
                room_cur = 3, 
                room_next = 4, 
                wall_connect = 1017, --到下一个房间的空气墙
                region_enter = 1048, --弱网拦截用的
                region_wall_enter = 1016, --弱网拦截用的空气墙 
                region_self = 1111,      --记录处于所属房间region
                point_safe = 1045 --传送安全点的configID
         },		
         {        
                room_cur = 4, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1049, --弱网拦截用的
                region_wall_enter = 1018, --弱网拦截用的空气墙 
                region_self = 1112,      --记录处于所属房间region
                point_safe = 1046 --传送安全点的configID
         },	 
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350333, pos = { x = 0.007, y = 197.485, z = -53.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350321, pos = { x = 5.905, y = 192.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350333, pos = { x = -14.275, y = 184.173, z = -53.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350321, pos = { x = 5.905, y = 192.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350343, pos = { x = -57.720, y = 135.687, z = -33.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350369, pos = { x = -56.565, y = 136.597, z = -33.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350327, pos = { x = -56.533, y = 116.654, z = 1.539 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350353, pos = { x = 38.510, y = 198.000, z = -53.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350323, pos = { x = -56.496, y = 125.687, z = -18.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70950150, pos = { x = 10.195, y = 197.417, z = -53.628 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70950150, pos = { x = -41.729, y = 166.758, z = -53.129 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70950150, pos = { x = -58.311, y = 136.857, z = -37.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70950150, pos = { x = -59.590, y = 106.844, z = 14.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70950150, pos = { x = -37.708, y = 76.894, z = 36.072 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70950150, pos = { x = 14.728, y = 46.672, z = 37.898 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350369, pos = { x = -56.565, y = 126.597, z = -18.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70350323, pos = { x = -52.720, y = 125.687, z = -18.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70350369, pos = { x = -52.790, y = 126.597, z = -17.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70350323, pos = { x = -56.496, y = 125.687, z = -13.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70350369, pos = { x = -56.604, y = 126.597, z = -13.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70350323, pos = { x = -52.720, y = 125.687, z = -8.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350369, pos = { x = -52.790, y = 126.597, z = -7.986 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350323, pos = { x = -56.496, y = 125.687, z = -8.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70350369, pos = { x = -56.565, y = 126.597, z = -8.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70350327, pos = { x = -56.533, y = 121.654, z = -3.461 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70350321, pos = { x = -34.283, y = 72.003, z = 31.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70350321, pos = { x = -34.283, y = 72.003, z = 36.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70350321, pos = { x = -34.283, y = 72.003, z = 41.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70350381, pos = { x = -34.140, y = 77.008, z = 31.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70350381, pos = { x = -33.911, y = 77.008, z = 41.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70350379, pos = { x = -21.434, y = 77.008, z = 36.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70350379, pos = { x = -14.240, y = 74.091, z = 36.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70350379, pos = { x = -4.921, y = 70.811, z = 33.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70350379, pos = { x = 3.296, y = 70.811, z = 39.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70350379, pos = { x = 6.228, y = 61.277, z = 37.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70350327, pos = { x = -56.533, y = 131.654, z = -28.461 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70350327, pos = { x = -56.533, y = 126.654, z = -23.461 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70350321, pos = { x = 5.905, y = 192.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, gadget_id = 70350321, pos = { x = 0.905, y = 187.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70350321, pos = { x = 0.905, y = 187.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70350321, pos = { x = 0.905, y = 187.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70350321, pos = { x = -4.095, y = 187.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70350321, pos = { x = -4.095, y = 187.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70350321, pos = { x = -4.095, y = 187.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70350321, pos = { x = -9.095, y = 187.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70350321, pos = { x = -9.095, y = 187.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70350321, pos = { x = -9.095, y = 187.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70350321, pos = { x = -19.095, y = 186.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70350321, pos = { x = -19.095, y = 186.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, gadget_id = 70350321, pos = { x = -19.095, y = 186.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1063, gadget_id = 70350321, pos = { x = -19.095, y = 181.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1064, gadget_id = 70350321, pos = { x = -19.095, y = 181.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1065, gadget_id = 70350321, pos = { x = -19.095, y = 181.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70350321, pos = { x = -19.095, y = 176.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1067, gadget_id = 70350321, pos = { x = -19.095, y = 176.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70350321, pos = { x = -19.095, y = 176.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1069, gadget_id = 70350321, pos = { x = -19.095, y = 171.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1070, gadget_id = 70350321, pos = { x = -19.095, y = 171.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1071, gadget_id = 70350321, pos = { x = -19.095, y = 171.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1072, gadget_id = 70350321, pos = { x = -19.095, y = 166.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1073, gadget_id = 70350321, pos = { x = -19.095, y = 166.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1074, gadget_id = 70350321, pos = { x = -19.095, y = 166.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1075, gadget_id = 70350321, pos = { x = -14.095, y = 186.898, z = -58.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70350321, pos = { x = -14.095, y = 186.898, z = -48.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70350321, pos = { x = -14.095, y = 186.898, z = -53.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1078, gadget_id = 70350369, pos = { x = -19.119, y = 191.808, z = -58.689 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1079, gadget_id = 70350369, pos = { x = -19.119, y = 191.808, z = -53.367 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1080, gadget_id = 70350369, pos = { x = -19.119, y = 191.808, z = -48.408 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1081, gadget_id = 70350321, pos = { x = -56.518, y = 131.842, z = -33.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1082, gadget_id = 70350321, pos = { x = -51.518, y = 131.842, z = -33.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1083, gadget_id = 70350321, pos = { x = -61.518, y = 131.842, z = -33.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1084, gadget_id = 70900203, pos = { x = 8.187, y = 199.445, z = -53.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1085, gadget_id = 70900203, pos = { x = -58.166, y = 138.552, z = -36.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1086, gadget_id = 70900203, pos = { x = -34.882, y = 78.609, z = 36.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70350430, pos = { x = 14.939, y = 197.970, z = -52.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70350321, pos = { x = -51.518, y = 126.842, z = -28.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1092, gadget_id = 70350321, pos = { x = -61.518, y = 126.842, z = -28.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1093, gadget_id = 70350321, pos = { x = -51.518, y = 121.842, z = -23.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1094, gadget_id = 70350321, pos = { x = -61.518, y = 121.842, z = -23.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1095, gadget_id = 70350321, pos = { x = -51.518, y = 121.842, z = -18.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1096, gadget_id = 70350321, pos = { x = -61.518, y = 121.842, z = -18.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1097, gadget_id = 70350321, pos = { x = -51.518, y = 121.842, z = -13.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1098, gadget_id = 70350321, pos = { x = -61.518, y = 121.842, z = -13.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1099, gadget_id = 70350321, pos = { x = -51.518, y = 121.842, z = -8.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1100, gadget_id = 70350321, pos = { x = -61.518, y = 121.842, z = -8.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1101, gadget_id = 70350321, pos = { x = -51.518, y = 116.842, z = -3.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1102, gadget_id = 70350321, pos = { x = -61.518, y = 116.842, z = -3.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1103, gadget_id = 70350321, pos = { x = -51.518, y = 111.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1104, gadget_id = 70350321, pos = { x = -61.518, y = 111.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1105, gadget_id = 70350321, pos = { x = -56.518, y = 111.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1106, gadget_id = 70350321, pos = { x = -56.518, y = 106.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1107, gadget_id = 70350321, pos = { x = -51.518, y = 106.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1108, gadget_id = 70350321, pos = { x = -61.518, y = 106.842, z = 1.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 200, pos = { x = -45.000, y = 128.357, z = 5.547 } },
	{ config_id = 1047, shape = RegionShape.CUBIC, size = { x = 15.000, y = 35.000, z = 15.000 }, pos = { x = -34.033, y = 178.399, z = -53.216 } },
	{ config_id = 1048, shape = RegionShape.CUBIC, size = { x = 15.000, y = 35.000, z = 15.000 }, pos = { x = -56.724, y = 123.853, z = 6.236 } },
	{ config_id = 1049, shape = RegionShape.CUBIC, size = { x = 15.000, y = 35.000, z = 15.000 }, pos = { x = 6.264, y = 63.698, z = 36.590 } },
	{ config_id = 1087, shape = RegionShape.SPHERE, radius = 7, pos = { x = 10.137, y = 200.533, z = -52.624 } },
	{ config_id = 1088, shape = RegionShape.SPHERE, radius = 8, pos = { x = -58.220, y = 138.254, z = -34.566 } },
	{ config_id = 1090, shape = RegionShape.SPHERE, radius = 8, pos = { x = -34.208, y = 79.924, z = 36.393 } },
	{ config_id = 1109, shape = RegionShape.CUBIC, size = { x = 31.000, y = 60.000, z = 31.000 }, pos = { x = 25.944, y = 213.517, z = -52.975 } },
	{ config_id = 1110, shape = RegionShape.CUBIC, size = { x = 31.000, y = 60.000, z = 31.000 }, pos = { x = -57.655, y = 150.593, z = -52.540 } },
	{ config_id = 1111, shape = RegionShape.CUBIC, size = { x = 41.000, y = 60.000, z = 41.000 }, pos = { x = -59.044, y = 90.951, z = 36.298 } },
	{ config_id = 1112, shape = RegionShape.CUBIC, size = { x = 41.000, y = 60.000, z = 41.000 }, pos = { x = 36.363, y = 31.160, z = 36.995 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1001047, name = "ENTER_REGION_1047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001048, name = "ENTER_REGION_1048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001049, name = "ENTER_REGION_1049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001087, name = "ENTER_REGION_1087", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1087", action = "action_EVENT_ENTER_REGION_1087" },
	{ config_id = 1001088, name = "ENTER_REGION_1088", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1088", action = "action_EVENT_ENTER_REGION_1088" },
	{ config_id = 1001090, name = "ENTER_REGION_1090", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1090", action = "action_EVENT_ENTER_REGION_1090" }
}

-- 点位
points = {
	{ config_id = 1031, pos = { x = 38.564, y = 198.432, z = -53.578 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1044, pos = { x = -43.003, y = 167.075, z = -53.575 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1045, pos = { x = -56.969, y = 107.047, z = 15.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1046, pos = { x = 16.275, y = 46.990, z = 36.710 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1010, gadget_id = 70360002, pos = { x = 38.535, y = 198.000, z = -48.591 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1011, gadget_id = 70360002, pos = { x = -46.416, y = 167.000, z = -53.410 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1029, gadget_id = 70360002, pos = { x = -57.000, y = 107.000, z = 19.009 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1030, gadget_id = 70360002, pos = { x = 43.500, y = 44.000, z = 34.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1004, 1007, 1008, 1009, 1012, 1019, 1022, 1023, 1026, 1027, 1028, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108 },
		regions = { 1005, 1047, 1048, 1049, 1087, 1088, 1090, 1109, 1110, 1111, 1112 },
		triggers = { "ENTER_REGION_1005", "ENTER_REGION_1047", "ENTER_REGION_1048", "ENTER_REGION_1049", "ENTER_REGION_1087", "ENTER_REGION_1088", "ENTER_REGION_1090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1013, 1014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1015, 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1017, 1018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1085 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1086 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function condition_EVENT_ENTER_REGION_1087(context, evt)
	if evt.param1 ~= 1087 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1087(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245057001, EntityType.GADGET, 1084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 245057001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1088(context, evt)
	if evt.param1 ~= 1088 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1088(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 245057001, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 245057001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1090(context, evt)
	if evt.param1 ~= 1090 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1090(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 245057001, 6)
	
	return 0
end

require "V2_5/UGCDungeon_Reforge"