-- 基础信息
local base_info = {
	group_id = 240010006
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
	{ config_id = 49, gadget_id = 70220005, pos = { x = -152.651, y = 18.017, z = 41.055 }, rot = { x = 0.000, y = 40.543, z = 0.000 }, level = 1 },
	{ config_id = 50, gadget_id = 70220005, pos = { x = -143.596, y = 17.939, z = 40.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 51, gadget_id = 70220005, pos = { x = -140.972, y = 17.900, z = 41.469 }, rot = { x = 0.000, y = 353.901, z = 0.000 }, level = 1 },
	{ config_id = 52, gadget_id = 70211103, pos = { x = -137.579, y = 19.016, z = 45.837 }, rot = { x = 0.000, y = 270.147, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true },
	{ config_id = 53, gadget_id = 70211103, pos = { x = -156.192, y = 19.016, z = 45.896 }, rot = { x = 0.000, y = 88.781, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true },
	{ config_id = 54, gadget_id = 70220014, pos = { x = -151.968, y = 18.016, z = 39.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 55, gadget_id = 70220014, pos = { x = -141.830, y = 17.947, z = 39.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 56, gadget_id = 70220014, pos = { x = -140.917, y = 17.922, z = 40.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 57, gadget_id = 70211012, pos = { x = -147.036, y = 18.016, z = 46.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 18000000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true }
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
		gadgets = { 49, 50, 51, 52, 53, 54, 55, 56, 57 },
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