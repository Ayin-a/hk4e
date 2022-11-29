-- 基础信息
local base_info = {
	group_id = 133104011
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
	{ config_id = 29, gadget_id = 70210101, pos = { x = 549.997, y = 217.587, z = 794.291 }, rot = { x = 0.000, y = 267.131, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 30, gadget_id = 70210101, pos = { x = 538.326, y = 200.000, z = 789.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 31, gadget_id = 70211101, pos = { x = 553.172, y = 217.492, z = 800.268 }, rot = { x = 357.798, y = 246.619, z = 359.065 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 34, gadget_id = 70211103, pos = { x = 395.327, y = 233.852, z = 731.850 }, rot = { x = 358.665, y = 359.184, z = 340.402 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 36, gadget_id = 70211104, pos = { x = 280.372, y = 199.475, z = 586.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 11001, gadget_id = 70210105, pos = { x = 527.964, y = 200.000, z = 800.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 11002, gadget_id = 70210105, pos = { x = 534.237, y = 200.000, z = 803.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
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
		gadgets = { 29, 30, 34, 36, 11001, 11002 },
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