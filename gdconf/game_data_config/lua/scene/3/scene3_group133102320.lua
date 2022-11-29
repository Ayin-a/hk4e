-- 基础信息
local base_info = {
	group_id = 133102320
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
	{ config_id = 320018, gadget_id = 70500000, pos = { x = 1537.266, y = 247.339, z = 750.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320024, gadget_id = 70500000, pos = { x = 1718.294, y = 262.779, z = 580.434 }, rot = { x = 0.000, y = 11.357, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320037, gadget_id = 70500000, pos = { x = 1436.716, y = 199.984, z = 371.072 }, rot = { x = 0.000, y = 301.888, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320038, gadget_id = 70500000, pos = { x = 1965.487, y = 215.805, z = 853.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320051, gadget_id = 70500000, pos = { x = 1946.234, y = 252.895, z = 621.695 }, rot = { x = 4.622, y = 350.537, z = 4.409 }, level = 1, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320054, gadget_id = 70500000, pos = { x = 1677.542, y = 414.338, z = 518.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 },
	{ config_id = 320085, gadget_id = 70500000, pos = { x = 1706.794, y = 244.185, z = 764.591 }, rot = { x = 0.000, y = 64.610, z = 0.000 }, level = 18, point_type = 4002, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 5 }
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
		gadgets = { 320018, 320024, 320037, 320038, 320051, 320054, 320085 },
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