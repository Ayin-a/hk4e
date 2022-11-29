-- 基础信息
local base_info = {
	group_id = 133213050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 21010501, pos = { x = -3528.829, y = 200.132, z = -3102.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 32, area_id = 12 },
	{ config_id = 50002, monster_id = 21010501, pos = { x = -3526.744, y = 200.321, z = -3097.562 }, rot = { x = 0.000, y = 194.321, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 32, area_id = 12 },
	{ config_id = 50003, monster_id = 21010501, pos = { x = -3529.816, y = 200.251, z = -3099.428 }, rot = { x = 0.000, y = 105.475, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 9013, area_id = 12 },
	{ config_id = 50004, monster_id = 21030601, pos = { x = -3525.857, y = 200.265, z = -3101.003 }, rot = { x = 0.000, y = 293.652, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, pose_id = 9012, area_id = 12 },
	{ config_id = 50005, monster_id = 21010901, pos = { x = -3521.667, y = 200.315, z = -3114.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50006, monster_id = 21010901, pos = { x = -3518.565, y = 200.338, z = -3108.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50007, monster_id = 21010901, pos = { x = -3521.867, y = 200.303, z = -3110.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50008, monster_id = 21030601, pos = { x = -3517.645, y = 200.306, z = -3112.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50009, monster_id = 21010502, pos = { x = -3527.994, y = 201.232, z = -3128.815 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 50010, monster_id = 21010502, pos = { x = -3527.844, y = 201.143, z = -3126.507 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 50011, monster_id = 21010502, pos = { x = -3502.358, y = 202.215, z = -3124.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 50012, monster_id = 21010902, pos = { x = -3502.751, y = 202.265, z = -3126.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 50013, monster_id = 21010701, pos = { x = -3531.434, y = 200.428, z = -3110.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 50014, monster_id = 21010701, pos = { x = -3529.723, y = 200.240, z = -3112.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 50015, monster_id = 25100201, pos = { x = -3525.999, y = 201.020, z = -3087.711 }, rot = { x = 0.000, y = 290.418, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 1002, area_id = 12 },
	{ config_id = 50016, monster_id = 25080201, pos = { x = -3521.432, y = 200.310, z = -3113.104 }, rot = { x = 0.000, y = 302.011, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 50017, monster_id = 25080301, pos = { x = -3525.939, y = 200.193, z = -3113.548 }, rot = { x = 0.000, y = 51.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 50018, monster_id = 25020201, pos = { x = -3529.646, y = 201.266, z = -3088.340 }, rot = { x = 0.000, y = 51.053, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 12 },
	{ config_id = 50019, monster_id = 25020201, pos = { x = -3527.958, y = 201.484, z = -3083.788 }, rot = { x = 0.000, y = 133.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 12 },
	{ config_id = 50020, monster_id = 25080201, pos = { x = -3529.776, y = 200.923, z = -3091.133 }, rot = { x = 0.000, y = 18.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 1004, area_id = 12 },
	{ config_id = 50021, monster_id = 25010201, pos = { x = -3525.172, y = 200.804, z = -3089.574 }, rot = { x = 0.000, y = 276.868, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 9004, area_id = 12 },
	{ config_id = 50022, monster_id = 25010201, pos = { x = -3526.564, y = 201.198, z = -3085.712 }, rot = { x = 0.000, y = 216.367, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 9004, area_id = 12 },
	{ config_id = 50023, monster_id = 25080301, pos = { x = -3527.625, y = 200.068, z = -3110.681 }, rot = { x = 0.000, y = 91.343, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 1, area_id = 12 },
	{ config_id = 50024, monster_id = 25010201, pos = { x = -3519.803, y = 200.335, z = -3112.790 }, rot = { x = 0.000, y = 275.202, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 12 },
	{ config_id = 50025, monster_id = 25010201, pos = { x = -3523.427, y = 200.275, z = -3108.225 }, rot = { x = 0.000, y = 166.498, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 12 },
	{ config_id = 50026, monster_id = 21030103, pos = { x = -3529.411, y = 200.054, z = -3107.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 50027, monster_id = 25080201, pos = { x = -3529.703, y = 200.902, z = -3091.270 }, rot = { x = 0.000, y = 18.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, pose_id = 1, area_id = 12 },
	{ config_id = 50028, monster_id = 25010201, pos = { x = -3525.099, y = 200.788, z = -3089.711 }, rot = { x = 0.000, y = 276.868, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 12 },
	{ config_id = 50029, monster_id = 25010201, pos = { x = -3526.491, y = 201.185, z = -3085.849 }, rot = { x = 0.000, y = 216.367, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 12 },
	{ config_id = 50030, monster_id = 21010501, pos = { x = -3528.728, y = 200.135, z = -3102.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50031, monster_id = 21010501, pos = { x = -3526.643, y = 200.321, z = -3097.535 }, rot = { x = 0.000, y = 194.321, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50032, monster_id = 21010501, pos = { x = -3529.715, y = 200.246, z = -3099.401 }, rot = { x = 0.000, y = 105.475, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 },
	{ config_id = 50033, monster_id = 21030601, pos = { x = -3525.756, y = 200.270, z = -3100.976 }, rot = { x = 0.000, y = 293.652, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6111, 4024 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50034, gadget_id = 70900380, pos = { x = -3524.202, y = 206.323, z = -3111.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50035, gadget_id = 70900380, pos = { x = -3531.067, y = 206.255, z = -3101.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50036, gadget_id = 70330064, pos = { x = -3538.240, y = 203.098, z = -3117.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 50037, gadget_id = 70220005, pos = { x = -3519.859, y = 200.516, z = -3088.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50038, gadget_id = 70220005, pos = { x = -3512.912, y = 200.247, z = -3110.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50039, gadget_id = 70350201, pos = { x = -3531.761, y = 200.658, z = -3112.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50040, gadget_id = 70350201, pos = { x = -3498.157, y = 199.982, z = -3124.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50041, gadget_id = 70350201, pos = { x = -3502.484, y = 201.592, z = -3087.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50042, gadget_id = 70220005, pos = { x = -3532.387, y = 200.343, z = -3102.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50043, gadget_id = 70330064, pos = { x = -3536.893, y = 201.745, z = -3112.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 50044, gadget_id = 70900380, pos = { x = -3526.718, y = 206.377, z = -3095.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50045, gadget_id = 70900380, pos = { x = -3520.468, y = 206.356, z = -3108.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50046, gadget_id = 70900380, pos = { x = -3532.166, y = 206.377, z = -3107.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 50047, gadget_id = 70300107, pos = { x = -3528.192, y = 200.217, z = -3100.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50048, gadget_id = 70220066, pos = { x = -3523.430, y = 200.435, z = -3093.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50049, gadget_id = 70220066, pos = { x = -3524.908, y = 200.485, z = -3093.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50050, gadget_id = 70220065, pos = { x = -3524.026, y = 200.392, z = -3094.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50051, gadget_id = 70300101, pos = { x = -3510.495, y = 199.982, z = -3114.725 }, rot = { x = 0.000, y = 330.097, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50052, gadget_id = 70300101, pos = { x = -3521.195, y = 200.322, z = -3121.008 }, rot = { x = 0.000, y = 330.291, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50053, gadget_id = 70300083, pos = { x = -3516.023, y = 200.274, z = -3118.164 }, rot = { x = 0.000, y = 327.922, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50054, gadget_id = 70300106, pos = { x = -3535.509, y = 200.908, z = -3094.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50055, gadget_id = 70300106, pos = { x = -3535.509, y = 200.801, z = -3097.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50056, gadget_id = 70300090, pos = { x = -3514.650, y = 200.549, z = -3099.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50057, gadget_id = 70950092, pos = { x = -3502.026, y = 198.460, z = -3126.168 }, rot = { x = 0.000, y = 276.725, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50058, gadget_id = 70290060, pos = { x = -3509.141, y = 199.982, z = -3126.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50059, gadget_id = 70300101, pos = { x = -3528.362, y = 200.229, z = -3095.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50060, gadget_id = 70300106, pos = { x = -3531.803, y = 201.993, z = -3126.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50061, gadget_id = 70300106, pos = { x = -3531.803, y = 202.149, z = -3129.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50062, gadget_id = 70300083, pos = { x = -3522.647, y = 201.434, z = -3147.847 }, rot = { x = 0.000, y = 290.913, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50063, gadget_id = 70300083, pos = { x = -3526.269, y = 202.129, z = -3148.654 }, rot = { x = 0.000, y = 58.715, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50064, gadget_id = 70300083, pos = { x = -3524.857, y = 201.309, z = -3143.932 }, rot = { x = 0.000, y = 351.116, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50065, gadget_id = 70350201, pos = { x = -3505.858, y = 199.160, z = -3126.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50066, gadget_id = 70350201, pos = { x = -3524.518, y = 201.622, z = -3146.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50067, gadget_id = 70220066, pos = { x = -3532.510, y = 200.350, z = -3105.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50068, gadget_id = 70220066, pos = { x = -3532.403, y = 200.315, z = -3104.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50069, gadget_id = 70220066, pos = { x = -3531.509, y = 200.225, z = -3105.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50070, gadget_id = 70310009, pos = { x = -3524.188, y = 200.240, z = -3111.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50071, gadget_id = 70300104, pos = { x = -3524.380, y = 200.287, z = -3116.890 }, rot = { x = 0.000, y = 183.398, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50072, gadget_id = 70300105, pos = { x = -3531.679, y = 201.782, z = -3084.963 }, rot = { x = 0.000, y = 25.648, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50073, gadget_id = 70220065, pos = { x = -3529.072, y = 201.651, z = -3080.269 }, rot = { x = 0.000, y = 23.297, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50074, gadget_id = 70220065, pos = { x = -3521.269, y = 200.327, z = -3118.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 50075, gadget_id = 70310006, pos = { x = -3528.139, y = 201.333, z = -3087.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 50076, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.298, y = 201.485, z = -3104.526 }, area_id = 12 },
	{ config_id = 50078, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.153, y = 200.565, z = -3108.908 }, area_id = 12 },
	{ config_id = 50081, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.298, y = 201.485, z = -3104.526 }, area_id = 12 },
	{ config_id = 50083, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.298, y = 201.485, z = -3104.526 }, area_id = 12 },
	{ config_id = 50086, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.298, y = 201.485, z = -3104.526 }, area_id = 12 },
	{ config_id = 50088, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.298, y = 201.485, z = -3104.526 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1050076, name = "ENTER_REGION_50076", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50076" },
	{ config_id = 1050077, name = "TIMER_EVENT_50077", event = EventType.EVENT_TIMER_EVENT, source = "T1", condition = "condition_EVENT_TIMER_EVENT_50077", action = "action_EVENT_TIMER_EVENT_50077" },
	{ config_id = 1050078, name = "ENTER_REGION_50078", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50078" },
	{ config_id = 1050079, name = "TIMER_EVENT_50079", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "condition_EVENT_TIMER_EVENT_50079", action = "action_EVENT_TIMER_EVENT_50079" },
	{ config_id = 1050080, name = "GROUP_LOAD_50080", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_50080", trigger_count = 0 },
	{ config_id = 1050081, name = "ENTER_REGION_50081", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50081" },
	{ config_id = 1050082, name = "TIMER_EVENT_50082", event = EventType.EVENT_TIMER_EVENT, source = "T1", condition = "condition_EVENT_TIMER_EVENT_50082", action = "action_EVENT_TIMER_EVENT_50082" },
	{ config_id = 1050083, name = "ENTER_REGION_50083", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50083" },
	{ config_id = 1050084, name = "TIMER_EVENT_50084", event = EventType.EVENT_TIMER_EVENT, source = "T2", condition = "condition_EVENT_TIMER_EVENT_50084", action = "action_EVENT_TIMER_EVENT_50084" },
	{ config_id = 1050085, name = "HUNTING_FINISH_FINAL_50085", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_50085" },
	{ config_id = 1050086, name = "ENTER_REGION_50086", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50086" },
	{ config_id = 1050087, name = "TIMER_EVENT_50087", event = EventType.EVENT_TIMER_EVENT, source = "T3", condition = "condition_EVENT_TIMER_EVENT_50087", action = "action_EVENT_TIMER_EVENT_50087" },
	{ config_id = 1050088, name = "ENTER_REGION_50088", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_50088" },
	{ config_id = 1050089, name = "TIMER_EVENT_50089", event = EventType.EVENT_TIMER_EVENT, source = "T3", condition = "condition_EVENT_TIMER_EVENT_50089", action = "action_EVENT_TIMER_EVENT_50089" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 50090, pos = { x = -3513.678, y = 200.174, z = -3112.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_50080", "HUNTING_FINISH_FINAL_50085" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雷暴王【链接】【营地摆设】/四星雷斧暴徒,
		monsters = { },
		gadgets = { 50047, 50048, 50049, 50050, 50051, 50052, 50053, 50054, 50055, 50056 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 雷暴王【链接】【小怪组1】,
		monsters = { 50001, 50002, 50003, 50004 },
		gadgets = { },
		regions = { 50076 },
		triggers = { "ENTER_REGION_50076", "TIMER_EVENT_50077" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷暴王【链接】【小怪组2】,
		monsters = { 50005, 50006, 50007, 50008 },
		gadgets = { },
		regions = { 50078 },
		triggers = { "ENTER_REGION_50078", "TIMER_EVENT_50079" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷暴王【链接】【小怪组3】,
		monsters = { 50030, 50031, 50032, 50033 },
		gadgets = { },
		regions = { 50088 },
		triggers = { "ENTER_REGION_50088", "TIMER_EVENT_50089" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【机关】【小怪组】/四星火斧暴徒,
		monsters = { 50009, 50010, 50011, 50012, 50013, 50014, 50026 },
		gadgets = { 50057, 50058, 50059, 50060, 50061, 50062, 50063, 50064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 雷暴王【机关】【机关组】,
		monsters = { },
		gadgets = { 50065, 50066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 海乱鬼雷【双子】【双子怪】,
		monsters = { 50015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼雷【双子】/【脉冲】【营地+小怪组】,
		monsters = { 50016, 50017, 50018, 50019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼雷【链接】/【双子】/【脉冲】【营地摆设】,
		monsters = { },
		gadgets = { 50070, 50071, 50072, 50073, 50074, 50075 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 海乱鬼雷【链接】【链接小怪组1】,
		monsters = { 50020, 50021, 50022 },
		gadgets = { },
		regions = { 50081 },
		triggers = { "ENTER_REGION_50081", "TIMER_EVENT_50082" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 海乱鬼雷【链接】【链接小怪组2】,
		monsters = { 50023, 50024, 50025 },
		gadgets = { },
		regions = { 50083 },
		triggers = { "ENTER_REGION_50083", "TIMER_EVENT_50084" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 海乱鬼雷【链接】【链接小怪组3】,
		monsters = { 50027, 50028, 50029 },
		gadgets = { },
		regions = { 50086 },
		triggers = { "ENTER_REGION_50086", "TIMER_EVENT_50087" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 雷暴王【链接】【飞雷核】,
		monsters = { },
		gadgets = { 50034, 50035, 50036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 海乱鬼雷【链接】【高伤炸药桶】,
		monsters = { },
		gadgets = { 50037, 50038, 50042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 海乱鬼雷【脉冲】【飞雷核】,
		monsters = { },
		gadgets = { 50043, 50044, 50045, 50046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_ENTER_REGION_50076(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T1", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50077(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50077(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_50078(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T2", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50079(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50079(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_50080(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133213050, suite_id)
	        end
	    end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_50081(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T1", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50082(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50082(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 12)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 12)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_50083(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T2", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50084(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50084(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 14)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 13)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 13)
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_50085(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133213050, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_50086(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T3", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50087(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50087(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 14)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 14)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_50088(context, evt)
	-- 延迟50秒后,向groupId为：133213050的对象,请求一次调用,并将string参数："T3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133213050, "T3", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_50089(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50089(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213050, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213050, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213050, 5)
	
	return 0
end

require "V2_0/ElectricCore02"