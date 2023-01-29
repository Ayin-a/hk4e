-- 基础信息
local base_info = {
	group_id = 133313232
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 3,
	titanRegion = 232004,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [232001] = {cell = 232001, lines = {}, nodes = {}},
        [232002] = {cell = 232002, lines = {}, nodes = {}},
        [232003] = {cell = 232003, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {232001,232002,232003},

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
	[232001] = { config_id = 232001, gadget_id = 70350442, pos = { x = -854.028, y = -60.124, z = 5835.127 }, rot = { x = 15.563, y = 197.481, z = 334.412 }, level = 32, area_id = 32 },
	-- 二楼电池带能量
	[232002] = { config_id = 232002, gadget_id = 70350442, pos = { x = -838.380, y = -34.434, z = 5834.197 }, rot = { x = 15.888, y = 201.486, z = 335.540 }, level = 32, area_id = 32 },
	-- 一楼电池带能量
	[232003] = { config_id = 232003, gadget_id = 70350442, pos = { x = -846.483, y = -57.097, z = 5822.267 }, rot = { x = 15.563, y = 197.481, z = 334.412 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[232004] = { config_id = 232004, shape = RegionShape.SPHERE, radius = 60, pos = { x = -852.607, y = -32.307, z = 5834.115 }, area_id = 32 }
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
		gadgets = { 232001, 232002, 232003 },
		regions = { 232004 },
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