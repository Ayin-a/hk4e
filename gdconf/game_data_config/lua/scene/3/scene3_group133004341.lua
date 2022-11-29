-- 基础信息
local base_info = {
	group_id = 133004341
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
	{ config_id = 341001, gadget_id = 70710107, pos = { x = 2246.645, y = 209.990, z = -929.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, state = GadgetState.Action01, area_id = 1, is_enable_interact = false },
	{ config_id = 341002, gadget_id = 70710107, pos = { x = 2247.303, y = 209.990, z = -930.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, state = GadgetState.Action01, area_id = 1, is_enable_interact = false },
	{ config_id = 341003, gadget_id = 70710107, pos = { x = 2244.937, y = 209.990, z = -928.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1, is_enable_interact = false },
	{ config_id = 341004, gadget_id = 70710107, pos = { x = 2244.055, y = 209.990, z = -928.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { 341001, 341002, 341003, 341004 },
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