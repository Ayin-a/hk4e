-- 基础信息
local base_info = {
	group_id = 133103230
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
	{ config_id = 230001, gadget_id = 70211101, pos = { x = 713.214, y = 152.875, z = 1157.635 }, rot = { x = 335.964, y = 183.474, z = 11.591 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 230002, gadget_id = 70211101, pos = { x = 697.521, y = 152.625, z = 1272.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 230003, gadget_id = 70210063, pos = { x = 718.523, y = 157.376, z = 1257.788 }, rot = { x = 0.000, y = 263.875, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 230004, gadget_id = 70210107, pos = { x = 727.617, y = 160.854, z = 1242.155 }, rot = { x = 356.273, y = 213.705, z = 358.876 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 230005, gadget_id = 70210063, pos = { x = 648.450, y = 152.623, z = 1270.679 }, rot = { x = 8.786, y = 343.127, z = 7.473 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
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
		gadgets = { 230001, 230002, 230003, 230004, 230005 },
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