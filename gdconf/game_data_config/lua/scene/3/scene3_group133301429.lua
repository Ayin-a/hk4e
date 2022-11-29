-- 基础信息
local base_info = {
	group_id = 133301429
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
	{ config_id = 429001, gadget_id = 70500000, pos = { x = -1008.223, y = 265.827, z = 3375.678 }, rot = { x = 10.564, y = 149.170, z = 7.798 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 429002, gadget_id = 70500000, pos = { x = -1004.520, y = 265.275, z = 3375.679 }, rot = { x = 9.332, y = 52.533, z = 21.448 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 429003, gadget_id = 70360001, pos = { x = -985.266, y = 267.583, z = 3365.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 429001, 429002, 429003 },
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