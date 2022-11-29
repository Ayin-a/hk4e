-- 基础信息
local base_info = {
	group_id = 133304339
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
	{ config_id = 339001, gadget_id = 70500000, pos = { x = -1239.234, y = 210.350, z = 2129.452 }, rot = { x = 15.550, y = 300.056, z = 23.235 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 339002, gadget_id = 70500000, pos = { x = -1236.685, y = 210.429, z = 2100.131 }, rot = { x = 356.869, y = 236.643, z = 344.273 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 339003, gadget_id = 70500000, pos = { x = -1235.290, y = 210.604, z = 2101.048 }, rot = { x = 14.815, y = 0.697, z = 5.356 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 339004, gadget_id = 70500000, pos = { x = -1243.635, y = 208.639, z = 2129.771 }, rot = { x = 3.457, y = 359.549, z = 345.123 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 339005, gadget_id = 70360001, pos = { x = -1244.024, y = 208.244, z = 2110.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 339001, 339002, 339003, 339004, 339005 },
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