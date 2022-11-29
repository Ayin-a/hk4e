-- 基础信息
local base_info = {
	group_id = 133222004
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
	{ config_id = 4001, gadget_id = 70500000, pos = { x = -4258.468, y = 204.885, z = -4475.432 }, rot = { x = 0.000, y = 21.583, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 4003, gadget_id = 70500000, pos = { x = -4457.407, y = 204.523, z = -4346.916 }, rot = { x = 0.000, y = 302.301, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 4004, gadget_id = 70500000, pos = { x = -4298.934, y = 210.193, z = -4223.847 }, rot = { x = 0.000, y = 328.316, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 }
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
		gadgets = { 4001, 4003, 4004 },
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