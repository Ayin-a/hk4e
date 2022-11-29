-- 基础信息
local base_info = {
	group_id = 133001052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52001, monster_id = 20010801, pos = { x = 1773.753, y = 195.512, z = -1514.590 }, rot = { x = 0.000, y = 267.732, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, area_id = 2 },
	{ config_id = 52004, monster_id = 20010801, pos = { x = 1756.619, y = 195.537, z = -1521.450 }, rot = { x = 0.000, y = 13.135, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, area_id = 2 }
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
		-- description = 空suit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 52001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52004 },
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