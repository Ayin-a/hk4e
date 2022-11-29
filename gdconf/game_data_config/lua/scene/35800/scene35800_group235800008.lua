-- 基础信息
local base_info = {
	group_id = 235800008
}

-- DEFS_MISCS
--Boss主题玩法1
local BossGroupID = 235800008

local BossConfigID = 8002

local boss_hp_threshold = 30

local ElementFallConfigID = 8004

--四阶段Boss战随机要素列表
local BossRandomList = {
        [1] = {
                [1] = {type = 2, suite_id = {4,5,6,7}},
        },
        [2] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8}}
        },
        [3] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8}}
        },
        [4] = {
                [1] = {type = 1, suite_id = {3,4}},
                [2] = {type = 1, suite_id = {5,6}},
                [3] = {type = 4, suite_id = {7}},
                [4] = {type = 2, suite_id = {8}}
        }
}

local regionIndex =  8009

local wind_force_interval = 30

local bubble_point_array = {
    [7059] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7060] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7061] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [7062] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12069] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12070] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12071] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [12072] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13069] = {point_array_id = 1, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13070] = {point_array_id = 2, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13071] = {point_array_id = 3, point_id_list = {1,2,3,4,5,6}, route_type = 1},
    [13072] = {point_array_id = 4, point_id_list = {1,2,3,4,5,6}, route_type = 1}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[8002] = { config_id = 8002, monster_id = 26020201, pos = { x = -138.991, y = 20.470, z = -5.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[8001] = { config_id = 8001, gadget_id = 70350005, pos = { x = -138.720, y = 20.373, z = 21.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8003] = { config_id = 8003, gadget_id = 70350005, pos = { x = -138.665, y = 20.373, z = -30.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8004] = { config_id = 8004, gadget_id = 70350190, pos = { x = -138.665, y = 20.471, z = -4.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8005] = { config_id = 8005, gadget_id = 70690012, pos = { x = -123.880, y = 20.478, z = -18.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8006] = { config_id = 8006, gadget_id = 70690012, pos = { x = -153.844, y = 20.470, z = 11.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8007] = { config_id = 8007, gadget_id = 70690012, pos = { x = -152.509, y = 20.478, z = -17.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8008] = { config_id = 8008, gadget_id = 70690012, pos = { x = -124.862, y = 20.470, z = 10.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8104] = { config_id = 8104, gadget_id = 70690012, pos = { x = -138.818, y = 20.470, z = 14.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8105] = { config_id = 8105, gadget_id = 70690012, pos = { x = -119.730, y = 20.478, z = -5.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8106] = { config_id = 8106, gadget_id = 70690012, pos = { x = -138.326, y = 20.470, z = -23.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8107] = { config_id = 8107, gadget_id = 70690012, pos = { x = -157.782, y = 20.470, z = -5.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[8009] = { config_id = 8009, shape = RegionShape.CUBIC, size = { x = 80.000, y = 100.000, z = 80.000 }, pos = { x = -137.554, y = 22.223, z = -4.697 } }
}

-- 触发器
triggers = {
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
		gadgets = { 8001, 8003, 8004 },
		regions = { 8009 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 8104, 8106 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 8105, 8107 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 8005, 8006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 8007, 8008 },
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

require "WindFlora_Boss_RandomList"
require "WindFlora_ReTrans"