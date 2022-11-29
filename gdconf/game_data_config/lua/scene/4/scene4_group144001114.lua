-- 基础信息
local base_info = {
	group_id = 144001114
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
	{ config_id = 114001, gadget_id = 70211101, pos = { x = 724.302, y = 120.279, z = 225.332 }, rot = { x = 0.000, y = 260.976, z = 350.113 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 114002, gadget_id = 70211101, pos = { x = 760.125, y = 130.515, z = 199.217 }, rot = { x = 355.041, y = 138.606, z = 340.676 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 114003, gadget_id = 70211101, pos = { x = 801.374, y = 132.267, z = 322.507 }, rot = { x = 0.000, y = 0.000, z = 13.255 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 114004, gadget_id = 70211101, pos = { x = 757.309, y = 169.714, z = 194.866 }, rot = { x = 28.053, y = 149.161, z = 358.052 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
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
		gadgets = { 114001, 114002, 114003, 114004 },
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