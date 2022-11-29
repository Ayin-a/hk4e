-- 基础信息
local base_info = {
	group_id = 133103167
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
	{ config_id = 167001, gadget_id = 70210105, pos = { x = 685.392, y = 230.700, z = 1664.838 }, rot = { x = 0.000, y = 317.731, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167002, gadget_id = 70210105, pos = { x = 690.607, y = 230.700, z = 1658.088 }, rot = { x = 0.000, y = 45.030, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167003, gadget_id = 70210105, pos = { x = 696.530, y = 230.700, z = 1662.009 }, rot = { x = 0.000, y = 322.059, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167004, gadget_id = 70210105, pos = { x = 809.371, y = 230.700, z = 1702.234 }, rot = { x = 0.000, y = 55.260, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167005, gadget_id = 70210105, pos = { x = 813.696, y = 230.700, z = 1716.157 }, rot = { x = 0.000, y = 67.329, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167006, gadget_id = 70210105, pos = { x = 868.953, y = 230.700, z = 1717.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167007, gadget_id = 70210105, pos = { x = 879.237, y = 230.700, z = 1716.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167008, gadget_id = 70210105, pos = { x = 905.419, y = 230.700, z = 1768.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167009, gadget_id = 70210105, pos = { x = 844.803, y = 230.700, z = 1788.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167010, gadget_id = 70210105, pos = { x = 947.940, y = 230.700, z = 1716.376 }, rot = { x = 0.000, y = 115.764, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167011, gadget_id = 70210105, pos = { x = 987.309, y = 230.700, z = 1720.640 }, rot = { x = 0.000, y = 84.114, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167012, gadget_id = 70210105, pos = { x = 898.929, y = 230.700, z = 1768.239 }, rot = { x = 0.000, y = 100.172, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167013, gadget_id = 70210105, pos = { x = 817.519, y = 230.700, z = 1707.357 }, rot = { x = 0.000, y = 220.179, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167014, gadget_id = 70210105, pos = { x = 751.846, y = 230.700, z = 1680.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167015, gadget_id = 70210105, pos = { x = 746.759, y = 230.700, z = 1682.914 }, rot = { x = 0.000, y = 129.227, z = 0.000 }, level = 21, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
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
		gadgets = { 167001, 167002, 167003, 167004, 167005, 167006, 167007, 167008, 167009, 167010, 167011, 167012, 167013, 167014, 167015 },
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