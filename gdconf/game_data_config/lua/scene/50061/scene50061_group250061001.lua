-- 基础信息
local base_info = {
	group_id = 250061001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1002, monster_id = 21020801, pos = { x = -7.726, y = -0.102, z = -6.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 21020801, pos = { x = -8.807, y = -0.102, z = 1.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21020801, pos = { x = -1.144, y = -0.102, z = 9.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 21020801, pos = { x = 5.104, y = -0.102, z = 9.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 21020701, pos = { x = -3.081, y = -0.102, z = -7.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 21020701, pos = { x = -4.520, y = -0.102, z = -3.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 21020701, pos = { x = -4.085, y = -0.102, z = 2.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 21020701, pos = { x = 1.248, y = -0.102, z = 7.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 21020701, pos = { x = 5.875, y = -0.102, z = 5.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 21020701, pos = { x = 8.427, y = -0.102, z = 3.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 21020701, pos = { x = 6.532, y = -0.102, z = -1.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 21020701, pos = { x = 3.243, y = -0.102, z = -5.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 21011601, pos = { x = -0.887, y = -0.102, z = -6.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 21011601, pos = { x = -2.756, y = -0.102, z = -5.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, monster_id = 21011601, pos = { x = -8.948, y = -0.102, z = -2.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 21011601, pos = { x = -5.937, y = -0.102, z = -0.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 21011601, pos = { x = -8.178, y = -0.102, z = 6.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 21011601, pos = { x = -1.152, y = -0.102, z = 7.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 21011601, pos = { x = 2.251, y = -0.102, z = 3.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, monster_id = 21011601, pos = { x = 4.362, y = -0.102, z = 4.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, monster_id = 21011601, pos = { x = 4.487, y = -0.102, z = 1.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, monster_id = 21011601, pos = { x = 3.816, y = -0.102, z = -1.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, monster_id = 21011601, pos = { x = 2.440, y = -0.102, z = -3.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, monster_id = 21011601, pos = { x = 0.829, y = -0.102, z = -5.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, monster_id = 22010401, pos = { x = -3.586, y = -0.102, z = -5.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, monster_id = 22010401, pos = { x = -2.713, y = -0.102, z = -2.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, monster_id = 22010401, pos = { x = -2.646, y = -0.102, z = 2.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, monster_id = 22010401, pos = { x = -0.600, y = -0.102, z = 5.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, monster_id = 22010401, pos = { x = 6.246, y = -0.102, z = 3.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, monster_id = 22010401, pos = { x = 4.840, y = -0.102, z = -3.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, monster_id = 25010301, pos = { x = -1.307, y = -0.102, z = -8.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, monster_id = 25010301, pos = { x = -1.842, y = -0.102, z = -4.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, monster_id = 25010301, pos = { x = -1.321, y = -0.102, z = -1.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, monster_id = 25010301, pos = { x = -1.121, y = -0.102, z = 3.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1036, monster_id = 25010301, pos = { x = 0.215, y = -0.102, z = 7.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, monster_id = 25010301, pos = { x = 5.012, y = -0.102, z = 5.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, monster_id = 25010301, pos = { x = 4.999, y = -0.102, z = 3.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, monster_id = 25010301, pos = { x = 5.379, y = -0.102, z = 1.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, monster_id = 25010301, pos = { x = 5.248, y = -0.102, z = -0.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, monster_id = 25010301, pos = { x = 5.038, y = -0.102, z = -2.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, monster_id = 25010301, pos = { x = 3.765, y = -0.102, z = -4.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, monster_id = 25010301, pos = { x = 2.021, y = -0.102, z = -7.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, monster_id = 25010701, pos = { x = -7.889, y = -0.102, z = -3.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, monster_id = 25010701, pos = { x = -9.128, y = -0.102, z = -1.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, monster_id = 25010701, pos = { x = -8.072, y = -0.102, z = 2.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, monster_id = 25010701, pos = { x = -4.519, y = -0.102, z = 7.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, monster_id = 25010701, pos = { x = -0.119, y = -0.102, z = 9.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1049, monster_id = 25010701, pos = { x = 4.146, y = -0.102, z = 8.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, monster_id = 25010701, pos = { x = 6.762, y = -0.102, z = 6.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, monster_id = 25010701, pos = { x = 8.729, y = -0.102, z = 3.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, monster_id = 25010701, pos = { x = 8.586, y = -0.102, z = 1.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, monster_id = 25010701, pos = { x = 4.622, y = -0.102, z = -4.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, monster_id = 25010701, pos = { x = 1.843, y = -0.102, z = -7.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, monster_id = 25010701, pos = { x = -0.777, y = -0.102, z = -8.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, monster_id = 25080101, pos = { x = -3.904, y = -0.102, z = -6.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1057, monster_id = 25080101, pos = { x = -5.878, y = -0.102, z = -1.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1058, monster_id = 25080101, pos = { x = -5.977, y = -0.102, z = 4.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1059, monster_id = 25080101, pos = { x = 2.618, y = -0.102, z = 8.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1060, monster_id = 25080101, pos = { x = 5.972, y = -0.102, z = 5.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1061, monster_id = 25080101, pos = { x = 7.790, y = -0.102, z = 2.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1062, monster_id = 25080101, pos = { x = 1.634, y = -0.102, z = -6.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1063, monster_id = 25080101, pos = { x = 4.660, y = -0.102, z = -3.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1064, monster_id = 25080101, pos = { x = 6.818, y = -0.102, z = -0.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1065, monster_id = 25080101, pos = { x = 6.145, y = -0.102, z = 2.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1066, monster_id = 25080201, pos = { x = -6.130, y = -0.102, z = -9.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1067, monster_id = 25080201, pos = { x = -9.926, y = -0.102, z = -3.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1068, monster_id = 25080201, pos = { x = -7.930, y = -0.102, z = 6.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1069, monster_id = 25080201, pos = { x = -2.584, y = -0.102, z = 9.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1070, monster_id = 25080201, pos = { x = 2.899, y = -0.102, z = 10.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1071, monster_id = 25080201, pos = { x = -2.411, y = -0.102, z = -9.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1072, monster_id = 25080201, pos = { x = 1.830, y = -0.102, z = -7.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1073, monster_id = 25080201, pos = { x = 5.518, y = -0.102, z = -4.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1074, monster_id = 25080201, pos = { x = 8.433, y = -0.102, z = -0.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1075, monster_id = 25080201, pos = { x = 8.545, y = -0.102, z = 5.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1076, monster_id = 25080301, pos = { x = -5.326, y = -0.102, z = -8.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1077, monster_id = 25080301, pos = { x = -1.344, y = -0.102, z = -7.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1078, monster_id = 25080301, pos = { x = 1.605, y = -0.102, z = -5.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1079, monster_id = 25080301, pos = { x = 3.617, y = -0.102, z = -3.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1080, monster_id = 25080301, pos = { x = 5.548, y = -0.102, z = -0.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1081, monster_id = 25080301, pos = { x = 6.538, y = -0.102, z = 3.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1082, monster_id = 25080301, pos = { x = 4.973, y = -0.102, z = 6.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1083, monster_id = 25080301, pos = { x = 1.805, y = -0.102, z = 8.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1084, monster_id = 25080301, pos = { x = -2.788, y = -0.102, z = 7.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1085, monster_id = 25080301, pos = { x = -5.207, y = -0.102, z = 4.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1086, monster_id = 25100101, pos = { x = 0.743, y = -0.102, z = -8.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1087, monster_id = 25100101, pos = { x = -5.805, y = -0.102, z = -5.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1088, monster_id = 25100101, pos = { x = -6.093, y = -0.102, z = 1.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1089, monster_id = 25100101, pos = { x = 2.021, y = -0.102, z = 6.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1090, monster_id = 25100101, pos = { x = 7.549, y = -0.102, z = 2.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1091, monster_id = 25100101, pos = { x = 6.391, y = -0.102, z = -3.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1092, monster_id = 25100101, pos = { x = 3.536, y = -0.102, z = -6.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1093, monster_id = 25100101, pos = { x = -4.198, y = -0.102, z = 5.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1094, monster_id = 25100201, pos = { x = -1.375, y = -0.102, z = -5.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1095, monster_id = 25100201, pos = { x = 2.457, y = -0.102, z = -5.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1096, monster_id = 25100201, pos = { x = 4.396, y = -0.102, z = -5.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1097, monster_id = 25100201, pos = { x = 6.155, y = -0.102, z = -2.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1098, monster_id = 25100201, pos = { x = 7.642, y = -0.102, z = 1.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1099, monster_id = 25100201, pos = { x = 5.033, y = -0.102, z = 5.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1100, monster_id = 25100201, pos = { x = 1.068, y = -0.102, z = 7.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1101, monster_id = 25100201, pos = { x = -4.167, y = -0.102, z = 5.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1102, monster_id = 21010101, pos = { x = -5.636, y = -0.102, z = -2.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1103, monster_id = 21010101, pos = { x = -3.094, y = -0.102, z = -4.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1104, monster_id = 21010101, pos = { x = -0.975, y = -0.102, z = -5.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1105, monster_id = 21010101, pos = { x = 1.022, y = -0.102, z = -4.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1106, monster_id = 21010101, pos = { x = 3.094, y = -0.102, z = -2.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1107, monster_id = 21010101, pos = { x = 4.414, y = -0.102, z = -0.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1108, monster_id = 21010101, pos = { x = 3.969, y = -0.102, z = 3.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1109, monster_id = 21010101, pos = { x = -0.580, y = -0.102, z = 6.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1110, monster_id = 21010101, pos = { x = -3.254, y = -0.102, z = 6.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1111, monster_id = 21010101, pos = { x = -5.299, y = -0.102, z = 4.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1112, monster_id = 21010101, pos = { x = -6.540, y = -0.102, z = 3.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1113, monster_id = 21010101, pos = { x = -6.638, y = -0.102, z = -3.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1114, monster_id = 21010301, pos = { x = -5.481, y = -0.102, z = -0.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1115, monster_id = 21010301, pos = { x = -3.589, y = -0.102, z = -3.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1116, monster_id = 21010301, pos = { x = -1.672, y = -0.102, z = -3.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1117, monster_id = 21010301, pos = { x = -0.109, y = -0.102, z = -3.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1118, monster_id = 21010301, pos = { x = 1.899, y = -0.102, z = -1.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1119, monster_id = 21010301, pos = { x = 2.698, y = -0.102, z = -0.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1120, monster_id = 21010301, pos = { x = 1.194, y = -0.102, z = 3.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1121, monster_id = 21010301, pos = { x = -0.940, y = -0.102, z = 4.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1122, monster_id = 21010301, pos = { x = -3.463, y = -0.102, z = 4.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1123, monster_id = 21010301, pos = { x = -4.733, y = -0.102, z = 2.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1124, monster_id = 21010301, pos = { x = -5.151, y = -0.102, z = 0.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1125, monster_id = 21010301, pos = { x = -3.777, y = -0.102, z = -2.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1126, monster_id = 21010701, pos = { x = -7.018, y = -0.102, z = -1.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1127, monster_id = 21010701, pos = { x = -5.556, y = -0.102, z = -4.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1128, monster_id = 21010701, pos = { x = -2.186, y = -0.102, z = -5.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1129, monster_id = 21010701, pos = { x = 1.574, y = -0.102, z = -5.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1130, monster_id = 21010701, pos = { x = 3.568, y = -0.102, z = -3.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1131, monster_id = 21010701, pos = { x = 5.427, y = -0.102, z = -1.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1132, monster_id = 21010701, pos = { x = 6.525, y = -0.102, z = 0.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1133, monster_id = 21010701, pos = { x = 5.903, y = -0.102, z = 4.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1134, monster_id = 21010701, pos = { x = 3.510, y = -0.102, z = 7.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1135, monster_id = 21010701, pos = { x = 0.385, y = -0.102, z = 7.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1136, monster_id = 21010701, pos = { x = -2.257, y = -0.102, z = 6.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1137, monster_id = 21010701, pos = { x = -5.498, y = -0.102, z = 2.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70950009, pos = { x = -0.023, y = -0.102, z = 0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 丘丘雷暴王,
		monsters = { 1002, 1003, 1004, 1005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 雷斧丘丘暴徒,
		monsters = { 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷弹丘丘人,
		monsters = { 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷深渊法师,
		monsters = { 1026, 1027, 1028, 1029, 1030, 1031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 盗宝团投掷,
		monsters = { 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 盗宝团肥仔,
		monsters = { 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 浪人,
		monsters = { 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 浪人山贼,
		monsters = { 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 浪人暗部,
		monsters = { 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼雷,
		monsters = { 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 海乱鬼火,
		monsters = { 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 普通丘丘人,
		monsters = { 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 木盾丘丘人,
		monsters = { 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 冲锋丘丘人,
		monsters = { 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137 },
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

require "V2_1/Monster_Tide_Test"