-- 基础信息
local base_info = {
	group_id = 133309104
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
	{ config_id = 104001, gadget_id = 70500000, pos = { x = -2731.518, y = 10.406, z = 5278.155 }, rot = { x = 16.338, y = 16.108, z = 344.282 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 104002, gadget_id = 70500000, pos = { x = -2730.956, y = 11.096, z = 5273.694 }, rot = { x = 356.999, y = 338.941, z = 324.329 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 104003, gadget_id = 70360001, pos = { x = -2733.312, y = 10.664, z = 5280.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
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
		gadgets = { 104001, 104002, 104003 },
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