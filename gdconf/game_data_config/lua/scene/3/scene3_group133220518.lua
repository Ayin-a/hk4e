-- 基础信息
local base_info = {
	group_id = 133220518
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 518008, monster_id = 21010101, pos = { x = -2767.159, y = 200.008, z = -3997.525 }, rot = { x = 0.000, y = 265.761, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518001, gadget_id = 70211001, pos = { x = -2769.979, y = 199.640, z = -3997.990 }, rot = { x = 340.437, y = 90.125, z = 347.539 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518002, gadget_id = 70210101, pos = { x = -2756.061, y = 200.561, z = -4023.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518003, gadget_id = 70210101, pos = { x = -2757.123, y = 200.136, z = -4021.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518004, gadget_id = 70210101, pos = { x = -2747.462, y = 200.602, z = -4022.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518005, gadget_id = 70210105, pos = { x = -2759.802, y = 200.000, z = -4007.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518006, gadget_id = 70210105, pos = { x = -2719.787, y = 200.000, z = -4005.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518007, gadget_id = 70210105, pos = { x = -2746.863, y = 200.000, z = -4017.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518009, gadget_id = 70210105, pos = { x = -2728.115, y = 200.000, z = -4014.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518010, gadget_id = 70210105, pos = { x = -2755.951, y = 200.000, z = -3992.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 518011, gadget_id = 70210101, pos = { x = -2722.137, y = 201.298, z = -3955.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518012, gadget_id = 70210101, pos = { x = -2720.961, y = 201.264, z = -3954.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518013, gadget_id = 70210101, pos = { x = -2711.693, y = 201.374, z = -4011.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518014, gadget_id = 70210101, pos = { x = -2710.201, y = 201.342, z = -4011.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 518015, gadget_id = 70210101, pos = { x = -2698.787, y = 201.252, z = -4005.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		monsters = { 518008 },
		gadgets = { 518001, 518002, 518003, 518004, 518005, 518006, 518007, 518009, 518010, 518011, 518012, 518013, 518014, 518015 },
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