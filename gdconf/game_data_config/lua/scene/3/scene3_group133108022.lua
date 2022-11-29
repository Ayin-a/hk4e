-- 基础信息
local base_info = {
	group_id = 133108022
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
	{ config_id = 22001, gadget_id = 70211101, pos = { x = -121.999, y = 200.060, z = -415.236 }, rot = { x = 356.972, y = 3.481, z = 355.435 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22002, gadget_id = 70211101, pos = { x = -111.614, y = 199.170, z = -487.069 }, rot = { x = 349.534, y = 253.509, z = 338.779 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22003, gadget_id = 70211104, pos = { x = -69.609, y = 199.482, z = -75.074 }, rot = { x = 0.000, y = 187.622, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22004, gadget_id = 70210063, pos = { x = -130.667, y = 200.148, z = -681.787 }, rot = { x = 354.037, y = 252.732, z = 1.850 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22005, gadget_id = 70211101, pos = { x = -111.875, y = 220.288, z = -908.217 }, rot = { x = 0.000, y = 187.026, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22006, gadget_id = 70211101, pos = { x = -312.841, y = 231.896, z = -610.337 }, rot = { x = 4.052, y = 84.613, z = 356.313 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22007, gadget_id = 70211101, pos = { x = -322.331, y = 223.102, z = -740.909 }, rot = { x = 357.579, y = 243.145, z = 4.913 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22008, gadget_id = 70210063, pos = { x = -241.379, y = 251.781, z = -932.327 }, rot = { x = 4.467, y = 24.091, z = 350.492 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22009, gadget_id = 70211101, pos = { x = -165.576, y = 241.043, z = -96.041 }, rot = { x = 0.000, y = 187.622, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22010, gadget_id = 70211103, pos = { x = -238.762, y = 253.262, z = -43.497 }, rot = { x = 351.932, y = 83.425, z = 355.648 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22011, gadget_id = 70211101, pos = { x = -95.406, y = 214.572, z = -189.465 }, rot = { x = 339.646, y = 60.296, z = 13.635 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22012, gadget_id = 70211101, pos = { x = -83.974, y = 230.771, z = -128.424 }, rot = { x = 358.445, y = 116.395, z = 4.718 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 22013, gadget_id = 70211111, pos = { x = -296.708, y = 212.355, z = -934.515 }, rot = { x = 5.416, y = 193.011, z = 12.046 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013 },
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