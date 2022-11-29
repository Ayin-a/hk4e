-- 基础信息
local base_info = {
	group_id = 133302338
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
	{ config_id = 338001, gadget_id = 70500000, pos = { x = -941.537, y = 206.632, z = 2217.066 }, rot = { x = 0.000, y = 291.405, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 338002, gadget_id = 70500000, pos = { x = -943.267, y = 207.851, z = 2233.871 }, rot = { x = 0.000, y = 295.385, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 338003, gadget_id = 70500000, pos = { x = -948.173, y = 208.837, z = 2221.990 }, rot = { x = 0.000, y = 298.256, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 338004, gadget_id = 70500000, pos = { x = -940.499, y = 206.844, z = 2229.207 }, rot = { x = 0.000, y = 268.430, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 338005, gadget_id = 70360001, pos = { x = -943.605, y = 208.074, z = 2228.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 }
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
		gadgets = { 338001, 338002, 338003, 338004, 338005 },
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