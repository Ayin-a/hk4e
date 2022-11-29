-- 基础信息
local base_info = {
	group_id = 245016001
}

-- Trigger变量
local defs = {
	group_id = 245016001,
	gear_group_id = 245016002,
	route_guide_timer = 5,
	max_escapable_monsters = 99,
	init_building_points = 1000,
	level = 4,
	dieY = -17
}

-- DEFS_MISCS
--怪物group的ID
monster_group=245016003

--设置怪物指引的点阵路径
local guide_routes={1,2,3}
--设置指引路径的初始位置以及点阵路径

routes_start_point={
 [1]={start_point={x=137,y=-13.4,z=-18.3},points={1,2,3,4,5,6,7,8,9,10}},
[2]={start_point={x=106.1,y=-9.67,z=-48},points={1,2,3,4,5}},   [3]={start_point={x=77.1,y=-13.4,z=-11},points={1,2,3,4,5,6,7,8,9,10}},

}


guide_point_pool={1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051}

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
	{ config_id = 1001, gadget_id = 70290050, pos = { x = 136.867, y = -9.407, z = -24.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70290050, pos = { x = 105.895, y = -5.695, z = -55.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70290051, pos = { x = 106.066, y = -5.660, z = 20.379 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70290167, pos = { x = 105.740, y = -9.510, z = 22.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1012, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1013, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1014, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1015, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1016, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1017, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1018, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1019, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1020, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1021, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1022, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1023, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1024, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1025, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1026, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1027, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1028, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1029, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1030, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1031, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1032, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1033, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1034, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1035, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1036, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1037, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1038, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1039, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1040, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1041, gadget_id = 70290050, pos = { x = 76.983, y = -9.712, z = -4.200 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1043, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1044, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1045, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1046, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1047, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1048, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1049, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1050, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1051, gadget_id = 70350159, pos = { x = -6.661, y = -1.362, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1005, gadget_id = 70350176, pos = { x = 0.353, y = 1.992, z = 0.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1006, gadget_id = 70350176, pos = { x = 10.321, y = -1.461, z = -37.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1007, gadget_id = 70350176, pos = { x = -0.020, y = -1.438, z = -17.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1008, gadget_id = 70350176, pos = { x = 7.843, y = -1.461, z = -37.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1009, gadget_id = 70350176, pos = { x = 41.800, y = 2.678, z = -0.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1010, gadget_id = 70350176, pos = { x = 41.651, y = 2.674, z = -6.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
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
		gadgets = { 1001, 1002, 1003, 1004, 1041 },
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

require "V2_6/TowerDefense_Challenge_V3.0"