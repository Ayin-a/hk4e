-- 基础信息
local base_info = {
	group_id = 133002298
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
	{ config_id = 298001, gadget_id = 70211101, pos = { x = 1732.223, y = 264.853, z = -87.577 }, rot = { x = 345.108, y = 359.082, z = 7.014 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 298003, gadget_id = 70211104, pos = { x = 1689.308, y = 224.228, z = 22.983 }, rot = { x = 0.000, y = 285.990, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 298004, gadget_id = 70211103, pos = { x = 1750.279, y = 229.015, z = -49.392 }, rot = { x = 0.000, y = 109.320, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		gadgets = { 298001, 298003, 298004 },
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