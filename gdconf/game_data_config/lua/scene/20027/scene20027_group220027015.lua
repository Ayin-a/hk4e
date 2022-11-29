-- 基础信息
local base_info = {
	group_id = 220027015
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
	{ config_id = 100, gadget_id = 70360021, pos = { x = -92.387, y = -80.375, z = -197.960 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 101, gadget_id = 70360021, pos = { x = -74.761, y = -80.249, z = -213.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 102, gadget_id = 70360021, pos = { x = -62.762, y = -80.249, z = -213.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 21 },
	{ config_id = 103, gadget_id = 70360021, pos = { x = -62.755, y = -78.237, z = -213.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 7 },
	{ config_id = 104, gadget_id = 70360021, pos = { x = -55.957, y = -80.249, z = -213.199 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 8 },
	{ config_id = 105, gadget_id = 70360021, pos = { x = -50.005, y = -80.249, z = -212.926 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 9 },
	{ config_id = 106, gadget_id = 70360021, pos = { x = -42.647, y = -80.249, z = -212.897 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 10 },
	{ config_id = 123, gadget_id = 70360021, pos = { x = -80.477, y = -70.721, z = -205.134 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20 }
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
		gadgets = { 100, 101, 102, 103, 104, 105, 106, 123 },
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