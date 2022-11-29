-- 基础信息
local base_info = {
	group_id = 133001427
}

-- Trigger变量
local defs = {
	group_id = 133001427
}

-- DEFS_MISCS
--配在阶段Group中
local stage_def = {
        [1] = {
                --根据阶段创建的group,在阶段group中标记
                [1] = {2,3,4,5},
                [2] = {2,3,4,5}
        },
        [2] = {
                [1] = {4,5},
                [2] = {2,3}
        },
        [3] = {
                [1] = {2,3,4,5},
                [2] = {2,3,4,5}
        },
        [4] = {
                [1] = {6,7},
                [2] = {},
                [3] = {8,9},
                [4] = {}
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[427001] = { config_id = 427001, monster_id = 21020501, pos = { x = 1874.039, y = 195.356, z = -1570.951 }, rot = { x = 0.000, y = 12.600, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103, 4106 }, isElite = true, area_id = 2, kill_score = 100 },
	[427002] = { config_id = 427002, monster_id = 23030102, pos = { x = 1880.367, y = 195.791, z = -1547.766 }, rot = { x = 0.000, y = 179.025, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4106, 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 100 },
	[427003] = { config_id = 427003, monster_id = 23020102, pos = { x = 1880.178, y = 196.011, z = -1555.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103, 4106 }, isElite = true, area_id = 2, kill_score = 100 },
	[427004] = { config_id = 427004, monster_id = 24010101, pos = { x = 1893.567, y = 196.815, z = -1549.734 }, rot = { x = 0.000, y = 258.805, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103, 4106 }, pose_id = 100, area_id = 2, kill_score = 100 },
	[427005] = { config_id = 427005, monster_id = 21020101, pos = { x = 1872.870, y = 196.078, z = -1559.150 }, rot = { x = 0.000, y = 40.506, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103, 4106 }, isElite = true, area_id = 2, kill_score = 50 },
	[427006] = { config_id = 427006, monster_id = 21020301, pos = { x = 1873.433, y = 196.145, z = -1543.765 }, rot = { x = 0.000, y = 142.303, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4106, 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 50 },
	[427007] = { config_id = 427007, monster_id = 21020501, pos = { x = 1881.403, y = 195.928, z = -1551.561 }, rot = { x = 0.000, y = 91.550, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4106, 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 100 },
	[427008] = { config_id = 427008, monster_id = 24010101, pos = { x = 1878.355, y = 195.939, z = -1551.841 }, rot = { x = 0.000, y = 248.362, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4106, 4107, 4108, 4109 }, isElite = true, pose_id = 100, area_id = 2, kill_score = 100 },
	[427009] = { config_id = 427009, monster_id = 21020202, pos = { x = 1883.883, y = 196.224, z = -1541.924 }, rot = { x = 0.000, y = 209.918, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4106, 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 50 },
	[427010] = { config_id = 427010, monster_id = 21020202, pos = { x = 1884.704, y = 195.577, z = -1560.357 }, rot = { x = 0.000, y = 344.664, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103, 4106 }, isElite = true, area_id = 2, kill_score = 50 }
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
		-- description = 联机A,
		monsters = { 427001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 联机B,
		monsters = { 427002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 联机C,
		monsters = { 427003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 联机D,
		monsters = { 427004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 单人阶段2A,
		monsters = { 427009, 427010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 单人阶段2B,
		monsters = { 427005, 427006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 单人阶段4A,
		monsters = { 427008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 单人阶段4B,
		monsters = { 427007 },
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