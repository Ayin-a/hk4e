-- 基础信息
local base_info = {
	group_id = 133303385
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
	{ config_id = 385001, gadget_id = 70500000, pos = { x = -1975.748, y = 377.139, z = 3502.610 }, rot = { x = 348.008, y = 320.976, z = 2.838 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 385002, gadget_id = 70500000, pos = { x = -1974.335, y = 377.722, z = 3505.432 }, rot = { x = 353.755, y = 274.451, z = 12.836 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 385003, gadget_id = 70360001, pos = { x = -1972.145, y = 376.290, z = 3501.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 385001, 385002, 385003 },
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

require "V2_0/OreBlossomGroup"