-- 基础信息
local base_info = {
	group_id = 133303383
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
	{ config_id = 383001, gadget_id = 70500000, pos = { x = -1437.919, y = 129.434, z = 3333.113 }, rot = { x = 0.000, y = 312.738, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 383002, gadget_id = 70500000, pos = { x = -1436.418, y = 130.100, z = 3337.109 }, rot = { x = 0.000, y = 278.101, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 383003, gadget_id = 70360001, pos = { x = -1434.880, y = 132.201, z = 3330.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 383001, 383002, 383003 },
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