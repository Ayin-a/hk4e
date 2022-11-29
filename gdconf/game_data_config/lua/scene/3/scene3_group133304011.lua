-- 基础信息
local base_info = {
	group_id = 133304011
}

-- DEFS_MISCS
local defs = {
    gadget_ELCid = 11001,
    gadget_GearCid01 = 11003,
    gadget_GearCid02 = 11005,
    gadget_GearCid03 = 11014,
}

local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 330400003,
            [3] = 330400013,
        },
        [2] = {
            [1] = 330400004,
            [2] = 0,
            [3] = 330400011,
        },
        [3] = {
            [1] = 330400014,
            [2] = 330400012,
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
	[11001] = { config_id = 11001, gadget_id = 70350447, pos = { x = -1551.017, y = 233.350, z = 2339.599 }, rot = { x = 6.156, y = 25.346, z = 340.774 }, level = 30, route_id = 330400003, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	[11002] = { config_id = 11002, gadget_id = 70350448, pos = { x = -1546.017, y = 247.108, z = 2338.829 }, rot = { x = 350.139, y = 339.981, z = 342.337 }, level = 30, area_id = 21 },
	[11003] = { config_id = 11003, gadget_id = 70290545, pos = { x = -1546.275, y = 231.074, z = 2337.496 }, rot = { x = 340.626, y = 294.872, z = 354.346 }, level = 30, area_id = 21 },
	[11005] = { config_id = 11005, gadget_id = 70290545, pos = { x = -1548.556, y = 254.931, z = 2340.815 }, rot = { x = 19.296, y = 115.694, z = 5.927 }, level = 30, area_id = 21 },
	[11014] = { config_id = 11014, gadget_id = 70290545, pos = { x = -1544.788, y = 266.412, z = 2335.755 }, rot = { x = 17.598, y = 68.058, z = 350.022 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 2, name = "1F", value = 0, no_refresh = true },
	{ config_id = 3, name = "2F", value = 0, no_refresh = true },
	{ config_id = 4, name = "3F", value = 0, no_refresh = true }
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
		gadgets = { 11001, 11003, 11005, 11014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11002 },
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