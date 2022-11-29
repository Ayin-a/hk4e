-- 基础信息
local base_info = {
	group_id = 177005022
}

-- DEFS_MISCS
local BlackBall = {22020,22021,22022,22023,22024,22025,22027}

local wall_1 = 22004
local wall_2 = 22005
local wall_3 = 22006

local monster_1 = 22001  
local monster_2 = 22002

local bright_area = 22019

local enter_battle_region = 22003

local groupID = 177005022

local questID = 400511301

local vision_region = 22028

local vision_type_id = 70050001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[22001] = { config_id = 22001, monster_id = 26050802, pos = { x = 290.267, y = 225.000, z = 248.937 }, rot = { x = 0.000, y = 202.864, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5145, 5149 }, area_id = 210 },
	[22002] = { config_id = 22002, monster_id = 26050702, pos = { x = 247.368, y = 225.000, z = 247.161 }, rot = { x = 0.000, y = 118.243, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5145, 5149 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[22004] = { config_id = 22004, gadget_id = 70290245, pos = { x = 242.391, y = 223.596, z = 232.743 }, rot = { x = 0.000, y = 306.496, z = 0.000 }, level = 1, mark_flag = 13, area_id = 210 },
	[22005] = { config_id = 22005, gadget_id = 70290246, pos = { x = 297.849, y = 223.204, z = 230.655 }, rot = { x = 0.000, y = 54.284, z = 0.000 }, level = 1, mark_flag = 14, area_id = 210 },
	[22006] = { config_id = 22006, gadget_id = 70290247, pos = { x = 270.388, y = 223.077, z = 178.727 }, rot = { x = 0.000, y = 177.754, z = 0.000 }, level = 1, mark_flag = 15, area_id = 210 },
	[22007] = { config_id = 22007, gadget_id = 70350356, pos = { x = 252.064, y = 225.394, z = 242.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1, area_id = 210 },
	[22008] = { config_id = 22008, gadget_id = 70350356, pos = { x = 287.064, y = 225.394, z = 242.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2, area_id = 210 },
	[22009] = { config_id = 22009, gadget_id = 70350356, pos = { x = 262.864, y = 225.394, z = 232.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3, area_id = 210 },
	[22010] = { config_id = 22010, gadget_id = 70350356, pos = { x = 276.264, y = 225.394, z = 232.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 4, area_id = 210 },
	[22011] = { config_id = 22011, gadget_id = 70350356, pos = { x = 262.864, y = 225.394, z = 192.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5, area_id = 210 },
	[22012] = { config_id = 22012, gadget_id = 70350356, pos = { x = 276.264, y = 225.394, z = 192.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 6, area_id = 210 },
	[22013] = { config_id = 22013, gadget_id = 70350356, pos = { x = 254.064, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 7, area_id = 210 },
	[22014] = { config_id = 22014, gadget_id = 70350356, pos = { x = 285.064, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 8, area_id = 210 },
	[22015] = { config_id = 22015, gadget_id = 70350356, pos = { x = 257.684, y = 225.394, z = 224.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 9, area_id = 210 },
	[22016] = { config_id = 22016, gadget_id = 70350356, pos = { x = 281.443, y = 225.394, z = 224.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 10, area_id = 210 },
	[22017] = { config_id = 22017, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 195.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 11, area_id = 210 },
	[22018] = { config_id = 22018, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 212.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 12, area_id = 210 },
	[22019] = { config_id = 22019, gadget_id = 70330147, pos = { x = 269.149, y = 225.500, z = 212.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 700500012, area_id = 210 },
	[22020] = { config_id = 22020, gadget_id = 42605048, pos = { x = 258.589, y = 226.562, z = 195.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22021] = { config_id = 22021, gadget_id = 42605048, pos = { x = 277.340, y = 226.530, z = 194.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22022] = { config_id = 22022, gadget_id = 42605048, pos = { x = 286.314, y = 226.562, z = 209.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22023] = { config_id = 22023, gadget_id = 42605048, pos = { x = 274.676, y = 226.562, z = 229.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22024] = { config_id = 22024, gadget_id = 42605048, pos = { x = 258.292, y = 226.562, z = 226.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22025] = { config_id = 22025, gadget_id = 42605048, pos = { x = 249.030, y = 226.562, z = 210.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22026] = { config_id = 22026, gadget_id = 42605048, pos = { x = 261.655, y = 226.562, z = 210.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22027] = { config_id = 22027, gadget_id = 42605048, pos = { x = 274.070, y = 226.562, z = 215.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	[22030] = { config_id = 22030, gadget_id = 70350356, pos = { x = 243.583, y = 225.394, z = 227.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 13, area_id = 210 },
	[22031] = { config_id = 22031, gadget_id = 70350356, pos = { x = 295.544, y = 225.394, z = 227.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 14, area_id = 210 },
	[22032] = { config_id = 22032, gadget_id = 70350356, pos = { x = 269.564, y = 225.394, z = 182.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 15, area_id = 210 }
}

-- 区域
regions = {
	[22003] = { config_id = 22003, shape = RegionShape.SPHERE, radius = 32, pos = { x = 269.700, y = 225.403, z = 212.434 }, area_id = 210 },
	[22028] = { config_id = 22028, shape = RegionShape.SPHERE, radius = 90, pos = { x = 269.700, y = 225.403, z = 212.434 }, area_id = 210, vision_type_list = { 70050001 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 22004, 22005, 22006, 22001, 22002, 22019, 22020, 22021, 22022, 22023, 22024, 22025, 22026, 22027 }
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
		gadgets = { 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016, 22017, 22018, 22030, 22031, 22032 },
		regions = { 22003, 22028 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 22001, 22002 },
		gadgets = { 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016, 22017, 22018, 22030, 22031, 22032 },
		regions = { 22003, 22028 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/GiliGiliI_Quest"