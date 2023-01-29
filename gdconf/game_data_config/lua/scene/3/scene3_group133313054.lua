-- 基础信息
local base_info = {
	group_id = 133313054
}

-- DEFS_MISCS
local defs = {
    gadget_ELCid = 54001,
    gadget_GearCid01 = 54003,
    gadget_GearCid02 = 54004,
    gadget_GearCid03 = 54005,
}

local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 331300005,
            [3] = 331300007,
        },
        [2] = {
            [1] = 331300006,
            [2] = 0,
            [3] = 331300009,
        },
        [3] = {
            [1] = 331300008,
            [2] = 331300010,
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
	[54001] = { config_id = 54001, gadget_id = 70350447, pos = { x = -113.790, y = 153.500, z = 5376.662 }, rot = { x = 347.419, y = 8.893, z = 32.956 }, level = 32, route_id = 331300005, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[54002] = { config_id = 54002, gadget_id = 70350448, pos = { x = -122.072, y = 165.306, z = 5375.266 }, rot = { x = 330.161, y = 45.260, z = 19.249 }, level = 32, area_id = 32 },
	[54003] = { config_id = 54003, gadget_id = 70290545, pos = { x = -106.226, y = 158.275, z = 5375.435 }, rot = { x = 30.229, y = 279.247, z = 13.339 }, level = 32, area_id = 32 },
	[54004] = { config_id = 54004, gadget_id = 70290545, pos = { x = -114.982, y = 169.220, z = 5374.308 }, rot = { x = 33.795, y = 279.160, z = 9.117 }, level = 32, area_id = 32 },
	[54005] = { config_id = 54005, gadget_id = 70290545, pos = { x = -136.489, y = 178.921, z = 5378.585 }, rot = { x = 342.432, y = 146.458, z = 329.423 }, level = 32, area_id = 32 }
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
	{ config_id = 3, name = "3F", value = 1, no_refresh = true }
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
		gadgets = { 54001, 54003, 54004, 54005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 54002 },
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