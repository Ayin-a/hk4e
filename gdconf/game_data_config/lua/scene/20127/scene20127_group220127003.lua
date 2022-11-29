-- 基础信息
local base_info = {
	group_id = 220127003
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
	{ config_id = 3001, gadget_id = 70800168, pos = { x = 11.980, y = 43.920, z = 101.410 }, rot = { x = 358.299, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3002, gadget_id = 70800168, pos = { x = 33.690, y = 44.100, z = 79.530 }, rot = { x = 1.714, y = 90.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3003, gadget_id = 70800168, pos = { x = 60.820, y = 43.890, z = 52.610 }, rot = { x = 0.975, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3004, gadget_id = 70800168, pos = { x = 60.480, y = 51.530, z = 101.062 }, rot = { x = 358.887, y = 0.442, z = 0.215 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isUnlock1", value = 0, no_refresh = true },
	{ config_id = 2, name = "isUnlock2", value = 0, no_refresh = true },
	{ config_id = 3, name = "isUnlock3", value = 0, no_refresh = true },
	{ config_id = 4, name = "isUnlock4", value = 0, no_refresh = true },
	{ config_id = 5, name = "isUnlock5", value = 0, no_refresh = true },
	{ config_id = 6, name = "BridgeState", value = 0, no_refresh = true }
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
		gadgets = { 3001, 3002, 3003, 3004 },
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