-- 基础信息
local base_info = {
	group_id = 220165004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4007, monster_id = 26120301, pos = { x = 872.282, y = 25.026, z = 211.325 }, rot = { x = 0.000, y = 33.756, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4010, monster_id = 26120301, pos = { x = 870.287, y = 24.980, z = 218.228 }, rot = { x = 0.000, y = 122.333, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4011, monster_id = 26120401, pos = { x = 878.681, y = 25.026, z = 220.323 }, rot = { x = 0.000, y = 239.275, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4012, monster_id = 26090901, pos = { x = 879.986, y = 25.026, z = 209.928 }, rot = { x = 0.000, y = 341.345, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4013, monster_id = 26090901, pos = { x = 882.942, y = 25.037, z = 213.927 }, rot = { x = 0.000, y = 287.021, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4018, monster_id = 22040101, pos = { x = 282.295, y = 26.136, z = 214.588 }, rot = { x = 0.000, y = 25.463, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4019, monster_id = 22040101, pos = { x = 285.833, y = 26.363, z = 214.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4030, monster_id = 22040101, pos = { x = 272.505, y = 26.416, z = 220.931 }, rot = { x = 0.000, y = 55.691, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70350456, pos = { x = 919.052, y = 16.036, z = 212.136 }, rot = { x = 18.661, y = 30.020, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70290577, pos = { x = 908.536, y = 19.458, z = 203.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70320081, pos = { x = 922.228, y = 13.616, z = 224.414 }, rot = { x = 0.000, y = 304.202, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70320040, pos = { x = 874.886, y = 24.943, z = 217.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70320042, pos = { x = 922.210, y = 14.239, z = 218.721 }, rot = { x = 0.000, y = 56.128, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 4006, gadget_id = 70320042, pos = { x = 820.851, y = 13.435, z = 256.340 }, rot = { x = 0.000, y = 251.921, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 4009, gadget_id = 70320081, pos = { x = 874.810, y = 25.382, z = 217.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70320040, pos = { x = 279.370, y = 25.894, z = 222.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4017, gadget_id = 70211011, pos = { x = 279.341, y = 26.399, z = 222.470 }, rot = { x = 0.000, y = 58.138, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, autopick = true },
	-- 空间1下
	{ config_id = 4020, gadget_id = 70320054, pos = { x = 892.951, y = 7.273, z = 213.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 4023, gadget_id = 70290527, pos = { x = 818.157, y = 18.788, z = 263.491 }, rot = { x = 0.000, y = 314.593, z = 0.000 }, level = 1 },
	{ config_id = 4025, gadget_id = 70360001, pos = { x = 922.267, y = 14.585, z = 224.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70320040, pos = { x = 883.816, y = 84.126, z = 217.668 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	-- 空间1上
	{ config_id = 4028, gadget_id = 70320076, pos = { x = 890.997, y = 80.409, z = 217.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 4029, gadget_id = 70220103, pos = { x = 931.983, y = 21.425, z = 221.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4031, gadget_id = 70950156, pos = { x = 279.485, y = 25.912, z = 222.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4032, gadget_id = 70950156, pos = { x = 873.526, y = 25.602, z = 217.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 空间2下
	{ config_id = 4034, gadget_id = 70320054, pos = { x = 279.496, y = 11.960, z = 214.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 空间2上
	{ config_id = 4035, gadget_id = 70320076, pos = { x = 280.055, y = 80.685, z = 218.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 4037, gadget_id = 70320040, pos = { x = 280.056, y = 72.870, z = 217.001 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 4038, gadget_id = 70290196, pos = { x = 286.978, y = 25.911, z = 229.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4043, gadget_id = 70360001, pos = { x = 874.867, y = 26.400, z = 217.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4047, gadget_id = 70290577, pos = { x = 846.103, y = 19.694, z = 230.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4048, gadget_id = 70290527, pos = { x = 231.955, y = 17.761, z = 177.045 }, rot = { x = 0.000, y = 38.822, z = 0.000 }, level = 1 },
	{ config_id = 4049, gadget_id = 70290196, pos = { x = 286.978, y = 25.911, z = 229.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4061, gadget_id = 70320058, pos = { x = 922.470, y = 38.760, z = 230.510 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1 },
	{ config_id = 4062, gadget_id = 70320058, pos = { x = 906.050, y = 58.420, z = 185.490 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1 },
	{ config_id = 4063, gadget_id = 70320058, pos = { x = 868.940, y = 92.230, z = 198.220 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1 },
	{ config_id = 4064, gadget_id = 70320058, pos = { x = 872.357, y = 45.575, z = 188.915 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1 },
	{ config_id = 4065, gadget_id = 70320058, pos = { x = 863.850, y = 50.980, z = 241.140 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1 },
	{ config_id = 4066, gadget_id = 70320058, pos = { x = 901.710, y = 48.770, z = 254.380 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1 },
	{ config_id = 4067, gadget_id = 70320058, pos = { x = 893.890, y = 23.830, z = 205.160 }, rot = { x = 0.000, y = 96.239, z = 0.000 }, level = 1 },
	{ config_id = 4068, gadget_id = 70320057, pos = { x = 897.870, y = 23.040, z = 223.223 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1 },
	{ config_id = 4069, gadget_id = 70320053, pos = { x = 898.410, y = 17.730, z = 211.950 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4070, gadget_id = 70320053, pos = { x = 896.180, y = 15.760, z = 225.370 }, rot = { x = 0.000, y = 82.124, z = 0.000 }, level = 1 },
	{ config_id = 4071, gadget_id = 70320053, pos = { x = 916.850, y = 36.430, z = 200.120 }, rot = { x = 0.000, y = 320.712, z = 0.000 }, level = 1 },
	{ config_id = 4072, gadget_id = 70320053, pos = { x = 858.770, y = 47.845, z = 243.760 }, rot = { x = 0.000, y = 125.711, z = 0.000 }, level = 1 },
	{ config_id = 4073, gadget_id = 70320053, pos = { x = 902.600, y = 21.970, z = 212.670 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4076, gadget_id = 70320058, pos = { x = 316.070, y = 52.612, z = 215.530 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1 },
	{ config_id = 4077, gadget_id = 70320058, pos = { x = 306.578, y = 54.692, z = 205.318 }, rot = { x = 0.000, y = 310.764, z = 0.000 }, level = 1 },
	{ config_id = 4078, gadget_id = 70320058, pos = { x = 260.810, y = 90.402, z = 184.430 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1 },
	{ config_id = 4079, gadget_id = 70320058, pos = { x = 272.420, y = 38.232, z = 193.520 }, rot = { x = 0.000, y = 344.828, z = 0.000 }, level = 1 },
	{ config_id = 4080, gadget_id = 70320058, pos = { x = 274.501, y = 46.842, z = 239.912 }, rot = { x = 0.000, y = 192.951, z = 0.000 }, level = 1 },
	{ config_id = 4081, gadget_id = 70320058, pos = { x = 309.980, y = 42.252, z = 231.160 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1 },
	{ config_id = 4082, gadget_id = 70320058, pos = { x = 288.740, y = 25.192, z = 205.120 }, rot = { x = 0.000, y = 96.239, z = 0.000 }, level = 1 },
	{ config_id = 4083, gadget_id = 70320057, pos = { x = 297.180, y = 25.282, z = 219.990 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1 },
	{ config_id = 4084, gadget_id = 70320053, pos = { x = 295.140, y = 21.332, z = 217.570 }, rot = { x = 0.000, y = 74.828, z = 0.000 }, level = 1 },
	{ config_id = 4085, gadget_id = 70320053, pos = { x = 292.750, y = 21.372, z = 232.660 }, rot = { x = 0.000, y = 82.124, z = 0.000 }, level = 1 },
	{ config_id = 4086, gadget_id = 70320053, pos = { x = 308.700, y = 38.082, z = 194.360 }, rot = { x = 0.000, y = 320.712, z = 0.000 }, level = 1 },
	{ config_id = 4087, gadget_id = 70320053, pos = { x = 269.875, y = 47.002, z = 242.714 }, rot = { x = 0.000, y = 189.874, z = 0.000 }, level = 1 },
	{ config_id = 4088, gadget_id = 70320053, pos = { x = 299.490, y = 24.312, z = 212.720 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4091, gadget_id = 70220103, pos = { x = 299.459, y = 26.867, z = 226.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4117, gadget_id = 70310016, pos = { x = 886.543, y = 24.472, z = 212.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 4118, gadget_id = 70310016, pos = { x = 293.413, y = 25.283, z = 219.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
}

-- 区域
regions = {
	-- 刷怪1
	{ config_id = 4015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 876.066, y = 25.753, z = 215.972 } },
	-- 翻转1
	{ config_id = 4033, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2
	{ config_id = 4036, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 刷怪2
	{ config_id = 4044, shape = RegionShape.SPHERE, radius = 15, pos = { x = 269.263, y = 25.769, z = 221.893 } },
	-- 翻转1目标点
	{ config_id = 4050, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2目标点
	{ config_id = 4051, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	{ config_id = 4052, shape = RegionShape.SPHERE, radius = 5, pos = { x = 918.556, y = 14.421, z = 221.315 } },
	-- reminder
	{ config_id = 4053, shape = RegionShape.SPHERE, radius = 13, pos = { x = 279.233, y = 25.771, z = 217.280 } },
	-- 翻转1复活点
	{ config_id = 4055, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4056, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 宝箱
	{ config_id = 4057, shape = RegionShape.SPHERE, radius = 100, pos = { x = 290.909, y = 25.762, z = 219.000 } },
	-- 翻转2目标点
	{ config_id = 4060, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 瀑布
	{ config_id = 4092, shape = RegionShape.SPHERE, radius = 100, pos = { x = 877.447, y = 25.034, z = 216.767 } },
	-- 瀑布
	{ config_id = 4093, shape = RegionShape.SPHERE, radius = 100, pos = { x = 277.805, y = 25.855, z = 220.434 } },
	-- 翻转2第一次进入
	{ config_id = 4094, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 翻转1目标点
	{ config_id = 4095, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2目标点
	{ config_id = 4096, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 第一次进入目标点
	{ config_id = 4098, shape = RegionShape.SPHERE, radius = 5, pos = { x = 929.282, y = 15.123, z = 223.273 } },
	-- 翻转1雨生花
	{ config_id = 4100, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2雨生花
	{ config_id = 4101, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 空气墙
	{ config_id = 4104, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转1复活点
	{ config_id = 4105, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4107, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 翻转1复活点
	{ config_id = 4108, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4109, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 翻转1复活点
	{ config_id = 4110, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4111, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 翻转1复活点
	{ config_id = 4112, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4113, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- 翻转1复活点
	{ config_id = 4114, shape = RegionShape.SPHERE, radius = 100, pos = { x = 292.388, y = 25.771, z = 219.105 } },
	-- 翻转2复活点
	{ config_id = 4115, shape = RegionShape.SPHERE, radius = 100, pos = { x = 891.237, y = 25.597, z = 208.640 } },
	-- reminder
	{ config_id = 4116, shape = RegionShape.SPHERE, radius = 10, pos = { x = 875.780, y = 25.023, z = 217.241 } }
}

-- 触发器
triggers = {
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008" },
	{ config_id = 1004014, name = "ANY_MONSTER_DIE_4014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4014", action = "action_EVENT_ANY_MONSTER_DIE_4014" },
	-- 刷怪1
	{ config_id = 1004015, name = "ENTER_REGION_4015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4015", action = "action_EVENT_ENTER_REGION_4015" },
	{ config_id = 1004021, name = "ANY_MONSTER_DIE_4021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4021", action = "action_EVENT_ANY_MONSTER_DIE_4021" },
	{ config_id = 1004022, name = "GADGET_STATE_CHANGE_4022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4022", action = "action_EVENT_GADGET_STATE_CHANGE_4022" },
	{ config_id = 1004024, name = "GADGET_CREATE_4024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4024", action = "action_EVENT_GADGET_CREATE_4024" },
	{ config_id = 1004026, name = "SELECT_OPTION_4026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4026", action = "action_EVENT_SELECT_OPTION_4026" },
	-- 翻转1
	{ config_id = 1004033, name = "ENTER_REGION_4033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4033", action = "action_EVENT_ENTER_REGION_4033", trigger_count = 0 },
	-- 翻转2
	{ config_id = 1004036, name = "ENTER_REGION_4036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4036", action = "action_EVENT_ENTER_REGION_4036", trigger_count = 0 },
	{ config_id = 1004039, name = "PLATFORM_ARRIVAL_4039", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4039", action = "action_EVENT_PLATFORM_ARRIVAL_4039", trigger_count = 0 },
	{ config_id = 1004040, name = "PLATFORM_ARRIVAL_4040", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4040", action = "action_EVENT_PLATFORM_ARRIVAL_4040", trigger_count = 0 },
	-- 雨中花台座
	{ config_id = 1004041, name = "GADGET_STATE_CHANGE_4041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4041", action = "action_EVENT_GADGET_STATE_CHANGE_4041", trigger_count = 0 },
	-- 雨中花台座
	{ config_id = 1004042, name = "SELECT_OPTION_4042", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4042", action = "action_EVENT_SELECT_OPTION_4042" },
	-- 刷怪2
	{ config_id = 1004044, name = "ENTER_REGION_4044", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4044", action = "action_EVENT_ENTER_REGION_4044" },
	-- 创生传送门1
	{ config_id = 1004045, name = "PLATFORM_ARRIVAL_4045", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4045", action = "action_EVENT_PLATFORM_ARRIVAL_4045", trigger_count = 0 },
	-- 创生传送门2
	{ config_id = 1004046, name = "PLATFORM_ARRIVAL_4046", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4046", action = "action_EVENT_PLATFORM_ARRIVAL_4046", trigger_count = 0 },
	-- 翻转1目标点
	{ config_id = 1004050, name = "ENTER_REGION_4050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4050", action = "action_EVENT_ENTER_REGION_4050", trigger_count = 0 },
	-- 翻转2目标点
	{ config_id = 1004051, name = "ENTER_REGION_4051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4051", action = "action_EVENT_ENTER_REGION_4051", trigger_count = 0 },
	{ config_id = 1004052, name = "ENTER_REGION_4052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4052", action = "action_EVENT_ENTER_REGION_4052" },
	-- reminder
	{ config_id = 1004053, name = "ENTER_REGION_4053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4053", action = "action_EVENT_ENTER_REGION_4053" },
	{ config_id = 1004054, name = "QUEST_FINISH_4054", event = EventType.EVENT_QUEST_FINISH, source = "1301420", condition = "", action = "action_EVENT_QUEST_FINISH_4054" },
	-- 翻转1复活点
	{ config_id = 1004055, name = "ENTER_REGION_4055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4055", action = "action_EVENT_ENTER_REGION_4055" },
	-- 翻转2复活点
	{ config_id = 1004056, name = "ENTER_REGION_4056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4056", action = "action_EVENT_ENTER_REGION_4056" },
	-- 宝箱
	{ config_id = 1004057, name = "ENTER_REGION_4057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4057", action = "action_EVENT_ENTER_REGION_4057", trigger_count = 0 },
	-- 雨中花删宝箱
	{ config_id = 1004058, name = "GADGET_STATE_CHANGE_4058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4058", action = "action_EVENT_GADGET_STATE_CHANGE_4058", trigger_count = 0 },
	-- 雨中花删宝箱
	{ config_id = 1004059, name = "TIME_AXIS_PASS_4059", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4059", action = "action_EVENT_TIME_AXIS_PASS_4059", trigger_count = 0 },
	-- 翻转2目标点
	{ config_id = 1004060, name = "ENTER_REGION_4060", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4060", action = "action_EVENT_ENTER_REGION_4060", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004074, name = "TIME_AXIS_PASS_4074", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4074", action = "action_EVENT_TIME_AXIS_PASS_4074", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004075, name = "PLATFORM_ARRIVAL_4075", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4075", action = "action_EVENT_PLATFORM_ARRIVAL_4075", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004089, name = "TIME_AXIS_PASS_4089", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4089", action = "action_EVENT_TIME_AXIS_PASS_4089", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004090, name = "PLATFORM_ARRIVAL_4090", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4090", action = "action_EVENT_PLATFORM_ARRIVAL_4090", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004092, name = "ENTER_REGION_4092", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4092", action = "action_EVENT_ENTER_REGION_4092", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1004093, name = "ENTER_REGION_4093", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4093", action = "action_EVENT_ENTER_REGION_4093", trigger_count = 0 },
	-- 翻转2第一次进入
	{ config_id = 1004094, name = "ENTER_REGION_4094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4094", action = "action_EVENT_ENTER_REGION_4094" },
	-- 翻转1目标点
	{ config_id = 1004095, name = "ENTER_REGION_4095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4095", action = "action_EVENT_ENTER_REGION_4095", trigger_count = 0 },
	-- 翻转2目标点
	{ config_id = 1004096, name = "ENTER_REGION_4096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4096", action = "action_EVENT_ENTER_REGION_4096", trigger_count = 0 },
	-- 雨中花台座目标点
	{ config_id = 1004097, name = "GADGET_STATE_CHANGE_4097", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4097", action = "action_EVENT_GADGET_STATE_CHANGE_4097", trigger_count = 0 },
	-- 第一次进入目标点
	{ config_id = 1004098, name = "ENTER_REGION_4098", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4098", action = "action_EVENT_ENTER_REGION_4098" },
	-- 雨中花台座
	{ config_id = 1004099, name = "GADGET_STATE_CHANGE_4099", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4099", action = "action_EVENT_GADGET_STATE_CHANGE_4099", trigger_count = 0 },
	-- 翻转1雨生花
	{ config_id = 1004100, name = "ENTER_REGION_4100", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4100", action = "action_EVENT_ENTER_REGION_4100", trigger_count = 0 },
	-- 翻转2雨生花
	{ config_id = 1004101, name = "ENTER_REGION_4101", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4101", action = "action_EVENT_ENTER_REGION_4101", trigger_count = 0 },
	-- 雨生花延迟1
	{ config_id = 1004102, name = "TIME_AXIS_PASS_4102", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4102", action = "action_EVENT_TIME_AXIS_PASS_4102", trigger_count = 0 },
	-- 雨生花延迟2
	{ config_id = 1004103, name = "TIME_AXIS_PASS_4103", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4103", action = "action_EVENT_TIME_AXIS_PASS_4103", trigger_count = 0 },
	-- 空气墙
	{ config_id = 1004104, name = "ENTER_REGION_4104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4104", action = "action_EVENT_ENTER_REGION_4104", trigger_count = 0 },
	-- 翻转1复活点
	{ config_id = 1004105, name = "ENTER_REGION_4105", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4105", action = "action_EVENT_ENTER_REGION_4105" },
	{ config_id = 1004106, name = "ANY_GADGET_DIE_4106", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4106", action = "action_EVENT_ANY_GADGET_DIE_4106" },
	-- 翻转2复活点
	{ config_id = 1004107, name = "ENTER_REGION_4107", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4107", action = "action_EVENT_ENTER_REGION_4107" },
	-- 翻转1复活点
	{ config_id = 1004108, name = "ENTER_REGION_4108", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4108", action = "action_EVENT_ENTER_REGION_4108" },
	-- 翻转2复活点
	{ config_id = 1004109, name = "ENTER_REGION_4109", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4109", action = "action_EVENT_ENTER_REGION_4109" },
	-- 翻转1复活点
	{ config_id = 1004110, name = "ENTER_REGION_4110", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4110", action = "action_EVENT_ENTER_REGION_4110" },
	-- 翻转2复活点
	{ config_id = 1004111, name = "ENTER_REGION_4111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4111", action = "action_EVENT_ENTER_REGION_4111" },
	-- 翻转1复活点
	{ config_id = 1004112, name = "ENTER_REGION_4112", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4112", action = "action_EVENT_ENTER_REGION_4112" },
	-- 翻转2复活点
	{ config_id = 1004113, name = "ENTER_REGION_4113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4113", action = "action_EVENT_ENTER_REGION_4113" },
	-- 翻转1复活点
	{ config_id = 1004114, name = "ENTER_REGION_4114", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4114", action = "action_EVENT_ENTER_REGION_4114" },
	-- 翻转2复活点
	{ config_id = 1004115, name = "ENTER_REGION_4115", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4115", action = "action_EVENT_ENTER_REGION_4115" },
	-- reminder
	{ config_id = 1004116, name = "ENTER_REGION_4116", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4116", action = "action_EVENT_ENTER_REGION_4116" }
}

-- 变量
variables = {
	{ config_id = 1, name = "updown1", value = 0, no_refresh = false },
	{ config_id = 3, name = "flower", value = 0, no_refresh = false },
	{ config_id = 4, name = "key", value = 0, no_refresh = false },
	{ config_id = 6, name = "monster1", value = 0, no_refresh = false },
	{ config_id = 7, name = "monster2", value = 0, no_refresh = false },
	{ config_id = 8, name = "reminder", value = 0, no_refresh = false },
	{ config_id = 9, name = "chest", value = 0, no_refresh = false },
	{ config_id = 10, name = "revive1", value = 0, no_refresh = false },
	{ config_id = 11, name = "first", value = 0, no_refresh = false },
	{ config_id = 12, name = "reload", value = 0, no_refresh = false },
	{ config_id = 13, name = "reconnect", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4119, gadget_id = 70800194, pos = { x = 278.301, y = 25.696, z = 230.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 4038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001, 4002, 4003, 4004, 4005, 4006, 4009, 4016, 4020, 4023, 4025, 4027, 4028, 4029, 4034, 4035, 4037, 4043, 4047, 4048, 4061, 4062, 4063, 4064, 4065, 4066, 4067, 4068, 4069, 4070, 4071, 4072, 4073, 4076, 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4088, 4091, 4117, 4118 },
		regions = { 4015, 4033, 4036, 4044, 4050, 4051, 4052, 4053, 4055, 4056, 4057, 4060, 4092, 4093, 4094, 4095, 4096, 4098, 4100, 4101, 4104, 4105, 4107, 4108, 4109, 4110, 4111, 4112, 4113, 4114, 4115, 4116 },
		triggers = { "GADGET_STATE_CHANGE_4008", "ENTER_REGION_4015", "GADGET_STATE_CHANGE_4022", "GADGET_CREATE_4024", "SELECT_OPTION_4026", "ENTER_REGION_4033", "ENTER_REGION_4036", "PLATFORM_ARRIVAL_4039", "PLATFORM_ARRIVAL_4040", "GADGET_STATE_CHANGE_4041", "SELECT_OPTION_4042", "ENTER_REGION_4044", "PLATFORM_ARRIVAL_4045", "PLATFORM_ARRIVAL_4046", "ENTER_REGION_4050", "ENTER_REGION_4051", "ENTER_REGION_4052", "ENTER_REGION_4053", "QUEST_FINISH_4054", "ENTER_REGION_4055", "ENTER_REGION_4056", "ENTER_REGION_4057", "GADGET_STATE_CHANGE_4058", "TIME_AXIS_PASS_4059", "ENTER_REGION_4060", "TIME_AXIS_PASS_4074", "PLATFORM_ARRIVAL_4075", "TIME_AXIS_PASS_4089", "PLATFORM_ARRIVAL_4090", "ENTER_REGION_4092", "ENTER_REGION_4093", "ENTER_REGION_4094", "ENTER_REGION_4095", "ENTER_REGION_4096", "GADGET_STATE_CHANGE_4097", "ENTER_REGION_4098", "GADGET_STATE_CHANGE_4099", "ENTER_REGION_4100", "ENTER_REGION_4101", "TIME_AXIS_PASS_4102", "TIME_AXIS_PASS_4103", "ENTER_REGION_4104", "ENTER_REGION_4105", "ENTER_REGION_4107", "ENTER_REGION_4108", "ENTER_REGION_4109", "ENTER_REGION_4110", "ENTER_REGION_4111", "ENTER_REGION_4112", "ENTER_REGION_4113", "ENTER_REGION_4114", "ENTER_REGION_4115", "ENTER_REGION_4116" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4007, 4010, 4011, 4012, 4013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4018, 4019, 4030 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 4032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 4031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 4017 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_4106" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 4049 },
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
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220165004, 4005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "key" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220165004) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 3)
	
	-- 将本组内变量名为 "monster1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 21 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4015(context, evt)
	if evt.param1 ~= 4015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220165004) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "monster2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220165004, 4006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	-- 将configid为 4023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4024(context, evt)
	if 4025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165004, 4025, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4026(context, evt)
	-- 判断是gadgetid 4025 option_id 220
	if 4025 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4026(context, evt)
	-- 删除指定group： 220165004 ；指定config：4025；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165004, 4025, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4033(context, evt)
	if evt.param1 ~= 4033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown1"为0
	if ScriptLib.GetGroupVariableValue(context, "updown1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4033(context, evt)
	-- 将本组内变量名为 "updown1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "updown1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4034, 3, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4035, 4, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4020, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4028, 2, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	
	-- 删除suite3的所有内容
	
	ScriptLib.SetWeatherAreaState(context,10152,0)
	ScriptLib.SetWeatherAreaState(context,10158,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10158) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : weather10158")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4036(context, evt)
	if evt.param1 ~= 4036 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown1"为1
	if ScriptLib.GetGroupVariableValue(context, "updown1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4036(context, evt)
	-- 将本组内变量名为 "updown1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "updown1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "reconnect" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reconnect", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4020, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4028, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4034, 3, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4035, 4, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 10)
	
	ScriptLib.SetWeatherAreaState(context,10151,0)
	ScriptLib.SetWeatherAreaState(context,10153,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10153) then
	
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : weather10153")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4039(context, evt)
	-- 判断是gadgetid 为 4020的移动平台，是否到达了1 的点集中的 2 点
	
	if 4020 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4039(context, evt)
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220165004 ；指定config：4043；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165004, 4043, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	ScriptLib.SetWeatherAreaState(context,10153,0)
	ScriptLib.SetWeatherAreaState(context,10152,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : weather10152")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4040(context, evt)
	-- 判断是gadgetid 为 4034的移动平台，是否到达了3 的点集中的 2 点
	
	if 4034 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4040(context, evt)
	-- 将configid为 4016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220165004, EntityType.GADGET, 4017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	ScriptLib.SetWeatherAreaState(context,10158,0)
	ScriptLib.SetWeatherAreaState(context,10151,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10151) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : weather10151")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4041(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165004, 4043, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4042(context, evt)
	-- 判断是gadgetid 4043 option_id 220
	if 4043 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4042(context, evt)
	-- 删除指定group： 220165004 ；指定config：4043；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165004, 4043, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "flower" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flower", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4044(context, evt)
	if evt.param1 ~= 4044 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4044(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 4)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4045(context, evt)
	-- 判断是gadgetid 为 4034的移动平台，是否到达了3 的点集中的 1 点
	
	if 4034 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"monster1"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4045(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4046(context, evt)
	-- 判断是gadgetid 为 4020的移动平台，是否到达了1 的点集中的 1 点
	
	if 4020 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4046(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4050(context, evt)
	if evt.param1 ~= 4050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster2"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4050(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 22 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4051(context, evt)
	if evt.param1 ~= 4051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4052(context, evt)
	if evt.param1 ~= 4052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4052(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=922.2097, y=14.23851, z=218.7205}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=922.2097, y=14.23851, z=218.7205}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201650201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4053(context, evt)
	if evt.param1 ~= 4053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4053(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=279.3406, y=26.39901, z=222.4699}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=279.3406, y=26.39901, z=222.4699}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201650301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_4054(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4055(context, evt)
	if evt.param1 ~= 4055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4055(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4056(context, evt)
	if evt.param1 ~= 4056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4056(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 2)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4057(context, evt)
	if evt.param1 ~= 4057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"chest"为0
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 0 then
			return false
	end
	
	-- 判断变量"reconnect"为0
	if ScriptLib.GetGroupVariableValue(context, "reconnect") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4057(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 7)
	
	-- 将本组内变量名为 "reconnect" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reconnect", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4058(context, evt)
	if 4016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"chest"为0
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4058(context, evt)
	-- 创建标识为"timer33"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer33", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4059(context, evt)
	if "timer33" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4059(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165004, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4060(context, evt)
	if evt.param1 ~= 4060 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown1"为1
	if ScriptLib.GetGroupVariableValue(context, "updown1") ~= 1 then
			return false
	end
	
	-- 判断变量"flower"为1
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4060(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4074(context, evt)
	if "pubu1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4074(context, evt)
	-- 将configid为 4061 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4061, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4062 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4062, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4063 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4063, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4064 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4064, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4066 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4066, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
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
	
	-- 将configid为 4073 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4073, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4075(context, evt)
	-- 判断是gadgetid 为 4020的移动平台，是否到达了1 的点集中的 2 点
	
	if 4020 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4075(context, evt)
	-- 将configid为 4061 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4061, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4062 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4062, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4063 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4063, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4064 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4064, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4065 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4065, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4066 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4066, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4067 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4067, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4068 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4068, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4069 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4069, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4070 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4070, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4071 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4071, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4072 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4072, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4073 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4073, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4089(context, evt)
	if "pubu2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4089(context, evt)
	-- 将configid为 4076 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4076, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4077 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4077, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4078 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4078, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4079 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4079, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4080 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4080, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4081 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4081, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4082 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4082, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4083 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4083, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4084 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4084, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4085 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4085, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4086 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4086, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4087 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4087, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4088 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4088, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4090(context, evt)
	-- 判断是gadgetid 为 4034的移动平台，是否到达了3 的点集中的 2 点
	
	if 4034 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4090(context, evt)
	-- 将configid为 4076 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4076, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4077 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4077, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4078 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4078, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4079 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4079, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4080 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4080, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4081 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4081, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4082 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4082, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4083 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4083, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4084 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4084, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4085 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4085, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4086 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4086, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4087 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4087, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4088 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4088, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4092(context, evt)
	if evt.param1 ~= 4092 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4092(context, evt)
	-- 创建标识为"pubu1"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "pubu1", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4093(context, evt)
	if evt.param1 ~= 4093 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4093(context, evt)
	-- 创建标识为"pubu2"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "pubu2", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4094(context, evt)
	if evt.param1 ~= 4094 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4094(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4020, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4028, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4034, 3, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4035, 4, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	
	
	
	ScriptLib.SetWeatherAreaState(context,10151,0)
	ScriptLib.SetWeatherAreaState(context,10153,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10153) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4095(context, evt)
	if evt.param1 ~= 4095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4095(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4096(context, evt)
	if evt.param1 ~= 4096 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"flower"为1
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4096(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4097(context, evt)
	if 4004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4097(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 21 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4098(context, evt)
	if evt.param1 ~= 4098 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4098(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4099(context, evt)
	if 4004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4099(context, evt)
	-- 调用提示id为 400904 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400904) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4100(context, evt)
	if evt.param1 ~= 4100 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reload"为1
	if ScriptLib.GetGroupVariableValue(context, "reload") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4100(context, evt)
	-- 创建标识为"timer11"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer11", {2}, false)
	
	
	-- 将本组内变量名为 "reload" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reload", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4101(context, evt)
	if evt.param1 ~= 4101 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reload"为0
	if ScriptLib.GetGroupVariableValue(context, "reload") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4101(context, evt)
	-- 创建标识为"timer22"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer22", {2}, false)
	
	
	-- 将本组内变量名为 "reload" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reload", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4102(context, evt)
	if "timer11" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4102(context, evt)
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"timer11"的时间轴
	ScriptLib.EndTimeAxis(context, "timer11")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4103(context, evt)
	if "timer22" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4103(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"timer22"的时间轴
	ScriptLib.EndTimeAxis(context, "timer22")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4104(context, evt)
	if evt.param1 ~= 4104 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4104(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165004, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4105(context, evt)
	if evt.param1 ~= 4105 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为3
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4105(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 16)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4106(context, evt)
	if 4017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4106(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4107(context, evt)
	if evt.param1 ~= 4107 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为2
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4107(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 15)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4108(context, evt)
	if evt.param1 ~= 4108 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为5
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4108(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 18)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4109(context, evt)
	if evt.param1 ~= 4109 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为4
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4109(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 17)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4110(context, evt)
	if evt.param1 ~= 4110 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为7
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4110(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 20)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4111(context, evt)
	if evt.param1 ~= 4111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为6
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4111(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 19)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4112(context, evt)
	if evt.param1 ~= 4112 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为9
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4112(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 22)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4113(context, evt)
	if evt.param1 ~= 4113 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为8
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4113(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 21)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4114(context, evt)
	if evt.param1 ~= 4114 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为11
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 11 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4114(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 24)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4115(context, evt)
	if evt.param1 ~= 4115 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive1"为10
	if ScriptLib.GetGroupVariableValue(context, "revive1") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4115(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 23)
	
	-- 针对当前group内变量名为 "revive1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4116(context, evt)
	if evt.param1 ~= 4116 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4116(context, evt)
	-- 调用提示id为 201650401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end