-- 基础信息
local base_info = {
	group_id = 133313042
}

-- DEFS_MISCS
local defs = {
    gadget_ELCid = 42001,
    gadget_GearCid01 = 42003,
    gadget_GearCid02 = 42004,
    gadget_GearCid03 = 42005,
}

local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 331300047,
            [3] = 331300048,
        },
        [2] = {
            [1] = 331300050,
            [2] = 0,
            [3] = 331300049,
        },
        [3] = {
            [1] = 331300051,
            [2] = 331300052,
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
	[42001] = { config_id = 42001, gadget_id = 70350447, pos = { x = -545.064, y = 100.092, z = 5810.172 }, rot = { x = 4.055, y = 7.934, z = 24.799 }, level = 32, route_id = 331300047, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[42002] = { config_id = 42002, gadget_id = 70350448, pos = { x = -551.373, y = 113.532, z = 5812.321 }, rot = { x = 339.620, y = 67.879, z = 16.906 }, level = 32, area_id = 32 },
	[42003] = { config_id = 42003, gadget_id = 70290545, pos = { x = -537.018, y = 103.896, z = 5807.079 }, rot = { x = 24.932, y = 298.757, z = 4.852 }, level = 32, area_id = 32 },
	[42004] = { config_id = 42004, gadget_id = 70290545, pos = { x = -544.016, y = 116.018, z = 5808.779 }, rot = { x = 25.369, y = 295.770, z = 1.697 }, level = 32, area_id = 32 },
	[42005] = { config_id = 42005, gadget_id = 70290545, pos = { x = -560.855, y = 128.273, z = 5820.938 }, rot = { x = 344.765, y = 163.093, z = 338.923 }, level = 32, area_id = 32 }
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
		gadgets = { 42001, 42003, 42004, 42005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 42002 },
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