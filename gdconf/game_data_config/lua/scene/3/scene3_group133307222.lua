-- 基础信息
local base_info = {
	group_id = 133307222
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
	{ config_id = 222001, gadget_id = 70500000, pos = { x = -1404.705, y = 1.633, z = 5370.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 222002, gadget_id = 70500000, pos = { x = -1397.249, y = 39.134, z = 5249.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 222003, gadget_id = 70500000, pos = { x = -1283.562, y = 24.597, z = 5427.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 222004, gadget_id = 70500000, pos = { x = -1190.484, y = -2.562, z = 5496.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 32 }
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
		gadgets = { 222001, 222002, 222003, 222004 },
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