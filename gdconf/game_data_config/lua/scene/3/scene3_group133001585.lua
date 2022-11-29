-- 基础信息
local base_info = {
	group_id = 133001585
}

-- Trigger变量
local defs = {
	option_1 = 7,
	option_2 = 2905,
	gadget_final = 585003,
	gadget_operator = 602001,
	group_list = {133001586,133001597,133001587,133001588,133001589,133001590},
	trans_pos = {x=2026,y=478,z=-1267},
	top = 585013,
	bottom = 585006,
	region_list = {585006,585007,585008,585009,585010,585012,585013},
	gallery_id = 2002,
	gadget_airwall = 585011,
	landing_Y = 470,
	operator_group_id = 133001602
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
	{ config_id = 585003, gadget_id = 70360139, pos = { x = 2013.499, y = 199.618, z = -1279.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300100282, area_id = 2 },
	{ config_id = 585011, gadget_id = 70360148, pos = { x = 2026.722, y = 477.720, z = -1267.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 585006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2025.866, y = 225.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585007, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2025.866, y = 280.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585008, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2025.866, y = 320.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585009, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2025.866, y = 360.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585010, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2025.866, y = 400.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585012, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2025.866, y = 440.000, z = -1267.533 }, area_id = 2 },
	{ config_id = 585013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2025.866, y = 495.000, z = -1267.533 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 585001, pos = { x = 2027.449, y = 478.754, z = -1269.568 }, rot = { x = 0.000, y = 143.526, z = 0.000 }, area_id = 2 },
	{ config_id = 585014, pos = { x = 2025.754, y = 478.754, z = -1269.585 }, rot = { x = 0.000, y = 213.710, z = 0.000 }, area_id = 2 },
	{ config_id = 585015, pos = { x = 2027.604, y = 478.754, z = -1266.069 }, rot = { x = 0.000, y = 43.000, z = 0.000 }, area_id = 2 },
	{ config_id = 585016, pos = { x = 2025.922, y = 478.754, z = -1266.065 }, rot = { x = 0.000, y = 315.531, z = 0.000 }, area_id = 2 },
	{ config_id = 585017, pos = { x = 2028.234, y = 198.606, z = -1255.106 }, rot = { x = 0.000, y = 131.866, z = 0.000 }, area_id = 2 }
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
		gadgets = { 585011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 585003 },
		regions = { 585006, 585007, 585008, 585009, 585010, 585012, 585013 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "FleurFair_Parachute"