-- 基础信息
local base_info = {
	group_id = 133007215
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
	{ config_id = 931, gadget_id = 70211101, pos = { x = 2154.396, y = 210.304, z = -13.359 }, rot = { x = 0.000, y = 195.038, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 932, gadget_id = 70211101, pos = { x = 2055.486, y = 219.616, z = -44.533 }, rot = { x = 1.776, y = 13.308, z = 350.383 }, level = 16, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 933, gadget_id = 70211101, pos = { x = 2336.344, y = 232.906, z = -79.751 }, rot = { x = 9.261, y = 13.308, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 934, gadget_id = 70211101, pos = { x = 2352.040, y = 248.046, z = -87.007 }, rot = { x = 9.261, y = 13.308, z = 0.000 }, level = 16, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		gadgets = { 931, 932, 933, 934 },
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