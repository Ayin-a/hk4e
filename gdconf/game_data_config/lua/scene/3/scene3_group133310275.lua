-- 基础信息
local base_info = {
	group_id = 133310275
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
	{ config_id = 275001, gadget_id = 70500000, pos = { x = -2515.727, y = 134.304, z = 4926.531 }, rot = { x = 16.703, y = 53.114, z = 9.010 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 275002, gadget_id = 70500000, pos = { x = -2512.547, y = 134.173, z = 4925.038 }, rot = { x = 13.432, y = 345.974, z = 342.030 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 275003, gadget_id = 70360001, pos = { x = -2506.398, y = 132.339, z = 4920.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
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
		gadgets = { 275001, 275002, 275003 },
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