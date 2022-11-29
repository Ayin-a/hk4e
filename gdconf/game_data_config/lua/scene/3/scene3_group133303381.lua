-- 基础信息
local base_info = {
	group_id = 133303381
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
	{ config_id = 381001, gadget_id = 70500000, pos = { x = -1386.477, y = 275.368, z = 3590.943 }, rot = { x = 16.029, y = 107.871, z = 337.417 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 381002, gadget_id = 70500000, pos = { x = -1384.619, y = 276.378, z = 3593.098 }, rot = { x = 330.014, y = 0.958, z = 356.424 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 381003, gadget_id = 70360001, pos = { x = -1382.244, y = 274.096, z = 3587.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 381001, 381002, 381003 },
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