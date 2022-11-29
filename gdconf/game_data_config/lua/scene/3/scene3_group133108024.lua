-- 基础信息
local base_info = {
	group_id = 133108024
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
	{ config_id = 24001, gadget_id = 70210108, pos = { x = -190.793, y = 209.947, z = -456.359 }, rot = { x = 28.489, y = 265.749, z = 351.404 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24002, gadget_id = 70210108, pos = { x = -103.503, y = 210.581, z = -893.894 }, rot = { x = 358.531, y = 80.424, z = 345.764 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24003, gadget_id = 70210108, pos = { x = -332.703, y = 201.059, z = -890.741 }, rot = { x = 284.500, y = 117.039, z = 328.444 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24004, gadget_id = 70210108, pos = { x = -314.260, y = 201.666, z = -590.051 }, rot = { x = 335.339, y = 24.573, z = 355.967 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24005, gadget_id = 70210108, pos = { x = -290.038, y = 253.067, z = -974.898 }, rot = { x = 342.236, y = 218.602, z = 180.921 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24006, gadget_id = 70210108, pos = { x = -260.877, y = 207.005, z = -1012.400 }, rot = { x = 0.877, y = 53.487, z = 5.311 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24007, gadget_id = 70210108, pos = { x = -401.786, y = 217.446, z = -709.840 }, rot = { x = 7.278, y = 85.455, z = 6.430 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24008, gadget_id = 70210108, pos = { x = -286.172, y = 237.844, z = -966.290 }, rot = { x = 2.281, y = 64.585, z = 1.141 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24009, gadget_id = 70210108, pos = { x = -221.805, y = 302.884, z = -1015.972 }, rot = { x = 331.632, y = 279.231, z = 345.318 }, level = 26, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 },
	{ config_id = 24010, gadget_id = 70210108, pos = { x = -107.381, y = 225.636, z = -218.449 }, rot = { x = 342.705, y = 178.825, z = 0.763 }, level = 16, drop_tag = "一次性搜刮点峭壁深色璃月", isOneoff = true, persistent = true, autopick = true, area_id = 7 }
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
		gadgets = { 24001, 24002, 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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