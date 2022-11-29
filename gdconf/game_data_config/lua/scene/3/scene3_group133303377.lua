-- 基础信息
local base_info = {
	group_id = 133303377
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
	{ config_id = 377001, gadget_id = 70500000, pos = { x = -1442.600, y = 292.571, z = 3686.845 }, rot = { x = 4.459, y = 0.139, z = 3.577 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 377002, gadget_id = 70500000, pos = { x = -1432.934, y = 293.695, z = 3690.860 }, rot = { x = 355.666, y = 359.466, z = 14.037 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 377003, gadget_id = 70360001, pos = { x = -1435.924, y = 292.140, z = 3688.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 377001, 377002, 377003 },
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