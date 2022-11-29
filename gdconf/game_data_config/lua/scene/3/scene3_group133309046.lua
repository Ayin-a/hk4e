-- 基础信息
local base_info = {
	group_id = 133309046
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
	{ config_id = 46001, gadget_id = 70500000, pos = { x = -2315.719, y = 170.475, z = 5309.634 }, rot = { x = 0.000, y = 75.475, z = 0.000 }, level = 1, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 46002, gadget_id = 70500000, pos = { x = -2349.198, y = 336.753, z = 5529.479 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 46003, gadget_id = 70500000, pos = { x = -2422.407, y = 134.254, z = 5269.037 }, rot = { x = 0.000, y = 302.160, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 46004, gadget_id = 70500000, pos = { x = -2390.722, y = 200.952, z = 5513.574 }, rot = { x = 0.000, y = 169.996, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 46005, gadget_id = 70500000, pos = { x = -2307.931, y = 200.952, z = 5513.543 }, rot = { x = 0.000, y = 122.178, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 }
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
		gadgets = { 46001, 46002, 46003, 46004, 46005 },
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