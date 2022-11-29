-- 基础信息
local base_info = {
	group_id = 220005011
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
	{ config_id = 11001, gadget_id = 70350019, pos = { x = -289.229, y = 31.785, z = 171.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11003, gadget_id = 70350019, pos = { x = -276.532, y = 31.535, z = 161.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11004, gadget_id = 70350019, pos = { x = -308.862, y = 31.535, z = 178.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11012, gadget_id = 70350019, pos = { x = -292.581, y = 31.535, z = 157.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11013, gadget_id = 70350019, pos = { x = -289.970, y = 31.535, z = 185.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11017, gadget_id = 70350019, pos = { x = -266.822, y = 31.535, z = 157.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11023, gadget_id = 70350019, pos = { x = -298.638, y = 31.535, z = 162.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11028, gadget_id = 70350019, pos = { x = -299.116, y = 31.785, z = 177.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11029, gadget_id = 70350019, pos = { x = -279.740, y = 31.535, z = 182.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11033, gadget_id = 70350019, pos = { x = -273.114, y = 31.535, z = 179.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 11001, 11003, 11004, 11012, 11013, 11017, 11023, 11028, 11029, 11033 },
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