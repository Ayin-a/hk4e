-- 基础信息
local base_info = {
	group_id = 220131021
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
	{ config_id = 21001, gadget_id = 70310001, pos = { x = 66.605, y = 10.617, z = 19.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21002, gadget_id = 70310001, pos = { x = 75.780, y = 10.611, z = 19.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21008, gadget_id = 70310001, pos = { x = 47.046, y = 10.531, z = -98.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21009, gadget_id = 70310001, pos = { x = 70.087, y = 10.530, z = -91.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21010, gadget_id = 70310001, pos = { x = 51.427, y = 10.530, z = -47.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21011, gadget_id = 70310001, pos = { x = 51.432, y = 10.530, z = -58.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21012, gadget_id = 70310001, pos = { x = 59.211, y = 10.437, z = -38.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21015, gadget_id = 70310001, pos = { x = 57.435, y = -6.460, z = -33.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21016, gadget_id = 70310001, pos = { x = 57.840, y = -6.460, z = -13.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21019, gadget_id = 70310001, pos = { x = 63.008, y = 10.530, z = -47.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 21020, gadget_id = 70310001, pos = { x = 62.944, y = 10.530, z = -57.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 21001, 21002, 21008, 21009, 21010, 21011, 21012, 21015, 21016, 21019, 21020 },
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