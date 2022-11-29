-- 基础信息
local base_info = {
	group_id = 133004119
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
	{ config_id = 477, gadget_id = 70310001, pos = { x = 2266.279, y = 235.990, z = -748.093 }, rot = { x = 0.000, y = 278.506, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 478, gadget_id = 70310001, pos = { x = 2214.277, y = 215.054, z = -44.333 }, rot = { x = 0.000, y = 207.326, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 479, gadget_id = 70310001, pos = { x = 2263.922, y = 264.527, z = -337.959 }, rot = { x = 0.000, y = 233.518, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 480, gadget_id = 70310001, pos = { x = 2258.311, y = 264.523, z = -338.089 }, rot = { x = 0.000, y = 233.518, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 481, gadget_id = 70310001, pos = { x = 2252.144, y = 269.306, z = -279.636 }, rot = { x = 0.000, y = 233.518, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 482, gadget_id = 70310001, pos = { x = 2264.648, y = 269.334, z = -279.368 }, rot = { x = 0.000, y = 114.831, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 483, gadget_id = 70310001, pos = { x = 2266.891, y = 273.186, z = -248.266 }, rot = { x = 0.000, y = 114.831, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 484, gadget_id = 70310001, pos = { x = 2246.956, y = 273.125, z = -248.666 }, rot = { x = 0.000, y = 233.518, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 485, gadget_id = 70310003, pos = { x = 2209.760, y = 210.193, z = -511.230 }, rot = { x = 0.000, y = 139.410, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 }
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
	rand_suite = true
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
		gadgets = { 477, 478, 479, 480, 481, 482, 483, 484, 485 },
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