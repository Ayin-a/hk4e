-- 基础信息
local base_info = {
	group_id = 220128004
}

-- Trigger变量
local defs = {
	rotate_center_1 = 4009,
	rotate_center_2 = 4012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4109, monster_id = 21020301, pos = { x = -9.978, y = -43.990, z = 10.071 }, rot = { x = 0.000, y = 136.531, z = 0.000 }, level = 1 },
	{ config_id = 4110, monster_id = 21020301, pos = { x = -9.814, y = -43.990, z = -10.419 }, rot = { x = 0.000, y = 31.593, z = 0.000 }, level = 1 },
	{ config_id = 4111, monster_id = 21020301, pos = { x = 9.998, y = -43.990, z = 0.018 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4112, monster_id = 21020501, pos = { x = 10.007, y = -43.990, z = -0.027 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4113, monster_id = 26030101, pos = { x = -9.874, y = -43.990, z = -10.076 }, rot = { x = 0.000, y = 44.974, z = 0.000 }, level = 1 },
	{ config_id = 4114, monster_id = 26030101, pos = { x = -9.885, y = -43.990, z = 9.951 }, rot = { x = 0.000, y = 136.093, z = 0.000 }, level = 1 },
	{ config_id = 4115, monster_id = 26040102, pos = { x = -0.013, y = -43.990, z = 9.863 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4116, monster_id = 26030101, pos = { x = 7.401, y = -43.990, z = 0.020 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4117, monster_id = 26040103, pos = { x = -0.040, y = -43.990, z = -10.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70800183, pos = { x = 17.537, y = -43.175, z = 0.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 198 } } },
	{ config_id = 4002, gadget_id = 70800183, pos = { x = 0.055, y = -43.175, z = 17.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 198 } } },
	{ config_id = 4003, gadget_id = 70800183, pos = { x = -17.470, y = -43.175, z = 0.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 198 } } },
	{ config_id = 4004, gadget_id = 70800183, pos = { x = 0.037, y = -43.175, z = -17.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 198 } } },
	{ config_id = 4009, gadget_id = 70800114, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 4012, gadget_id = 70800114, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 4013, gadget_id = 70800157, pos = { x = -1.064, y = -44.000, z = 0.065 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70800149, pos = { x = 11.296, y = 13.705, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4015, gadget_id = 70800149, pos = { x = 16.283, y = 13.672, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70800120, pos = { x = -1.157, y = 1.183, z = 43.751 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4017, gadget_id = 70800121, pos = { x = 3.803, y = 1.110, z = 43.751 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70800131, pos = { x = 4.964, y = 12.553, z = 44.450 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70800131, pos = { x = 7.471, y = -9.966, z = 44.450 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70800149, pos = { x = 13.714, y = 11.133, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4021, gadget_id = 70800149, pos = { x = 13.847, y = -13.787, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4022, gadget_id = 70800150, pos = { x = 11.207, y = -8.732, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4023, gadget_id = 70800151, pos = { x = 13.725, y = -3.736, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70800152, pos = { x = 11.258, y = 11.075, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4025, gadget_id = 70800150, pos = { x = 11.288, y = -13.729, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4026, gadget_id = 70800151, pos = { x = 16.347, y = 11.100, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70800131, pos = { x = 15.003, y = 2.658, z = 44.450 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4028, gadget_id = 70800131, pos = { x = 9.970, y = -2.391, z = 44.450 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4029, gadget_id = 70800152, pos = { x = 13.760, y = 13.680, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4030, gadget_id = 70800151, pos = { x = 13.772, y = -16.263, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4031, gadget_id = 70800152, pos = { x = 16.351, y = -13.777, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4032, gadget_id = 70800150, pos = { x = 13.876, y = -11.278, z = 43.925 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4033, gadget_id = 70800154, pos = { x = 16.134, y = 16.213, z = -43.903 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4034, gadget_id = 70800154, pos = { x = -11.269, y = -11.351, z = -43.971 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4035, gadget_id = 70800122, pos = { x = -3.671, y = 1.217, z = -43.599 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4036, gadget_id = 70800123, pos = { x = 1.316, y = 1.206, z = -43.599 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4037, gadget_id = 70800128, pos = { x = 7.327, y = 14.909, z = -43.726 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4038, gadget_id = 70800128, pos = { x = 14.925, y = 7.553, z = -43.726 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4039, gadget_id = 70800154, pos = { x = -13.783, y = 13.681, z = -43.977 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4040, gadget_id = 70800154, pos = { x = 11.223, y = -11.276, z = -43.959 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4041, gadget_id = 70800153, pos = { x = -16.259, y = -16.397, z = -43.992 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4042, gadget_id = 70800155, pos = { x = -16.256, y = 16.149, z = -43.952 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4043, gadget_id = 70800156, pos = { x = 11.249, y = 11.241, z = -43.884 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4044, gadget_id = 70800153, pos = { x = -8.712, y = -8.773, z = -43.976 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4045, gadget_id = 70800155, pos = { x = 16.262, y = -16.249, z = -43.920 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4046, gadget_id = 70800128, pos = { x = 14.942, y = 0.065, z = -43.726 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4047, gadget_id = 70800128, pos = { x = 7.434, y = -14.936, z = -43.726 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4048, gadget_id = 70800156, pos = { x = -11.263, y = 11.122, z = -43.975 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4049, gadget_id = 70800155, pos = { x = 13.647, y = -13.821, z = -43.997 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4050, gadget_id = 70800156, pos = { x = -13.776, y = -13.697, z = -44.003 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4051, gadget_id = 70800153, pos = { x = 13.770, y = 13.720, z = -44.006 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4052, gadget_id = 70800124, pos = { x = 43.527, y = 1.230, z = 1.139 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4053, gadget_id = 70800125, pos = { x = 43.502, y = 1.165, z = -3.822 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4054, gadget_id = 70800129, pos = { x = 43.936, y = -15.089, z = -15.037 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4055, gadget_id = 70800129, pos = { x = 43.842, y = -7.609, z = -7.543 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4056, gadget_id = 70800129, pos = { x = 44.068, y = -7.523, z = 12.456 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4057, gadget_id = 70800129, pos = { x = 44.068, y = -2.523, z = 15.004 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4058, gadget_id = 70800148, pos = { x = 43.995, y = 1.280, z = 8.670 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4059, gadget_id = 70800148, pos = { x = 43.995, y = -6.291, z = -1.241 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4060, gadget_id = 70800148, pos = { x = 43.995, y = 1.211, z = -11.292 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4061, gadget_id = 70800148, pos = { x = 43.995, y = 8.758, z = -1.259 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4062, gadget_id = 70800146, pos = { x = 43.995, y = -8.760, z = -1.309 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4063, gadget_id = 70800146, pos = { x = 43.995, y = -6.305, z = -3.747 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4064, gadget_id = 70800146, pos = { x = 43.995, y = 6.282, z = -1.324 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4065, gadget_id = 70800147, pos = { x = 43.995, y = 8.739, z = 1.195 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4066, gadget_id = 70800147, pos = { x = 43.995, y = 1.315, z = 6.275 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4067, gadget_id = 70800147, pos = { x = 43.995, y = 8.708, z = -3.831 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4068, gadget_id = 70800145, pos = { x = 43.995, y = 1.213, z = -8.827 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4069, gadget_id = 70800145, pos = { x = 43.995, y = -6.305, z = 1.219 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4070, gadget_id = 70800145, pos = { x = 43.995, y = -3.730, z = -1.231 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4071, gadget_id = 70800126, pos = { x = -43.514, y = 1.212, z = 3.728 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4072, gadget_id = 70800127, pos = { x = -43.539, y = 1.221, z = -1.197 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4073, gadget_id = 70800143, pos = { x = -44.001, y = 8.858, z = 8.767 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4074, gadget_id = 70800143, pos = { x = -44.001, y = -8.669, z = -6.238 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4075, gadget_id = 70800143, pos = { x = -44.001, y = -3.698, z = -6.244 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4076, gadget_id = 70800143, pos = { x = -44.001, y = 1.304, z = 1.284 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4077, gadget_id = 70800141, pos = { x = -44.001, y = 6.232, z = 8.807 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4078, gadget_id = 70800141, pos = { x = -44.001, y = 11.306, z = 8.786 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4079, gadget_id = 70800141, pos = { x = -44.001, y = -1.274, z = -1.305 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4080, gadget_id = 70800142, pos = { x = -44.001, y = 3.786, z = 3.799 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4081, gadget_id = 70800142, pos = { x = -44.001, y = -6.288, z = -6.192 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4082, gadget_id = 70800142, pos = { x = -44.001, y = -1.291, z = 1.289 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4083, gadget_id = 70800144, pos = { x = -44.001, y = 3.755, z = 1.279 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4084, gadget_id = 70800144, pos = { x = -44.001, y = 3.751, z = -1.237 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4085, gadget_id = 70800144, pos = { x = -44.001, y = -1.325, z = 3.818 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4086, gadget_id = 70800130, pos = { x = -43.874, y = 2.626, z = -14.938 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4087, gadget_id = 70800130, pos = { x = -43.874, y = 10.062, z = -7.539 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4088, gadget_id = 70800130, pos = { x = -43.874, y = 12.569, z = -0.031 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4089, gadget_id = 70800130, pos = { x = -43.874, y = 7.455, z = 15.069 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4090, gadget_id = 70800158, pos = { x = 0.130, y = 44.004, z = -0.166 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1 },
	{ config_id = 4131, gadget_id = 70800194, pos = { x = -0.086, y = -43.988, z = 0.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 用来给team挂ability，镜头表现用
	{ config_id = 4091, shape = RegionShape.SPHERE, radius = 100, pos = { x = 0.000, y = 0.000, z = 0.000 }, team_ability_group_list = { "CYRogue_Team_Rotate_Camera" } },
	-- 任务控制挪走上层的场景物件
	{ config_id = 4146, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2.163, y = -216.619, z = -2.453 } }
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "SELECT_OPTION_4005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4005", action = "action_EVENT_SELECT_OPTION_4005", trigger_count = 0 },
	{ config_id = 1004006, name = "SELECT_OPTION_4006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4006", action = "action_EVENT_SELECT_OPTION_4006", trigger_count = 0 },
	{ config_id = 1004007, name = "SELECT_OPTION_4007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4007", action = "action_EVENT_SELECT_OPTION_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "SELECT_OPTION_4008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4008", action = "action_EVENT_SELECT_OPTION_4008", trigger_count = 0 },
	{ config_id = 1004010, name = "GADGET_CREATE_4010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4010", action = "action_EVENT_GADGET_CREATE_4010" },
	-- 旋转结束后逻辑
	{ config_id = 1004011, name = "VARIABLE_CHANGE_4011", event = EventType.EVENT_VARIABLE_CHANGE, source = "Turn", condition = "condition_EVENT_VARIABLE_CHANGE_4011", action = "action_EVENT_VARIABLE_CHANGE_4011", trigger_count = 0 },
	{ config_id = 1004092, name = "VARIABLE_CHANGE_4092", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_west", condition = "condition_EVENT_VARIABLE_CHANGE_4092", action = "action_EVENT_VARIABLE_CHANGE_4092", trigger_count = 0 },
	{ config_id = 1004093, name = "VARIABLE_CHANGE_4093", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_east", condition = "condition_EVENT_VARIABLE_CHANGE_4093", action = "action_EVENT_VARIABLE_CHANGE_4093", trigger_count = 0 },
	{ config_id = 1004094, name = "VARIABLE_CHANGE_4094", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_north", condition = "condition_EVENT_VARIABLE_CHANGE_4094", action = "action_EVENT_VARIABLE_CHANGE_4094", trigger_count = 0 },
	{ config_id = 1004095, name = "VARIABLE_CHANGE_4095", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_south", condition = "condition_EVENT_VARIABLE_CHANGE_4095", action = "action_EVENT_VARIABLE_CHANGE_4095", trigger_count = 0 },
	{ config_id = 1004096, name = "GADGET_STATE_CHANGE_4096", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4096", trigger_count = 0 },
	{ config_id = 1004097, name = "GADGET_STATE_CHANGE_4097", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4097", trigger_count = 0 },
	{ config_id = 1004098, name = "GADGET_STATE_CHANGE_4098", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4098", trigger_count = 0 },
	{ config_id = 1004099, name = "GADGET_STATE_CHANGE_4099", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4099", trigger_count = 0 },
	{ config_id = 1004100, name = "GADGET_STATE_CHANGE_4100", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4100", trigger_count = 0 },
	{ config_id = 1004101, name = "GADGET_STATE_CHANGE_4101", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4101", trigger_count = 0 },
	{ config_id = 1004102, name = "GADGET_STATE_CHANGE_4102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4102", trigger_count = 0 },
	{ config_id = 1004103, name = "GADGET_STATE_CHANGE_4103", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4103", trigger_count = 0 },
	{ config_id = 1004104, name = "VARIABLE_CHANGE_4104", event = EventType.EVENT_VARIABLE_CHANGE, source = "small_west", condition = "condition_EVENT_VARIABLE_CHANGE_4104", action = "action_EVENT_VARIABLE_CHANGE_4104", trigger_count = 0 },
	{ config_id = 1004105, name = "VARIABLE_CHANGE_4105", event = EventType.EVENT_VARIABLE_CHANGE, source = "small_east", condition = "condition_EVENT_VARIABLE_CHANGE_4105", action = "action_EVENT_VARIABLE_CHANGE_4105", trigger_count = 0 },
	{ config_id = 1004106, name = "VARIABLE_CHANGE_4106", event = EventType.EVENT_VARIABLE_CHANGE, source = "small_north", condition = "condition_EVENT_VARIABLE_CHANGE_4106", action = "action_EVENT_VARIABLE_CHANGE_4106", trigger_count = 0 },
	{ config_id = 1004107, name = "VARIABLE_CHANGE_4107", event = EventType.EVENT_VARIABLE_CHANGE, source = "small_south", condition = "condition_EVENT_VARIABLE_CHANGE_4107", action = "action_EVENT_VARIABLE_CHANGE_4107", trigger_count = 0 },
	-- 四个平台解谜完成
	{ config_id = 1004108, name = "VARIABLE_CHANGE_4108", event = EventType.EVENT_VARIABLE_CHANGE, source = "temp_sum", condition = "condition_EVENT_VARIABLE_CHANGE_4108", action = "action_EVENT_VARIABLE_CHANGE_4108", trigger_count = 0 },
	{ config_id = 1004118, name = "ANY_MONSTER_DIE_4118", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4118", action = "action_EVENT_ANY_MONSTER_DIE_4118" },
	{ config_id = 1004119, name = "TIME_AXIS_PASS_4119", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4119", action = "action_EVENT_TIME_AXIS_PASS_4119" },
	{ config_id = 1004120, name = "ANY_MONSTER_DIE_4120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4120", action = "action_EVENT_ANY_MONSTER_DIE_4120" },
	{ config_id = 1004121, name = "ANY_MONSTER_DIE_4121", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4121", action = "action_EVENT_ANY_MONSTER_DIE_4121" },
	{ config_id = 1004122, name = "GADGET_STATE_CHANGE_4122", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4122", trigger_count = 0 },
	{ config_id = 1004123, name = "GADGET_STATE_CHANGE_4123", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4123", trigger_count = 0 },
	{ config_id = 1004124, name = "GADGET_STATE_CHANGE_4124", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4124", trigger_count = 0 },
	{ config_id = 1004125, name = "GADGET_STATE_CHANGE_4125", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4125", trigger_count = 0 },
	{ config_id = 1004126, name = "ANY_MONSTER_DIE_4126", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4126", action = "action_EVENT_ANY_MONSTER_DIE_4126" },
	-- 注目镜头看圆盘子
	{ config_id = 1004127, name = "VARIABLE_CHANGE_4127", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_west", condition = "condition_EVENT_VARIABLE_CHANGE_4127", action = "action_EVENT_VARIABLE_CHANGE_4127" },
	-- 注目镜头看圆盘子
	{ config_id = 1004128, name = "VARIABLE_CHANGE_4128", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_east", condition = "condition_EVENT_VARIABLE_CHANGE_4128", action = "action_EVENT_VARIABLE_CHANGE_4128" },
	-- 注目镜头看圆盘子
	{ config_id = 1004129, name = "VARIABLE_CHANGE_4129", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_north", condition = "condition_EVENT_VARIABLE_CHANGE_4129", action = "action_EVENT_VARIABLE_CHANGE_4129" },
	-- 注目镜头看圆盘子
	{ config_id = 1004130, name = "VARIABLE_CHANGE_4130", event = EventType.EVENT_VARIABLE_CHANGE, source = "big_south", condition = "condition_EVENT_VARIABLE_CHANGE_4130", action = "action_EVENT_VARIABLE_CHANGE_4130" },
	{ config_id = 1004132, name = "TIME_AXIS_PASS_4132", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4132", action = "action_EVENT_TIME_AXIS_PASS_4132" },
	-- 切换平台后播reminder
	{ config_id = 1004133, name = "VARIABLE_CHANGE_4133", event = EventType.EVENT_VARIABLE_CHANGE, source = "Current_Room", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4133", trigger_count = 0 },
	{ config_id = 1004134, name = "TIME_AXIS_PASS_4134", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4134", action = "action_EVENT_TIME_AXIS_PASS_4134" },
	{ config_id = 1004135, name = "TIME_AXIS_PASS_4135", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4135", action = "action_EVENT_TIME_AXIS_PASS_4135" },
	-- 解锁光线装置
	{ config_id = 1004136, name = "TIME_AXIS_PASS_4136", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4136", action = "action_EVENT_TIME_AXIS_PASS_4136" },
	-- 解锁光线装置
	{ config_id = 1004137, name = "TIME_AXIS_PASS_4137", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4137", action = "action_EVENT_TIME_AXIS_PASS_4137" },
	-- 解锁光线装置后镜头
	{ config_id = 1004138, name = "TIME_AXIS_PASS_4138", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4138", action = "action_EVENT_TIME_AXIS_PASS_4138" },
	-- 解锁光线装置后镜头
	{ config_id = 1004139, name = "TIME_AXIS_PASS_4139", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4139", action = "action_EVENT_TIME_AXIS_PASS_4139" },
	-- 播CutScene开大门并且切圆盘完成状态
	{ config_id = 1004140, name = "TIME_AXIS_PASS_4140", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4140", action = "action_EVENT_TIME_AXIS_PASS_4140" },
	-- 创建大符文
	{ config_id = 1004141, name = "TIME_AXIS_PASS_4141", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4141", action = "action_EVENT_TIME_AXIS_PASS_4141" },
	-- 创建大符文
	{ config_id = 1004142, name = "TIME_AXIS_PASS_4142", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4142", action = "action_EVENT_TIME_AXIS_PASS_4142" },
	-- 创建大符文
	{ config_id = 1004143, name = "TIME_AXIS_PASS_4143", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4143", action = "action_EVENT_TIME_AXIS_PASS_4143" },
	-- 创建大符文
	{ config_id = 1004144, name = "TIME_AXIS_PASS_4144", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4144", action = "action_EVENT_TIME_AXIS_PASS_4144" },
	-- 弹教学
	{ config_id = 1004145, name = "TIME_AXIS_PASS_4145", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4145", action = "action_EVENT_TIME_AXIS_PASS_4145" },
	-- 任务控制挪走上层的场景物件
	{ config_id = 1004146, name = "ENTER_REGION_4146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4146", action = "action_EVENT_ENTER_REGION_4146", trigger_count = 0 },
	-- 播reminder
	{ config_id = 1004147, name = "TIME_AXIS_PASS_4147", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4147", action = "action_EVENT_TIME_AXIS_PASS_4147" },
	-- 弹教学
	{ config_id = 1004148, name = "TIME_AXIS_PASS_4148", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4148", action = "action_EVENT_TIME_AXIS_PASS_4148" },
	-- 弹教学
	{ config_id = 1004149, name = "TIME_AXIS_PASS_4149", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4149", action = "action_EVENT_TIME_AXIS_PASS_4149" },
	-- 弹教学
	{ config_id = 1004150, name = "TIME_AXIS_PASS_4150", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4150", action = "action_EVENT_TIME_AXIS_PASS_4150" }
}

-- 变量
variables = {
	{ config_id = 1, name = "small_north", value = 0, no_refresh = false },
	{ config_id = 2, name = "small_south", value = 0, no_refresh = false },
	{ config_id = 3, name = "small_west", value = 0, no_refresh = false },
	{ config_id = 4, name = "small_east", value = 0, no_refresh = false },
	{ config_id = 5, name = "big_north", value = 0, no_refresh = false },
	{ config_id = 6, name = "big_south", value = 0, no_refresh = false },
	{ config_id = 7, name = "big_west", value = 0, no_refresh = false },
	{ config_id = 8, name = "big_east", value = 0, no_refresh = false },
	{ config_id = 9, name = "temp_sum", value = 0, no_refresh = false },
	{ config_id = 10, name = "monster_north", value = 0, no_refresh = false },
	{ config_id = 11, name = "monster_south", value = 0, no_refresh = false },
	{ config_id = 12, name = "monster_east", value = 0, no_refresh = false },
	{ config_id = 13, name = "monster_west", value = 0, no_refresh = false },
	{ config_id = 14, name = "canTurn", value = 0, no_refresh = false },
	{ config_id = 15, name = "reminder_seq", value = 0, no_refresh = false }
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
		-- description = 初始化,
		monsters = { },
		gadgets = { 4009, 4012, 4013, 4090 },
		regions = { 4091, 4146 },
		triggers = { "GADGET_CREATE_4010", "VARIABLE_CHANGE_4011", "VARIABLE_CHANGE_4108", "VARIABLE_CHANGE_4133", "TIME_AXIS_PASS_4140", "ENTER_REGION_4146", "TIME_AXIS_PASS_4147" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 传送点,
		monsters = { },
		gadgets = { 4001, 4002, 4003, 4004 },
		regions = { },
		triggers = { "SELECT_OPTION_4005", "SELECT_OPTION_4006", "SELECT_OPTION_4007", "SELECT_OPTION_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 西面平台光束,
		monsters = { },
		gadgets = { 4016, 4017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4092", "TIME_AXIS_PASS_4119", "VARIABLE_CHANGE_4127" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 东面平台光束,
		monsters = { },
		gadgets = { 4035, 4036 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4093", "VARIABLE_CHANGE_4128", "TIME_AXIS_PASS_4132" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 北面平台光束,
		monsters = { },
		gadgets = { 4052, 4053 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4094", "VARIABLE_CHANGE_4129", "TIME_AXIS_PASS_4134" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 南面平台光束,
		monsters = { },
		gadgets = { 4071, 4072 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4095", "VARIABLE_CHANGE_4130", "TIME_AXIS_PASS_4135" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 西面平台小符文,
		monsters = { },
		gadgets = { 4014, 4015, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4029, 4030, 4031, 4032 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4100", "VARIABLE_CHANGE_4104", "GADGET_STATE_CHANGE_4125" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 东面平台小符文,
		monsters = { },
		gadgets = { 4033, 4034, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4048, 4049, 4050, 4051 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4101", "VARIABLE_CHANGE_4105", "GADGET_STATE_CHANGE_4124" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 北面平台小符文,
		monsters = { },
		gadgets = { 4058, 4059, 4060, 4061, 4062, 4063, 4064, 4065, 4066, 4067, 4068, 4069, 4070 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4102", "VARIABLE_CHANGE_4106", "GADGET_STATE_CHANGE_4123" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 南面平台小符文,
		monsters = { },
		gadgets = { 4073, 4074, 4075, 4076, 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4085 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4103", "VARIABLE_CHANGE_4107", "GADGET_STATE_CHANGE_4122" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 西面平台大符文,
		monsters = { },
		gadgets = { 4018, 4019, 4027, 4028 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4096" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 东面平台大符文,
		monsters = { },
		gadgets = { 4037, 4038, 4046, 4047 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4097" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 北面平台大符文,
		monsters = { },
		gadgets = { 4054, 4055, 4056, 4057 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4098" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 南面平台大符文,
		monsters = { },
		gadgets = { 4086, 4087, 4088, 4089 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4099" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 北面平台怪物,
		monsters = { 4109, 4110, 4111 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4121", "TIME_AXIS_PASS_4136", "TIME_AXIS_PASS_4141", "TIME_AXIS_PASS_4145" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 南面平台怪物,
		monsters = { 4112 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4118", "TIME_AXIS_PASS_4137", "TIME_AXIS_PASS_4142", "TIME_AXIS_PASS_4148" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 西面平台怪物,
		monsters = { 4113, 4114, 4116 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4126", "TIME_AXIS_PASS_4138", "TIME_AXIS_PASS_4143", "TIME_AXIS_PASS_4149" },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 东面平台怪物,
		monsters = { 4115, 4117 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4120", "TIME_AXIS_PASS_4139", "TIME_AXIS_PASS_4144", "TIME_AXIS_PASS_4150" },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = 空气墙,
		monsters = { },
		gadgets = { 4131 },
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
function condition_EVENT_SELECT_OPTION_4005(context, evt)
	-- 判断是gadgetid 4001 option_id 198
	if 4001 ~= evt.param1 then
		return false	
	end
	
	if 198 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4005(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220128004, 4001, 198)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 19)
	
	--TeleportAction(context,2,{3})
	
	ScriptLib.SetGroupVariableValue(context, "Turn", 4)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4006(context, evt)
	-- 判断是gadgetid 4002 option_id 198
	if 4002 ~= evt.param1 then
		return false	
	end
	
	if 198 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4006(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220128004, 4002, 198)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 19)
	
	--TeleportAction(context,2,{4})
	
	ScriptLib.SetGroupVariableValue(context, "Turn", 3)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4007(context, evt)
	-- 判断是gadgetid 4003 option_id 198
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 198 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4007(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220128004, 4003, 198)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 19)
	
	--TeleportAction(context,2,{1})
	
	ScriptLib.SetGroupVariableValue(context, "Turn", 2)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4008(context, evt)
	-- 判断是gadgetid 4004 option_id 198
	if 4004 ~= evt.param1 then
		return false	
	end
	
	if 198 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4008(context, evt)
	ScriptLib.DelWorktopOptionByGroupId(context, 220128004, 4004, 198)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	ScriptLib.KillExtraGroupSuite(context, 220128004, 19)
	
	--TeleportAction(context,2,{2})
	
	ScriptLib.SetGroupVariableValue(context, "Turn", 1)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4010(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 10)
	
	-- 添加suite19的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 19)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Turn"为0
	if ScriptLib.GetGroupVariableValue(context, "Turn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4011(context, evt)
	-- 添加suite19的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 19)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4092(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_west"为4
	if ScriptLib.GetGroupVariableValue(context, "big_west") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4092(context, evt)
	-- 将configid为 4018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4027 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4027, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4028 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4028, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4035 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4035, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4036 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4036, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "temp_sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "temp_sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"timer_center_west"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_center_west", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4093(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_east"为4
	if ScriptLib.GetGroupVariableValue(context, "big_east") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4093(context, evt)
	-- 将configid为 4037 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4037, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4038 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4038, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4046 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4046, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4047 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4047, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "temp_sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "temp_sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"timer_center_east"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_center_east", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4094(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_north"为4
	if ScriptLib.GetGroupVariableValue(context, "big_north") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4094(context, evt)
	-- 将configid为 4054 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4054, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4055 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4055, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4056 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4056, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4057 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4057, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4071 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4071, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4072 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4072, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "temp_sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "temp_sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"timer_center_north"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_center_north", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4095(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_south"为4
	if ScriptLib.GetGroupVariableValue(context, "big_south") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4095(context, evt)
	-- 将configid为 4086 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4086, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4087 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4087, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4088 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4088, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4089 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4089, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4052 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4053 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "temp_sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "temp_sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"timer_center_south"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_center_south", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4096(context, evt)
	local bigRunes_west = { 4018, 4019, 4027, 4028 }
	
	for i,v in ipairs(bigRunes_west) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default and ScriptLib.GetGroupVariableValue(context, "big_west") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_west", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_west == ".. ScriptLib.GetGroupVariableValue(context, "big_west"))
	        elseif evt.param1 == GadgetState.Default and evt.param2 == v and evt.param3 == GadgetState.GearStart and ScriptLib.GetGroupVariableValue(context, "big_west") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_west", -1)
	                ScriptLib.PrintContextLog(context, "@@ Minus>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_west == ".. ScriptLib.GetGroupVariableValue(context, "big_west"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4097(context, evt)
	local bigRunes_east = { 4037, 4038, 4046, 4047 }
	
	for i,v in ipairs(bigRunes_east) do
	         if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default and ScriptLib.GetGroupVariableValue(context, "big_east") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_east", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_east == ".. ScriptLib.GetGroupVariableValue(context, "big_east"))
	        elseif evt.param1 == GadgetState.Default and evt.param2 == v and evt.param3 == GadgetState.GearStart and ScriptLib.GetGroupVariableValue(context, "big_east") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_east", -1)
	                ScriptLib.PrintContextLog(context, "@@ Minus>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_east == ".. ScriptLib.GetGroupVariableValue(context, "big_east"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4098(context, evt)
	local bigRunes_north = { 4054, 4055, 4056, 4057 }
	
	for i,v in ipairs(bigRunes_north) do
	         if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default and ScriptLib.GetGroupVariableValue(context, "big_north") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_north", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_north == ".. ScriptLib.GetGroupVariableValue(context, "big_north"))
	        elseif evt.param1 == GadgetState.Default and evt.param2 == v and evt.param3 == GadgetState.GearStart and ScriptLib.GetGroupVariableValue(context, "big_north") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_north", -1)
	                ScriptLib.PrintContextLog(context, "@@ Minus>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_north == ".. ScriptLib.GetGroupVariableValue(context, "big_north"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4099(context, evt)
	local bigRunes_south = { 4086, 4087, 4088, 4089 }
	
	for i,v in ipairs(bigRunes_south) do
	         if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default and ScriptLib.GetGroupVariableValue(context, "big_south") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_south", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_south == ".. ScriptLib.GetGroupVariableValue(context, "big_south"))
	        elseif evt.param1 == GadgetState.Default and evt.param2 == v and evt.param3 == GadgetState.GearStart and ScriptLib.GetGroupVariableValue(context, "big_south") < 4 then
	                ScriptLib.ChangeGroupVariableValue(context, "big_south", -1)
	                ScriptLib.PrintContextLog(context, "@@ Minus>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current big_south == ".. ScriptLib.GetGroupVariableValue(context, "big_south"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4100(context, evt)
	local smallRunes_west = { 4014, 4015, 4020, 4021 }
	
	for i,v in ipairs(smallRunes_west) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.ChangeGroupVariableValue(context, "small_west", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current small_west == ".. ScriptLib.GetGroupVariableValue(context, "small_west"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4101(context, evt)
	local smallRunes_east = { 4033, 4034, 4039, 4040 }
	
	for i,v in ipairs(smallRunes_east) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.ChangeGroupVariableValue(context, "small_east", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current small_east == ".. ScriptLib.GetGroupVariableValue(context, "small_east"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4102(context, evt)
	local smallRunes_north = { 4058, 4059, 4060, 4061 }
	
	for i,v in ipairs(smallRunes_north) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.ChangeGroupVariableValue(context, "small_north", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current small_north == ".. ScriptLib.GetGroupVariableValue(context, "small_north"))
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4103(context, evt)
	local smallRunes_south = { 4073, 4074, 4075, 4076 }
	
	for i,v in ipairs(smallRunes_south) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.ChangeGroupVariableValue(context, "small_south", 1)
	                ScriptLib.PrintContextLog(context, "@@ Add>>>>"..v)
	                ScriptLib.PrintContextLog(context, "@@ current small_south == ".. ScriptLib.GetGroupVariableValue(context, "small_south"))
	        end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4104(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"small_west"为4
	if ScriptLib.GetGroupVariableValue(context, "small_west") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4104(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 17)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4105(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"small_east"为4
	if ScriptLib.GetGroupVariableValue(context, "small_east") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4105(context, evt)
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 18)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4106(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"small_north"为4
	if ScriptLib.GetGroupVariableValue(context, "small_north") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4106(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 15)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4107(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"small_south"为4
	if ScriptLib.GetGroupVariableValue(context, "small_south") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4107(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 16)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220128004, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4108(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"temp_sum"为4
	if ScriptLib.GetGroupVariableValue(context, "temp_sum") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4108(context, evt)
	-- 创建标识为"timer_final"，时间节点为{6,19}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_final", {6,19}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4118(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4118(context, evt)
	LF_Clear(context)
	
	-- 将本组内变量名为 "monster_south" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_south", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	-- 通知场景上的所有玩家播放名字为63 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 63, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"timer_beam_south"，时间节点为{1,3.5,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_beam_south", {1,3.5,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4119(context, evt)
	if "timer_center_west" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4119(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4120(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4120(context, evt)
	LF_Clear(context)
	
	-- 将本组内变量名为 "monster_east" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_east", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	-- 通知场景上的所有玩家播放名字为63 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 63, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"timer_beam_east"，时间节点为{1,3.5,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_beam_east", {1,3.5,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4121(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4121(context, evt)
	LF_Clear(context)
	
	-- 将本组内变量名为 "monster_north" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_north", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	-- 通知场景上的所有玩家播放名字为63 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 63, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"timer_beam_north"，时间节点为{1,3.5,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_beam_north", {1,3.5,6}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4122(context, evt)
	local burstRunes_south = { 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4085 }
	
	for i,v in ipairs(burstRunes_south) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.SetGadgetStateByConfigId(context, v, 202)
	                ScriptLib.PrintContextLog(context, "@@ butst small_south")
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4123(context, evt)
	local burstRunes_north = { 4062, 4063, 4064, 4065, 4066, 4067, 4068, 4069, 4070 }
	
	for i,v in ipairs(burstRunes_north) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.SetGadgetStateByConfigId(context, v, 202)
	                ScriptLib.PrintContextLog(context, "@@ butst small_north")
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4124(context, evt)
	local burstRunes_east = { 4041, 4042, 4043, 4044, 4045, 4048, 4049, 4050, 4051 }
	
	for i,v in ipairs(burstRunes_east) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.SetGadgetStateByConfigId(context, v, 202)
	                ScriptLib.PrintContextLog(context, "@@ butst small_east")
	        end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4125(context, evt)
	local burstRunes_west = { 4022, 4023, 4024, 4025, 4026, 4029, 4030, 4031, 4032 }
	
	for i,v in ipairs(burstRunes_west) do
	        if evt.param1 == GadgetState.GearStart and evt.param2 == v and evt.param3 == GadgetState.Default then
	                ScriptLib.SetGadgetStateByConfigId(context, v, 202)
	                ScriptLib.PrintContextLog(context, "@@ butst small_west")
	        end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4126(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4126(context, evt)
	LF_Clear(context)
	
	-- 将本组内变量名为 "monster_west" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_west", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 2)
	
	-- 通知场景上的所有玩家播放名字为63 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 63, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"timer_beam_west"，时间节点为{1,3.5,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_beam_west", {1,3.5,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4127(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_west"为4
	if ScriptLib.GetGroupVariableValue(context, "big_west") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4127(context, evt)
	local pos_follow = {x=0, y=40, z=0}
	local target_config_id = 4013
	ScriptLib.BeginCameraSceneLook(context, { look_configid = target_config_id, lis_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                              is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                              is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4128(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_east"为4
	if ScriptLib.GetGroupVariableValue(context, "big_east") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4128(context, evt)
	local pos_follow = {x=0, y=40, z=0}
	local target_config_id = 4013
	ScriptLib.BeginCameraSceneLook(context, { look_configid = target_config_id, lis_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                              is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                              is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4129(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_north"为4
	if ScriptLib.GetGroupVariableValue(context, "big_north") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4129(context, evt)
	local pos_follow = {x=0, y=40, z=0}
	local target_config_id = 4013
	ScriptLib.BeginCameraSceneLook(context, { look_configid = target_config_id, lis_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                              is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                              is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4130(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_south"为4
	if ScriptLib.GetGroupVariableValue(context, "big_south") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4130(context, evt)
	local pos_follow = {x=0, y=40, z=0}
	local target_config_id = 4013
	ScriptLib.BeginCameraSceneLook(context, { look_configid = target_config_id, lis_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                              is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                              is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4132(context, evt)
	if "timer_center_east" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4132(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4133(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "Current_Room") == 2 and ScriptLib.GetGroupVariableValue(context, "temp_sum") == 4 then
	        ScriptLib.AddQuestProgress(context, "102903")
	elseif ScriptLib.GetGroupVariableValue(context, "Current_Room") ~= -2 and ScriptLib.GetGroupVariableValue(context, "Current_Room") ~= 2 then
	        if ScriptLib.GetGroupVariableValue(context, "reminder_seq") == 0 then
	                ScriptLib.ShowReminder(context, 201280301)
	                ScriptLib.SetGroupVariableValue(context, "reminder_seq", 1)
	        elseif ScriptLib.GetGroupVariableValue(context, "reminder_seq") == 1 then
	                ScriptLib.ShowReminder(context, 201280401)
	                ScriptLib.SetGroupVariableValue(context, "reminder_seq", 2)
	        elseif ScriptLib.GetGroupVariableValue(context, "reminder_seq") == 2 then
	                ScriptLib.ShowReminder(context, 201280501)
	                ScriptLib.SetGroupVariableValue(context, "reminder_seq", 3)
	        end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4134(context, evt)
	if "timer_center_north" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4134(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4135(context, evt)
	if "timer_center_south" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4135(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4136(context, evt)
	if "timer_beam_north" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4136(context, evt)
	-- 将configid为 4052 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4052, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4053 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4053, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4137(context, evt)
	if "timer_beam_south" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4137(context, evt)
	-- 将configid为 4071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4072 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4072, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4138(context, evt)
	if "timer_beam_west" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4138(context, evt)
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4139(context, evt)
	if "timer_beam_east" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4139(context, evt)
	-- 将configid为 4035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4140(context, evt)
	if "timer_final" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4140(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 4090, 201)
	
	ScriptLib.SetGadgetStateByConfigId(context, 4013, 205)
	
	ScriptLib.PlayCutScene(context, 62, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4141(context, evt)
	if "timer_beam_north" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4141(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4142(context, evt)
	if "timer_beam_south" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4142(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4143(context, evt)
	if "timer_beam_west" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4143(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4144(context, evt)
	if "timer_beam_east" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4144(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220128004, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4145(context, evt)
	if "timer_beam_north" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4145(context, evt)
	ScriptLib.AssignPlayerShowTemplateReminder(context,188,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	
	ScriptLib.PrintContextLog(context,  "@@ Trigger Tutorial!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4146(context, evt)
	if evt.param1 ~= 4146 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4146(context, evt)
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	ScriptLib.PrintContextLog(context, "@@ Quest 102905 Finish!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4147(context, evt)
	if "timer_final" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4147(context, evt)
	ScriptLib.ShowReminder(context, 201280201)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4148(context, evt)
	if "timer_beam_south" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4148(context, evt)
	ScriptLib.AssignPlayerShowTemplateReminder(context,188,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	
	ScriptLib.PrintContextLog(context,  "@@ Trigger Tutorial!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4149(context, evt)
	if "timer_beam_west" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4149(context, evt)
	ScriptLib.AssignPlayerShowTemplateReminder(context,188,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	
	ScriptLib.PrintContextLog(context,  "@@ Trigger Tutorial!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4150(context, evt)
	if "timer_beam_east" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4150(context, evt)
	ScriptLib.AssignPlayerShowTemplateReminder(context,188,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
	
	ScriptLib.PrintContextLog(context,  "@@ Trigger Tutorial!!!")
	
	return 0
end

require "V2_7/rogue_rotate_whitebox"