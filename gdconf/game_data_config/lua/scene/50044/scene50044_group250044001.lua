-- 基础信息
local base_info = {
	group_id = 250044001
}

-- Trigger变量
local defs = {
	laser_interval1 = 10,
	laser_interval2 = 8,
	laser_interval3 = 6
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
	{ config_id = 1001, gadget_id = 70690011, pos = { x = 152.047, y = 89.163, z = 77.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70690011, pos = { x = 174.667, y = 89.163, z = 77.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1004, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1005, gadget_id = 70360002, pos = { x = 151.886, y = 89.163, z = 77.615 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 1, start_route = false },
	{ config_id = 1007, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 2, start_route = false },
	{ config_id = 1008, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 3, start_route = false },
	{ config_id = 1009, gadget_id = 70360021, pos = { x = 206.611, y = 104.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 4, start_route = false },
	{ config_id = 1010, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 5, start_route = false },
	{ config_id = 1011, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 6, start_route = false },
	{ config_id = 1012, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 7, start_route = false },
	{ config_id = 1013, gadget_id = 70360021, pos = { x = 206.611, y = 116.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 8, start_route = false },
	{ config_id = 1014, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 9, start_route = false },
	{ config_id = 1015, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 10, start_route = false },
	{ config_id = 1016, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 11, start_route = false },
	{ config_id = 1017, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 84.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 12, start_route = false },
	{ config_id = 1018, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 82.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 13, start_route = false },
	{ config_id = 1019, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 14, start_route = false },
	{ config_id = 1020, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 78.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 15, start_route = false },
	{ config_id = 1021, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 76.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 16, start_route = false },
	{ config_id = 1022, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 17, start_route = false },
	{ config_id = 1023, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 72.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 18, start_route = false },
	{ config_id = 1024, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 70.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 19, start_route = false },
	{ config_id = 1025, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 68.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20, start_route = false },
	{ config_id = 1026, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1027, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1028, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1029, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1030, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 1031, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1032, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 1033, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 68.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20, start_route = false },
	{ config_id = 1034, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1035, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1036, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1037, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1038, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1039, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 1040, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1041, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 1042, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 308.400, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1043, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 51.750, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1044, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1045, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1046, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1047, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1048, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 68.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20, start_route = false },
	{ config_id = 1049, gadget_id = 70360021, pos = { x = 206.611, y = 104.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 1050, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1051, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 84.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 12, start_route = false },
	{ config_id = 1052, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 82.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 13, start_route = false },
	{ config_id = 1053, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1054, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 78.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 1055, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 76.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 16, start_route = false },
	{ config_id = 1056, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1057, gadget_id = 70360021, pos = { x = 206.611, y = 116.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 1058, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1059, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1060, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 1061, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1062, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 72.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 18, start_route = false },
	{ config_id = 1063, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1064, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1065, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1066, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1067, gadget_id = 70360021, pos = { x = 206.611, y = 104.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 1068, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1069, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 329.320, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1070, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1071, gadget_id = 70360021, pos = { x = 206.611, y = 101.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1072, gadget_id = 70360021, pos = { x = 206.611, y = 104.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 1073, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 68.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20, start_route = false },
	{ config_id = 1074, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 70.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 19, start_route = false },
	{ config_id = 1075, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 72.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 18, start_route = false },
	{ config_id = 1076, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 1077, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 84.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 12, start_route = false },
	{ config_id = 1078, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 82.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 13, start_route = false },
	{ config_id = 1079, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1080, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 78.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 1081, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1082, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1083, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1084, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1085, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1086, gadget_id = 70360021, pos = { x = 206.611, y = 104.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 1087, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1088, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1089, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1090, gadget_id = 70360021, pos = { x = 206.611, y = 116.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 1091, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1092, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1093, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 1094, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 84.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 12, start_route = false },
	{ config_id = 1095, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 82.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 13, start_route = false },
	{ config_id = 1096, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1097, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 70.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 19, start_route = false },
	{ config_id = 1098, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 86.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 1099, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 72.640 }, rot = { x = 75.800, y = 180.000, z = 180.000 }, level = 1, route_id = 18, start_route = false },
	{ config_id = 1100, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 78.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 1101, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 76.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 16, start_route = false },
	{ config_id = 1102, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 1103, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1104, gadget_id = 70360021, pos = { x = 206.611, y = 98.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1105, gadget_id = 70360021, pos = { x = 206.611, y = 110.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1106, gadget_id = 70360021, pos = { x = 206.611, y = 113.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 1107, gadget_id = 70360021, pos = { x = 206.611, y = 116.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 1108, gadget_id = 70360021, pos = { x = 206.611, y = 119.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 1113, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1114, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 80.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14, start_route = false },
	{ config_id = 1115, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 76.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 16, start_route = false },
	{ config_id = 1116, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 74.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 17, start_route = false },
	{ config_id = 1117, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 72.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 18, start_route = false },
	{ config_id = 1118, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 70.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 19, start_route = false },
	{ config_id = 1119, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 68.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20, start_route = false },
	{ config_id = 1120, gadget_id = 70360021, pos = { x = 205.787, y = 124.280, z = 78.640 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, route_id = 15, start_route = false },
	{ config_id = 1121, gadget_id = 70360021, pos = { x = 206.611, y = 107.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 1122, gadget_id = 70360021, pos = { x = 206.611, y = 122.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 1123, gadget_id = 70360021, pos = { x = 206.611, y = 95.060, z = 65.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1125, gadget_id = 70310040, pos = { x = 154.975, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1126, gadget_id = 70310040, pos = { x = 154.975, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1127, gadget_id = 70310040, pos = { x = 154.975, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1128, gadget_id = 70310040, pos = { x = 154.975, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1129, gadget_id = 70310040, pos = { x = 154.976, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1130, gadget_id = 70310040, pos = { x = 159.714, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1131, gadget_id = 70310040, pos = { x = 159.714, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1132, gadget_id = 70310040, pos = { x = 159.714, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1133, gadget_id = 70310040, pos = { x = 159.714, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1134, gadget_id = 70310040, pos = { x = 159.715, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1135, gadget_id = 70310040, pos = { x = 164.507, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1136, gadget_id = 70310040, pos = { x = 164.507, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1137, gadget_id = 70310040, pos = { x = 164.507, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1138, gadget_id = 70310040, pos = { x = 164.507, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1139, gadget_id = 70310040, pos = { x = 164.508, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1140, gadget_id = 70310040, pos = { x = 169.298, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1141, gadget_id = 70310040, pos = { x = 169.298, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1142, gadget_id = 70310040, pos = { x = 169.298, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1143, gadget_id = 70310040, pos = { x = 169.298, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1144, gadget_id = 70310040, pos = { x = 169.299, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1145, gadget_id = 70310040, pos = { x = 173.983, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1146, gadget_id = 70310040, pos = { x = 173.983, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1147, gadget_id = 70310040, pos = { x = 173.983, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1148, gadget_id = 70310040, pos = { x = 173.983, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1149, gadget_id = 70310040, pos = { x = 173.984, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1150, gadget_id = 70310040, pos = { x = 178.834, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1151, gadget_id = 70310040, pos = { x = 178.834, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1152, gadget_id = 70310040, pos = { x = 178.835, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1153, gadget_id = 70310040, pos = { x = 178.835, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1154, gadget_id = 70310040, pos = { x = 178.835, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1155, gadget_id = 70310040, pos = { x = 183.742, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1156, gadget_id = 70310040, pos = { x = 183.742, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1157, gadget_id = 70310040, pos = { x = 183.742, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1158, gadget_id = 70310040, pos = { x = 183.742, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1159, gadget_id = 70310040, pos = { x = 183.743, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1160, gadget_id = 70310040, pos = { x = 188.560, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1161, gadget_id = 70310040, pos = { x = 188.560, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1162, gadget_id = 70310040, pos = { x = 188.560, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1163, gadget_id = 70310040, pos = { x = 188.560, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1164, gadget_id = 70310040, pos = { x = 188.560, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1165, gadget_id = 70310040, pos = { x = 193.335, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1166, gadget_id = 70310040, pos = { x = 193.335, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1167, gadget_id = 70310040, pos = { x = 193.336, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1168, gadget_id = 70310040, pos = { x = 193.336, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1169, gadget_id = 70310040, pos = { x = 193.336, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1170, gadget_id = 70310040, pos = { x = 198.295, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1171, gadget_id = 70310040, pos = { x = 198.295, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1172, gadget_id = 70310040, pos = { x = 198.295, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1173, gadget_id = 70310040, pos = { x = 198.295, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1174, gadget_id = 70310040, pos = { x = 198.296, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1175, gadget_id = 70310040, pos = { x = 203.039, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1176, gadget_id = 70310040, pos = { x = 203.039, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1177, gadget_id = 70310040, pos = { x = 203.039, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1178, gadget_id = 70310040, pos = { x = 203.039, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1179, gadget_id = 70310040, pos = { x = 203.040, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1180, gadget_id = 70310040, pos = { x = 207.865, y = 89.150, z = 85.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1181, gadget_id = 70310040, pos = { x = 207.865, y = 89.150, z = 81.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1182, gadget_id = 70310040, pos = { x = 207.865, y = 89.150, z = 76.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1183, gadget_id = 70310040, pos = { x = 207.865, y = 89.150, z = 71.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1184, gadget_id = 70310040, pos = { x = 207.866, y = 89.150, z = 66.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001109, name = "GADGET_CREATE_1109", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1109", action = "action_EVENT_GADGET_CREATE_1109" },
	{ config_id = 1001110, name = "SELECT_OPTION_1110", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1110", action = "action_EVENT_SELECT_OPTION_1110" },
	{ config_id = 1001111, name = "TIMER_EVENT_1111", event = EventType.EVENT_TIMER_EVENT, source = "active_laser", condition = "", action = "action_EVENT_TIMER_EVENT_1111", trigger_count = 0 },
	{ config_id = 1001112, name = "PLATFORM_REACH_POINT_1112", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_1112", trigger_count = 0 },
	{ config_id = 1001124, name = "TIMER_EVENT_1124", event = EventType.EVENT_TIMER_EVENT, source = "active_ground", condition = "", action = "action_EVENT_TIMER_EVENT_1124", trigger_count = 0 },
	{ config_id = 1001185, name = "GADGET_CREATE_1185", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1185", action = "action_EVENT_GADGET_CREATE_1185" }
}

-- 变量
variables = {
	{ config_id = 1, name = "laser_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "current_id", value = 4, no_refresh = false }
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
		gadgets = { 1005 },
		regions = { },
		triggers = { "GADGET_CREATE_1109", "SELECT_OPTION_1110", "TIMER_EVENT_1111", "PLATFORM_REACH_POINT_1112", "TIMER_EVENT_1124" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1003, 1004, 1026, 1027, 1028, 1029, 1047, 1061 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1030, 1031, 1032, 1033, 1062, 1097 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1042, 1043, 1122, 1123 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1044, 1045, 1046, 1049, 1050, 1056, 1057, 1058, 1059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 1051, 1052, 1053, 1054, 1055, 1060, 1098, 1099 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 1064, 1065, 1066, 1067, 1068, 1069 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 1063, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1100, 1101, 1102 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 1103, 1104, 1105, 1106, 1107, 1108, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184 },
		regions = { },
		triggers = { "GADGET_CREATE_1185" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1109(context, evt)
	if 1005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1109(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250044001, 1005, {13}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1110(context, evt)
	-- 判断是gadgetid 1005 option_id 13
	if 1005 ~= evt.param1 then
		return false	
	end
	
	if 13 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1110(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250044001, 2)
	
	-- 延迟3秒后,向groupId为：250044001的对象,请求一次调用,并将string参数："active_laser" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250044001, "active_laser", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：250044001的对象,请求一次调用,并将string参数："active_ground" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250044001, "active_ground", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1111(context, evt)
	--创建射线墙
	local count = ScriptLib.GetGroupVariableValue(context, "laser_count") 
	
	if count <= 3 then
	
	        local suite_id = ScriptLib.GetGroupVariableValue(context, "current_id") 
	
	        ScriptLib.AddExtraGroupSuite(context, 250044001, suite_id)
	
	        for k,v in ipairs(suites[suite_id].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 250044001, v, 201)
	                ScriptLib.StartPlatform(context, v)
	        end
	
	        ScriptLib.ChangeGroupVariableValueByGroup(context, "current_id", 1, 250044001)
	
	        ScriptLib.ChangeGroupVariableValue(context, "laser_count", 1)
	
	        ScriptLib.CreateGroupTimerEvent(context, 250044001, "active_laser", defs.laser_interval1)
	
	elseif count > 3 and count <= 6 then
	
	        local suite_id = ScriptLib.GetGroupVariableValue(context, "current_id") 
	
	        ScriptLib.AddExtraGroupSuite(context, 250044001, suite_id)
	
	        for k,v in ipairs(suites[suite_id].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 250044001, v, 201)
	                ScriptLib.StartPlatform(context, v)
	        end
	
	        ScriptLib.ChangeGroupVariableValueByGroup(context, "current_id", 1, 250044001)
	
	        ScriptLib.ChangeGroupVariableValue(context, "laser_count", 1)
	
	        ScriptLib.CreateGroupTimerEvent(context, 250044001, "active_laser", defs.laser_interval2)
	elseif count <= 10 then
	
	        local suite_id = ScriptLib.GetGroupVariableValue(context, "current_id") 
	
	        ScriptLib.AddExtraGroupSuite(context, 250044001, suite_id)
	
	        for k,v in ipairs(suites[suite_id].gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 250044001, v, 201)
	                ScriptLib.StartPlatform(context, v)
	        end
	
	        ScriptLib.ChangeGroupVariableValueByGroup(context, "current_id", 1, 250044001)
	
	        ScriptLib.ChangeGroupVariableValue(context, "laser_count", 1)
	
	        ScriptLib.CreateGroupTimerEvent(context, 250044001, "active_laser", defs.laser_interval3)       
	
	end
	
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_1112(context, evt)
	local laser_config_id = evt.param1
	
	ScriptLib.KillEntityByConfigId(context, { group_id = 250044001, config_id = laser_config_id}) 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1124(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250044001, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1185(context, evt)
	if 1126 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1185(context, evt)
	local gadget_list = suites[14].gadgets
	
	for i, v in ipairs(gadget_list) do
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 250044001, v, 201)
	end
	
	return 0
end