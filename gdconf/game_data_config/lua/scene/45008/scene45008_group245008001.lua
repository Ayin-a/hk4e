-- 基础信息
local base_info = {
	group_id = 245008001
}

-- Trigger变量
local defs = {
	group_id = 245008001,
	gear_group_id = 245008002,
	route_guide_timer = 5,
	trap_group_id = 245008013,
	max_escapable_monsters = 20,
	init_building_points = 950,
	speed_down_gadget = 1044,
	timer = 5
}

-- DEFS_MISCS
local delay=30

--怪物group的ID
monster_group=245008003
tide_defs_01 ={
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
}

local challenge_programme={
  [1]=tide_defs_01,
  [2]=tide_defs_01,
}
routes_start_point={
        [1]={start_point={x=77.129,y=4.623077,z=-50.57449},points={1,2,3,4,5,6,7,8,9,10}},
        [2]={start_point={x=64.96883,y=0.5410852,z=-16.04972},points={1,2,3,4,5,6,7,8,9,10}},

}

guide_point_pool={1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040}

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
	[1001] = { config_id = 1001, gadget_id = 70290050, pos = { x = 83.747, y = 8.014, z = -50.584 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70690001, pos = { x = 14.651, y = 5.361, z = -37.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70290050, pos = { x = 67.996, y = 3.861, z = -15.325 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	[1004] = { config_id = 1004, gadget_id = 70290051, pos = { x = -41.354, y = 8.107, z = -34.883 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1005] = { config_id = 1005, gadget_id = 70010006, pos = { x = 31.966, y = 0.549, z = -16.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1006] = { config_id = 1006, gadget_id = 70350159, pos = { x = 36.534, y = 4.624, z = -45.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1007] = { config_id = 1007, gadget_id = 70350159, pos = { x = 36.552, y = 4.626, z = -48.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1008] = { config_id = 1008, gadget_id = 70350159, pos = { x = 36.624, y = 4.622, z = -52.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1009] = { config_id = 1009, gadget_id = 70350159, pos = { x = 37.080, y = 4.624, z = -56.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1010] = { config_id = 1010, gadget_id = 70350159, pos = { x = 32.989, y = 4.599, z = -45.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1011] = { config_id = 1011, gadget_id = 70350159, pos = { x = 32.575, y = 4.626, z = -48.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1012] = { config_id = 1012, gadget_id = 70350159, pos = { x = 33.145, y = 4.620, z = -52.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1013] = { config_id = 1013, gadget_id = 70350159, pos = { x = 32.659, y = 4.623, z = -56.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1014] = { config_id = 1014, gadget_id = 70350159, pos = { x = 41.396, y = 4.587, z = -44.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1015] = { config_id = 1015, gadget_id = 70350159, pos = { x = 41.184, y = 4.628, z = -51.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1016] = { config_id = 1016, gadget_id = 70350159, pos = { x = 40.964, y = 4.626, z = -55.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1017] = { config_id = 1017, gadget_id = 70350159, pos = { x = 40.176, y = 15.760, z = -58.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1018] = { config_id = 1018, gadget_id = 70350159, pos = { x = 34.219, y = 4.626, z = -47.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1019] = { config_id = 1019, gadget_id = 70350159, pos = { x = 34.460, y = 4.622, z = -50.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1020] = { config_id = 1020, gadget_id = 70350159, pos = { x = 34.559, y = 4.617, z = -54.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1021] = { config_id = 1021, gadget_id = 70350159, pos = { x = 35.648, y = 4.626, z = -48.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1022] = { config_id = 1022, gadget_id = 70350159, pos = { x = 36.420, y = 4.629, z = -50.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1023] = { config_id = 1023, gadget_id = 70350159, pos = { x = 35.197, y = 4.621, z = -51.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1024] = { config_id = 1024, gadget_id = 70350159, pos = { x = 36.589, y = 4.628, z = -51.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1025] = { config_id = 1025, gadget_id = 70350159, pos = { x = 39.433, y = 4.631, z = -47.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1026] = { config_id = 1026, gadget_id = 70350159, pos = { x = 37.846, y = 4.603, z = -48.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1027] = { config_id = 1027, gadget_id = 70350159, pos = { x = 39.276, y = 4.626, z = -51.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1028] = { config_id = 1028, gadget_id = 70350159, pos = { x = 35.868, y = 4.624, z = -50.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1029] = { config_id = 1029, gadget_id = 70350159, pos = { x = 36.857, y = 4.628, z = -47.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1030] = { config_id = 1030, gadget_id = 70350159, pos = { x = 38.364, y = 4.624, z = -46.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1031] = { config_id = 1031, gadget_id = 70350159, pos = { x = 36.167, y = 4.702, z = -43.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1032] = { config_id = 1032, gadget_id = 70350159, pos = { x = 37.324, y = 4.626, z = -45.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1033] = { config_id = 1033, gadget_id = 70350159, pos = { x = 35.690, y = 4.624, z = -44.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1034] = { config_id = 1034, gadget_id = 70350159, pos = { x = 36.277, y = 4.620, z = -48.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1035] = { config_id = 1035, gadget_id = 70350159, pos = { x = 34.829, y = 4.623, z = -50.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1036] = { config_id = 1036, gadget_id = 70350159, pos = { x = 38.342, y = 4.629, z = -50.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1037] = { config_id = 1037, gadget_id = 70350159, pos = { x = 36.031, y = 4.626, z = -47.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1038] = { config_id = 1038, gadget_id = 70350159, pos = { x = 35.024, y = 4.626, z = -46.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1039] = { config_id = 1039, gadget_id = 70350159, pos = { x = 34.477, y = 4.625, z = -49.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1040] = { config_id = 1040, gadget_id = 70350159, pos = { x = 37.507, y = 4.617, z = -46.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[1041] = { config_id = 1041, gadget_id = 70690001, pos = { x = 23.253, y = 5.364, z = -37.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1042] = { config_id = 1042, gadget_id = 70690001, pos = { x = 33.006, y = 5.354, z = -37.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1043] = { config_id = 1043, gadget_id = 70350176, pos = { x = -41.057, y = 4.672, z = -34.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1044] = { config_id = 1044, gadget_id = 70350166, pos = { x = 62.367, y = 14.677, z = -36.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1045] = { config_id = 1045, gadget_id = 70350176, pos = { x = 78.416, y = 4.626, z = -50.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1046] = { config_id = 1046, gadget_id = 70350176, pos = { x = 65.279, y = 0.544, z = -15.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1047] = { config_id = 1047, gadget_id = 70350176, pos = { x = 84.490, y = 4.640, z = -46.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1048] = { config_id = 1048, gadget_id = 70350176, pos = { x = 84.490, y = 4.640, z = -52.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1049] = { config_id = 1049, gadget_id = 70350176, pos = { x = 84.490, y = 4.640, z = -54.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1050] = { config_id = 1050, gadget_id = 70350176, pos = { x = 69.330, y = 0.550, z = -12.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1051] = { config_id = 1051, gadget_id = 70350176, pos = { x = 69.330, y = 0.550, z = -18.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1052] = { config_id = 1052, gadget_id = 70350176, pos = { x = 69.330, y = 0.550, z = -20.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1053] = { config_id = 1053, gadget_id = 70690012, pos = { x = 33.006, y = -3.815, z = -30.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1054] = { config_id = 1054, gadget_id = 70690012, pos = { x = 23.253, y = -3.805, z = -30.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1055] = { config_id = 1055, gadget_id = 70690012, pos = { x = 14.651, y = -3.808, z = -30.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1056] = { config_id = 1056, gadget_id = 70290167, pos = { x = -42.132, y = 4.710, z = -34.883 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056 },
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

require "V2_0/TowerDefense_Challenge_V2.0"