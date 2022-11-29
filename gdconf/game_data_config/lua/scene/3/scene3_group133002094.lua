-- 基础信息
local base_info = {
	group_id = 133002094
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
	{ config_id = 1330, gadget_id = 70211101, pos = { x = 1941.470, y = 246.354, z = -911.939 }, rot = { x = 0.000, y = 97.886, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1331, gadget_id = 70211101, pos = { x = 1741.591, y = 256.850, z = -825.970 }, rot = { x = 0.000, y = 285.775, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1337, gadget_id = 70211101, pos = { x = 1970.727, y = 240.123, z = -370.910 }, rot = { x = 0.000, y = 318.381, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1491, gadget_id = 70211101, pos = { x = 1954.817, y = 217.615, z = -643.169 }, rot = { x = 1.748, y = 1.897, z = 7.447 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		-- description = ,
		monsters = { },
		gadgets = { 1330, 1331, 1337, 1491 },
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