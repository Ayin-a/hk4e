-- 基础信息
local base_info = {
	group_id = 133105188
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
	{ config_id = 188001, gadget_id = 70310001, pos = { x = 649.372, y = 233.881, z = -452.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188002, gadget_id = 70310001, pos = { x = 654.968, y = 233.668, z = -462.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188003, gadget_id = 70310001, pos = { x = 641.280, y = 225.890, z = -455.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188004, gadget_id = 70310001, pos = { x = 646.681, y = 225.890, z = -467.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188005, gadget_id = 70310001, pos = { x = 634.373, y = 223.430, z = -460.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188006, gadget_id = 70310001, pos = { x = 639.724, y = 223.430, z = -470.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188007, gadget_id = 70310001, pos = { x = 699.980, y = 246.994, z = -429.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 188008, gadget_id = 70310001, pos = { x = 693.721, y = 247.326, z = -423.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 }
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
		gadgets = { 188001, 188002, 188003, 188004, 188005, 188006, 188007, 188008 },
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