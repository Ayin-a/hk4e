-- 基础信息
local base_info = {
	group_id = 133103256
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
	{ config_id = 256001, gadget_id = 70210063, pos = { x = 912.723, y = 296.063, z = 1136.414 }, rot = { x = 358.201, y = 27.922, z = 1.257 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 256002, gadget_id = 70210063, pos = { x = 1040.180, y = 311.801, z = 1161.397 }, rot = { x = 15.652, y = 1.183, z = 8.593 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
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
		gadgets = { 256001, 256002 },
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