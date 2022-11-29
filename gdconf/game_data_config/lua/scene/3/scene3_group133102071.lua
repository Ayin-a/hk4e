-- 基础信息
local base_info = {
	group_id = 133102071
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
	{ config_id = 691, gadget_id = 70500000, pos = { x = 1277.853, y = 209.541, z = 202.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71001, gadget_id = 70500000, pos = { x = 946.034, y = 228.003, z = 162.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71002, gadget_id = 70500000, pos = { x = 1237.201, y = 209.277, z = 353.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71004, gadget_id = 70500000, pos = { x = 1139.289, y = 204.127, z = 578.965 }, rot = { x = 0.000, y = 260.137, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71005, gadget_id = 70500000, pos = { x = 1069.987, y = 238.680, z = 428.351 }, rot = { x = 0.000, y = 78.702, z = 0.000 }, level = 16, point_type = 4002, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71006, gadget_id = 70500000, pos = { x = 1576.797, y = 238.159, z = 195.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71007, gadget_id = 70500000, pos = { x = 1218.392, y = 201.249, z = -136.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 71008, gadget_id = 70500000, pos = { x = 1366.463, y = 208.764, z = 299.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 4002, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 5 }
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
		gadgets = { 691, 71001, 71002, 71004, 71005, 71006, 71007, 71008 },
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