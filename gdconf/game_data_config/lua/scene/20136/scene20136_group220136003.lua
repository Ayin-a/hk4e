-- 基础信息
local base_info = {
	group_id = 220136003
}

-- Trigger变量
local defs = {
	point_sum = 20,
	route_2 = 65,
	gadget_seelie = 3033
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 3001, gadget_id = 70380301, pos = { x = 302.382, y = 81.927, z = 847.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 3002, gadget_id = 70380301, pos = { x = 263.149, y = 82.000, z = 848.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 3003, gadget_id = 70380301, pos = { x = 313.050, y = 82.210, z = 818.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true },
	-- 整体移动
	{ config_id = 3004, gadget_id = 70380301, pos = { x = 313.100, y = 82.000, z = 828.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3005, gadget_id = 70380301, pos = { x = 313.070, y = 82.000, z = 808.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3006, gadget_id = 70380301, pos = { x = 323.590, y = 82.000, z = 829.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3007, gadget_id = 70380301, pos = { x = 323.550, y = 82.000, z = 808.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3008, gadget_id = 70380301, pos = { x = 334.056, y = 82.000, z = 829.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3009, gadget_id = 70380301, pos = { x = 334.017, y = 82.000, z = 808.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3010, gadget_id = 70380301, pos = { x = 344.540, y = 82.000, z = 829.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3011, gadget_id = 70380301, pos = { x = 344.370, y = 82.000, z = 808.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3012, gadget_id = 70380301, pos = { x = 355.043, y = 82.000, z = 828.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3013, gadget_id = 70380301, pos = { x = 354.885, y = 82.000, z = 807.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3014, gadget_id = 70380301, pos = { x = 365.390, y = 82.000, z = 829.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3015, gadget_id = 70380301, pos = { x = 365.200, y = 82.000, z = 807.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3016, gadget_id = 70380301, pos = { x = 375.860, y = 82.000, z = 829.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3017, gadget_id = 70380301, pos = { x = 375.690, y = 82.000, z = 807.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3018, gadget_id = 70380301, pos = { x = 353.520, y = 59.771, z = 820.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3019, gadget_id = 70380301, pos = { x = 332.610, y = 59.831, z = 821.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3020, gadget_id = 70380301, pos = { x = 353.520, y = 59.771, z = 800.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3021, gadget_id = 70380301, pos = { x = 332.879, y = 59.771, z = 800.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3022, gadget_id = 70380301, pos = { x = 353.631, y = 59.771, z = 789.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3023, gadget_id = 70380301, pos = { x = 332.905, y = 59.771, z = 790.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 开门
	{ config_id = 3024, gadget_id = 70380301, pos = { x = 349.247, y = 81.985, z = 780.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 开门
	{ config_id = 3025, gadget_id = 70380301, pos = { x = 338.799, y = 81.962, z = 780.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 循环
	{ config_id = 3026, gadget_id = 70380301, pos = { x = 333.783, y = 82.090, z = 747.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 3033, gadget_id = 70310244, pos = { x = 300.104, y = 71.660, z = 846.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70310241, pos = { x = 380.262, y = 66.416, z = 718.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3047, gadget_id = 70310447, pos = { x = 362.411, y = 68.892, z = 681.436 }, rot = { x = 17.449, y = 359.359, z = 0.022 }, level = 1 },
	{ config_id = 3048, gadget_id = 70310241, pos = { x = 379.945, y = 66.416, z = 669.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 整体移动
	{ config_id = 3050, gadget_id = 70380301, pos = { x = 352.601, y = 82.500, z = 650.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3051, gadget_id = 70380301, pos = { x = 352.704, y = 82.500, z = 640.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3052, gadget_id = 70380301, pos = { x = 352.731, y = 82.500, z = 630.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3053, gadget_id = 70380301, pos = { x = 352.731, y = 82.500, z = 619.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3054, gadget_id = 70380301, pos = { x = 352.731, y = 82.500, z = 609.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3055, gadget_id = 70380301, pos = { x = 352.660, y = 82.500, z = 599.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3056, gadget_id = 70380301, pos = { x = 372.812, y = 82.500, z = 600.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3057, gadget_id = 70380301, pos = { x = 372.711, y = 82.500, z = 651.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3058, gadget_id = 70380301, pos = { x = 372.755, y = 82.500, z = 640.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3059, gadget_id = 70380301, pos = { x = 372.725, y = 82.500, z = 630.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3060, gadget_id = 70380301, pos = { x = 372.812, y = 82.500, z = 619.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3061, gadget_id = 70380301, pos = { x = 372.812, y = 82.500, z = 610.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3062, gadget_id = 70380301, pos = { x = 336.560, y = 60.886, z = 619.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3063, gadget_id = 70380301, pos = { x = 347.091, y = 60.826, z = 619.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3066, gadget_id = 70380301, pos = { x = 357.583, y = 60.826, z = 619.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3067, gadget_id = 70380301, pos = { x = 368.104, y = 60.826, z = 619.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3068, gadget_id = 70380301, pos = { x = 367.486, y = 60.694, z = 642.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3069, gadget_id = 70380301, pos = { x = 357.036, y = 60.694, z = 642.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3070, gadget_id = 70380301, pos = { x = 346.548, y = 60.694, z = 642.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3071, gadget_id = 70380301, pos = { x = 336.000, y = 60.886, z = 641.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 3072, gadget_id = 70310241, pos = { x = 354.975, y = 66.416, z = 669.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3073, gadget_id = 70310241, pos = { x = 330.021, y = 66.416, z = 669.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3074, gadget_id = 70310241, pos = { x = 330.021, y = 66.416, z = 694.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3075, gadget_id = 70310241, pos = { x = 354.975, y = 66.416, z = 694.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3076, gadget_id = 70310241, pos = { x = 379.945, y = 66.416, z = 694.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3077, gadget_id = 70310241, pos = { x = 355.213, y = 66.416, z = 718.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3078, gadget_id = 70310241, pos = { x = 330.043, y = 66.416, z = 718.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3079, gadget_id = 70310241, pos = { x = 355.213, y = 66.416, z = 742.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3080, gadget_id = 70310241, pos = { x = 330.043, y = 66.416, z = 742.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3081, gadget_id = 70310241, pos = { x = 380.262, y = 66.416, z = 742.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 整体移动
	{ config_id = 3084, gadget_id = 70380301, pos = { x = 342.994, y = 82.150, z = 839.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3088, gadget_id = 70380301, pos = { x = 332.575, y = 59.771, z = 811.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3089, gadget_id = 70380301, pos = { x = 332.597, y = 59.771, z = 831.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3090, gadget_id = 70380301, pos = { x = 353.563, y = 59.771, z = 810.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动横
	{ config_id = 3091, gadget_id = 70380301, pos = { x = 353.520, y = 59.771, z = 831.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3092, gadget_id = 70380301, pos = { x = 372.725, y = 58.573, z = 635.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 整体移动
	{ config_id = 3093, gadget_id = 70380301, pos = { x = 372.763, y = 58.600, z = 625.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false }
}

-- 区域
regions = {
	-- 4到1
	{ config_id = 3028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 274.076, y = 71.660, z = 848.470 } },
	-- 1到2
	{ config_id = 3029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 262.602, y = 71.660, z = 818.634 } },
	-- 2到3
	{ config_id = 3030, shape = RegionShape.SPHERE, radius = 5, pos = { x = 291.642, y = 71.660, z = 808.269 } },
	-- 3到4
	{ config_id = 3031, shape = RegionShape.SPHERE, radius = 5, pos = { x = 302.586, y = 71.660, z = 836.330 } },
	-- 删除墙造纸仙灵
	{ config_id = 3032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 291.642, y = 71.660, z = 808.269 } },
	-- 仙灵启动
	{ config_id = 3035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 302.203, y = 71.660, z = 845.335 } },
	{ config_id = 3037, shape = RegionShape.SPHERE, radius = 5, pos = { x = 308.019, y = 72.029, z = 818.864 } },
	-- 2到1
	{ config_id = 3039, shape = RegionShape.SPHERE, radius = 5, pos = { x = 302.596, y = 71.660, z = 816.855 } },
	-- 4到3
	{ config_id = 3040, shape = RegionShape.SPHERE, radius = 5, pos = { x = 263.250, y = 71.660, z = 838.559 } },
	-- 1到4
	{ config_id = 3041, shape = RegionShape.SPHERE, radius = 5, pos = { x = 271.807, y = 71.660, z = 807.716 } },
	-- 3到2
	{ config_id = 3042, shape = RegionShape.SPHERE, radius = 5, pos = { x = 293.287, y = 71.660, z = 848.660 } },
	-- 墙体变换
	{ config_id = 3043, shape = RegionShape.SPHERE, radius = 5, pos = { x = 342.817, y = 71.660, z = 818.430 } },
	-- 开门
	{ config_id = 3045, shape = RegionShape.SPHERE, radius = 5, pos = { x = 343.223, y = 71.660, z = 789.752 } },
	{ config_id = 3049, shape = RegionShape.SPHERE, radius = 8, pos = { x = 362.065, y = 62.995, z = 694.279 } },
	-- 墙体变换2
	{ config_id = 3064, shape = RegionShape.SPHERE, radius = 5, pos = { x = 362.790, y = 72.120, z = 629.452 } },
	-- 到达底部
	{ config_id = 3082, shape = RegionShape.SPHERE, radius = 20, pos = { x = 294.717, y = 9.081, z = 630.452 } },
	-- 掉落保底
	{ config_id = 3083, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 290.153, y = 61.036, z = 884.638 } },
	-- 加7
	{ config_id = 3085, shape = RegionShape.SPHERE, radius = 5, pos = { x = 290.800, y = 71.845, z = 851.305 } },
	-- 提前下来保底
	{ config_id = 3087, shape = RegionShape.CUBIC, size = { x = 40.000, y = 10.000, z = 50.000 }, pos = { x = 363.174, y = 64.647, z = 689.363 } },
	-- 删除墙造纸仙灵保底
	{ config_id = 3094, shape = RegionShape.SPHERE, radius = 50, pos = { x = 274.502, y = 71.660, z = 828.063 } },
	-- 降低墙保底
	{ config_id = 3095, shape = RegionShape.SPHERE, radius = 60, pos = { x = 305.662, y = 72.029, z = 818.864 } },
	-- 墙保底
	{ config_id = 3096, shape = RegionShape.SPHERE, radius = 80, pos = { x = 274.502, y = 71.660, z = 828.063 } }
}

-- 触发器
triggers = {
	-- 4到1
	{ config_id = 1003028, name = "ENTER_REGION_3028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3028", action = "action_EVENT_ENTER_REGION_3028", trigger_count = 0 },
	-- 1到2
	{ config_id = 1003029, name = "ENTER_REGION_3029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3029", action = "action_EVENT_ENTER_REGION_3029", trigger_count = 0 },
	-- 2到3
	{ config_id = 1003030, name = "ENTER_REGION_3030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3030", action = "action_EVENT_ENTER_REGION_3030", trigger_count = 0 },
	-- 3到4
	{ config_id = 1003031, name = "ENTER_REGION_3031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3031", action = "action_EVENT_ENTER_REGION_3031", trigger_count = 0 },
	-- 删除墙造纸仙灵
	{ config_id = 1003032, name = "ENTER_REGION_3032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3032", action = "action_EVENT_ENTER_REGION_3032", trigger_count = 0 },
	-- 仙灵到位置把让墙下降的生出来
	{ config_id = 1003034, name = "PLATFORM_REACH_POINT_3034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3034", action = "action_EVENT_PLATFORM_REACH_POINT_3034", trigger_count = 0 },
	-- 仙灵启动
	{ config_id = 1003035, name = "ENTER_REGION_3035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3035", action = "action_EVENT_ENTER_REGION_3035", trigger_count = 0 },
	-- 仙灵移动
	{ config_id = 1003036, name = "AVATAR_NEAR_PLATFORM_3036", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_3036", action = "action_EVENT_AVATAR_NEAR_PLATFORM_3036", trigger_count = 0 },
	{ config_id = 1003037, name = "ENTER_REGION_3037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3037", action = "action_EVENT_ENTER_REGION_3037", trigger_count = 0 },
	-- 2到1
	{ config_id = 1003039, name = "ENTER_REGION_3039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3039", action = "action_EVENT_ENTER_REGION_3039", trigger_count = 0 },
	-- 4到3
	{ config_id = 1003040, name = "ENTER_REGION_3040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3040", action = "action_EVENT_ENTER_REGION_3040", trigger_count = 0 },
	-- 1到4
	{ config_id = 1003041, name = "ENTER_REGION_3041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3041", action = "action_EVENT_ENTER_REGION_3041", trigger_count = 0 },
	-- 3到2
	{ config_id = 1003042, name = "ENTER_REGION_3042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3042", action = "action_EVENT_ENTER_REGION_3042", trigger_count = 0 },
	-- 墙体变换
	{ config_id = 1003043, name = "ENTER_REGION_3043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3043", action = "action_EVENT_ENTER_REGION_3043", trigger_count = 0 },
	-- 墙体变换横
	{ config_id = 1003044, name = "PLATFORM_REACH_POINT_3044", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3044", action = "action_EVENT_PLATFORM_REACH_POINT_3044", trigger_count = 0 },
	-- 开门
	{ config_id = 1003045, name = "ENTER_REGION_3045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3045", action = "action_EVENT_ENTER_REGION_3045", trigger_count = 0 },
	{ config_id = 1003049, name = "ENTER_REGION_3049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3049", action = "action_EVENT_ENTER_REGION_3049", trigger_count = 0 },
	-- 墙体变换2
	{ config_id = 1003064, name = "ENTER_REGION_3064", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3064", action = "action_EVENT_ENTER_REGION_3064", trigger_count = 0 },
	-- 墙体变换横
	{ config_id = 1003065, name = "PLATFORM_REACH_POINT_3065", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3065", action = "action_EVENT_PLATFORM_REACH_POINT_3065", trigger_count = 0 },
	-- 到达底部
	{ config_id = 1003082, name = "ENTER_REGION_3082", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3082", action = "action_EVENT_ENTER_REGION_3082", trigger_count = 0 },
	-- 掉落保底
	{ config_id = 1003083, name = "ENTER_REGION_3083", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3083", action = "action_EVENT_ENTER_REGION_3083", trigger_count = 0 },
	-- 加7
	{ config_id = 1003085, name = "ENTER_REGION_3085", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3085", action = "action_EVENT_ENTER_REGION_3085", trigger_count = 0 },
	-- 加载scenetag和天气
	{ config_id = 1003086, name = "GROUP_LOAD_3086", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3086", trigger_count = 0 },
	-- 提前下来保底
	{ config_id = 1003087, name = "ENTER_REGION_3087", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3087", action = "action_EVENT_ENTER_REGION_3087", trigger_count = 0 },
	-- 删除墙造纸仙灵保底
	{ config_id = 1003094, name = "ENTER_REGION_3094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3094", action = "action_EVENT_ENTER_REGION_3094", trigger_count = 0 },
	-- 降低墙保底
	{ config_id = 1003095, name = "ENTER_REGION_3095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3095", action = "action_EVENT_ENTER_REGION_3095", trigger_count = 0 },
	-- 墙保底
	{ config_id = 1003096, name = "ENTER_REGION_3096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3096", action = "action_EVENT_ENTER_REGION_3096", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "change", value = 0, no_refresh = false },
	{ config_id = 2, name = "change2", value = 0, no_refresh = false },
	{ config_id = 3, name = "start", value = 0, no_refresh = true },
	{ config_id = 4, name = "wall", value = 0, no_refresh = true },
	{ config_id = 5, name = "position", value = 4, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3027, gadget_id = 70380301, pos = { x = 414.741, y = 81.974, z = 674.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false }
	},
	triggers = {
		{ config_id = 1003038, name = "GROUP_LOAD_3038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3038", trigger_count = 0 }
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
	end_suite = 10,
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3033, 3046, 3048, 3050, 3051, 3052, 3053, 3054, 3055, 3056, 3057, 3058, 3059, 3060, 3061, 3062, 3063, 3066, 3067, 3068, 3069, 3070, 3071, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3084, 3088, 3089, 3090, 3091, 3092, 3093 },
		regions = { 3032, 3043, 3045, 3049, 3064, 3082, 3083, 3085, 3087, 3094, 3095, 3096 },
		triggers = { "ENTER_REGION_3032", "PLATFORM_REACH_POINT_3034", "ENTER_REGION_3043", "PLATFORM_REACH_POINT_3044", "ENTER_REGION_3045", "ENTER_REGION_3049", "ENTER_REGION_3064", "PLATFORM_REACH_POINT_3065", "ENTER_REGION_3082", "ENTER_REGION_3083", "ENTER_REGION_3085", "GROUP_LOAD_3086", "ENTER_REGION_3087", "ENTER_REGION_3094", "ENTER_REGION_3095", "ENTER_REGION_3096" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3035 },
		triggers = { "ENTER_REGION_3035", "AVATAR_NEAR_PLATFORM_3036", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3037 },
		triggers = { "ENTER_REGION_3037", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3029, 3041 },
		triggers = { "ENTER_REGION_3029", "ENTER_REGION_3041", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3030, 3039 },
		triggers = { "ENTER_REGION_3030", "ENTER_REGION_3039", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3031, 3042 },
		triggers = { "ENTER_REGION_3031", "ENTER_REGION_3042", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3028, 3040 },
		triggers = { "ENTER_REGION_3028", "ENTER_REGION_3040", "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 3047 },
		regions = { },
		triggers = { "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_3086" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_3086" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3028(context, evt)
	if evt.param1 ~= 3028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3028(context, evt)
	
	
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {1}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	ScriptLib.SetGroupVariableValue(context, "position", 1) 
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 4)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3029(context, evt)
	if evt.param1 ~= 3029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3029(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {2}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	ScriptLib.SetGroupVariableValue(context, "position", 2) 
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3030(context, evt)
	if evt.param1 ~= 3030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3030(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {3}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	
	ScriptLib.SetGroupVariableValue(context, "position", 3) 
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3031(context, evt)
	if evt.param1 ~= 3031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3031(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {4}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	
	ScriptLib.SetGroupVariableValue(context, "position", 4) 
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3032(context, evt)
	if evt.param1 ~= 3032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3032(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220136003, EntityType.GADGET, 3001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3034(context, evt)
	-- 判断是gadgetid 为 3033的移动平台，是否到达了65 的路线中的 3 点
	
	if 3033 ~= evt.param1 then
	  return false
	end
	
	if 65 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3034(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3035(context, evt)
	if evt.param1 ~= 3035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3035(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3033, 65) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_3036(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_3036(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 3033) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3037(context, evt)
	if evt.param1 ~= 3037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3037(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3003, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "wall" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3039(context, evt)
	if evt.param1 ~= 3039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3039(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {1}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	
	ScriptLib.SetGroupVariableValue(context, "position", 1) 
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3040(context, evt)
	if evt.param1 ~= 3040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3040(context, evt)
	
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {3}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	ScriptLib.SetGroupVariableValue(context, "position", 3) 
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3041(context, evt)
	if evt.param1 ~= 3041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3041(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {4}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	
	ScriptLib.SetGroupVariableValue(context, "position", 4) 
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3042(context, evt)
	if evt.param1 ~= 3042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3042(context, evt)
	
	
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {2}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	ScriptLib.SetGroupVariableValue(context, "position", 2) 
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136003, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3043(context, evt)
	if evt.param1 ~= 3043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"change"为0
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3043(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3004, 66) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3005, 67) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3006, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3007, 69) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3008, 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3009, 71) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3010, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3011, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3012, 74) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3013, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3014, 76) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3015, 77) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3016, 78) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3017, 79) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "change" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3044(context, evt)
	-- 判断是gadgetid 为 3004的移动平台，是否到达了66 的路线中的 0 点
	
	if 3004 ~= evt.param1 then
	  return false
	end
	
	if 66 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3044(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3018, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3019, 81) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3020, 82) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3021, 83) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3022, 84) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3023, 85) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3091, 86) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3088, 89) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3090, 88) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3089, 87) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3091) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3045(context, evt)
	if evt.param1 ~= 3045 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3045(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3024, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3025, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3049(context, evt)
	if evt.param1 ~= 3049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3049(context, evt)
	-- 创建id为3047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3064(context, evt)
	if evt.param1 ~= 3064 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"change2"为0
	if ScriptLib.GetGroupVariableValue(context, "change2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3064(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3050, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3051, 101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3052, 102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3053, 103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3054, 104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3055, 105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3055) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3056, 106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3057, 107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3057) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3058, 108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3058) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3059, 109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3059) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3060, 110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3061, 111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 针对当前group内变量名为 "change2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "change2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3065(context, evt)
	-- 判断是gadgetid 为 3050的移动平台，是否到达了100 的路线中的 0 点
	
	if 3050 ~= evt.param1 then
	  return false
	end
	
	if 100 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3065(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3062, 112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3063, 113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3066, 114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3067, 115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3092, 116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3068, 117) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3069, 118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3070, 119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3071, 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3093, 124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3067) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3068) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3082(context, evt)
	if evt.param1 ~= 3082 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3082(context, evt)
	 ScriptLib.AddQuestProgress(context, "monamaze3complete") 
	
	 ScriptLib.RefreshGroup(context, { group_id = 220136003, suite = 10 }) 
	
	
	ScriptLib.DelSceneTag(context,20136,1074)
	
	ScriptLib.AddSceneTag(context,20136,1075)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3083(context, evt)
	if evt.param1 ~= 3083 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3083(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=290, y=71.6, z=876}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=180, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3085(context, evt)
	if evt.param1 ~= 3085 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3085(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3086(context, evt)
	  if ScriptLib.GetHostQuestState(context,4007617)==2 or ScriptLib.GetHostQuestState(context,4007611)==2or ScriptLib.GetHostQuestState(context,4007614)==2 then
	ScriptLib.RefreshGroup(context, { group_id = 220136003, suite = 1 })
	
	ScriptLib.AddSceneTag(context,20136,1074)
	ScriptLib.SetWeatherAreaState(context, 10093, 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3087(context, evt)
	if evt.param1 ~= 3087 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3087(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3094(context, evt)
	if evt.param1 ~= 3094 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3094(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220136003, EntityType.GADGET, 3001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3095(context, evt)
	if evt.param1 ~= 3095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall"为1
	if ScriptLib.GetGroupVariableValue(context, "wall") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3095(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3003, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3096(context, evt)
	if evt.param1 ~= 3096 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3096(context, evt)
	local p = 0
	p=ScriptLib.GetGroupVariableValue(context, "position")
	
	ScriptLib.SetPlatformPointArray(context, 3002, 1, {p}, {route_type=RouteType.OneWay, record_mode=RouteRecordMode.Prereach})
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "position", 220136003) == 1 then
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 4)
	end
	 if ScriptLib.GetGroupVariableValueByGroup(context, "position", 220136003) == 2 then
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 5)
	end
	
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "position", 220136003) == 3 then
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 6)
	end
	
	 if ScriptLib.GetGroupVariableValueByGroup(context, "position", 220136003) == 4 then
	    ScriptLib.AddExtraGroupSuite(context, 220136003, 7)
	end
	
	
	return 0
end