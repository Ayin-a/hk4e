-- 基础信息
local base_info = {
	group_id = 133225061
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
	{ config_id = 61001, gadget_id = 70210101, pos = { x = -6290.117, y = 200.000, z = -2415.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61002, gadget_id = 70210101, pos = { x = -6307.305, y = 200.000, z = -2400.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61003, gadget_id = 70210101, pos = { x = -6299.764, y = 200.251, z = -2400.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61004, gadget_id = 70210101, pos = { x = -6365.329, y = 200.570, z = -2415.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61005, gadget_id = 70210101, pos = { x = -6368.585, y = 201.012, z = -2417.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61006, gadget_id = 70210101, pos = { x = -6284.448, y = 200.000, z = -2379.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61007, gadget_id = 70210101, pos = { x = -6253.539, y = 200.000, z = -2409.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61008, gadget_id = 70210101, pos = { x = -6252.001, y = 200.000, z = -2402.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61009, gadget_id = 70210101, pos = { x = -6255.386, y = 200.000, z = -2404.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61010, gadget_id = 70210101, pos = { x = -6413.017, y = 200.000, z = -2374.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61011, gadget_id = 70210101, pos = { x = -6417.349, y = 200.089, z = -2372.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 },
	{ config_id = 61012, gadget_id = 70210101, pos = { x = -6418.748, y = 200.242, z = -2385.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, area_id = 18 }
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
		gadgets = { 61001, 61002, 61003, 61004, 61005, 61006, 61007, 61008, 61009, 61010, 61011, 61012 },
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