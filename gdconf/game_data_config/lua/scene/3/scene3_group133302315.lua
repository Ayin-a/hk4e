-- 基础信息
local base_info = {
	group_id = 133302315
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
	{ config_id = 315001, gadget_id = 70500000, pos = { x = -379.512, y = 136.666, z = 2225.543 }, rot = { x = 359.029, y = 3.088, z = 17.433 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 315002, gadget_id = 70500000, pos = { x = -372.375, y = 138.128, z = 2225.412 }, rot = { x = 0.000, y = 37.429, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 315003, gadget_id = 70500000, pos = { x = -376.458, y = 136.885, z = 2225.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 315004, gadget_id = 70500000, pos = { x = -374.102, y = 137.529, z = 2225.517 }, rot = { x = 0.000, y = 33.450, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 315005, gadget_id = 70360001, pos = { x = -378.465, y = 135.978, z = 2227.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 }
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
		gadgets = { 315001, 315002, 315003, 315004, 315005 },
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