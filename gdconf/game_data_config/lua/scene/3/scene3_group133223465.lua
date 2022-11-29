-- 基础信息
local base_info = {
	group_id = 133223465
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
	{ config_id = 465001, gadget_id = 70210105, pos = { x = -6288.519, y = 200.000, z = -2407.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 465002, gadget_id = 70210105, pos = { x = -6298.314, y = 200.000, z = -2403.477 }, rot = { x = 0.000, y = 324.449, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 465003, gadget_id = 70210105, pos = { x = -6284.952, y = 200.000, z = -2413.968 }, rot = { x = 0.000, y = 337.781, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 465004, gadget_id = 70210105, pos = { x = -6364.124, y = 200.000, z = -2409.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 465005, gadget_id = 70210105, pos = { x = -6371.985, y = 200.000, z = -2421.022 }, rot = { x = 0.000, y = 302.801, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
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
		gadgets = { 465001, 465002, 465003, 465004, 465005 },
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