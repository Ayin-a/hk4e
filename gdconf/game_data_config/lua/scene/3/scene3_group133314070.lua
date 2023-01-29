-- 基础信息
local base_info = {
	group_id = 133314070
}

-- DEFS_MISCS
local defs = {
    gadget_ELCid = 70001,
    gadget_GearCid01 = 70003,
    gadget_GearCid02 = 70004,
    gadget_GearCid03 = 70005,
}

local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 331400019,
            [3] = 331400020,
        },
        [2] = {
            [1] = 331400021,
            [2] = 0,
            [3] = 331400023,
        },
        [3] = {
            [1] = 331400022,
            [2] = 331400024,
            [3] = 0,
        },
    }
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
	[70001] = { config_id = 70001, gadget_id = 70350447, pos = { x = -410.996, y = 109.326, z = 4453.323 }, rot = { x = 19.493, y = 13.413, z = 21.049 }, level = 30, route_id = 331400019, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[70002] = { config_id = 70002, gadget_id = 70350448, pos = { x = -415.069, y = 122.225, z = 4459.015 }, rot = { x = 28.114, y = 315.737, z = 355.921 }, level = 30, area_id = 32 },
	[70003] = { config_id = 70003, gadget_id = 70290545, pos = { x = -410.231, y = 112.998, z = 4444.712 }, rot = { x = 22.156, y = 355.763, z = 12.930 }, level = 30, area_id = 32 },
	[70004] = { config_id = 70004, gadget_id = 70290545, pos = { x = -415.457, y = 124.616, z = 4450.989 }, rot = { x = 20.507, y = 5.194, z = 14.334 }, level = 30, area_id = 32 },
	[70005] = { config_id = 70005, gadget_id = 70290545, pos = { x = -415.481, y = 138.310, z = 4470.713 }, rot = { x = 1.937, y = 225.119, z = 337.635 }, level = 30, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "1F", value = 1, no_refresh = true },
	{ config_id = 2, name = "2F", value = 1, no_refresh = true },
	{ config_id = 3, name = "3F", value = 0, no_refresh = true }
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
		gadgets = { 70001, 70003, 70004, 70005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 70002 },
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

require "V3_0/TitanElevator"