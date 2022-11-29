-- 基础信息
local base_info = {
	group_id = 133302286
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
	{ config_id = 286001, gadget_id = 70500000, pos = { x = -710.272, y = 173.383, z = 2513.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 286002, gadget_id = 70500000, pos = { x = -696.673, y = 175.080, z = 2513.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 286003, gadget_id = 70500000, pos = { x = -699.196, y = 174.285, z = 2509.472 }, rot = { x = 0.000, y = 209.728, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 24 },
	{ config_id = 286004, gadget_id = 70500000, pos = { x = -710.219, y = 175.292, z = 2520.289 }, rot = { x = 347.783, y = 2.016, z = 13.119 }, level = 1, point_type = 1005, persistent = true, area_id = 24 },
	{ config_id = 286005, gadget_id = 70360001, pos = { x = -699.327, y = 174.755, z = 2513.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 24 }
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
		gadgets = { 286001, 286002, 286003, 286004, 286005 },
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