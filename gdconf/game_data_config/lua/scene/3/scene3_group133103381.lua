-- 基础信息
local base_info = {
	group_id = 133103381
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
	{ config_id = 381001, gadget_id = 70310001, pos = { x = 301.099, y = 185.797, z = 1462.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381002, gadget_id = 70310001, pos = { x = 299.726, y = 185.797, z = 1458.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381003, gadget_id = 70310001, pos = { x = 308.775, y = 192.610, z = 1478.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381004, gadget_id = 70310001, pos = { x = 306.815, y = 192.734, z = 1473.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381005, gadget_id = 70310001, pos = { x = 326.761, y = 220.998, z = 1578.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381006, gadget_id = 70310001, pos = { x = 322.644, y = 220.823, z = 1574.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381007, gadget_id = 70310001, pos = { x = 283.969, y = 193.530, z = 1447.489 }, rot = { x = 15.408, y = 0.356, z = 2.634 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 381008, gadget_id = 70310001, pos = { x = 293.691, y = 197.506, z = 1445.355 }, rot = { x = 15.408, y = 0.356, z = 2.634 }, level = 24, state = GadgetState.GearStart, area_id = 6 }
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
		gadgets = { 381001, 381002, 381003, 381004, 381005, 381006, 381007, 381008 },
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