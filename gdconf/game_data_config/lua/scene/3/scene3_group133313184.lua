-- 基础信息
local base_info = {
	group_id = 133313184
}

-- DEFS_MISCS
local defs = {
    gadget_ELCid = 184001,
    gadget_GearCid01 = 184003,
    gadget_GearCid02 = 184004,
    gadget_GearCid03 = 184005,
}

local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 331300055,
            [3] = 331300056,
        },
        [2] = {
            [1] = 331300058,
            [2] = 0,
            [3] = 331300057,
        },
        [3] = {
            [1] = 331300059,
            [2] = 331300060,
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
	[184001] = { config_id = 184001, gadget_id = 70350447, pos = { x = -851.833, y = -41.930, z = 5831.677 }, rot = { x = 355.476, y = 359.736, z = 28.827 }, level = 32, route_id = 331300057, start_route = false, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[184002] = { config_id = 184002, gadget_id = 70350448, pos = { x = -851.632, y = -42.187, z = 5831.642 }, rot = { x = 12.359, y = 329.540, z = 26.426 }, level = 32, area_id = 32 },
	[184003] = { config_id = 184003, gadget_id = 70290545, pos = { x = -844.122, y = -54.202, z = 5842.047 }, rot = { x = 11.044, y = 184.717, z = 334.831 }, level = 32, area_id = 32 },
	[184004] = { config_id = 184004, gadget_id = 70290545, pos = { x = -849.943, y = -41.582, z = 5839.857 }, rot = { x = 8.801, y = 188.792, z = 335.620 }, level = 32, area_id = 32 },
	[184005] = { config_id = 184005, gadget_id = 70290545, pos = { x = -865.517, y = -28.559, z = 5826.975 }, rot = { x = 334.376, y = 53.241, z = 14.585 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "1F", value = 0, no_refresh = true },
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
		gadgets = { 184001, 184003, 184004, 184005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 184002 },
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