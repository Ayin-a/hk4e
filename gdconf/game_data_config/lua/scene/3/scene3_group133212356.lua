-- 基础信息
local base_info = {
	group_id = 133212356
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
	{ config_id = 356001, gadget_id = 70210101, pos = { x = -3692.863, y = 231.549, z = -2506.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 },
	{ config_id = 356002, gadget_id = 70210101, pos = { x = -3699.973, y = 229.773, z = -2518.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 },
	{ config_id = 356003, gadget_id = 70210101, pos = { x = -3706.179, y = 229.538, z = -2521.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 },
	{ config_id = 356004, gadget_id = 70210101, pos = { x = -3701.282, y = 230.617, z = -2512.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 13 },
	{ config_id = 356005, gadget_id = 70210105, pos = { x = -3472.816, y = 200.122, z = -2841.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 356006, gadget_id = 70210105, pos = { x = -3477.104, y = 200.000, z = -2844.840 }, rot = { x = 0.000, y = 171.923, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 356007, gadget_id = 70210105, pos = { x = -3505.275, y = 200.000, z = -2862.229 }, rot = { x = 0.000, y = 209.273, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 356008, gadget_id = 70210105, pos = { x = -3585.223, y = 200.000, z = -2586.801 }, rot = { x = 0.000, y = 209.273, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 356009, gadget_id = 70210105, pos = { x = -3584.485, y = 200.000, z = -2589.136 }, rot = { x = 0.000, y = 356.612, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 356010, gadget_id = 70210105, pos = { x = -3370.766, y = 200.000, z = -2675.283 }, rot = { x = 0.000, y = 285.113, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 356011, gadget_id = 70210101, pos = { x = -3522.789, y = 200.832, z = -2748.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", area_id = 13 },
	{ config_id = 356012, gadget_id = 70210101, pos = { x = -3575.722, y = 201.083, z = -2811.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 13 },
	{ config_id = 356013, gadget_id = 70210101, pos = { x = -3813.804, y = 238.383, z = -2121.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 13 },
	{ config_id = 356014, gadget_id = 70210101, pos = { x = -4067.598, y = 239.973, z = -2411.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 },
	{ config_id = 356015, gadget_id = 70210101, pos = { x = -3693.882, y = 232.067, z = -2508.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 356016, gadget_id = 70210101, pos = { x = -3694.475, y = 231.609, z = -2507.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 356017, gadget_id = 70210101, pos = { x = -3699.144, y = 228.526, z = -2524.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 356018, gadget_id = 70210101, pos = { x = -3706.278, y = 230.373, z = -2520.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 }
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
		gadgets = { 356001, 356002, 356003, 356004, 356005, 356006, 356007, 356008, 356009, 356010, 356011, 356012, 356013, 356014, 356015, 356016, 356017, 356018 },
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