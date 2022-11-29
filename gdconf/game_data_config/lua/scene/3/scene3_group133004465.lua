-- 基础信息
local base_info = {
	group_id = 133004465
}

-- Trigger变量
local defs = {
	option_1 = 7,
	option_2 = 2905,
	gadget_final = 465003,
	gadget_operator = 477001,
	group_list = {133004466,133004473,133004467,133004468,133004469,133004470},
	trans_pos = {x=2638,y=484,z=-551},
	top = 465013,
	bottom = 465006,
	region_list = {465006,465007,465008,465009,465010,465012,465013},
	gallery_id = 2003,
	gadget_airwall = 465011,
	landing_Y = 470,
	operator_group_id = 133004477
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
	{ config_id = 465003, gadget_id = 70360139, pos = { x = 2635.198, y = 206.564, z = -554.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300400664, area_id = 1 },
	{ config_id = 465011, gadget_id = 70360148, pos = { x = 2638.617, y = 482.951, z = -551.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 465006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2637.761, y = 230.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465007, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2637.761, y = 285.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465008, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2637.761, y = 325.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465009, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2637.761, y = 365.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465010, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2637.761, y = 405.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465012, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2637.761, y = 445.000, z = -551.123 }, area_id = 1 },
	{ config_id = 465013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2637.761, y = 500.000, z = -551.123 }, area_id = 1 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 465001, pos = { x = 2637.807, y = 483.985, z = -553.470 }, rot = { x = 0.000, y = 215.374, z = 0.000 }, area_id = 1 },
	{ config_id = 465014, pos = { x = 2639.665, y = 483.985, z = -553.580 }, rot = { x = 0.000, y = 147.078, z = 0.000 }, area_id = 1 },
	{ config_id = 465015, pos = { x = 2639.757, y = 483.985, z = -549.479 }, rot = { x = 0.000, y = 28.953, z = 0.000 }, area_id = 1 },
	{ config_id = 465016, pos = { x = 2637.847, y = 483.985, z = -549.421 }, rot = { x = 0.000, y = 320.790, z = 0.000 }, area_id = 1 },
	{ config_id = 465017, pos = { x = 2651.477, y = 204.378, z = -547.559 }, rot = { x = 0.000, y = 53.966, z = 0.000 }, area_id = 4 }
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
		gadgets = { 465011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 465003 },
		regions = { 465006, 465007, 465008, 465009, 465010, 465012, 465013 },
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