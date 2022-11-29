-- 基础信息
local base_info = {
	group_id = 245059001
}

-- DEFS_MISCS
--defs相关配置
        defs = {
                is_offical = true, --是否是官方关
                startpoint = 1001, --起点ConfigID
connect_region = 1003,
synchronizer = 1005, 

        }
--misc相关配置
        --官方关对应的配置，非官方关可以填空List
 offical_settings = {
                max_lives = 10, --可以使用的命数
                has_dest = 1,        --是否需要到达终点，如果没有终点则填0
                time = 600,                --时间限制，如果填0表示没有时间限制
                coins_collect = 40,--需要收集的金币数量，如果填0表示没有金币需要收集
                coins_max = 70,        --场上金币总数，用在挑战的显示里
                editors = {1002},
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
                region_self = 1006,      --记录处于所属房间region
                point_safe = 1004 --传送安全点的configID
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
	{ config_id = 1001, gadget_id = 70350353, pos = { x = -0.500, y = 31.000, z = -2.537 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350430, pos = { x = -7.720, y = 43.000, z = -2.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1003, shape = RegionShape.SPHERE, radius = 200, pos = { x = 9.562, y = 5.627, z = 14.900 } },
	{ config_id = 1006, shape = RegionShape.SPHERE, radius = 100, pos = { x = 9.562, y = 5.627, z = 14.900 } }
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ENTER_REGION_1003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 1004, pos = { x = -0.571, y = 31.432, z = -2.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1002, gadget_id = 70360002, pos = { x = -2.487, y = 31.000, z = 2.536 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001 },
		regions = { 1003, 1006 },
		triggers = { "ENTER_REGION_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/UGCDungeon_Reforge"