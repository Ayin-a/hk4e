-- 基础信息
local base_info = {
	group_id = 133108025
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
	{ config_id = 25001, gadget_id = 70500000, pos = { x = -123.952, y = 203.507, z = -568.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 25002, gadget_id = 70500000, pos = { x = -105.746, y = 241.991, z = -905.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 25003, gadget_id = 70500000, pos = { x = -347.156, y = 256.494, z = -740.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 25004, gadget_id = 70500000, pos = { x = -61.240, y = 274.022, z = -28.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 },
	{ config_id = 25005, gadget_id = 70500000, pos = { x = -212.141, y = 317.819, z = -1016.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 7 }
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
		gadgets = { 25001, 25002, 25003, 25004, 25005 },
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