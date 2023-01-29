-- 基础信息
local base_info = {
	group_id = 133313225
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 225010,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [225001] = {cell = 225001, lines = {}, nodes = {}},
        [225002] = {cell = 225002, lines = {}, nodes = {}},
        [225003] = {cell = 225003, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {225001,225002,225003},

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
	[225001] = { config_id = 225001, gadget_id = 70350442, pos = { x = -114.081, y = 154.206, z = 5387.006 }, rot = { x = 29.674, y = 306.731, z = 25.231 }, level = 32, area_id = 32 },
	-- 二楼电池带能量
	[225002] = { config_id = 225002, gadget_id = 70350442, pos = { x = -118.031, y = 166.727, z = 5359.390 }, rot = { x = 31.747, y = 290.939, z = 16.607 }, level = 32, area_id = 32 },
	-- 一楼电池带能量
	[225003] = { config_id = 225003, gadget_id = 70350442, pos = { x = -122.342, y = 147.338, z = 5378.242 }, rot = { x = 27.985, y = 306.118, z = 24.947 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[225010] = { config_id = 225010, shape = RegionShape.SPHERE, radius = 60, pos = { x = -125.814, y = 162.770, z = 5376.687 }, area_id = 32 }
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
		gadgets = { 225001, 225002, 225003 },
		regions = { 225010 },
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