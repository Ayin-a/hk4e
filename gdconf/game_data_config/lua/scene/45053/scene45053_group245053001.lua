-- 基础信息
local base_info = {
	group_id = 245053001
}

-- DEFS_MISCS
defs = {
group_id = 245053001,
is_offical = false,
startpoint = 1009,
connect_region = 1007,
synchronizer = 1022,
}
 offical_settings = {

        }

airwall_graph = {
[1] = {next_room = 2, airwall_suite = 2},
[2] = {next_room = 0, airwall_suite = 0},
}

room_infos = {
         {        
                room_cur = 1, 
                room_next = 2, 
                wall_connect = 1027, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙 
                region_self =1023,      --记录处于所属房间region
                point_safe = 1008 --传送安全点的configID
         },	 
         {        
                room_cur = 2, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 1021, --弱网拦截用的
                region_wall_enter = 1026, --弱网拦截用的空气墙 
                region_self =1024,      --记录处于所属房间region
                point_safe = 1020 --传送安全点的configID
 
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
	{ config_id = 1001, gadget_id = 70350327, pos = { x = 11.255, y = -0.016, z = -4.441 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350327, pos = { x = 11.255, y = -0.016, z = 5.559 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350321, pos = { x = 20.182, y = -0.022, z = 0.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350363, pos = { x = 20.160, y = 4.961, z = 0.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350327, pos = { x = -8.809, y = -0.016, z = 5.559 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350327, pos = { x = -8.809, y = -0.016, z = -4.441 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350353, pos = { x = -74.500, y = 0.000, z = -0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350327, pos = { x = 11.255, y = -0.016, z = 0.559 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350321, pos = { x = 6.182, y = -0.022, z = 5.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350321, pos = { x = 6.189, y = -0.022, z = -4.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350321, pos = { x = 6.182, y = -0.022, z = 0.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350321, pos = { x = 1.161, y = -0.022, z = 5.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350321, pos = { x = 1.168, y = -0.022, z = -4.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70350321, pos = { x = 1.161, y = -0.022, z = 0.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350321, pos = { x = -3.847, y = -0.022, z = 5.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350321, pos = { x = -3.841, y = -0.022, z = -4.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350321, pos = { x = -3.847, y = -0.022, z = 0.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70350430, pos = { x = -22.374, y = -0.021, z = -0.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350327, pos = { x = -8.809, y = -0.016, z = 0.559 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70950150, pos = { x = 36.565, y = 0.121, z = -0.191 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70950150, pos = { x = -16.829, y = 0.121, z = -0.191 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 250.000, y = 80.000, z = 100.000 }, pos = { x = 5.000, y = 8.475, z = 2.895 } },
	{ config_id = 1021, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 20.000 }, pos = { x = 30.844, y = 5.998, z = -0.011 } },
	{ config_id = 1023, shape = RegionShape.CUBIC, size = { x = 65.000, y = 60.000, z = 65.000 }, pos = { x = -50.281, y = 23.000, z = 1.236 } },
	{ config_id = 1024, shape = RegionShape.CUBIC, size = { x = 65.000, y = 60.000, z = 65.000 }, pos = { x = 70.280, y = 23.000, z = 1.236 } }
}

-- 触发器
triggers = {
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1001021, name = "ENTER_REGION_1021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 1008, pos = { x = -74.532, y = 0.432, z = -0.550 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1020, pos = { x = 37.408, y = 0.121, z = 0.340 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1025 },
		regions = { 1007, 1021, 1023, 1024 },
		triggers = { "ENTER_REGION_1007", "ENTER_REGION_1021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1026, 1027 },
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