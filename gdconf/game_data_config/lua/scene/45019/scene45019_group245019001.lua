-- 基础信息
local base_info = {
	group_id = 245019001
}

-- Trigger变量
local defs = {
	group_id = 245019001,
	gear_group_id = 245019002,
	route_guide_timer = 5,
	max_escapable_monsters = 99,
	init_building_points = 1000,
	level = 7,
	dieY = -10
}

-- DEFS_MISCS
--怪物group的ID
monster_group=245019003

--设置怪物指引的点阵路径
local guide_routes={1,2}
--设置指引路径的初始位置以及点阵路径

routes_start_point={
 [1]={start_point={x=-17,y=-0.35,z=-82},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}},
 [2]={start_point={x=-16.6,y=-0.35,z=-58},points={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}},
  

}


guide_point_pool={1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100}

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
	{ config_id = 1001, gadget_id = 70290050, pos = { x = -17.303, y = 3.454, z = -87.648 }, rot = { x = 0.000, y = 2.938, z = 356.815 }, level = 1 },
	{ config_id = 1002, gadget_id = 70290050, pos = { x = -15.887, y = 3.451, z = -50.330 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70290051, pos = { x = 58.816, y = -0.170, z = -68.644 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70290167, pos = { x = 61.988, y = -4.160, z = -69.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1006, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1007, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1008, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1009, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1010, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1011, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1012, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1013, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1014, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1015, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1016, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1017, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1018, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1019, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1020, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1021, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1022, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1023, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1024, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1025, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1026, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1027, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1028, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1029, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1030, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1031, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1032, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1033, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1034, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1035, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1036, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1037, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1038, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1039, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1040, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1041, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1042, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1043, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1044, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1045, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1046, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1047, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1048, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1049, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1050, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1051, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1052, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1053, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1054, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1055, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1056, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1057, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1058, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1059, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1060, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1061, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1062, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1063, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1064, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1065, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1066, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1067, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1068, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1069, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1070, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1071, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1072, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1073, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1074, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1075, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1076, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1077, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1078, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1079, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1080, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1081, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1082, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1083, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1084, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1085, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1086, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1087, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1088, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1089, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1090, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1091, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1092, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1093, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1094, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1095, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1096, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1097, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1098, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1099, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1100, gadget_id = 70350159, pos = { x = -6.661, y = 16.744, z = -18.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
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
		gadgets = { 1001, 1002, 1003, 1004 },
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