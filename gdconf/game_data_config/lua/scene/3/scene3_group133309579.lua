-- 基础信息
local base_info = {
	group_id = 133309579
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
	{ config_id = 579001, gadget_id = 70330335, pos = { x = -2663.971, y = -70.210, z = 5798.952 }, rot = { x = 0.000, y = 96.341, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 579002, gadget_id = 70330335, pos = { x = -2653.980, y = -70.210, z = 5818.992 }, rot = { x = 0.000, y = 31.495, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 579003, gadget_id = 70330335, pos = { x = -2683.571, y = -70.210, z = 5808.736 }, rot = { x = 0.000, y = 74.424, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 579004, gadget_id = 70330335, pos = { x = -2674.036, y = -70.210, z = 5829.008 }, rot = { x = 0.000, y = 64.839, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 }
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
		gadgets = { 579001, 579002, 579003, 579004 },
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