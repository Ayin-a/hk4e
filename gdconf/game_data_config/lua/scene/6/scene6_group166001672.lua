-- 基础信息
local base_info = {
	group_id = 166001672
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 672001, monster_id = 28010201, pos = { x = 623.866, y = 409.223, z = 508.540 }, rot = { x = 0.000, y = 217.980, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 672002, monster_id = 28010203, pos = { x = 569.678, y = 410.131, z = 470.703 }, rot = { x = 0.000, y = 295.116, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 672003, gadget_id = 70217014, pos = { x = 534.508, y = 463.415, z = 522.470 }, rot = { x = 0.000, y = 237.976, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 672004, gadget_id = 70217014, pos = { x = 437.114, y = 486.408, z = 483.464 }, rot = { x = 0.000, y = 190.818, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 672005, gadget_id = 70217014, pos = { x = 437.053, y = 486.211, z = 561.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 672006, gadget_id = 70210101, pos = { x = 417.027, y = 486.607, z = 546.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 }
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
		monsters = { 672001, 672002 },
		gadgets = { 672003, 672004, 672005, 672006 },
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