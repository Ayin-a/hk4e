-- 基础信息
local base_info = {
	group_id = 133301431
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
	{ config_id = 431001, gadget_id = 70500000, pos = { x = -976.872, y = 365.147, z = 3245.134 }, rot = { x = 3.236, y = 275.755, z = 359.421 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 431002, gadget_id = 70500000, pos = { x = -965.286, y = 368.362, z = 3248.545 }, rot = { x = 15.305, y = 233.389, z = 348.426 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 431003, gadget_id = 70360001, pos = { x = -975.584, y = 364.831, z = 3248.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 431004, gadget_id = 70500000, pos = { x = -973.706, y = 365.905, z = 3243.983 }, rot = { x = 10.228, y = 329.801, z = 16.223 }, level = 1, point_type = 1005, area_id = 23 }
	}
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
		gadgets = { 431001, 431002, 431003 },
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