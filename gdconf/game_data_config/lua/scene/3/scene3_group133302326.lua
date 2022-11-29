-- 基础信息
local base_info = {
	group_id = 133302326
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
	{ config_id = 326001, gadget_id = 70210105, pos = { x = -687.344, y = 200.000, z = 2835.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326002, gadget_id = 70210105, pos = { x = -799.121, y = 200.000, z = 2819.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326003, gadget_id = 70210105, pos = { x = -865.398, y = 200.000, z = 2739.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326004, gadget_id = 70210105, pos = { x = -574.391, y = 200.000, z = 2830.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326005, gadget_id = 70210105, pos = { x = -498.797, y = 200.000, z = 2911.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326006, gadget_id = 70210105, pos = { x = -346.606, y = 200.000, z = 2980.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 326007, gadget_id = 70210105, pos = { x = -430.626, y = 200.000, z = 3064.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
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
		gadgets = { 326001, 326002, 326003, 326004, 326005, 326006, 326007 },
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