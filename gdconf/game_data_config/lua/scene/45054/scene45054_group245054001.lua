-- 基础信息
local base_info = {
	group_id = 245054001
}

-- DEFS_MISCS
--defs相关配置
        defs = {
                is_offical = false, --是否是官方关
                startpoint = 1002, --起点ConfigID
connect_region = 1001,
synchronizer = 1004,
        }
--misc相关配置
        --官方关对应的配置，非官方关可以填空List
        offical_settings = {

        }
        --房间和空气墙映射关系的配置
    airwall_graph = {
        [1] = {next_room = 0, airwall_suite = 0}, --房间1连接的房间，中间空气墙所在的Suite

    }


room_infos = {
         {        
                room_cur = 1, 
                room_next = 0, 
                wall_connect = 0, --到下一个房间的空气墙
                region_enter = 0, --弱网拦截用的
                region_wall_enter = 0, --弱网拦截用的空气墙 
                region_self = 1005,      --记录处于所属房间region
                point_safe = 1003 --传送安全点的configID
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
	{ config_id = 1002, gadget_id = 70350353, pos = { x = -0.500, y = 31.000, z = -2.395 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350430, pos = { x = -35.105, y = 20.945, z = 7.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 100, pos = { x = -0.295, y = 9.919, z = 1.063 } },
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -0.295, y = 9.919, z = 1.063 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 1003, pos = { x = -0.558, y = 31.432, z = -2.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 1002 },
		regions = { 1001, 1005 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/UGCDungeon_Reforge"