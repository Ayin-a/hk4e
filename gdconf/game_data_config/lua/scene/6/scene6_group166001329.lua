-- 基础信息
local base_info = {
	group_id = 166001329
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329011, monster_id = 28050301, pos = { x = 1103.864, y = 952.208, z = 489.465 }, rot = { x = 0.000, y = 72.812, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 329001, gadget_id = 70210101, pos = { x = 1008.081, y = 971.632, z = 692.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 329002, gadget_id = 70220048, pos = { x = 1097.318, y = 962.932, z = 667.648 }, rot = { x = 0.000, y = 308.630, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 329003, gadget_id = 70211101, pos = { x = 1013.625, y = 988.084, z = 689.435 }, rot = { x = 1.039, y = 179.676, z = 1.516 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 329004, gadget_id = 70220048, pos = { x = 1096.577, y = 963.030, z = 666.294 }, rot = { x = 0.000, y = 36.815, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 329005, gadget_id = 70211001, pos = { x = 1100.249, y = 963.098, z = 667.528 }, rot = { x = 0.000, y = 247.934, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 329006, gadget_id = 70210101, pos = { x = 1095.784, y = 962.716, z = 682.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 329007, gadget_id = 70210101, pos = { x = 1073.345, y = 961.668, z = 689.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 329008, gadget_id = 70220052, pos = { x = 1060.039, y = 961.557, z = 682.421 }, rot = { x = 0.000, y = 91.293, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 329009, gadget_id = 70220052, pos = { x = 1065.034, y = 960.672, z = 679.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 329010, gadget_id = 70210101, pos = { x = 1113.633, y = 960.384, z = 564.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 329012, gadget_id = 70210101, pos = { x = 1024.158, y = 947.759, z = 652.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 329013, gadget_id = 70210101, pos = { x = 1013.219, y = 945.578, z = 637.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 329014, gadget_id = 70220048, pos = { x = 977.397, y = 957.477, z = 531.361 }, rot = { x = 0.000, y = 21.292, z = 0.000 }, level = 36, area_id = 300 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 329015, gadget_id = 70500000, pos = { x = 1012.365, y = 909.968, z = 661.723 }, rot = { x = 0.000, y = 350.839, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 }
	}
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
		monsters = { 329011 },
		gadgets = { 329001, 329002, 329003, 329004, 329005, 329006, 329007, 329008, 329009, 329010, 329012, 329013, 329014 },
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