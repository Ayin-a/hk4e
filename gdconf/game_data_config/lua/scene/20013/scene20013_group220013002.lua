-- 基础信息
local base_info = {
	group_id = 220013002
}

-- Trigger变量
local defs = {
	gadget_id_1 = 10,
	gadget_id_2 = 1018,
	gadget_id_3 = 1017,
	gadget_id_4 = 1016,
	gadget_id_5 = 8,
	gadget_id_6 = 9,
	gadget_id_7 = 115,
	gadget_id_8 = 3016,
	gadget_id_9 = 3017,
	gadget_id_10 = 3018,
	gadget_id_11 = 116,
	gadget_id_12 = 117,
	gadget_id_13 = 231,
	gadget_id_14 = 232,
	gadget_id_15 = 233,
	gadget_id_16 = 234,
	gadget_id_17 = 235,
	gadget_id_18 = 236,
	gadget_id_19 = 237,
	gadget_id_20 = 238,
	gadget_id_21 = 223,
	gadget_id_22 = 224,
	gadget_id_23 = 225,
	gadget_id_24 = 226,
	gadget_id_25 = 229,
	gadget_id_26 = 230,
	gadget_id_27 = 241,
	gadget_id_28 = 242,
	gadget_id_29 = 243,
	gadget_id_30 = 244,
	gadget_id_31 = 245,
	gadget_id_32 = 246,
	gadget_id_33 = 254,
	gadget_id_34 = 255,
	gadget_id_35 = 256,
	gadget_id_36 = 257,
	gadget_id_37 = 258,
	gadget_id_38 = 259,
	gadget_id_39 = 262,
	gadget_id_40 = 263,
	gadget_id_41 = 264,
	gadget_id_42 = 265,
	gadget_id_43 = 266,
	gadget_id_44 = 267,
	gadget_id_45 = 270,
	gadget_id_46 = 271,
	gadget_id_47 = 272,
	gadget_id_48 = 273,
	gadget_id_49 = 274,
	gadget_id_50 = 275
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
	{ config_id = 8, gadget_id = 70350003, pos = { x = 343.305, y = -19.193, z = 368.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9, gadget_id = 70350003, pos = { x = 333.325, y = -19.099, z = 368.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10, gadget_id = 70350003, pos = { x = 353.350, y = -19.114, z = 368.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11, gadget_id = 70211001, pos = { x = 353.255, y = -23.671, z = 385.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 12, gadget_id = 70211001, pos = { x = 343.121, y = -23.687, z = 385.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 13, gadget_id = 70211001, pos = { x = 333.169, y = -23.688, z = 385.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 115, gadget_id = 70350003, pos = { x = 353.182, y = -11.599, z = 291.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 116, gadget_id = 70350003, pos = { x = 343.264, y = -11.677, z = 291.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 117, gadget_id = 70350003, pos = { x = 333.382, y = -11.598, z = 291.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 118, gadget_id = 70211001, pos = { x = 353.202, y = -16.874, z = 308.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 119, gadget_id = 70211001, pos = { x = 343.179, y = -16.873, z = 308.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 120, gadget_id = 70211001, pos = { x = 333.348, y = -16.874, z = 308.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 221, gadget_id = 70310002, pos = { x = 356.493, y = -24.152, z = 393.501 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 222, gadget_id = 70310002, pos = { x = 349.855, y = -24.047, z = 393.506 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 223, gadget_id = 70310002, pos = { x = 355.944, y = -20.895, z = 388.309 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 224, gadget_id = 70310002, pos = { x = 350.221, y = -20.925, z = 388.146 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 225, gadget_id = 70310002, pos = { x = 356.486, y = -19.153, z = 380.713 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 226, gadget_id = 70310002, pos = { x = 349.870, y = -19.150, z = 380.806 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 229, gadget_id = 70310002, pos = { x = 355.828, y = -16.629, z = 373.819 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 230, gadget_id = 70310002, pos = { x = 350.584, y = -16.597, z = 373.809 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 231, gadget_id = 70310002, pos = { x = 346.338, y = -24.071, z = 392.896 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 232, gadget_id = 70310002, pos = { x = 339.974, y = -23.918, z = 392.798 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 233, gadget_id = 70310002, pos = { x = 345.900, y = -21.231, z = 387.848 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 234, gadget_id = 70310002, pos = { x = 340.416, y = -21.134, z = 387.820 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 235, gadget_id = 70310002, pos = { x = 346.356, y = -18.835, z = 379.126 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 236, gadget_id = 70310002, pos = { x = 339.969, y = -18.783, z = 379.224 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 237, gadget_id = 70310002, pos = { x = 345.891, y = -17.322, z = 373.592 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 238, gadget_id = 70310002, pos = { x = 340.417, y = -17.319, z = 373.549 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 239, gadget_id = 70310002, pos = { x = 336.479, y = -24.413, z = 394.537 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 240, gadget_id = 70310002, pos = { x = 330.198, y = -25.581, z = 393.969 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 241, gadget_id = 70310002, pos = { x = 335.987, y = -21.851, z = 388.233 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 242, gadget_id = 70310002, pos = { x = 330.552, y = -21.852, z = 388.263 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 243, gadget_id = 70310002, pos = { x = 336.451, y = -19.819, z = 379.751 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 244, gadget_id = 70310002, pos = { x = 330.194, y = -19.959, z = 379.648 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 245, gadget_id = 70310002, pos = { x = 336.071, y = -16.616, z = 373.811 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 246, gadget_id = 70310002, pos = { x = 330.368, y = -16.600, z = 373.782 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 252, gadget_id = 70310001, pos = { x = 355.707, y = -18.372, z = 317.219 }, rot = { x = 0.000, y = 66.792, z = 0.000 }, level = 1 },
	{ config_id = 253, gadget_id = 70310001, pos = { x = 350.537, y = -18.372, z = 317.214 }, rot = { x = 0.000, y = 133.247, z = 0.000 }, level = 1 },
	{ config_id = 254, gadget_id = 70310001, pos = { x = 355.970, y = -16.881, z = 308.864 }, rot = { x = 0.000, y = 53.620, z = 0.000 }, level = 1 },
	{ config_id = 255, gadget_id = 70310001, pos = { x = 350.558, y = -16.881, z = 308.765 }, rot = { x = 0.000, y = 107.124, z = 0.000 }, level = 1 },
	{ config_id = 256, gadget_id = 70310001, pos = { x = 356.176, y = -14.366, z = 300.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 257, gadget_id = 70310001, pos = { x = 350.424, y = -14.269, z = 300.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 258, gadget_id = 70310001, pos = { x = 355.898, y = -11.354, z = 294.875 }, rot = { x = 0.000, y = 39.293, z = 0.000 }, level = 1 },
	{ config_id = 259, gadget_id = 70310001, pos = { x = 350.743, y = -11.354, z = 294.966 }, rot = { x = 0.000, y = 249.661, z = 0.000 }, level = 1 },
	{ config_id = 260, gadget_id = 70310001, pos = { x = 345.748, y = -18.372, z = 317.480 }, rot = { x = 0.000, y = 337.166, z = 0.000 }, level = 1 },
	{ config_id = 261, gadget_id = 70310001, pos = { x = 340.858, y = -18.372, z = 317.497 }, rot = { x = 0.000, y = 280.978, z = 0.000 }, level = 1 },
	{ config_id = 262, gadget_id = 70310001, pos = { x = 345.998, y = -16.881, z = 308.459 }, rot = { x = 0.000, y = 204.975, z = 0.000 }, level = 1 },
	{ config_id = 263, gadget_id = 70310001, pos = { x = 340.617, y = -16.881, z = 308.546 }, rot = { x = 0.000, y = 159.651, z = 0.000 }, level = 1 },
	{ config_id = 264, gadget_id = 70310001, pos = { x = 346.085, y = -14.697, z = 301.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 265, gadget_id = 70310001, pos = { x = 340.681, y = -14.677, z = 301.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 266, gadget_id = 70310001, pos = { x = 345.991, y = -11.354, z = 294.302 }, rot = { x = 0.000, y = 75.165, z = 0.000 }, level = 1 },
	{ config_id = 267, gadget_id = 70310001, pos = { x = 340.681, y = -11.354, z = 294.449 }, rot = { x = 0.000, y = 126.192, z = 0.000 }, level = 1 },
	{ config_id = 268, gadget_id = 70310001, pos = { x = 335.819, y = -18.372, z = 317.419 }, rot = { x = 0.000, y = 272.574, z = 0.000 }, level = 1 },
	{ config_id = 269, gadget_id = 70310001, pos = { x = 330.623, y = -18.372, z = 317.464 }, rot = { x = 0.000, y = 56.642, z = 0.000 }, level = 1 },
	{ config_id = 270, gadget_id = 70310001, pos = { x = 336.038, y = -16.881, z = 308.599 }, rot = { x = 0.000, y = 3.309, z = 0.000 }, level = 1 },
	{ config_id = 271, gadget_id = 70310001, pos = { x = 330.508, y = -16.881, z = 308.566 }, rot = { x = 0.000, y = 176.370, z = 0.000 }, level = 1 },
	{ config_id = 272, gadget_id = 70310001, pos = { x = 336.039, y = -14.902, z = 301.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 273, gadget_id = 70310001, pos = { x = 330.669, y = -14.849, z = 301.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274, gadget_id = 70310001, pos = { x = 335.729, y = -11.354, z = 294.739 }, rot = { x = 0.000, y = 303.864, z = 0.000 }, level = 1 },
	{ config_id = 275, gadget_id = 70310001, pos = { x = 330.739, y = -11.354, z = 294.804 }, rot = { x = 0.000, y = 312.555, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.SPHERE, radius = 3.29, pos = { x = 353.274, y = -24.153, z = 384.162 } },
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 3.42, pos = { x = 342.907, y = -23.687, z = 384.074 } },
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 3.94, pos = { x = 333.193, y = -23.687, z = 384.299 } },
	{ config_id = 25, shape = RegionShape.SPHERE, radius = 5, pos = { x = 352.879, y = -16.615, z = 306.744 } },
	{ config_id = 26, shape = RegionShape.SPHERE, radius = 5, pos = { x = 343.067, y = -16.560, z = 306.985 } },
	{ config_id = 27, shape = RegionShape.SPHERE, radius = 5, pos = { x = 333.311, y = -16.693, z = 307.216 } },
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 67.32, pos = { x = 344.031, y = -12.854, z = 216.592 } },
	{ config_id = 38, shape = RegionShape.SPHERE, radius = 42.94, pos = { x = 341.292, y = -18.853, z = 318.771 } },
	{ config_id = 52, shape = RegionShape.SPHERE, radius = 5, pos = { x = 352.792, y = -26.785, z = 398.797 } },
	{ config_id = 57, shape = RegionShape.SPHERE, radius = 5, pos = { x = 343.046, y = -27.984, z = 398.321 } },
	{ config_id = 61, shape = RegionShape.SPHERE, radius = 5, pos = { x = 333.295, y = -27.983, z = 398.856 } },
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 5, pos = { x = 353.428, y = -18.371, z = 316.905 } },
	{ config_id = 68, shape = RegionShape.SPHERE, radius = 5, pos = { x = 343.252, y = -18.372, z = 316.872 } },
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 5, pos = { x = 333.220, y = -18.372, z = 316.729 } }
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3", forbid_guest = false },
	{ config_id = 1000004, name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "action_EVENT_ENTER_REGION_4", forbid_guest = false },
	{ config_id = 1000005, name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", forbid_guest = false },
	{ config_id = 1000025, name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", forbid_guest = false },
	{ config_id = 1000026, name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ config_id = 1000027, name = "ENTER_REGION_27", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27", action = "action_EVENT_ENTER_REGION_27", forbid_guest = false },
	{ config_id = 1000028, name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28", forbid_guest = false },
	{ config_id = 1000038, name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false },
	{ config_id = 1000052, name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52", forbid_guest = false },
	{ config_id = 1000057, name = "ENTER_REGION_57", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57", action = "action_EVENT_ENTER_REGION_57", forbid_guest = false },
	{ config_id = 1000061, name = "ENTER_REGION_61", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61", action = "action_EVENT_ENTER_REGION_61", forbid_guest = false },
	{ config_id = 1000067, name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "action_EVENT_ENTER_REGION_67", forbid_guest = false },
	{ config_id = 1000068, name = "ENTER_REGION_68", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68", action = "action_EVENT_ENTER_REGION_68", forbid_guest = false },
	{ config_id = 1000069, name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "action_EVENT_ENTER_REGION_69", forbid_guest = false },
	{ config_id = 1000070, name = "TIMER_EVENT_70", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_70", action = "action_EVENT_TIMER_EVENT_70", trigger_count = 0 },
	{ config_id = 1000071, name = "TIMER_EVENT_71", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_71", trigger_count = 0 },
	{ config_id = 1000072, name = "TIMER_EVENT_72", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_72", trigger_count = 0 },
	{ config_id = 1000073, name = "TIMER_EVENT_73", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_73", trigger_count = 0 },
	{ config_id = 1000074, name = "TIMER_EVENT_74", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_74", trigger_count = 0 },
	{ config_id = 1000075, name = "TIMER_EVENT_75", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_75", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Enter_FireChoice", value = 0, no_refresh = false },
	{ config_id = 2, name = "Enter_IceChoice", value = 0, no_refresh = false },
	{ config_id = 3, name = "Enter_ElecChoice", value = 0, no_refresh = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 8, 9, 10, 11, 12, 13, 115, 116, 117, 118, 119, 120, 221, 222, 223, 224, 225, 226, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275 },
		regions = { 3, 4, 5, 25, 26, 27, 28, 38, 52, 57, 61, 67, 68, 69 },
		triggers = { "ENTER_REGION_3", "ENTER_REGION_4", "ENTER_REGION_5", "ENTER_REGION_25", "ENTER_REGION_26", "ENTER_REGION_27", "ENTER_REGION_28", "ENTER_REGION_38", "ENTER_REGION_52", "ENTER_REGION_57", "ENTER_REGION_61", "ENTER_REGION_67", "ENTER_REGION_68", "ENTER_REGION_69", "TIMER_EVENT_70", "TIMER_EVENT_71", "TIMER_EVENT_72", "TIMER_EVENT_73", "TIMER_EVENT_74", "TIMER_EVENT_75" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
	-- 根据不同的选项做不同的操作
	
	ScriptLib.ChangeGroupVariableValue(context, "Enter_FireChoice", 1)
	if 0 ~= ScriptLib.ShowReminder(context, 10050401) then
		return -1
	end
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013003, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组220013001中， configid为3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220013001中， configid为2的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_3, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220013001中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_4, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4(context, evt)
	if evt.param1 ~= 4 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4(context, evt)
	-- 根据不同的选项做不同的操作
	
	ScriptLib.ChangeGroupVariableValue(context, "Enter_IceChoice", 1)
	if 0 ~= ScriptLib.ShowReminder(context, 10050501) then
		return -1
	end
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_5, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013003, suite = 2 }) then
			return -1
		end
	
	-- 改变指定group组220013001中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_4, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220013001中， configid为2的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_3, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220013001中， configid为3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 根据不同的选项做不同的操作
	
	ScriptLib.ChangeGroupVariableValue(context, "Enter_ElecChoice", 1)
	
	if 0 ~= ScriptLib.ShowReminder(context, 10050601) then
		return -1
	end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_6, GadgetState.GearStart) then
				return -1
			end 
		
			-- 重新生成指定group，指定suite
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013003, suite = 3 }) then
				return -1
			end
		
		-- 改变指定group组220013001中， configid为1的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_4, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013001中， configid为2的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_3, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013001中， configid为3的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013001, defs.gadget_id_2, GadgetState.Default) then
				return -1
			end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	cur_fireChoice = ScriptLib.GetGroupVariableValue(context, "Enter_FireChoice")
	cur_iceChoice = ScriptLib.GetGroupVariableValue(context, "Enter_IceChoice")
	cur_elecChoice = ScriptLib.GetGroupVariableValue(context, "Enter_ElecChoice")
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【1】
	    if cur_fireChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 1 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10050801) then
		return -1
	end
	
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【2】 
	    if cur_iceChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 2 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10051101) then
		return -1
	end
	
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【3】 
	    if cur_elecChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 3 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10051401) then
		return -1
	end
	
	    end
	
	
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_8, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为15的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_9, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为16的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_10, GadgetState.Default) then
				return -1
			end 
		
		-- 根据不同的选项做不同的操作
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
				return -1
			end 
		
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	cur_fireChoice = ScriptLib.GetGroupVariableValue(context, "Enter_FireChoice")
	cur_iceChoice = ScriptLib.GetGroupVariableValue(context, "Enter_IceChoice")
	cur_elecChoice = ScriptLib.GetGroupVariableValue(context, "Enter_ElecChoice")
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【1】
	    if cur_fireChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 4 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10050901) then
		return -1
	end
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【2】 
	    if cur_iceChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 5 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10051201) then
		return -1
	end
	
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【3】 
	    if cur_elecChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 6 }) then
				  return -1
			   end
	if 0 ~= ScriptLib.ShowReminder(context, 10051501) then
		return -1
	end
	
	    end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_11, GadgetState.GearStart) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为14的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_8, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为15的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_9, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为16的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_10, GadgetState.Default) then
				return -1
			end 
		
		
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_27(context, evt)
	if evt.param1 ~= 27 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27(context, evt)
	cur_fireChoice = ScriptLib.GetGroupVariableValue(context, "Enter_FireChoice")
	cur_iceChoice = ScriptLib.GetGroupVariableValue(context, "Enter_IceChoice")
	cur_elecChoice = ScriptLib.GetGroupVariableValue(context, "Enter_ElecChoice")
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【1】
	    if cur_fireChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 7 }) then
				  return -1
			   end
	
	if 0 ~= ScriptLib.ShowReminder(context, 10051001) then
		return -1
	end
	
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【2】 
	    if cur_iceChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 8 }) then
				  return -1
			   end
	
	if 0 ~= ScriptLib.ShowReminder(context, 10051301)  then
		return -1
	end
	
	    end
	
	--如果火+攻则在BOSS区域生成 火+攻 型阵容 【3】 
	    if cur_elecChoice == 1 then
	-- 重新生成指定group，指定suite
			   if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220013005, suite = 9 }) then
				  return -1
			   end
	
	if 0 ~= ScriptLib.ShowReminder(context, 10051601) then
		return -1
	end
	
	    end
	
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_8, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为15的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_9, GadgetState.Default) then
				return -1
			end 
		
		-- 改变指定group组220013003中， configid为16的gadget的state
		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220013003, defs.gadget_id_10, GadgetState.Default) then
				return -1
			end 
		
		-- 根据不同的选项做不同的操作
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_12, GadgetState.GearStart) then
				return -1
			end 
		
		
		return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if evt.param1 ~= 28 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28(context, evt)
	-- 将configid为 115 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 116 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 117 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if evt.param1 ~= 38 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38(context, evt)
	-- 将configid为 8 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 10 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52(context, evt)
	if evt.param1 ~= 52 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52(context, evt)
	-- 将configid为 221 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 222 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0.4秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Left_row2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Left_row2", 0.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟0.8秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Left_row3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Left_row3", 0.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Left_row4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Left_row4", 1.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57(context, evt)
	if evt.param1 ~= 57 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57(context, evt)
	-- 根据不同的选项做不同的操作
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_13, GadgetState.GearStart) then
			return -1
		end 
	
	-- 根据不同的选项做不同的操作
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_14, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：220013002的对象,请求一次调用,并将string参数：Fire_Middle_row2 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Middle_row2", 1) then
	
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数：Fire_Middle_row3 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Middle_row3", 2) then
	
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：220013002的对象,请求一次调用,并将string参数：Fire_Middle_row4 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Middle_row4", 3) then
	
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61(context, evt)
	if evt.param1 ~= 61 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61(context, evt)
	-- 将configid为 239 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 240 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 240, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0.4秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Right_row2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Right_row2", 0.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟0.8秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Right_row3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Right_row3", 0.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_Right_row4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_Right_row4", 1.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if evt.param1 ~= 67 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67(context, evt)
	-- 将configid为 252 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 252, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 253 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 253, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0.4秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Left_row2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Left_row2", 0.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟0.8秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Left_row3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Left_row3", 0.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Left_row4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Left_row4", 1.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_68(context, evt)
	if evt.param1 ~= 68 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68(context, evt)
	-- 将configid为 260 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 261 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0.4秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Middle_row2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Middle_row2", 0.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟0.8秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Middle_row3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Middle_row3", 0.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Middle_row4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Middle_row4", 1.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if evt.param1 ~= 69 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69(context, evt)
	-- 将configid为 268 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 269 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0.4秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Right_row2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Right_row2", 0.4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟0.8秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Right_row3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Right_row3", 0.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1.2秒后,向groupId为：220013002的对象,请求一次调用,并将string参数："Fire_2Right_row4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220013002, "Fire_2Right_row4", 1.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_70(context, evt)
	
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_70(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_Middle_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_15, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_16, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Middle_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_17, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_18, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Middle_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_19, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_20, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_71(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_Left_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_21, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_22, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Left_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_23, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_24, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Left_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_25, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_26, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_72(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_Right_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_27, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_28, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Right_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_29, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_30, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_Right_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_31, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_32, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_73(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_2Left_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_33, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_34, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Left_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_35, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_36, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Left_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_37, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_38, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_74(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_2Middle_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_39, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_40, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Middle_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_41, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_42, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Middle_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_43, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_44, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_75(context, evt)
	-- 根据不同的选项做不同的操作
	
	if evt.source_name == "Fire_2Right_row2" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_45, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_46, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Right_row3" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_47, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_48, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	if evt.source_name == "Fire_2Right_row4" then
	
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_49, GadgetState.GearStart) then
	
			return -1
		end 
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_50, GadgetState.GearStart) then
	
			return -1
		end 
	end
	
	return 0
end