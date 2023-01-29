-- 基础信息
local base_info = {
	group_id = 133313233
}

-- DEFS_MISCS
local defs = {
	maxPlayerEnergyLev = 2,
	titanRegion = 233003,
    
    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [233001] = {cell = 233001, lines = {}, nodes = {}},
        [233002] = {cell = 233002, lines = {}, nodes = {}}
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {233001,233002},

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
	-- 三楼电池带能量
	[233001] = { config_id = 233001, gadget_id = 70350442, pos = { x = -888.216, y = -36.374, z = 5811.746 }, rot = { x = 24.433, y = 297.119, z = 14.165 }, level = 32, area_id = 32 },
	-- 三楼电池带能量
	[233002] = { config_id = 233002, gadget_id = 70350442, pos = { x = -838.561, y = -6.386, z = 5848.236 }, rot = { x = 24.433, y = 297.119, z = 14.165 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[233003] = { config_id = 233003, shape = RegionShape.SPHERE, radius = 60, pos = { x = -861.648, y = -30.469, z = 5835.952 }, area_id = 32 }
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
		gadgets = { 233001, 233002 },
		regions = { 233003 },
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