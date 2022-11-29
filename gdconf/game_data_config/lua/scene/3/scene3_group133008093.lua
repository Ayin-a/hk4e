-- 基础信息
local base_info = {
	group_id = 133008093
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
	{ config_id = 93005, gadget_id = 70211111, pos = { x = 1505.573, y = 265.893, z = -695.837 }, rot = { x = 333.190, y = 283.120, z = 20.155 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93006, gadget_id = 70211104, pos = { x = 1534.611, y = 265.800, z = -823.225 }, rot = { x = 0.000, y = 42.020, z = 354.150 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93007, gadget_id = 70211104, pos = { x = 1484.863, y = 266.246, z = -1025.479 }, rot = { x = 358.652, y = 280.014, z = 2.487 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93009, gadget_id = 70211104, pos = { x = 1143.586, y = 295.506, z = -517.930 }, rot = { x = 3.944, y = 349.234, z = 1.260 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93010, gadget_id = 70211104, pos = { x = 1203.445, y = 198.647, z = -1209.172 }, rot = { x = 0.000, y = 272.923, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93011, gadget_id = 70211101, pos = { x = 1389.690, y = 272.018, z = -1185.111 }, rot = { x = 356.692, y = 169.163, z = 356.996 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93013, gadget_id = 70211001, pos = { x = 1354.737, y = 270.623, z = -520.602 }, rot = { x = 0.396, y = 49.359, z = 11.309 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 93016, gadget_id = 70210101, pos = { x = 1468.616, y = 266.820, z = -1105.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 93017, gadget_id = 70210101, pos = { x = 1479.710, y = 267.247, z = -1105.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 93020, gadget_id = 70210101, pos = { x = 1295.523, y = 269.247, z = -1196.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
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
		gadgets = { 93005, 93006, 93007, 93009, 93010, 93011, 93013, 93016, 93017, 93020 },
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