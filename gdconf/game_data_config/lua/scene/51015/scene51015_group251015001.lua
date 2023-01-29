-- 基础信息
local base_info = {
	group_id = 251015001
}

-- Trigger变量
local defs = {
	moveback_pointarray_id = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1080, monster_id = 24010301, pos = { x = -183.447, y = -9.362, z = -47.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 }, pose_id = 100 },
	{ config_id = 1082, monster_id = 21010102, pos = { x = -56.556, y = -8.278, z = -72.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 } },
	{ config_id = 1083, monster_id = 21010102, pos = { x = -98.990, y = -9.362, z = -76.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 }, speed_level = 2 },
	{ config_id = 1084, monster_id = 21010102, pos = { x = -129.062, y = -9.362, z = -60.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 }, speed_level = 2 },
	{ config_id = 1085, monster_id = 21010102, pos = { x = -183.534, y = -9.362, z = -76.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 } },
	{ config_id = 1086, monster_id = 21010102, pos = { x = -134.895, y = -9.362, z = -41.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4110, 6111 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350256, pos = { x = -51.287, y = -7.272, z = -59.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350256, pos = { x = -51.336, y = -7.272, z = -66.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350256, pos = { x = -51.467, y = -7.272, z = -72.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350256, pos = { x = -55.935, y = -7.272, z = -72.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350256, pos = { x = -51.268, y = -7.272, z = -54.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350256, pos = { x = -51.332, y = -7.272, z = -49.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350256, pos = { x = -57.956, y = -7.272, z = -49.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350256, pos = { x = -64.603, y = -7.272, z = -49.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350256, pos = { x = -64.889, y = -7.272, z = -54.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350256, pos = { x = -65.440, y = -7.272, z = -60.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350256, pos = { x = -65.483, y = -7.272, z = -65.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350256, pos = { x = -65.614, y = -7.272, z = -71.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350256, pos = { x = -61.064, y = -7.272, z = -72.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350256, pos = { x = -58.172, y = -7.272, z = -60.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350256, pos = { x = -98.879, y = -8.013, z = -60.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70350256, pos = { x = -98.950, y = -8.013, z = -65.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350256, pos = { x = -99.235, y = -8.013, z = -69.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350256, pos = { x = -98.996, y = -8.013, z = -74.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70350256, pos = { x = -103.723, y = -8.013, z = -63.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70350256, pos = { x = -104.464, y = -8.013, z = -69.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70350256, pos = { x = -105.297, y = -8.013, z = -77.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70350256, pos = { x = -110.087, y = -8.013, z = -76.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70350256, pos = { x = -110.890, y = -8.013, z = -72.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70350256, pos = { x = -110.517, y = -8.013, z = -66.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70350256, pos = { x = -109.814, y = -8.013, z = -60.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70350256, pos = { x = -109.722, y = -8.013, z = -54.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70350256, pos = { x = -109.733, y = -8.013, z = -48.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70350256, pos = { x = -104.551, y = -8.013, z = -57.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70350256, pos = { x = -99.062, y = -8.013, z = -53.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70350256, pos = { x = -103.839, y = -8.013, z = -46.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70350256, pos = { x = -98.473, y = -8.013, z = -44.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70350256, pos = { x = -101.979, y = -8.013, z = -41.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70350256, pos = { x = -107.538, y = -8.013, z = -41.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70350256, pos = { x = -113.828, y = -8.013, z = -41.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70350256, pos = { x = -120.034, y = -8.013, z = -41.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70350256, pos = { x = -120.021, y = -8.013, z = -46.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70350256, pos = { x = -120.183, y = -8.013, z = -52.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70350256, pos = { x = -120.119, y = -8.013, z = -57.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70350256, pos = { x = -120.493, y = -8.013, z = -62.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70350256, pos = { x = -114.578, y = -8.013, z = -62.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70350256, pos = { x = -115.164, y = -8.013, z = -47.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70350256, pos = { x = -109.005, y = -8.013, z = -47.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70350256, pos = { x = -126.820, y = -8.013, z = -62.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70350256, pos = { x = -128.428, y = -8.013, z = -67.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 70350256, pos = { x = -132.298, y = -8.013, z = -69.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, gadget_id = 70350256, pos = { x = -133.285, y = -8.013, z = -76.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70350256, pos = { x = -123.685, y = -8.013, z = -77.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70350256, pos = { x = -123.448, y = -8.013, z = -69.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70350256, pos = { x = -116.747, y = -8.013, z = -68.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70350256, pos = { x = -116.664, y = -8.013, z = -77.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1051, gadget_id = 70350256, pos = { x = -132.379, y = -8.013, z = -62.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1052, gadget_id = 70350256, pos = { x = -132.370, y = -8.013, z = -54.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70350256, pos = { x = -183.509, y = -8.356, z = -77.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70350256, pos = { x = -175.305, y = -8.356, z = -77.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1055, gadget_id = 70350256, pos = { x = -167.344, y = -8.356, z = -77.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70350256, pos = { x = -163.548, y = -8.356, z = -72.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1057, gadget_id = 70350256, pos = { x = -167.479, y = -8.356, z = -67.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1058, gadget_id = 70350256, pos = { x = -174.024, y = -8.356, z = -67.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1059, gadget_id = 70350256, pos = { x = -183.150, y = -8.356, z = -67.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1060, gadget_id = 70350256, pos = { x = -183.252, y = -8.356, z = -60.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70350256, pos = { x = -183.197, y = -8.356, z = -43.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1062, gadget_id = 70350256, pos = { x = -183.517, y = -8.356, z = -52.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1063, gadget_id = 70350256, pos = { x = -174.542, y = -8.356, z = -55.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1064, gadget_id = 70350256, pos = { x = -174.328, y = -8.356, z = -43.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1065, gadget_id = 70350256, pos = { x = -164.530, y = -8.356, z = -42.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70350256, pos = { x = -168.073, y = -8.356, z = -52.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1067, gadget_id = 70350256, pos = { x = -164.090, y = -8.356, z = -54.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1068, gadget_id = 70350256, pos = { x = -163.569, y = -8.356, z = -62.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1069, gadget_id = 70350256, pos = { x = -168.315, y = -8.356, z = -43.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1070, gadget_id = 70350256, pos = { x = -164.066, y = -8.356, z = -50.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1071, gadget_id = 70350256, pos = { x = -173.976, y = -8.356, z = -62.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1072, gadget_id = 70350256, pos = { x = -187.722, y = -8.356, z = -59.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1073, gadget_id = 70350256, pos = { x = -187.815, y = -8.356, z = -64.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1074, gadget_id = 70350256, pos = { x = -190.230, y = -8.356, z = -68.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1075, gadget_id = 70350256, pos = { x = -194.512, y = -8.356, z = -66.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1076, gadget_id = 70350256, pos = { x = -194.934, y = -8.356, z = -61.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1077, gadget_id = 70350256, pos = { x = -194.796, y = -8.356, z = -55.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1078, gadget_id = 70350256, pos = { x = -191.345, y = -8.356, z = -53.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1079, gadget_id = 70350256, pos = { x = -187.578, y = -8.356, z = -55.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1087, gadget_id = 70350256, pos = { x = -133.936, y = -8.135, z = -47.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1088, gadget_id = 70350256, pos = { x = -133.879, y = -8.135, z = -41.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1089, gadget_id = 70350256, pos = { x = -126.898, y = -8.135, z = -42.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1090, gadget_id = 70350256, pos = { x = -126.704, y = -8.135, z = -47.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1091, gadget_id = 70350256, pos = { x = -126.253, y = -8.135, z = -51.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1125, gadget_id = 70350256, pos = { x = -183.509, y = -8.356, z = -77.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1081, shape = RegionShape.SPHERE, radius = 5, pos = { x = -155.579, y = -9.362, z = -60.104 } },
	{ config_id = 1092, shape = RegionShape.SPHERE, radius = 5, pos = { x = -86.934, y = -9.362, z = -60.484 } }
}

-- 触发器
triggers = {
	{ config_id = 1001081, name = "ENTER_REGION_1081", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1081", action = "action_EVENT_ENTER_REGION_1081" },
	{ config_id = 1001092, name = "ENTER_REGION_1092", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1092", action = "action_EVENT_ENTER_REGION_1092" }
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
		monsters = { 1084, 1086 },
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1087, 1088, 1089, 1090, 1091, 1125 },
		regions = { 1081, 1092 },
		triggers = { "ENTER_REGION_1081", "ENTER_REGION_1092" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1080 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1082, 1083, 1085 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_1081(context, evt)
	if evt.param1 ~= 1081 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1081(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 251015001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1092(context, evt)
	if evt.param1 ~= 1092 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1092(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251015001, 3)
	
	return 0
end

require "V3_5/Activity_PacMan"