-- 基础信息
local base_info = {
	group_id = 240012007
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
	{ config_id = 5, gadget_id = 70211012, pos = { x = 533.383, y = -1.984, z = 251.734 }, rot = { x = 0.000, y = 181.316, z = 0.000 }, level = 1, chest_drop_id = 18000200, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 6, gadget_id = 70211002, pos = { x = 540.288, y = -2.000, z = 247.833 }, rot = { x = 0.000, y = 181.562, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 7, gadget_id = 70211002, pos = { x = 525.825, y = -2.000, z = 247.960 }, rot = { x = 0.000, y = 178.797, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
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
		gadgets = { 5, 6, 7 },
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