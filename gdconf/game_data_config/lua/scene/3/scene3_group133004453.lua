-- 基础信息
local base_info = {
	group_id = 133004453
}

-- Trigger变量
local defs = {
	option_1 = 7,
	option_2 = 2905,
	gadget_final = 453012,
	gadget_operator = 476001,
	group_list = {133004454,133004472,133004455,133004456,133004457,133004458},
	trans_pos = {x=2771,y=487,z=12},
	top = 453013,
	bottom = 453004,
	region_list = {453004,453006,453007,453008,453009,453011,453013},
	gallery_id = 2004,
	gadget_airwall = 453010,
	landing_Y = 470,
	operator_group_id = 133004476
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
	{ config_id = 453010, gadget_id = 70360148, pos = { x = 2772.461, y = 486.119, z = 12.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 453012, gadget_id = 70360139, pos = { x = 2769.042, y = 209.733, z = 9.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300400663, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 453004, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2771.604, y = 230.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2771.604, y = 285.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453007, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2771.604, y = 325.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453008, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2771.604, y = 365.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453009, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2771.604, y = 405.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453011, shape = RegionShape.CUBIC, size = { x = 100.000, y = 40.000, z = 100.000 }, pos = { x = 2771.604, y = 445.000, z = 12.700 }, area_id = 4 },
	{ config_id = 453013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 2771.604, y = 500.000, z = 12.700 }, area_id = 4 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 453001, pos = { x = 2773.408, y = 487.165, z = 10.662 }, rot = { x = 0.000, y = 129.229, z = 0.000 }, area_id = 4 },
	{ config_id = 453014, pos = { x = 2771.735, y = 487.165, z = 10.556 }, rot = { x = 0.000, y = 234.750, z = 0.000 }, area_id = 4 },
	{ config_id = 453015, pos = { x = 2773.423, y = 487.165, z = 14.310 }, rot = { x = 0.082, y = 354.286, z = 359.900 }, area_id = 4 },
	{ config_id = 453016, pos = { x = 2771.846, y = 487.165, z = 14.424 }, rot = { x = 0.000, y = 312.560, z = 0.000 }, area_id = 4 },
	{ config_id = 453017, pos = { x = 2763.712, y = 207.371, z = 28.593 }, rot = { x = 0.000, y = 0.000, z = 9.201 }, area_id = 4 }
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
		gadgets = { 453010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 453012 },
		regions = { 453004, 453006, 453007, 453008, 453009, 453011, 453013 },
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