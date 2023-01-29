-- 基础信息
local base_info = {
	group_id = 133313075
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
	{ config_id = 75001, gadget_id = 70350438, pos = { x = -847.943, y = -39.305, z = 5823.834 }, rot = { x = 334.842, y = 55.308, z = 247.459 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75002, gadget_id = 70350438, pos = { x = -856.794, y = -42.948, z = 5838.869 }, rot = { x = 334.842, y = 55.308, z = 247.459 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75003, gadget_id = 70350438, pos = { x = -858.978, y = -44.963, z = 5826.629 }, rot = { x = 11.955, y = 330.799, z = 326.982 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75004, gadget_id = 70350438, pos = { x = -845.592, y = -36.954, z = 5836.257 }, rot = { x = 10.686, y = 330.505, z = 327.155 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75005, gadget_id = 70350437, pos = { x = -829.038, y = -19.311, z = 5826.969 }, rot = { x = 352.239, y = 9.932, z = 5.901 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75006, gadget_id = 70350437, pos = { x = -883.858, y = -48.275, z = 5834.110 }, rot = { x = 354.676, y = 2.591, z = 355.583 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75007, gadget_id = 70350437, pos = { x = -847.770, y = -26.993, z = 5860.436 }, rot = { x = 26.627, y = 287.412, z = 340.225 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75008, gadget_id = 70350437, pos = { x = -863.749, y = -40.325, z = 5801.546 }, rot = { x = 26.627, y = 287.412, z = 340.225 }, level = 30, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 75009, gadget_id = 70350435, pos = { x = -865.150, y = -22.897, z = 5833.866 }, rot = { x = 44.299, y = 112.840, z = 142.146 }, level = 32, area_id = 32 },
	-- （临时占位）
	{ config_id = 75010, gadget_id = 70950103, pos = { x = -826.228, y = -0.976, z = 5825.482 }, rot = { x = 291.431, y = 322.715, z = 35.327 }, level = 32, area_id = 32 },
	-- （临时占位）
	{ config_id = 75011, gadget_id = 70950103, pos = { x = -875.271, y = -30.085, z = 5791.113 }, rot = { x = 300.108, y = 286.105, z = 67.568 }, level = 32, area_id = 32 }
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
		gadgets = { 75001, 75002, 75003, 75004, 75005, 75006, 75007, 75008, 75009, 75010, 75011 },
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
		gadgets = { },
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