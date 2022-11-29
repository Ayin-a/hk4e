-- 基础信息
local base_info = {
	group_id = 133008365
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
	{ config_id = 365002, gadget_id = 70211104, pos = { x = 1130.204, y = 505.079, z = -804.869 }, rot = { x = 354.845, y = 66.107, z = 349.797 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 365003, gadget_id = 70211104, pos = { x = 1149.704, y = 502.569, z = -830.056 }, rot = { x = 354.845, y = 83.852, z = 349.797 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 365004, gadget_id = 70211104, pos = { x = 996.599, y = 477.761, z = -759.608 }, rot = { x = 354.845, y = 18.325, z = 349.797 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 365005, gadget_id = 70211145, pos = { x = 1031.291, y = 503.680, z = -896.228 }, rot = { x = 354.845, y = 18.325, z = 349.797 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 365006, gadget_id = 70211101, pos = { x = 1033.390, y = 503.616, z = -897.451 }, rot = { x = 342.427, y = 76.729, z = 41.413 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 365007, gadget_id = 70211101, pos = { x = 1044.390, y = 465.736, z = -879.558 }, rot = { x = 0.000, y = 157.910, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
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
		gadgets = { 365002, 365003, 365004, 365005, 365006, 365007 },
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