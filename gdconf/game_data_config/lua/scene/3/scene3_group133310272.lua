-- 基础信息
local base_info = {
	group_id = 133310272
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
	{ config_id = 272001, gadget_id = 70500000, pos = { x = -2286.517, y = 281.421, z = 4363.112 }, rot = { x = 331.606, y = 274.131, z = 352.364 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 272002, gadget_id = 70500000, pos = { x = -2289.821, y = 280.650, z = 4360.703 }, rot = { x = 19.647, y = 0.335, z = 21.037 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 272003, gadget_id = 70500000, pos = { x = -2292.227, y = 280.126, z = 4359.640 }, rot = { x = 6.351, y = 38.322, z = 33.484 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 272004, gadget_id = 70500000, pos = { x = -2291.337, y = 280.127, z = 4360.502 }, rot = { x = 12.953, y = 16.937, z = 24.996 }, level = 1, point_type = 1005, persistent = true, area_id = 26 },
	{ config_id = 272005, gadget_id = 70360001, pos = { x = -2291.329, y = 279.547, z = 4362.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 272001, 272002, 272003, 272004, 272005 },
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