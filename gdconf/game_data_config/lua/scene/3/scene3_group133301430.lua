-- 基础信息
local base_info = {
	group_id = 133301430
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
	{ config_id = 430001, gadget_id = 70500000, pos = { x = -964.051, y = 368.862, z = 3246.711 }, rot = { x = 4.318, y = 172.907, z = 9.178 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 430002, gadget_id = 70500000, pos = { x = -966.370, y = 368.242, z = 3246.016 }, rot = { x = 0.000, y = 355.014, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 430003, gadget_id = 70500000, pos = { x = -974.094, y = 365.755, z = 3246.148 }, rot = { x = 20.813, y = 303.003, z = 359.528 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 430004, gadget_id = 70500000, pos = { x = -962.291, y = 369.101, z = 3250.458 }, rot = { x = 19.200, y = 277.997, z = 349.117 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 430005, gadget_id = 70360001, pos = { x = -982.236, y = 365.580, z = 3248.012 }, rot = { x = 0.000, y = 70.225, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 430001, 430002, 430003, 430004, 430005 },
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