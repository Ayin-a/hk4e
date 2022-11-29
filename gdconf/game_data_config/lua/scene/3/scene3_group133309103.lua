-- 基础信息
local base_info = {
	group_id = 133309103
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
	{ config_id = 103001, gadget_id = 70500000, pos = { x = -2729.683, y = 10.270, z = 5275.572 }, rot = { x = 19.707, y = 54.370, z = 357.092 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 103002, gadget_id = 70500000, pos = { x = -2727.813, y = 9.518, z = 5273.833 }, rot = { x = 17.346, y = 114.832, z = 11.670 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 103003, gadget_id = 70500000, pos = { x = -2732.646, y = 10.726, z = 5279.013 }, rot = { x = 43.787, y = 95.335, z = 33.457 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 103004, gadget_id = 70500000, pos = { x = -2735.357, y = 11.295, z = 5280.931 }, rot = { x = 337.299, y = 284.821, z = 340.753 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 103005, gadget_id = 70360001, pos = { x = -2732.886, y = 11.906, z = 5274.815 }, rot = { x = 1.051, y = 0.992, z = 0.713 }, level = 1, persistent = true, area_id = 27 }
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
		gadgets = { 103001, 103002, 103003, 103004, 103005 },
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