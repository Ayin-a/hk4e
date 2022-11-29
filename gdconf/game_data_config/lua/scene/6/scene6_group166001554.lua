-- 基础信息
local base_info = {
	group_id = 166001554
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
	{ config_id = 554001, gadget_id = 70217014, pos = { x = 518.996, y = 378.430, z = 756.043 }, rot = { x = 338.664, y = 359.831, z = 0.895 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 554002, gadget_id = 70500000, pos = { x = 510.291, y = 369.763, z = 737.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 554003, gadget_id = 70500000, pos = { x = 503.347, y = 370.876, z = 738.097 }, rot = { x = 0.000, y = 41.115, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 554004, gadget_id = 70217014, pos = { x = 448.478, y = 350.803, z = 742.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 554005, gadget_id = 70217014, pos = { x = 518.973, y = 401.448, z = 553.629 }, rot = { x = 0.000, y = 222.697, z = 9.696 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 554006, gadget_id = 70217014, pos = { x = 313.967, y = 406.373, z = 557.278 }, rot = { x = 15.153, y = 354.918, z = 343.522 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 554007, gadget_id = 70217014, pos = { x = 139.265, y = 242.062, z = 627.589 }, rot = { x = 357.724, y = 184.868, z = 356.132 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		gadgets = { 554001, 554002, 554003, 554004, 554005, 554006, 554007 },
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