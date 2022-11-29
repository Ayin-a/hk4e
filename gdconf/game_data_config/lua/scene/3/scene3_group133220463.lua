-- 基础信息
local base_info = {
	group_id = 133220463
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
	{ config_id = 463001, gadget_id = 70210105, pos = { x = -2259.705, y = 200.000, z = -4819.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463002, gadget_id = 70210105, pos = { x = -2252.240, y = 200.000, z = -4823.757 }, rot = { x = 0.000, y = 297.529, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463003, gadget_id = 70210105, pos = { x = -2278.369, y = 200.000, z = -4821.377 }, rot = { x = 0.000, y = 297.529, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463004, gadget_id = 70210105, pos = { x = -2260.009, y = 200.000, z = -4850.854 }, rot = { x = 0.000, y = 297.529, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463005, gadget_id = 70210105, pos = { x = -2248.989, y = 200.000, z = -4814.205 }, rot = { x = 0.000, y = 297.529, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463006, gadget_id = 70210105, pos = { x = -2229.708, y = 200.000, z = -4914.048 }, rot = { x = 0.000, y = 336.212, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463007, gadget_id = 70210105, pos = { x = -2228.535, y = 200.000, z = -4920.200 }, rot = { x = 0.000, y = 277.676, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 463008, gadget_id = 70210101, pos = { x = -2218.223, y = 200.619, z = -4912.950 }, rot = { x = 0.000, y = 277.676, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 463009, gadget_id = 70210101, pos = { x = -2220.620, y = 200.525, z = -4910.725 }, rot = { x = 0.000, y = 277.676, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 463010, gadget_id = 70210101, pos = { x = -2222.354, y = 208.770, z = -4907.232 }, rot = { x = 0.000, y = 277.676, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		gadgets = { 463001, 463002, 463003, 463004, 463005, 463006, 463007, 463008, 463009, 463010 },
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