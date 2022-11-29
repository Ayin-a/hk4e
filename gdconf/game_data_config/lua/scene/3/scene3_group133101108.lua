-- 基础信息
local base_info = {
	group_id = 133101108
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
	{ config_id = 108001, gadget_id = 70500000, pos = { x = 1404.169, y = 212.183, z = 1021.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 108002, gadget_id = 70500000, pos = { x = 1607.103, y = 206.996, z = 1143.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 108003, gadget_id = 70500000, pos = { x = 1393.948, y = 233.250, z = 1245.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 108004, gadget_id = 70500000, pos = { x = 1442.931, y = 255.545, z = 1296.501 }, rot = { x = 0.000, y = 291.393, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 }
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
		gadgets = { 108001, 108002, 108003, 108004 },
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