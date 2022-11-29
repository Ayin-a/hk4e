-- 基础信息
local base_info = {
	group_id = 133106621
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 621002, monster_id = 28030402, pos = { x = -1059.474, y = 314.700, z = 1717.820 }, rot = { x = 0.000, y = 268.837, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 621003, monster_id = 28030402, pos = { x = -1053.701, y = 312.385, z = 1717.129 }, rot = { x = 0.000, y = 268.837, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 621007, monster_id = 20010201, pos = { x = -1026.277, y = 262.353, z = 1769.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 621008, monster_id = 20010101, pos = { x = -1030.838, y = 261.596, z = 1773.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 621009, monster_id = 20010101, pos = { x = -1024.376, y = 260.995, z = 1772.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 621013, monster_id = 28030402, pos = { x = -1057.295, y = 312.896, z = 1721.268 }, rot = { x = 0.000, y = 37.008, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 621001, gadget_id = 70290200, pos = { x = -938.387, y = 212.428, z = 1794.469 }, rot = { x = 0.000, y = 138.333, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 621004, gadget_id = 70217014, pos = { x = -926.540, y = 220.498, z = 1768.377 }, rot = { x = 7.640, y = 72.255, z = 351.056 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 621005, gadget_id = 70210101, pos = { x = -945.947, y = 225.666, z = 1704.067 }, rot = { x = 0.000, y = 104.153, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 621006, gadget_id = 70210101, pos = { x = -925.994, y = 222.361, z = 1715.148 }, rot = { x = 0.000, y = 351.907, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, area_id = 19 },
	{ config_id = 621010, gadget_id = 70290200, pos = { x = -1002.189, y = 238.860, z = 1737.447 }, rot = { x = 15.564, y = 140.088, z = 12.785 }, level = 36, area_id = 19 },
	{ config_id = 621011, gadget_id = 70217014, pos = { x = -1027.866, y = 262.061, z = 1772.428 }, rot = { x = 2.360, y = 265.084, z = 356.991 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 621012, gadget_id = 70290200, pos = { x = -1009.260, y = 249.080, z = 1811.982 }, rot = { x = 6.265, y = 99.448, z = 17.027 }, level = 36, area_id = 19 },
	{ config_id = 621016, gadget_id = 70217014, pos = { x = -964.066, y = 261.437, z = 1610.891 }, rot = { x = 2.606, y = 290.536, z = 335.721 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
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
		monsters = { 621002, 621003, 621007, 621008, 621009, 621013 },
		gadgets = { 621001, 621004, 621005, 621006, 621010, 621011, 621012, 621016 },
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