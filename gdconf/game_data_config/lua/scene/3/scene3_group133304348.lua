-- 基础信息
local base_info = {
	group_id = 133304348
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
	{ config_id = 348001, gadget_id = 70500000, pos = { x = -1420.447, y = 256.651, z = 2221.490 }, rot = { x = 357.512, y = 0.036, z = 358.343 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 348002, gadget_id = 70500000, pos = { x = -1413.592, y = 255.906, z = 2220.175 }, rot = { x = 8.751, y = 71.984, z = 357.697 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 348003, gadget_id = 70360001, pos = { x = -1442.455, y = 257.120, z = 2225.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 348001, 348002, 348003 },
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