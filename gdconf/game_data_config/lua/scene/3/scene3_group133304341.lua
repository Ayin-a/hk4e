-- 基础信息
local base_info = {
	group_id = 133304341
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
	{ config_id = 341001, gadget_id = 70500000, pos = { x = -1498.889, y = 134.730, z = 2459.498 }, rot = { x = 26.132, y = 313.873, z = 349.721 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 341002, gadget_id = 70500000, pos = { x = -1525.803, y = 136.307, z = 2462.636 }, rot = { x = 8.343, y = 29.137, z = 10.037 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 341003, gadget_id = 70500000, pos = { x = -1496.333, y = 135.344, z = 2460.438 }, rot = { x = 2.616, y = 357.962, z = 6.894 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 341004, gadget_id = 70500000, pos = { x = -1515.561, y = 137.812, z = 2457.522 }, rot = { x = 5.672, y = 0.517, z = 10.405 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 341005, gadget_id = 70360001, pos = { x = -1515.357, y = 136.181, z = 2462.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 341001, 341002, 341003, 341004, 341005 },
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