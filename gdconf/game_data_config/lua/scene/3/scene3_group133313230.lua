-- 基础信息
local base_info = {
	group_id = 133313230
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 230004,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [230001] = {cell = 230001, lines = {}, nodes = {}},
        [230002] = {cell = 230002, lines = {}, nodes = {}},
        [230003] = {cell = 230003, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {230001,230002,230003},

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
	[230001] = { config_id = 230001, gadget_id = 70350442, pos = { x = -541.517, y = 99.789, z = 5820.164 }, rot = { x = 26.590, y = 298.068, z = 3.730 }, level = 32, area_id = 32 },
	-- 二楼电池带能量
	[230002] = { config_id = 230002, gadget_id = 70350442, pos = { x = -552.545, y = 115.187, z = 5796.468 }, rot = { x = 25.736, y = 307.419, z = 7.861 }, level = 32, area_id = 32 },
	-- 一楼电池带能量
	[230003] = { config_id = 230003, gadget_id = 70350442, pos = { x = -554.087, y = 95.017, z = 5813.118 }, rot = { x = 26.590, y = 298.068, z = 3.730 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[230004] = { config_id = 230004, shape = RegionShape.SPHERE, radius = 65, pos = { x = -551.508, y = 122.545, z = 5812.353 }, area_id = 32 }
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
		gadgets = { 230001, 230002, 230003 },
		regions = { 230004 },
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