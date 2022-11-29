-- 基础信息
local base_info = {
	group_id = 133104509
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
	{ config_id = 509001, gadget_id = 70310001, pos = { x = 865.414, y = 240.947, z = 947.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509002, gadget_id = 70310001, pos = { x = 851.676, y = 245.217, z = 995.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509003, gadget_id = 70310001, pos = { x = 853.211, y = 245.217, z = 990.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509004, gadget_id = 70310001, pos = { x = 891.667, y = 228.734, z = 937.116 }, rot = { x = 359.757, y = 0.022, z = 349.647 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509005, gadget_id = 70310001, pos = { x = 890.009, y = 236.792, z = 842.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509006, gadget_id = 70310001, pos = { x = 896.421, y = 238.124, z = 851.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 509007, gadget_id = 70310001, pos = { x = 882.545, y = 232.455, z = 943.532 }, rot = { x = 320.515, y = 25.891, z = 42.157 }, level = 24, area_id = 6 },
	{ config_id = 509008, gadget_id = 70310001, pos = { x = 856.675, y = 240.847, z = 958.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 }
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
		gadgets = { 509001, 509002, 509003, 509004, 509005, 509006, 509007, 509008 },
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