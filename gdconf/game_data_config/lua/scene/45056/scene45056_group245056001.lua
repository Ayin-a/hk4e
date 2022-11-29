-- 基础信息
local base_info = {
	group_id = 245056001
}

-- Trigger变量
local defs = {
	is_offical = true,
	startpoint = 1061,
	connect_region = 1065,
	synchronizer = 1019
}

-- DEFS_MISCS
offical_settings = {
                max_lives = 10,    --可以使用的命数
                has_dest = 1,        --是否需要到达终点，如果没有终点则填0
                time = 600,           --时间限制，如果填0表示没有时间限制
                coins_collect = 50 ,--需要收集的金币数量
                coins_max = 100,        --场上金币总数，用在挑战的显示里
                editors = {1062,1063,1064},
}

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
                region_self = 1020,      --记录处于所属房间region
                point_safe = 1066 --传送安全点的configID
         },
         {        
                room_cur = 2, 
                room_next = 3, 
                wall_connect = 1058, --到下一个房间的空气墙
                region_enter =1067, --弱网拦截用的
                region_wall_enter = 1059, --弱网拦截用的空气墙 
                region_self = 1022,      --记录处于所属房间region
                point_safe = 1068 --传送安全点的configID
         },
         {        
                room_cur = 3, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1069, --弱网拦截用的
                region_wall_enter = 1057, --弱网拦截用的空气墙 
                region_self = 1024,      --记录处于所属房间region
                point_safe = 1070 --传送安全点的configID
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
	{ config_id = 1013, gadget_id = 70350335, pos = { x = 2.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350321, pos = { x = 12.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350321, pos = { x = 7.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70350335, pos = { x = 2.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350321, pos = { x = 2.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350335, pos = { x = 9.000, y = 0.000, z = -4.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350430, pos = { x = -220.987, y = 3.035, z = -15.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70350335, pos = { x = 9.000, y = 0.000, z = 5.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70350327, pos = { x = -3.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350351, pos = { x = -135.500, y = 5.200, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350327, pos = { x = -100.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70350333, pos = { x = -125.500, y = 6.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70350333, pos = { x = -115.500, y = 6.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70350321, pos = { x = -105.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70350321, pos = { x = -135.500, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70350327, pos = { x = -140.000, y = 0.000, z = 0.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70950150, pos = { x = 38.792, y = 0.144, z = 0.267 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70950150, pos = { x = -12.809, y = 0.178, z = 0.266 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70950150, pos = { x = -95.320, y = 0.144, z = 0.264 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70950150, pos = { x = -146.569, y = -0.040, z = 0.267 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70350353, pos = { x = -223.500, y = 0.000, z = -0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1020, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = -188.165, y = 20.042, z = 0.000 } },
	{ config_id = 1022, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = -53.722, y = 20.042, z = 0.000 } },
	{ config_id = 1024, shape = RegionShape.CUBIC, size = { x = 81.000, y = 60.000, z = 30.000 }, pos = { x = 80.353, y = 20.042, z = 0.000 } },
	{ config_id = 1065, shape = RegionShape.CUBIC, size = { x = 600.000, y = 200.000, z = 150.000 }, pos = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1067, shape = RegionShape.CUBIC, size = { x = 10.000, y = 80.000, z = 50.000 }, pos = { x = -119.380, y = 10.000, z = 1.395 } },
	{ config_id = 1069, shape = RegionShape.CUBIC, size = { x = 10.000, y = 80.000, z = 50.000 }, pos = { x = 20.000, y = 10.000, z = 1.395 } }
}

-- 触发器
triggers = {
	{ config_id = 1001065, name = "ENTER_REGION_1065", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1066, pos = { x = -223.358, y = 0.432, z = -0.169 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1068, pos = { x = -93.723, y = -0.040, z = 0.023 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1070, pos = { x = 39.836, y = -0.040, z = 0.243 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1030, gadget_id = 70350351, pos = { x = -105.415, y = 4.959, z = 0.459 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 1033, gadget_id = 70350321, pos = { x = -115.309, y = -5.041, z = 0.548 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1037, gadget_id = 70350321, pos = { x = -125.309, y = -5.041, z = 0.548 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
		{ config_id = 1062, gadget_id = 70360002, pos = { x = -213.500, y = 2.000, z = -0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1063, gadget_id = 70360002, pos = { x = -46.500, y = 2.000, z = 2.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1064, gadget_id = 70360002, pos = { x = 74.500, y = 11.000, z = -2.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1021, 1023, 1025, 1026, 1027, 1028, 1029, 1041, 1044, 1061 },
		regions = { 1020, 1022, 1024, 1065, 1067, 1069 },
		triggers = { "ENTER_REGION_1065" },
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
	},
	{
		-- suite_id = 5,
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

require "V2_0/ElectricCore"
require "V2_5/UGCDungeon_Reforge"