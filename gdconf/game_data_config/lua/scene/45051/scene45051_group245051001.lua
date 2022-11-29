-- 基础信息
local base_info = {
	group_id = 245051001
}

-- Trigger变量
local defs = {
	is_offical = false,
	startpoint = 1061,
	connect_region = 1062,
	synchronizer = 1068
}

-- DEFS_MISCS
airwall_graph = {
        [1] = {next_room = 2, airwall_suite = 4}, --房间1连接的房间，中间空气墙所在的Suite
        [2] = {next_room = 3, airwall_suite = 3}, --房间2连接的房间，中间空气墙所在的Suite
        [3] = {next_room = 0, airwall_suite = 0}, --0表示没有下一个房间，不存在空气墙
}


room_infos = {
         {        
                room_cur = 1, 
                room_next = 2, 
                wall_connect = 1060, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙
                region_self = 1069,      --记录处于所属房间region 
                point_safe = 1063 --传送安全点的configID
         },
         {        
                room_cur = 2, 
                room_next = 3, 
                wall_connect = 1058, --到下一个房间的空气墙
                region_enter =1064, --弱网拦截用的
                region_wall_enter = 1059, --弱网拦截用的空气墙 
                region_self = 1070,      --记录处于所属房间region
                point_safe = 1065 --传送安全点的configID
         },
         {        
                room_cur = 3, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1066, --弱网拦截用的
                region_wall_enter = 1057, --弱网拦截用的空气墙 
                region_self = 1071,      --记录处于所属房间region
                point_safe = 1067 --传送安全点的configID
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
	{ config_id = 1001, gadget_id = 70350327, pos = { x = 32.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350327, pos = { x = 32.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350327, pos = { x = 32.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350392, pos = { x = 27.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350394, pos = { x = 27.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350394, pos = { x = 27.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350392, pos = { x = 22.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350392, pos = { x = 22.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350394, pos = { x = 22.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350392, pos = { x = 17.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350392, pos = { x = 17.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350392, pos = { x = 17.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350335, pos = { x = 12.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350321, pos = { x = 12.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350335, pos = { x = 12.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350321, pos = { x = 7.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350335, pos = { x = 2.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70350321, pos = { x = 2.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70350335, pos = { x = 2.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70350327, pos = { x = -3.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350327, pos = { x = -100.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70350321, pos = { x = -105.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70350321, pos = { x = -135.500, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70350327, pos = { x = -140.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70350333, pos = { x = -115.000, y = 6.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70350333, pos = { x = -125.000, y = 6.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70350351, pos = { x = -135.000, y = 5.500, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70950150, pos = { x = 38.792, y = 0.144, z = 0.267 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70950150, pos = { x = -12.809, y = 0.178, z = 0.266 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70950150, pos = { x = -95.320, y = 0.144, z = 0.264 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70950150, pos = { x = -146.569, y = -0.040, z = 0.267 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70350353, pos = { x = -223.500, y = 0.000, z = -0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70350430, pos = { x = -221.017, y = 2.958, z = -15.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1062, shape = RegionShape.CUBIC, size = { x = 500.000, y = 100.000, z = 80.000 }, pos = { x = -52.198, y = -0.040, z = 0.239 } },
	{ config_id = 1064, shape = RegionShape.CUBIC, size = { x = 15.000, y = 60.000, z = 50.000 }, pos = { x = -115.000, y = 20.000, z = 0.000 } },
	{ config_id = 1066, shape = RegionShape.CUBIC, size = { x = 15.000, y = 60.000, z = 50.000 }, pos = { x = 15.000, y = 20.000, z = 0.000 } },
	{ config_id = 1069, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = -188.165, y = 20.042, z = 0.000 } },
	{ config_id = 1070, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = -53.722, y = 20.042, z = 0.000 } },
	{ config_id = 1071, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = 80.353, y = 20.042, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001062, name = "ENTER_REGION_1062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 点位
points = {
	-- 房间1
	{ config_id = 1063, pos = { x = -223.400, y = 0.432, z = -0.480 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1065, pos = { x = -94.164, y = -0.039, z = 0.291 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1067, pos = { x = 39.653, y = -0.040, z = 0.062 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1016, gadget_id = 70350392, pos = { x = 7.033, y = -5.040, z = 5.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1018, gadget_id = 70350392, pos = { x = 7.033, y = -5.040, z = -4.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1022, gadget_id = 70350327, pos = { x = -2.967, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1024, gadget_id = 70350327, pos = { x = -2.967, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1025, gadget_id = 70350327, pos = { x = -100.240, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1027, gadget_id = 70350327, pos = { x = -100.240, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1028, gadget_id = 70350321, pos = { x = -105.242, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1030, gadget_id = 70350321, pos = { x = -105.242, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1031, gadget_id = 70350321, pos = { x = -110.292, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1032, gadget_id = 70350321, pos = { x = -115.309, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1033, gadget_id = 70350321, pos = { x = -115.309, y = -5.041, z = 0.548 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1034, gadget_id = 70350321, pos = { x = -115.309, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1035, gadget_id = 70350321, pos = { x = -120.292, y = -5.041, z = -4.474 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1036, gadget_id = 70350321, pos = { x = -125.309, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1037, gadget_id = 70350321, pos = { x = -125.309, y = -5.041, z = 0.548 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1038, gadget_id = 70350321, pos = { x = -125.309, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1039, gadget_id = 70350321, pos = { x = -130.292, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1040, gadget_id = 70350321, pos = { x = -135.309, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1042, gadget_id = 70350321, pos = { x = -135.309, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1043, gadget_id = 70350327, pos = { x = -140.240, y = -5.041, z = -4.434 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1045, gadget_id = 70350327, pos = { x = -140.240, y = -5.041, z = 5.526 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1046, gadget_id = 70350369, pos = { x = -105.280, y = -1.036, z = -4.562 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1047, gadget_id = 70350369, pos = { x = -105.280, y = -1.036, z = 0.518 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1048, gadget_id = 70350369, pos = { x = -105.280, y = -1.036, z = 5.618 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1049, gadget_id = 70350369, pos = { x = -115.385, y = -1.036, z = 5.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1050, gadget_id = 70350369, pos = { x = -115.385, y = -1.036, z = -4.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1051, gadget_id = 70350369, pos = { x = -125.525, y = -1.036, z = -4.562 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1052, gadget_id = 70350369, pos = { x = -125.525, y = -1.036, z = 0.518 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 1053, gadget_id = 70350369, pos = { x = -125.525, y = -1.036, z = 5.618 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1017, 1019, 1020, 1021, 1023, 1026, 1029, 1041, 1044, 1054, 1055, 1056, 1061 },
		regions = { 1062, 1064, 1066, 1069, 1070, 1071 },
		triggers = { "ENTER_REGION_1062" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1057, 1058, 1059, 1060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1057, 1058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1059, 1060 },
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