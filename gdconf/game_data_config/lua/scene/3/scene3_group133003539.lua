-- 基础信息
local base_info = {
	group_id = 133003539
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 539001, monster_id = 20011201, pos = { x = 2552.004, y = 352.018, z = -1707.245 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539002, monster_id = 20011201, pos = { x = 2554.624, y = 353.021, z = -1709.387 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539003, monster_id = 20011001, pos = { x = 2803.353, y = 299.612, z = -1561.267 }, rot = { x = 1.853, y = 191.627, z = 344.026 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539004, monster_id = 20011001, pos = { x = 2805.650, y = 300.347, z = -1563.239 }, rot = { x = 12.550, y = 235.748, z = 349.868 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539005, monster_id = 20010501, pos = { x = 2749.179, y = 259.134, z = -1360.388 }, rot = { x = 0.261, y = 236.897, z = 358.761 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539006, monster_id = 20010501, pos = { x = 2747.902, y = 259.110, z = -1358.725 }, rot = { x = 0.261, y = 236.897, z = 358.761 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539030, monster_id = 20010801, pos = { x = 2680.844, y = 241.060, z = -1217.648 }, rot = { x = 354.659, y = 237.517, z = 354.955 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539031, monster_id = 20010801, pos = { x = 2681.076, y = 241.183, z = -1220.473 }, rot = { x = 354.659, y = 237.517, z = 354.955 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539037, monster_id = 20011401, pos = { x = 2588.039, y = 223.375, z = -1149.554 }, rot = { x = 11.298, y = 236.572, z = 354.709 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539038, monster_id = 20011301, pos = { x = 2591.332, y = 223.719, z = -1149.136 }, rot = { x = 11.298, y = 236.572, z = 354.709 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539057, monster_id = 20011401, pos = { x = 2591.020, y = 223.177, z = -1152.461 }, rot = { x = 11.298, y = 236.572, z = 354.709 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539070, monster_id = 20011201, pos = { x = 2551.821, y = 352.735, z = -1711.746 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539071, monster_id = 20010801, pos = { x = 2802.999, y = 299.625, z = -1565.317 }, rot = { x = 12.550, y = 235.748, z = 349.868 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539072, monster_id = 20011201, pos = { x = 2549.404, y = 352.041, z = -1709.970 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539074, monster_id = 20010801, pos = { x = 2801.316, y = 299.079, z = -1563.134 }, rot = { x = 1.853, y = 191.627, z = 344.026 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539075, monster_id = 20010501, pos = { x = 2746.966, y = 259.125, z = -1362.246 }, rot = { x = 0.261, y = 236.897, z = 358.761 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539076, monster_id = 20010501, pos = { x = 2744.886, y = 259.110, z = -1359.682 }, rot = { x = 0.261, y = 236.897, z = 358.761 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539077, monster_id = 20010501, pos = { x = 2681.240, y = 241.293, z = -1222.141 }, rot = { x = 354.659, y = 237.517, z = 354.955 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539078, monster_id = 20010501, pos = { x = 2683.203, y = 241.306, z = -1222.757 }, rot = { x = 354.659, y = 237.517, z = 354.955 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539079, monster_id = 20011401, pos = { x = 2586.690, y = 223.095, z = -1151.575 }, rot = { x = 11.298, y = 236.572, z = 354.709 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 },
	{ config_id = 539080, monster_id = 20011401, pos = { x = 2588.771, y = 222.811, z = -1152.005 }, rot = { x = 11.298, y = 236.572, z = 354.709 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 539007, gadget_id = 70360005, pos = { x = 2516.459, y = 342.520, z = -1720.816 }, rot = { x = 2.898, y = 359.450, z = 21.290 }, level = 1, area_id = 1 },
	{ config_id = 539008, gadget_id = 70360025, pos = { x = 2541.270, y = 209.274, z = -1177.417 }, rot = { x = 0.000, y = 0.000, z = 0.895 }, level = 1, area_id = 1 },
	{ config_id = 539009, gadget_id = 70350085, pos = { x = 2552.136, y = 352.337, z = -1708.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539010, gadget_id = 70300114, pos = { x = 2552.136, y = 350.648, z = -1708.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539011, gadget_id = 70350085, pos = { x = 2803.408, y = 299.679, z = -1563.141 }, rot = { x = 1.433, y = 0.202, z = 16.016 }, level = 1, area_id = 1 },
	{ config_id = 539012, gadget_id = 70300114, pos = { x = 2803.394, y = 298.632, z = -1563.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539013, gadget_id = 70350085, pos = { x = 2746.712, y = 259.110, z = -1360.411 }, rot = { x = 0.895, y = 0.042, z = 0.896 }, level = 1, area_id = 1 },
	{ config_id = 539014, gadget_id = 70300114, pos = { x = 2746.693, y = 258.585, z = -1360.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539015, gadget_id = 70350085, pos = { x = 2541.270, y = 209.274, z = -1177.417 }, rot = { x = 0.000, y = 0.000, z = 0.895 }, level = 1, area_id = 1 },
	{ config_id = 539016, gadget_id = 70350085, pos = { x = 2516.270, y = 343.319, z = -1720.792 }, rot = { x = 0.000, y = 359.450, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539017, gadget_id = 70710126, pos = { x = 2552.136, y = 352.337, z = -1708.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539018, gadget_id = 70710126, pos = { x = 2803.408, y = 299.679, z = -1563.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539019, gadget_id = 70710126, pos = { x = 2746.712, y = 259.110, z = -1360.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539032, gadget_id = 70350085, pos = { x = 2682.490, y = 241.115, z = -1219.928 }, rot = { x = 7.135, y = 0.308, z = 358.262 }, level = 1, area_id = 1 },
	{ config_id = 539033, gadget_id = 70300114, pos = { x = 2682.471, y = 240.376, z = -1219.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539034, gadget_id = 70710126, pos = { x = 2682.490, y = 241.115, z = -1219.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539039, gadget_id = 70350085, pos = { x = 2590.140, y = 223.210, z = -1150.819 }, rot = { x = 358.202, y = 0.036, z = 12.333 }, level = 1, area_id = 1 },
	{ config_id = 539040, gadget_id = 70300114, pos = { x = 2589.108, y = 222.671, z = -1150.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539041, gadget_id = 70710126, pos = { x = 2590.140, y = 223.210, z = -1150.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539044, gadget_id = 70690001, pos = { x = 2592.754, y = 359.563, z = -1689.503 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539045, gadget_id = 70690001, pos = { x = 2599.667, y = 359.022, z = -1685.533 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539046, gadget_id = 70690001, pos = { x = 2620.227, y = 357.298, z = -1673.725 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539047, gadget_id = 70690001, pos = { x = 2631.423, y = 356.642, z = -1667.295 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539048, gadget_id = 70690001, pos = { x = 2675.419, y = 353.393, z = -1642.028 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539049, gadget_id = 70690001, pos = { x = 2685.739, y = 352.496, z = -1636.101 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539050, gadget_id = 70690001, pos = { x = 2804.270, y = 303.360, z = -1536.903 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539051, gadget_id = 70220011, pos = { x = 2806.788, y = 299.966, z = -1549.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539052, gadget_id = 70690001, pos = { x = 2801.824, y = 302.450, z = -1529.298 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539053, gadget_id = 70690001, pos = { x = 2795.680, y = 302.421, z = -1510.105 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539054, gadget_id = 70690001, pos = { x = 2792.869, y = 301.741, z = -1501.352 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539055, gadget_id = 70690001, pos = { x = 2780.635, y = 298.754, z = -1463.253 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539056, gadget_id = 70220024, pos = { x = 2578.109, y = 218.428, z = -1169.919 }, rot = { x = 0.000, y = 244.477, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539059, gadget_id = 70690001, pos = { x = 2775.577, y = 298.054, z = -1447.478 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539060, gadget_id = 70690001, pos = { x = 2769.978, y = 296.362, z = -1430.056 }, rot = { x = 2.420, y = 342.221, z = 359.286 }, level = 1, area_id = 1 },
	{ config_id = 539061, gadget_id = 70690001, pos = { x = 2703.210, y = 257.530, z = -1270.886 }, rot = { x = 0.000, y = 336.253, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539062, gadget_id = 70690001, pos = { x = 2696.434, y = 257.530, z = -1255.483 }, rot = { x = 0.000, y = 336.253, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539065, gadget_id = 70690001, pos = { x = 2664.737, y = 240.917, z = -1168.388 }, rot = { x = 0.000, y = 301.805, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539066, gadget_id = 70690001, pos = { x = 2656.384, y = 240.917, z = -1163.208 }, rot = { x = 0.000, y = 301.805, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539067, gadget_id = 70690001, pos = { x = 2643.434, y = 239.953, z = -1155.177 }, rot = { x = 0.000, y = 301.805, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539068, gadget_id = 70690001, pos = { x = 2711.058, y = 257.753, z = -1288.722 }, rot = { x = 0.000, y = 336.253, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539069, gadget_id = 70690001, pos = { x = 2708.721, y = 257.530, z = -1283.411 }, rot = { x = 0.000, y = 336.253, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539081, gadget_id = 70690001, pos = { x = 2719.111, y = 351.443, z = -1616.935 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 539082, gadget_id = 70690001, pos = { x = 2741.872, y = 349.471, z = -1603.864 }, rot = { x = 0.000, y = 60.131, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 539023, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2541.233, y = 209.270, z = -1177.443 }, area_id = 1 },
	{ config_id = 539024, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2552.185, y = 350.650, z = -1708.750 }, area_id = 1 },
	{ config_id = 539026, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2803.394, y = 298.632, z = -1563.156 }, area_id = 1 },
	{ config_id = 539028, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2746.693, y = 258.585, z = -1360.410 }, area_id = 1 },
	{ config_id = 539035, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2682.471, y = 240.376, z = -1219.927 }, area_id = 1 },
	{ config_id = 539042, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2589.108, y = 222.671, z = -1150.819 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1539020, name = "GADGET_STATE_CHANGE_539020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_539020", action = "action_EVENT_GADGET_STATE_CHANGE_539020", trigger_count = 0 },
	{ config_id = 1539021, name = "CHALLENGE_SUCCESS_539021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_539021", trigger_count = 0 },
	{ config_id = 1539022, name = "CHALLENGE_FAIL_539022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_539022", trigger_count = 0 },
	{ config_id = 1539023, name = "ENTER_REGION_539023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539023", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1539024, name = "ENTER_REGION_539024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539024", action = "action_EVENT_ENTER_REGION_539024" },
	{ config_id = 1539025, name = "ANY_MONSTER_DIE_539025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_539025", action = "action_EVENT_ANY_MONSTER_DIE_539025" },
	{ config_id = 1539026, name = "ENTER_REGION_539026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539026", action = "action_EVENT_ENTER_REGION_539026" },
	{ config_id = 1539027, name = "ANY_MONSTER_DIE_539027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_539027", action = "action_EVENT_ANY_MONSTER_DIE_539027" },
	{ config_id = 1539028, name = "ENTER_REGION_539028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539028", action = "action_EVENT_ENTER_REGION_539028" },
	{ config_id = 1539029, name = "ANY_MONSTER_DIE_539029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_539029", action = "action_EVENT_ANY_MONSTER_DIE_539029" },
	{ config_id = 1539035, name = "ENTER_REGION_539035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539035", action = "action_EVENT_ENTER_REGION_539035" },
	{ config_id = 1539036, name = "ANY_MONSTER_DIE_539036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_539036", action = "action_EVENT_ANY_MONSTER_DIE_539036" },
	{ config_id = 1539042, name = "ENTER_REGION_539042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_539042", action = "action_EVENT_ENTER_REGION_539042" },
	{ config_id = 1539043, name = "ANY_MONSTER_DIE_539043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_539043", action = "action_EVENT_ANY_MONSTER_DIE_539043" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = 起点,
		monsters = { },
		gadgets = { 539007, 539016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_539020", "CHALLENGE_SUCCESS_539021", "CHALLENGE_FAIL_539022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 539008, 539015 },
		regions = { 539023 },
		triggers = { "ENTER_REGION_539023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { 539001, 539002, 539070, 539072 },
		gadgets = { 539009, 539010, 539017 },
		regions = { 539024 },
		triggers = { "ENTER_REGION_539024", "ANY_MONSTER_DIE_539025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 539003, 539004, 539071, 539074 },
		gadgets = { 539011, 539012, 539018, 539044, 539045, 539046, 539047, 539048, 539049, 539081, 539082 },
		regions = { 539026 },
		triggers = { "ENTER_REGION_539026", "ANY_MONSTER_DIE_539027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { 539005, 539006, 539075, 539076 },
		gadgets = { 539013, 539014, 539019, 539050, 539052, 539053, 539054, 539055, 539059, 539060 },
		regions = { 539028 },
		triggers = { "ENTER_REGION_539028", "ANY_MONSTER_DIE_539029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { 539030, 539031, 539077, 539078 },
		gadgets = { 539032, 539033, 539034, 539061, 539062, 539068, 539069 },
		regions = { 539035 },
		triggers = { "ENTER_REGION_539035", "ANY_MONSTER_DIE_539036" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 节点5,
		monsters = { 539037, 539038, 539057, 539079, 539080 },
		gadgets = { 539039, 539040, 539041, 539065, 539066, 539067 },
		regions = { 539042 },
		triggers = { "ENTER_REGION_539042", "ANY_MONSTER_DIE_539043" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_539020(context, evt)
	if 539007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_539020(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为207的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 207, 80, 4, 888, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 4)
	
	-- 将configid为 539016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_539021(context, evt)
	-- 将configid为 539007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539056 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003539, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_539022(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 539007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 539016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539056 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539023(context, evt)
	if evt.param1 ~= 539023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539024(context, evt)
	if evt.param1 ~= 539024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_539024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 539010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_539025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_539025(context, evt)
	-- 将configid为 539010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 4)
	
	-- 创建id为539051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 539051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539026(context, evt)
	if evt.param1 ~= 539026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_539026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 539012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_539027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_539027(context, evt)
	-- 将configid为 539012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539028(context, evt)
	if evt.param1 ~= 539028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_539028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 539014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_539029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_539029(context, evt)
	-- 将configid为 539014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539035(context, evt)
	if evt.param1 ~= 539035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_539035(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 539033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_539036(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_539036(context, evt)
	-- 创建id为539056的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 539056 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 539033 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539033, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_539042(context, evt)
	if evt.param1 ~= 539042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_539042(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 539041 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 539040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_539043(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_539043(context, evt)
	-- 将configid为 539040 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 539040, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003539, 2)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003539, 8)
	
	return 0
end