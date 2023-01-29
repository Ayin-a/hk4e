-- 基础信息
local base_info = {
	group_id = 220013005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020201, pos = { x = 343.051, y = -12.854, z = 251.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5002, monster_id = 20011201, pos = { x = 354.608, y = -12.853, z = 262.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 20011201, pos = { x = 332.458, y = -12.714, z = 254.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 20011201, pos = { x = 330.718, y = -12.622, z = 264.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 20011201, pos = { x = 332.048, y = -12.893, z = 275.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 20011201, pos = { x = 353.749, y = -12.853, z = 275.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 20011201, pos = { x = 341.984, y = -12.742, z = 265.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 20011201, pos = { x = 326.841, y = -11.354, z = 281.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 20011201, pos = { x = 359.756, y = -11.353, z = 281.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 20011201, pos = { x = 355.673, y = -12.622, z = 251.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 22010201, pos = { x = 342.995, y = -12.741, z = 259.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5012, monster_id = 20011001, pos = { x = 351.614, y = -12.758, z = 255.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5013, monster_id = 20011001, pos = { x = 334.522, y = -12.758, z = 257.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5014, monster_id = 22010301, pos = { x = 343.040, y = -12.758, z = 252.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 20010501, pos = { x = 338.268, y = -12.741, z = 264.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 20010601, pos = { x = 347.843, y = -12.741, z = 259.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5017, monster_id = 20010701, pos = { x = 336.532, y = -12.741, z = 259.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5018, monster_id = 21020101, pos = { x = 348.510, y = -12.742, z = 255.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5019, monster_id = 21020101, pos = { x = 337.772, y = -12.742, z = 255.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5020, monster_id = 22010201, pos = { x = 342.748, y = -12.742, z = 255.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5021, monster_id = 20010901, pos = { x = 342.919, y = -12.742, z = 261.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5022, monster_id = 20011101, pos = { x = 337.680, y = -12.741, z = 264.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5023, monster_id = 20011501, pos = { x = 348.735, y = -12.741, z = 258.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5024, monster_id = 20010501, pos = { x = 345.984, y = -12.741, z = 262.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5025, monster_id = 20010601, pos = { x = 346.958, y = -12.741, z = 258.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5026, monster_id = 20010701, pos = { x = 337.063, y = -12.741, z = 259.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5027, monster_id = 20010501, pos = { x = 350.200, y = -12.741, z = 263.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5028, monster_id = 20010501, pos = { x = 335.823, y = -12.741, z = 264.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5029, monster_id = 21020201, pos = { x = 342.479, y = -12.854, z = 251.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5030, monster_id = 21010501, pos = { x = 351.503, y = -11.354, z = 244.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5031, monster_id = 21010701, pos = { x = 350.802, y = -12.758, z = 258.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5032, monster_id = 21010701, pos = { x = 335.162, y = -12.758, z = 257.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5033, monster_id = 22010201, pos = { x = 348.179, y = -12.741, z = 259.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5034, monster_id = 22010301, pos = { x = 336.864, y = -12.741, z = 259.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5035, monster_id = 20010801, pos = { x = 347.189, y = -12.741, z = 265.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5036, monster_id = 20010801, pos = { x = 351.573, y = -12.758, z = 262.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5037, monster_id = 22010301, pos = { x = 342.692, y = -12.741, z = 259.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5038, monster_id = 20010601, pos = { x = 347.322, y = -12.741, z = 262.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5039, monster_id = 20010701, pos = { x = 336.928, y = -12.741, z = 262.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5040, monster_id = 20010501, pos = { x = 346.951, y = -12.742, z = 256.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5041, monster_id = 20010501, pos = { x = 338.190, y = -12.742, z = 256.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5042, gadget_id = 70320002, pos = { x = 361.454, y = -11.354, z = 268.220 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5043, gadget_id = 70320002, pos = { x = 361.701, y = -11.354, z = 258.306 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5044, gadget_id = 70320002, pos = { x = 325.386, y = -11.354, z = 258.050 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5045, gadget_id = 70320002, pos = { x = 325.153, y = -11.354, z = 268.143 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5046, gadget_id = 70220010, pos = { x = 359.320, y = -11.353, z = 266.495 }, rot = { x = 0.000, y = 213.708, z = 0.000 }, level = 1 },
	{ config_id = 5047, gadget_id = 70220010, pos = { x = 350.747, y = -12.742, z = 265.641 }, rot = { x = 0.000, y = 263.576, z = 0.000 }, level = 1 },
	{ config_id = 5048, gadget_id = 70220010, pos = { x = 335.370, y = -12.758, z = 266.080 }, rot = { x = 0.000, y = 353.618, z = 0.000 }, level = 1 },
	{ config_id = 5049, gadget_id = 70220010, pos = { x = 350.970, y = -12.758, z = 255.448 }, rot = { x = 0.000, y = 151.714, z = 0.000 }, level = 1 },
	{ config_id = 5050, gadget_id = 70220010, pos = { x = 334.959, y = -12.758, z = 255.879 }, rot = { x = 0.000, y = 118.399, z = 0.000 }, level = 1 },
	{ config_id = 5051, gadget_id = 70220010, pos = { x = 342.904, y = -12.742, z = 261.140 }, rot = { x = 0.000, y = 39.787, z = 0.000 }, level = 1 },
	{ config_id = 5052, gadget_id = 70220010, pos = { x = 343.095, y = -12.741, z = 267.308 }, rot = { x = 0.000, y = 299.248, z = 0.000 }, level = 1 },
	{ config_id = 5053, gadget_id = 70220010, pos = { x = 358.193, y = -11.347, z = 258.741 }, rot = { x = 0.000, y = 63.687, z = 0.000 }, level = 1 },
	{ config_id = 5054, gadget_id = 70220010, pos = { x = 327.776, y = -11.354, z = 260.544 }, rot = { x = 0.000, y = 49.860, z = 0.000 }, level = 1 },
	{ config_id = 5055, gadget_id = 70211011, pos = { x = 343.505, y = -12.758, z = 253.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5056, gadget_id = 70211011, pos = { x = 343.442, y = -12.758, z = 253.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5057, gadget_id = 70211011, pos = { x = 343.483, y = -12.758, z = 253.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5058, gadget_id = 70211011, pos = { x = 343.451, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5059, gadget_id = 70211011, pos = { x = 343.509, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5060, gadget_id = 70211011, pos = { x = 343.605, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5061, gadget_id = 70211011, pos = { x = 343.597, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5062, gadget_id = 70211011, pos = { x = 343.407, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5063, gadget_id = 70211011, pos = { x = 343.486, y = -12.758, z = 253.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 5064, gadget_id = 70350002, pos = { x = 343.306, y = -11.397, z = 240.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5065, gadget_id = 70220023, pos = { x = 343.279, y = -12.741, z = 267.120 }, rot = { x = 0.000, y = 314.858, z = 0.000 }, level = 1 },
	{ config_id = 5066, gadget_id = 70220023, pos = { x = 350.133, y = -12.741, z = 263.489 }, rot = { x = 0.000, y = 153.961, z = 0.000 }, level = 1 },
	{ config_id = 5067, gadget_id = 70220023, pos = { x = 336.172, y = -12.741, z = 263.223 }, rot = { x = 0.000, y = 44.673, z = 0.000 }, level = 1 },
	{ config_id = 5068, gadget_id = 70220023, pos = { x = 340.948, y = -12.741, z = 259.370 }, rot = { x = 0.000, y = 136.698, z = 0.000 }, level = 1 },
	{ config_id = 5069, gadget_id = 70220023, pos = { x = 347.486, y = -12.741, z = 257.567 }, rot = { x = 0.000, y = 99.155, z = 0.000 }, level = 1 },
	{ config_id = 5070, gadget_id = 70220023, pos = { x = 343.014, y = -12.758, z = 253.618 }, rot = { x = 0.000, y = 325.771, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 1.68, pos = { x = 353.899, y = -12.714, z = 262.749 } },
	{ config_id = 12, shape = RegionShape.SPHERE, radius = 2.94, pos = { x = 332.071, y = -12.854, z = 254.249 } },
	{ config_id = 13, shape = RegionShape.SPHERE, radius = 1.8, pos = { x = 330.436, y = -12.342, z = 264.748 } },
	{ config_id = 14, shape = RegionShape.SPHERE, radius = 1.76, pos = { x = 329.969, y = -12.078, z = 277.094 } },
	{ config_id = 15, shape = RegionShape.SPHERE, radius = 2.97, pos = { x = 354.598, y = -12.853, z = 275.951 } },
	{ config_id = 16, shape = RegionShape.SPHERE, radius = 3.24, pos = { x = 341.938, y = -12.742, z = 265.524 } },
	{ config_id = 17, shape = RegionShape.SPHERE, radius = 3.42, pos = { x = 325.071, y = -11.353, z = 283.269 } },
	{ config_id = 18, shape = RegionShape.SPHERE, radius = 3.16, pos = { x = 362.686, y = -11.302, z = 281.213 } },
	{ config_id = 19, shape = RegionShape.SPHERE, radius = 5, pos = { x = 358.496, y = -11.383, z = 250.091 } }
}

-- 触发器
triggers = {
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false },
	{ config_id = 1000012, name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12", forbid_guest = false },
	{ config_id = 1000013, name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", forbid_guest = false },
	{ config_id = 1000014, name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false },
	{ config_id = 1000015, name = "ENTER_REGION_15", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15", action = "action_EVENT_ENTER_REGION_15", forbid_guest = false },
	{ config_id = 1000016, name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", forbid_guest = false },
	{ config_id = 1000017, name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", forbid_guest = false },
	{ config_id = 1000018, name = "ENTER_REGION_18", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18", action = "action_EVENT_ENTER_REGION_18", forbid_guest = false },
	{ config_id = 1000019, name = "ENTER_REGION_19", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19", action = "action_EVENT_ENTER_REGION_19", forbid_guest = false },
	{ config_id = 1000029, name = "DUNGEON_SETTLE_29", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_29", action = "action_EVENT_DUNGEON_SETTLE_29" },
	{ config_id = 1000030, name = "DUNGEON_SETTLE_30", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_30", action = "action_EVENT_DUNGEON_SETTLE_30" },
	{ config_id = 1000031, name = "DUNGEON_SETTLE_31", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_31", action = "action_EVENT_DUNGEON_SETTLE_31" },
	{ config_id = 1000032, name = "DUNGEON_SETTLE_32", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_32", action = "action_EVENT_DUNGEON_SETTLE_32" },
	{ config_id = 1000033, name = "DUNGEON_SETTLE_33", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_33", action = "action_EVENT_DUNGEON_SETTLE_33" },
	{ config_id = 1000034, name = "DUNGEON_SETTLE_34", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_34", action = "action_EVENT_DUNGEON_SETTLE_34" },
	{ config_id = 1000035, name = "DUNGEON_SETTLE_35", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_35", action = "action_EVENT_DUNGEON_SETTLE_35" },
	{ config_id = 1000036, name = "DUNGEON_SETTLE_36", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_36", action = "action_EVENT_DUNGEON_SETTLE_36" },
	{ config_id = 1000037, name = "DUNGEON_SETTLE_37", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_37", action = "action_EVENT_DUNGEON_SETTLE_37" },
	{ config_id = 1000042, name = "ANY_MONSTER_DIE_42", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42", action = "action_EVENT_ANY_MONSTER_DIE_42", trigger_count = 0 },
	{ config_id = 1000043, name = "ANY_MONSTER_DIE_43", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43", action = "action_EVENT_ANY_MONSTER_DIE_43", trigger_count = 0 },
	{ config_id = 1000044, name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44", trigger_count = 0 },
	{ config_id = 1000045, name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45", trigger_count = 0 },
	{ config_id = 1000046, name = "ANY_MONSTER_DIE_46", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46", action = "action_EVENT_ANY_MONSTER_DIE_46", trigger_count = 0 },
	{ config_id = 1000047, name = "ANY_MONSTER_DIE_47", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47", action = "action_EVENT_ANY_MONSTER_DIE_47", trigger_count = 0 },
	{ config_id = 1000048, name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48", trigger_count = 0 },
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 },
	{ config_id = 1000050, name = "ANY_MONSTER_DIE_50", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50", action = "action_EVENT_ANY_MONSTER_DIE_50", trigger_count = 0 },
	{ config_id = 1000051, name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "" }
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
		-- description = 火+火,
		monsters = { 5001 },
		gadgets = { 5042, 5043, 5044, 5045, 5064 },
		regions = { 11, 12, 13, 14, 15, 16, 17, 18, 19 },
		triggers = { "ENTER_REGION_11", "ENTER_REGION_12", "ENTER_REGION_13", "ENTER_REGION_14", "ENTER_REGION_15", "ENTER_REGION_16", "ENTER_REGION_17", "ENTER_REGION_18", "ENTER_REGION_19", "DUNGEON_SETTLE_29", "ANY_MONSTER_DIE_51" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 火+水,
		monsters = { 5011, 5012, 5013 },
		gadgets = { 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_30" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5014, 5015, 5016, 5017 },
		gadgets = { 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_31" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5018, 5019, 5020 },
		gadgets = { 5047, 5048, 5049, 5050, 5051, 5052, 5053, 5054, 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_32" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5021, 5022, 5023 },
		gadgets = { 5047, 5048, 5049, 5050, 5051, 5052, 5053, 5054, 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_33" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 5024, 5025, 5026, 5027, 5028 },
		gadgets = { 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_34" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 5029, 5030, 5031, 5032 },
		gadgets = { 5064, 5065, 5066, 5067, 5068, 5069, 5070 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_35" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 5033, 5034, 5035, 5036 },
		gadgets = { 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_36" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { 5037, 5038, 5039, 5040, 5041 },
		gadgets = { 5064 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12(context, evt)
	if evt.param1 ~= 12 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15(context, evt)
	if evt.param1 ~= 15 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5007, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18(context, evt)
	if evt.param1 ~= 18 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19(context, evt)
	if evt.param1 ~= 19 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_29(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_29(context, evt)
	-- 创建id为5055的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5055 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_30(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_30(context, evt)
	-- 创建id为5056的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5056 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_31(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_31(context, evt)
	-- 创建id为5057的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5057 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_32(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_32(context, evt)
	-- 创建id为5058的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5058 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_33(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_33(context, evt)
	-- 创建id为5059的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5059 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_34(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_34(context, evt)
	-- 创建id为5060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5060 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_35(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_35(context, evt)
	-- 创建id为5061的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5061 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_36(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_36(context, evt)
	-- 创建id为5062的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5062 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_37(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_37(context, evt)
	-- 创建id为5063的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5063 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42(context, evt)
	--判断死亡怪物的configid是否为 5005
	if evt.param1 ~= 5005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43(context, evt)
	--判断死亡怪物的configid是否为 5002
	if evt.param1 ~= 5002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	--判断死亡怪物的configid是否为 5003
	if evt.param1 ~= 5003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	--判断死亡怪物的configid是否为 5004
	if evt.param1 ~= 5004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46(context, evt)
	--判断死亡怪物的configid是否为 5006
	if evt.param1 ~= 5006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47(context, evt)
	--判断死亡怪物的configid是否为 5007
	if evt.param1 ~= 5007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	--判断死亡怪物的configid是否为 5008
	if evt.param1 ~= 5008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	--判断死亡怪物的configid是否为 5009
	if evt.param1 ~= 5009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50(context, evt)
	--判断死亡怪物的configid是否为 5010
	if evt.param1 ~= 5010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	--判断死亡怪物的configid是否为 5001
	if evt.param1 ~= 5001 then
	    return false
	 end
	  
	
	return true
end