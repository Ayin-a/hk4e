-- 基础信息
local base_info = {
	group_id = 133001591
}

-- Trigger变量
local defs = {
	option_1 = 7,
	option_2 = 2905,
	gadget_final = 591003,
	gadget_operator = 601001,
	group_list = {133001592,133001598,133001593,133001594,133001595,133001596},
	trans_pos = {x=1813,y=474,z=-1548},
	top = 591013,
	bottom = 591006,
	region_list = {591006,591007,591008,591009,591010,591012,591013},
	gallery_id = 2001,
	gadget_airwall = 591011,
	landing_Y = 470,
	operator_group_id = 133001601
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
	{ config_id = 591003, gadget_id = 70360139, pos = { x = 1800.096, y = 195.700, z = -1560.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300100283, area_id = 2 },
	{ config_id = 591011, gadget_id = 70360148, pos = { x = 1813.319, y = 473.803, z = -1548.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 591006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 1812.463, y = 200.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591007, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 1812.463, y = 255.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591008, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 1812.463, y = 295.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591009, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 1812.463, y = 335.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591010, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 1812.463, y = 375.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591012, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 1812.463, y = 415.000, z = -1548.486 }, area_id = 2 },
	{ config_id = 591013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 1812.463, y = 470.000, z = -1548.486 }, area_id = 2 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 591001, pos = { x = 1814.321, y = 474.837, z = -1547.029 }, rot = { x = 0.000, y = 50.812, z = 0.000 }, area_id = 2 },
	{ config_id = 591014, pos = { x = 1812.325, y = 474.837, z = -1546.974 }, rot = { x = 0.000, y = 309.696, z = 0.000 }, area_id = 2 },
	{ config_id = 591015, pos = { x = 1812.318, y = 474.837, z = -1550.759 }, rot = { x = 0.000, y = 208.492, z = 0.000 }, area_id = 2 },
	{ config_id = 591016, pos = { x = 1814.410, y = 474.837, z = -1550.780 }, rot = { x = 0.000, y = 146.830, z = 0.000 }, area_id = 2 },
	{ config_id = 591017, pos = { x = 1801.656, y = 194.762, z = -1552.205 }, rot = { x = 0.000, y = 81.496, z = 0.000 }, area_id = 2 }
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
		gadgets = { 591011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 591003 },
		regions = { 591006, 591007, 591008, 591009, 591010, 591012, 591013 },
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