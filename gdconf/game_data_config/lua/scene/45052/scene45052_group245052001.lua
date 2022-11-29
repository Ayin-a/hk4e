-- 基础信息
local base_info = {
	group_id = 245052001
}

-- DEFS_MISCS
--defs相关配置
        defs = {
                is_offical = false, --是否是官方关
                startpoint = 1028, --起点ConfigID
connect_region = 1005,
synchronizer = 1078,
        }
--misc相关配置
        --官方关对应的配置，非官方关可以填空List
        offical_settings = {

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
                region_self = 1100,      --记录处于所属房间region
                point_safe = 1029 --传送安全点的configID
         },
         {        
                room_cur = 2, 
                room_next = 3, 
                wall_connect = 1015, --到下一个房间的空气墙
                region_enter =1043, --弱网拦截用的
                region_wall_enter = 1014, --弱网拦截用的空气墙 
                region_self = 1101,      --记录处于所属房间region
                point_safe = 1030 --传送安全点的configID
         },
         {        
                room_cur = 3, 
                room_next = 4, 
                wall_connect = 1017, --到下一个房间的空气墙
                region_enter = 1044, --弱网拦截用的
                region_wall_enter = 1016, --弱网拦截用的空气墙 
                region_self = 1102,      --记录处于所属房间region
                point_safe = 1031 --传送安全点的configID
         },		
         {        
                room_cur = 4, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1045, --弱网拦截用的
                region_wall_enter = 1018, --弱网拦截用的空气墙 
                region_self = 1103,      --记录处于所属房间region
                point_safe = 1042 --传送安全点的configID
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
	{ config_id = 1001, gadget_id = 70350333, pos = { x = -5.965, y = 198.173, z = -53.552 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350407, pos = { x = -4.641, y = 192.850, z = -52.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350333, pos = { x = -11.887, y = 185.949, z = -53.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350409, pos = { x = -29.290, y = 172.521, z = -52.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350321, pos = { x = -56.524, y = 131.687, z = -33.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350369, pos = { x = -56.593, y = 136.597, z = -32.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350327, pos = { x = -56.604, y = 131.689, z = -28.167 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350327, pos = { x = -56.604, y = 126.689, z = -23.167 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350327, pos = { x = -56.604, y = 121.689, z = -3.167 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350327, pos = { x = -56.604, y = 116.689, z = 1.833 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350323, pos = { x = -56.524, y = 125.687, z = -18.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70950150, pos = { x = 10.195, y = 195.805, z = -53.628 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70950150, pos = { x = -41.633, y = 165.576, z = -53.129 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70950150, pos = { x = -58.311, y = 135.308, z = -37.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70950150, pos = { x = -59.590, y = 105.286, z = 14.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70950150, pos = { x = -37.708, y = 75.390, z = 36.072 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70950150, pos = { x = 14.833, y = 45.373, z = 37.898 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350369, pos = { x = -56.593, y = 126.597, z = -17.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70350323, pos = { x = -52.720, y = 125.687, z = -18.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70350369, pos = { x = -52.790, y = 126.597, z = -17.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70350323, pos = { x = -56.524, y = 125.687, z = -13.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70350369, pos = { x = -56.593, y = 126.597, z = -12.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70350323, pos = { x = -52.720, y = 125.687, z = -8.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350369, pos = { x = -52.790, y = 126.597, z = -7.986 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350323, pos = { x = -56.524, y = 125.687, z = -8.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70350369, pos = { x = -56.593, y = 126.597, z = -7.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70350353, pos = { x = 38.456, y = 197.970, z = -53.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
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
	{ config_id = 1046, gadget_id = 70350321, pos = { x = 6.058, y = 193.098, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70350321, pos = { x = 6.058, y = 193.098, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70350321, pos = { x = 6.058, y = 193.098, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70350321, pos = { x = 1.058, y = 193.098, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70350321, pos = { x = 1.058, y = 193.098, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, gadget_id = 70350321, pos = { x = 1.058, y = 193.098, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70350321, pos = { x = -3.942, y = 188.098, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70350321, pos = { x = -3.942, y = 188.098, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70350321, pos = { x = -3.942, y = 188.098, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70350321, pos = { x = -8.942, y = 188.098, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70350321, pos = { x = -8.942, y = 188.098, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70350321, pos = { x = -8.942, y = 188.098, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70350321, pos = { x = -13.942, y = 188.098, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70350321, pos = { x = -13.942, y = 188.098, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70350321, pos = { x = -13.942, y = 188.098, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70350321, pos = { x = -18.942, y = 186.893, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, gadget_id = 70350321, pos = { x = -18.942, y = 186.893, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1063, gadget_id = 70350321, pos = { x = -18.942, y = 186.893, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1064, gadget_id = 70350321, pos = { x = -18.942, y = 181.893, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1065, gadget_id = 70350321, pos = { x = -18.942, y = 181.893, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70350321, pos = { x = -18.942, y = 181.893, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1067, gadget_id = 70350321, pos = { x = -18.942, y = 176.893, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70350321, pos = { x = -18.942, y = 176.893, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1069, gadget_id = 70350321, pos = { x = -18.942, y = 176.893, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1070, gadget_id = 70350321, pos = { x = -18.942, y = 171.893, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1071, gadget_id = 70350321, pos = { x = -18.942, y = 171.893, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1072, gadget_id = 70350321, pos = { x = -18.942, y = 171.893, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1073, gadget_id = 70350321, pos = { x = -18.942, y = 166.893, z = -48.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1074, gadget_id = 70350321, pos = { x = -18.942, y = 166.893, z = -53.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1075, gadget_id = 70350321, pos = { x = -18.942, y = 166.893, z = -58.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70350321, pos = { x = -51.524, y = 131.687, z = -33.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70350321, pos = { x = -61.524, y = 131.687, z = -33.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1078, gadget_id = 70350430, pos = { x = -41.707, y = 76.958, z = 35.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1079, gadget_id = 70350369, pos = { x = -18.998, y = 191.803, z = -58.541 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1080, gadget_id = 70350369, pos = { x = -18.942, y = 191.803, z = -53.323 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1081, gadget_id = 70350369, pos = { x = -18.923, y = 191.803, z = -48.301 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1082, gadget_id = 70350321, pos = { x = -51.524, y = 126.687, z = -28.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1083, gadget_id = 70350321, pos = { x = -61.524, y = 126.687, z = -28.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1084, gadget_id = 70350321, pos = { x = -51.524, y = 121.687, z = -23.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1085, gadget_id = 70350321, pos = { x = -61.524, y = 121.687, z = -23.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1086, gadget_id = 70350321, pos = { x = -51.524, y = 121.687, z = -18.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1087, gadget_id = 70350321, pos = { x = -61.524, y = 121.687, z = -18.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1088, gadget_id = 70350321, pos = { x = -61.524, y = 121.687, z = -13.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70350321, pos = { x = -51.524, y = 121.687, z = -13.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1090, gadget_id = 70350321, pos = { x = -61.524, y = 121.687, z = -8.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70350321, pos = { x = -51.524, y = 121.687, z = -8.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1092, gadget_id = 70350321, pos = { x = -61.524, y = 116.687, z = -3.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1093, gadget_id = 70350321, pos = { x = -51.524, y = 116.687, z = -3.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1094, gadget_id = 70350321, pos = { x = -61.524, y = 111.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1095, gadget_id = 70350321, pos = { x = -51.524, y = 111.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1096, gadget_id = 70350321, pos = { x = -56.524, y = 111.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1097, gadget_id = 70350321, pos = { x = -56.524, y = 106.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1098, gadget_id = 70350321, pos = { x = -61.524, y = 106.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1099, gadget_id = 70350321, pos = { x = -51.524, y = 106.687, z = 1.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 200, pos = { x = 21.578, y = 126.702, z = -14.137 } },
	{ config_id = 1043, shape = RegionShape.CUBIC, size = { x = 15.000, y = 30.000, z = 15.000 }, pos = { x = -32.957, y = 180.246, z = -53.484 } },
	{ config_id = 1044, shape = RegionShape.CUBIC, size = { x = 20.000, y = 35.000, z = 15.000 }, pos = { x = -56.535, y = 119.975, z = 6.943 } },
	{ config_id = 1045, shape = RegionShape.CUBIC, size = { x = 15.000, y = 35.000, z = 15.000 }, pos = { x = 6.554, y = 61.211, z = 36.520 } },
	{ config_id = 1100, shape = RegionShape.CUBIC, size = { x = 31.000, y = 60.000, z = 31.000 }, pos = { x = 25.944, y = 213.517, z = -52.975 } },
	{ config_id = 1101, shape = RegionShape.CUBIC, size = { x = 31.000, y = 60.000, z = 31.000 }, pos = { x = -57.655, y = 150.593, z = -52.540 } },
	{ config_id = 1102, shape = RegionShape.CUBIC, size = { x = 41.000, y = 60.000, z = 41.000 }, pos = { x = -59.044, y = 90.951, z = 36.298 } },
	{ config_id = 1103, shape = RegionShape.CUBIC, size = { x = 41.000, y = 60.000, z = 41.000 }, pos = { x = 36.363, y = 31.160, z = 36.995 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001043, name = "ENTER_REGION_1043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001044, name = "ENTER_REGION_1044", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001045, name = "ENTER_REGION_1045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 1029, pos = { x = 38.480, y = 198.402, z = -53.492 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1030, pos = { x = -43.157, y = 167.075, z = -53.382 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 1031, pos = { x = -57.080, y = 107.047, z = 15.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1042, pos = { x = 16.130, y = 46.990, z = 36.842 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
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
		gadgets = { 1001, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1019, 1022, 1023, 1026, 1027, 1028, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099 },
		regions = { 1005, 1043, 1044, 1045, 1100, 1101, 1102, 1103 },
		triggers = { "ENTER_REGION_1005", "ENTER_REGION_1043", "ENTER_REGION_1044", "ENTER_REGION_1045" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/UGCDungeon_Reforge"