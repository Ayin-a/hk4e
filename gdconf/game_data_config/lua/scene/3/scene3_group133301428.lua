-- 基础信息
local base_info = {
	group_id = 133301428
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
	{ config_id = 428001, gadget_id = 70500000, pos = { x = -1003.079, y = 265.104, z = 3375.537 }, rot = { x = 11.915, y = 80.195, z = 25.471 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 428002, gadget_id = 70500000, pos = { x = -1005.843, y = 268.062, z = 3371.394 }, rot = { x = 30.569, y = 310.772, z = 323.722 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 428003, gadget_id = 70500000, pos = { x = -1006.472, y = 267.161, z = 3373.468 }, rot = { x = 354.813, y = 87.129, z = 22.748 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 428004, gadget_id = 70500000, pos = { x = -1000.282, y = 266.770, z = 3372.250 }, rot = { x = 0.580, y = 98.009, z = 31.007 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 428005, gadget_id = 70360001, pos = { x = -986.856, y = 268.304, z = 3365.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 428001, 428002, 428003, 428004, 428005 },
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