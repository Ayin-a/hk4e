-- 基础信息
local base_info = {
	group_id = 245050001
}

-- Trigger变量
local defs = {
	is_offical = false,
	startpoint = 1034,
	connect_region = 1036,
	synchronizer = 1042
}

-- DEFS_MISCS
airwall_graph = {
        [1] = {next_room = 2, airwall_suite = 4}, --房间1连接的房间，中间空气墙所在的Suite
        [2] = {next_room = 3, airwall_suite = 5}, --房间2连接的房间，中间空气墙所在的Suite
        [3] = {next_room = 0, airwall_suite = 0}, --0表示没有下一个房间，不存在空气墙
}

room_infos = {
         {        
                room_cur = 1, 
                room_next = 2, 
                wall_connect = 1052, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙 
                region_self = 1043,      --记录处于所属房间region
                point_safe = 1037 --传送安全点的configID
         },
         {        
                room_cur = 2, 
                room_next = 3, 
                wall_connect = 1054, --到下一个房间的空气墙
                region_enter =1038, --弱网拦截用的
                region_wall_enter = 1053, --弱网拦截用的空气墙 
                region_self = 1044,      --记录处于所属房间region
                point_safe = 1039 --传送安全点的configID
         },
         {        
                room_cur = 3, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1040, --弱网拦截用的
                region_wall_enter = 1055, --弱网拦截用的空气墙 
                region_self = 1045,      --记录处于所属房间region
                point_safe = 1041 --传送安全点的configID
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
	{ config_id = 1001, gadget_id = 70350381, pos = { x = -75.715, y = 12.046, z = -7.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350379, pos = { x = -75.715, y = 20.115, z = -9.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350379, pos = { x = -58.561, y = 24.635, z = -15.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350379, pos = { x = -52.234, y = 18.801, z = -8.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350379, pos = { x = -43.124, y = 10.815, z = -14.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350379, pos = { x = -32.660, y = 2.082, z = -10.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350379, pos = { x = -20.634, y = 8.023, z = -13.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350379, pos = { x = -20.634, y = 20.174, z = -13.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350381, pos = { x = -42.688, y = -8.005, z = -10.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350381, pos = { x = -79.635, y = 16.902, z = 17.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350363, pos = { x = 19.757, y = 11.630, z = -14.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350379, pos = { x = -58.561, y = 24.635, z = 15.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350379, pos = { x = -52.234, y = 18.801, z = 22.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350379, pos = { x = -43.124, y = 10.815, z = 16.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350379, pos = { x = -32.660, y = 2.082, z = 20.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70350379, pos = { x = -20.634, y = 8.023, z = 17.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350379, pos = { x = -20.634, y = 20.174, z = 17.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350381, pos = { x = -42.688, y = -8.005, z = 20.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350381, pos = { x = 17.982, y = 11.812, z = -33.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70350379, pos = { x = 18.746, y = 12.000, z = -40.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70350379, pos = { x = 12.196, y = 7.962, z = -46.120 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70350379, pos = { x = 18.704, y = 3.447, z = -56.433 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70350379, pos = { x = 13.274, y = -0.452, z = -65.735 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70350379, pos = { x = 19.025, y = 3.833, z = -74.944 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70350379, pos = { x = 14.693, y = 11.998, z = -80.929 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70350381, pos = { x = 13.708, y = -8.001, z = -58.404 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70350353, pos = { x = -107.500, y = -8.000, z = 13.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70350430, pos = { x = -88.135, y = -8.002, z = -10.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70950150, pos = { x = -88.042, y = 10.629, z = 12.590 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70950150, pos = { x = -12.900, y = 10.000, z = 1.668 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70950150, pos = { x = 36.000, y = -4.722, z = 1.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70950150, pos = { x = 2.026, y = 6.838, z = -119.522 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1036, shape = RegionShape.CUBIC, size = { x = 300.000, y = 100.000, z = 300.000 }, pos = { x = -31.434, y = 11.999, z = -51.558 } },
	{ config_id = 1038, shape = RegionShape.CUBIC, size = { x = 10.000, y = 60.000, z = 80.000 }, pos = { x = -36.000, y = 10.000, z = 0.000 } },
	{ config_id = 1040, shape = RegionShape.CUBIC, size = { x = 80.000, y = 60.000, z = 15.000 }, pos = { x = 10.000, y = 10.000, z = -60.000 } },
	{ config_id = 1043, shape = RegionShape.CUBIC, size = { x = 21.000, y = 60.000, z = 36.000 }, pos = { x = -99.769, y = 7.328, z = 8.974 } },
	{ config_id = 1044, shape = RegionShape.CUBIC, size = { x = 41.000, y = 60.000, z = 31.000 }, pos = { x = 10.176, y = 13.606, z = 17.433 } },
	{ config_id = 1045, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 40.000 }, pos = { x = -39.366, y = 9.268, z = -99.073 } }
}

-- 触发器
triggers = {
	{ config_id = 1001036, name = "ENTER_REGION_1036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1037, pos = { x = -107.518, y = -7.568, z = 13.657 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1039, pos = { x = -10.766, y = 22.043, z = 19.252 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1041, pos = { x = 1.169, y = 16.530, z = -107.597 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1019, gadget_id = 70350343, pos = { x = 37.435, y = -8.003, z = -82.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1020, gadget_id = 70350343, pos = { x = 27.352, y = -5.000, z = -82.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1021, gadget_id = 70350323, pos = { x = 33.029, y = -2.000, z = -77.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1022, gadget_id = 70350343, pos = { x = 33.029, y = 1.000, z = -82.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1023, gadget_id = 70350323, pos = { x = 27.244, y = 4.000, z = -82.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1024, gadget_id = 70350343, pos = { x = 37.598, y = 7.000, z = -82.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1025, gadget_id = 70350343, pos = { x = 28.346, y = 10.000, z = -82.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1035, gadget_id = 70350351, pos = { x = 24.277, y = 8.000, z = -82.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034 },
		regions = { 1036, 1038, 1040, 1043, 1044, 1045 },
		triggers = { "ENTER_REGION_1036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 废弃组,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1052, 1053, 1054, 1055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1052, 1053 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1054, 1055 },
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