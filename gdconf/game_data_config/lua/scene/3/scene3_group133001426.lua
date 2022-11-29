-- 基础信息
local base_info = {
	group_id = 133001426
}

-- Trigger变量
local defs = {
	aster_timer = {60,180,300,420,540},
	clear_delay = 30,
	group_id = 133001426
}

-- DEFS_MISCS
--配在计时group中
local timer_def = {
        [1] = {
                --根据时间创建的group
                [1] = {2,6},
                [2] = {3,6},
                [3] = {4,6},
                [4] = {5,6},
                [5] = {2,6}
        },
        [2] = {
                [1] = {2,6},
                [2] = {3,6},
                [3] = {4,6},
                [4] = {5,6},
                [5] = {2,6}
        },
        [3] = {
                [1] = {2,6},
                [2] = {3,6},
                [3] = {4,6},
                [4] = {5,6},
                [5] = {2,6}
        },
        [4] = {
                [1] = {2,6},
                [2] = {3,6},
                [3] = {4,6},
                [4] = {5,6},
                [5] = {2,6}
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[426001] = { config_id = 426001, monster_id = 21010901, pos = { x = 1877.115, y = 195.976, z = -1541.022 }, rot = { x = 0.000, y = 158.152, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4110, 4109, 4108, 4107 }, area_id = 2, kill_score = 100 },
	[426002] = { config_id = 426002, monster_id = 21010401, pos = { x = 1870.267, y = 196.167, z = -1557.923 }, rot = { x = 0.000, y = 59.259, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4110, 4109, 4108, 4107 }, area_id = 2, kill_score = 100 },
	[426003] = { config_id = 426003, monster_id = 21010501, pos = { x = 1884.061, y = 195.052, z = -1570.872 }, rot = { x = 0.000, y = 355.769, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4110, 4109, 4108, 4107 }, area_id = 2, kill_score = 100 },
	[426004] = { config_id = 426004, monster_id = 21011001, pos = { x = 1887.601, y = 196.909, z = -1539.696 }, rot = { x = 0.000, y = 216.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4110, 4109, 4108, 4107 }, area_id = 2, kill_score = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 426002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 426003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 426004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 426001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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

require "AsterBig"