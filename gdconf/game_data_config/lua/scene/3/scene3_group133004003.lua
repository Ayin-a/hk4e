-- 基础信息
local base_info = {
	group_id = 133004003
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
	{ config_id = 3, gadget_id = 70211101, pos = { x = 2346.604, y = 238.435, z = -855.981 }, rot = { x = 0.000, y = 25.133, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4, gadget_id = 70211101, pos = { x = 2263.851, y = 239.899, z = -833.769 }, rot = { x = 0.000, y = 27.100, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 5, gadget_id = 70211101, pos = { x = 2165.886, y = 225.592, z = -825.126 }, rot = { x = 0.000, y = 298.744, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 6, gadget_id = 70211101, pos = { x = 2199.774, y = 210.856, z = -917.710 }, rot = { x = 0.000, y = 339.700, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 8, gadget_id = 70211101, pos = { x = 2186.683, y = 210.118, z = -873.668 }, rot = { x = 0.000, y = 253.100, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 9, gadget_id = 70211101, pos = { x = 2319.165, y = 214.091, z = -923.517 }, rot = { x = 0.000, y = 53.131, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 10, gadget_id = 70211101, pos = { x = 2229.213, y = 236.110, z = -752.519 }, rot = { x = 0.000, y = 73.000, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 11, gadget_id = 70211101, pos = { x = 2286.593, y = 236.515, z = -876.502 }, rot = { x = 0.000, y = 297.400, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = 蒙德城内宝箱,
		monsters = { },
		gadgets = { 3, 4, 5, 6, 8, 9, 10, 11 },
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