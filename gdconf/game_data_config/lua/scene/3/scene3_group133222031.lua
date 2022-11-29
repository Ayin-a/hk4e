-- 基础信息
local base_info = {
	group_id = 133222031
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
	{ config_id = 31001, gadget_id = 70500000, pos = { x = -4360.221, y = 296.322, z = -4230.145 }, rot = { x = 0.000, y = 29.920, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 31002, gadget_id = 70500000, pos = { x = -4311.222, y = 244.586, z = -4161.875 }, rot = { x = 0.000, y = 97.633, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 31003, gadget_id = 70500000, pos = { x = -4350.837, y = 207.285, z = -4265.583 }, rot = { x = 0.000, y = 97.633, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 }
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
		gadgets = { 31001, 31002, 31003 },
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