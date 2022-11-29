-- 基础信息
local base_info = {
	group_id = 133310277
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
	{ config_id = 277001, gadget_id = 70500000, pos = { x = -2416.844, y = 269.748, z = 4126.507 }, rot = { x = 9.907, y = 1.871, z = 21.338 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 277002, gadget_id = 70500000, pos = { x = -2414.928, y = 270.618, z = 4125.940 }, rot = { x = 21.830, y = 268.001, z = 351.015 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 277003, gadget_id = 70360001, pos = { x = -2415.570, y = 269.951, z = 4128.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 277001, 277002, 277003 },
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