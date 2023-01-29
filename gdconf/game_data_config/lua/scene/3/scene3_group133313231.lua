-- 基础信息
local base_info = {
	group_id = 133313231
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 2,
	titanRegion = 231004,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [231001] = {cell = 231001, lines = {}, nodes = {}},
        [231002] = {cell = 231002, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {231001,231002},

    -- 指定探索机关，这些机关在任何时候都根据自身能量块做出反应，电池全亮不会改变它们的状态
    optionalMachines = {}
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
	-- 一楼电池带能量
	[231001] = { config_id = 231001, gadget_id = 70350442, pos = { x = -570.821, y = 125.174, z = 5847.384 }, rot = { x = 25.653, y = 308.077, z = 8.146 }, level = 32, area_id = 32 },
	-- 二楼电池带能量
	[231002] = { config_id = 231002, gadget_id = 70350442, pos = { x = -551.673, y = 143.854, z = 5784.332 }, rot = { x = 25.605, y = 308.448, z = 8.307 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[231004] = { config_id = 231004, shape = RegionShape.SPHERE, radius = 60, pos = { x = -561.339, y = 125.056, z = 5816.483 }, area_id = 32 }
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
		gadgets = { 231001, 231002 },
		regions = { 231004 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

require "V3_0/TitanEnergy"