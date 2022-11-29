-- 基础信息
local base_info = {
	group_id = 133107023
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
	{ config_id = 23001, gadget_id = 70500000, pos = { x = -753.488, y = 220.572, z = 509.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23002, gadget_id = 70500000, pos = { x = -677.833, y = 284.958, z = 549.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23003, gadget_id = 70500000, pos = { x = -515.236, y = 367.015, z = 614.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23004, gadget_id = 70500000, pos = { x = -407.433, y = 424.893, z = 590.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23005, gadget_id = 70500000, pos = { x = -172.900, y = 509.811, z = 335.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23006, gadget_id = 70500000, pos = { x = -215.500, y = 428.909, z = 464.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 23007, gadget_id = 70500000, pos = { x = -428.695, y = 275.961, z = 638.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 }
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
		gadgets = { 23001, 23002, 23003, 23004, 23005, 23006, 23007 },
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