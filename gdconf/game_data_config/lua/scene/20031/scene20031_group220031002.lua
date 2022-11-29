-- 基础信息
local base_info = {
	group_id = 220031002
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
	{ config_id = 2001, gadget_id = 70360022, pos = { x = 78.724, y = 39.877, z = 129.116 }, rot = { x = 347.035, y = 200.919, z = 328.695 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2002, gadget_id = 70360022, pos = { x = 112.040, y = 41.000, z = 111.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2003, gadget_id = 70360022, pos = { x = 106.015, y = 41.000, z = 130.485 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2004, gadget_id = 70360021, pos = { x = 156.615, y = 41.000, z = 130.513 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 2005, gadget_id = 70360021, pos = { x = 160.599, y = 41.000, z = 111.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 2006, gadget_id = 70360021, pos = { x = 153.099, y = 41.000, z = 111.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 3 },
	{ config_id = 2007, gadget_id = 70360021, pos = { x = 136.598, y = 41.000, z = 130.487 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 2 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007 },
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