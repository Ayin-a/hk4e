-- 基础信息
local base_info = {
	group_id = 220009001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 137,
	gadget_id_2 = 138,
	gadget_id_3 = 55,
	gadget_id_4 = 54,
	gadget_id_5 = 1,
	gadget_id_6 = 179
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
	{ config_id = 40, gadget_id = 70211001, pos = { x = -57.614, y = -8.053, z = 100.279 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 54, gadget_id = 70360002, pos = { x = -31.765, y = -7.983, z = 93.852 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 55, gadget_id = 70350003, pos = { x = -34.695, y = -8.215, z = 97.867 }, rot = { x = 0.000, y = 89.380, z = 0.000 }, level = 1 },
	{ config_id = 117, gadget_id = 70220003, pos = { x = -54.935, y = -8.013, z = 90.081 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 133, gadget_id = 70900202, pos = { x = -31.776, y = -6.267, z = 93.813 }, rot = { x = 0.000, y = 344.902, z = 0.000 }, level = 1 },
	{ config_id = 136, gadget_id = 70220003, pos = { x = -55.168, y = -8.133, z = 99.973 }, rot = { x = 0.000, y = 273.638, z = 2.725 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 137, gadget_id = 70900201, pos = { x = -147.054, y = 33.493, z = 45.681 }, rot = { x = 0.000, y = 114.434, z = 0.000 }, level = 1 },
	{ config_id = 138, gadget_id = 70900201, pos = { x = -103.756, y = -10.747, z = 125.827 }, rot = { x = 0.000, y = 165.455, z = 0.000 }, level = 1 },
	{ config_id = 139, gadget_id = 70900201, pos = { x = -128.360, y = -10.570, z = 111.474 }, rot = { x = 0.000, y = 153.233, z = 0.000 }, level = 1 },
	{ config_id = 140, gadget_id = 70900201, pos = { x = -145.004, y = 20.898, z = 73.701 }, rot = { x = 0.000, y = 260.139, z = 0.000 }, level = 1 },
	{ config_id = 141, gadget_id = 70900202, pos = { x = -147.252, y = 20.577, z = 45.472 }, rot = { x = 0.000, y = 153.773, z = 0.000 }, level = 1 },
	{ config_id = 142, gadget_id = 70900201, pos = { x = -147.084, y = 23.299, z = 36.055 }, rot = { x = 0.000, y = 315.355, z = 0.000 }, level = 1 },
	{ config_id = 179, gadget_id = 70900201, pos = { x = -78.032, y = -5.085, z = 102.966 }, rot = { x = 0.000, y = 165.455, z = 0.000 }, level = 1 },
	{ config_id = 180, gadget_id = 70900201, pos = { x = -58.156, y = -5.750, z = 90.192 }, rot = { x = 0.000, y = 165.455, z = 0.000 }, level = 1 },
	{ config_id = 221, gadget_id = 70220013, pos = { x = -45.893, y = -7.984, z = 83.410 }, rot = { x = 0.000, y = 345.009, z = 0.000 }, level = 1 },
	{ config_id = 222, gadget_id = 70220014, pos = { x = -47.239, y = -7.984, z = 82.956 }, rot = { x = 0.000, y = 197.503, z = 0.000 }, level = 1 },
	{ config_id = 223, gadget_id = 70220014, pos = { x = -45.619, y = -7.984, z = 85.002 }, rot = { x = 0.000, y = 69.885, z = 0.000 }, level = 1 },
	{ config_id = 224, gadget_id = 70220014, pos = { x = -58.787, y = -8.041, z = 98.614 }, rot = { x = 0.000, y = 191.643, z = 0.000 }, level = 1 },
	{ config_id = 226, gadget_id = 70220013, pos = { x = -52.181, y = -7.984, z = 83.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 227, gadget_id = 70220003, pos = { x = -73.840, y = -7.983, z = 99.019 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 228, gadget_id = 70220003, pos = { x = -67.307, y = -7.984, z = 96.299 }, rot = { x = 0.000, y = 51.507, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 229, gadget_id = 70220003, pos = { x = -68.884, y = -7.924, z = 96.876 }, rot = { x = 359.949, y = 113.010, z = 1.169 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 230, gadget_id = 70220003, pos = { x = -70.340, y = -8.014, z = 99.588 }, rot = { x = 0.000, y = 49.948, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 231, gadget_id = 70220003, pos = { x = -70.526, y = -7.983, z = 96.307 }, rot = { x = 0.000, y = 104.500, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 232, gadget_id = 70220003, pos = { x = -72.420, y = -7.984, z = 97.557 }, rot = { x = 0.000, y = 300.400, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 266, gadget_id = 70220003, pos = { x = -91.194, y = -15.556, z = 103.128 }, rot = { x = 0.000, y = 4.192, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 267, gadget_id = 70220003, pos = { x = -90.185, y = -15.475, z = 102.534 }, rot = { x = 0.000, y = 4.192, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 268, gadget_id = 70220003, pos = { x = -93.620, y = -15.371, z = 102.818 }, rot = { x = 0.000, y = 4.192, z = 0.000 }, level = 1, drop_id = 11010200, drop_count = 1 },
	{ config_id = 277, gadget_id = 70220025, pos = { x = -46.020, y = -7.910, z = 85.765 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 278, gadget_id = 70220025, pos = { x = -45.719, y = -7.955, z = 84.087 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 279, gadget_id = 70220025, pos = { x = -46.600, y = -7.920, z = 104.200 }, rot = { x = 274.136, y = 265.819, z = 100.064 }, level = 1 },
	{ config_id = 280, gadget_id = 70220025, pos = { x = -48.236, y = -7.946, z = 104.247 }, rot = { x = 270.000, y = 296.124, z = 0.000 }, level = 1 },
	{ config_id = 281, gadget_id = 70220025, pos = { x = -47.380, y = -7.913, z = 106.320 }, rot = { x = 270.000, y = 296.124, z = 0.000 }, level = 1 },
	{ config_id = 282, gadget_id = 70220025, pos = { x = -92.060, y = -11.283, z = 133.565 }, rot = { x = 270.020, y = 272.832, z = 0.000 }, level = 1 },
	{ config_id = 283, gadget_id = 70220025, pos = { x = -92.089, y = -11.608, z = 130.526 }, rot = { x = 270.000, y = 343.412, z = 0.000 }, level = 1 },
	{ config_id = 288, gadget_id = 70220025, pos = { x = -143.230, y = 14.340, z = 61.390 }, rot = { x = 270.000, y = 132.925, z = 0.000 }, level = 1 },
	{ config_id = 289, gadget_id = 70220025, pos = { x = -137.530, y = -12.420, z = 141.240 }, rot = { x = 270.000, y = 78.869, z = 0.000 }, level = 1 },
	{ config_id = 290, gadget_id = 70220025, pos = { x = -139.580, y = -12.420, z = 138.440 }, rot = { x = 270.000, y = 80.850, z = 0.000 }, level = 1 },
	{ config_id = 291, gadget_id = 70220025, pos = { x = -111.200, y = -12.420, z = 139.370 }, rot = { x = 270.000, y = 96.378, z = 0.000 }, level = 1 },
	{ config_id = 292, gadget_id = 70220025, pos = { x = -108.940, y = -12.420, z = 140.470 }, rot = { x = 270.000, y = 96.378, z = 0.000 }, level = 1 },
	{ config_id = 293, gadget_id = 70220025, pos = { x = -112.410, y = -12.420, z = 141.760 }, rot = { x = 270.000, y = 96.378, z = 0.000 }, level = 1 },
	{ config_id = 294, gadget_id = 70220025, pos = { x = -132.030, y = -12.420, z = 109.550 }, rot = { x = 270.000, y = 96.378, z = 0.000 }, level = 1 },
	{ config_id = 295, gadget_id = 70220025, pos = { x = -144.838, y = -12.536, z = 110.801 }, rot = { x = 272.071, y = 90.591, z = 6.574 }, level = 1 },
	{ config_id = 296, gadget_id = 70220025, pos = { x = -125.870, y = -0.330, z = 133.040 }, rot = { x = 270.000, y = 106.782, z = 0.000 }, level = 1 },
	{ config_id = 297, gadget_id = 70220025, pos = { x = -128.880, y = -0.330, z = 131.900 }, rot = { x = 270.000, y = 106.782, z = 0.000 }, level = 1 },
	{ config_id = 298, gadget_id = 70220025, pos = { x = -127.540, y = -0.330, z = 128.010 }, rot = { x = 270.000, y = 106.782, z = 0.000 }, level = 1 },
	{ config_id = 299, gadget_id = 70220025, pos = { x = -129.810, y = -0.330, z = 121.230 }, rot = { x = 270.000, y = 106.782, z = 0.000 }, level = 1 },
	{ config_id = 300, gadget_id = 70220025, pos = { x = -124.960, y = -0.330, z = 122.830 }, rot = { x = 270.000, y = 106.782, z = 0.000 }, level = 1 },
	{ config_id = 301, gadget_id = 70220025, pos = { x = -130.170, y = -0.330, z = 129.960 }, rot = { x = 270.000, y = 68.164, z = 0.000 }, level = 1 },
	{ config_id = 302, gadget_id = 70220025, pos = { x = -140.410, y = -12.420, z = 137.020 }, rot = { x = 270.000, y = 80.850, z = 0.000 }, level = 1 },
	{ config_id = 303, gadget_id = 70220025, pos = { x = -135.530, y = -12.420, z = 141.960 }, rot = { x = 270.000, y = 80.850, z = 0.000 }, level = 1 },
	{ config_id = 304, gadget_id = 70220025, pos = { x = -137.500, y = -12.420, z = 139.160 }, rot = { x = 270.000, y = 80.850, z = 0.000 }, level = 1 },
	{ config_id = 305, gadget_id = 70220025, pos = { x = -141.050, y = -12.420, z = 139.810 }, rot = { x = 270.000, y = 78.869, z = 0.000 }, level = 1 },
	{ config_id = 306, gadget_id = 70220025, pos = { x = -108.570, y = -12.420, z = 137.840 }, rot = { x = 270.000, y = 96.378, z = 0.000 }, level = 1 },
	{ config_id = 307, gadget_id = 70220025, pos = { x = -82.535, y = -15.596, z = 128.959 }, rot = { x = 270.000, y = 184.972, z = 0.000 }, level = 1 },
	{ config_id = 308, gadget_id = 70220025, pos = { x = -80.677, y = -15.491, z = 128.851 }, rot = { x = 273.102, y = 274.972, z = 270.000 }, level = 1 },
	{ config_id = 309, gadget_id = 70220014, pos = { x = -54.273, y = -7.983, z = 86.140 }, rot = { x = 0.000, y = 197.503, z = 0.000 }, level = 1 },
	{ config_id = 310, gadget_id = 70220014, pos = { x = -54.265, y = -7.983, z = 85.149 }, rot = { x = 0.000, y = 197.503, z = 0.000 }, level = 1 },
	{ config_id = 311, gadget_id = 70220005, pos = { x = -86.860, y = -15.483, z = 102.123 }, rot = { x = 0.000, y = 20.955, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.SPHERE, radius = 8.31, pos = { x = -31.918, y = -7.914, z = 97.735 } },
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 18.11, pos = { x = -55.900, y = -7.983, z = 98.000 } },
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 14.82, pos = { x = -57.836, y = -7.984, z = 94.916 } },
	{ config_id = 23, shape = RegionShape.SPHERE, radius = 5, pos = { x = -128.691, y = -12.343, z = 106.523 } },
	{ config_id = 24, shape = RegionShape.CUBIC, size = { x = 53.300, y = 30.180, z = 1.000 }, pos = { x = -146.000, y = 27.580, z = 64.569 } },
	{ config_id = 25, shape = RegionShape.CUBIC, size = { x = 28.840, y = 13.500, z = 3.000 }, pos = { x = -82.392, y = -7.983, z = 103.346 } },
	{ config_id = 31, shape = RegionShape.CUBIC, size = { x = 2.080, y = 1.000, z = 6.620 }, pos = { x = -105.123, y = -12.483, z = 125.626 } },
	{ config_id = 32, shape = RegionShape.CUBIC, size = { x = 38.870, y = 29.000, z = 2.700 }, pos = { x = -146.564, y = 21.306, z = 78.699 } },
	{ config_id = 37, shape = RegionShape.SPHERE, radius = 5, pos = { x = -61.871, y = -8.136, z = 89.862 } }
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3", forbid_guest = false },
	{ config_id = 1000004, name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "action_EVENT_ENTER_REGION_4", forbid_guest = false },
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "" },
	{ config_id = 1000008, name = "DUNGEON_SETTLE_8", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_8", action = "" },
	{ config_id = 1000009, name = "GADGET_CREATE_9", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9", action = "action_EVENT_GADGET_CREATE_9" },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "", forbid_guest = false },
	{ config_id = 1000017, name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", forbid_guest = false },
	{ config_id = 1000023, name = "ENTER_REGION_23", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23", action = "action_EVENT_ENTER_REGION_23", forbid_guest = false },
	{ config_id = 1000024, name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false },
	{ config_id = 1000025, name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", forbid_guest = false },
	{ config_id = 1000031, name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false },
	{ config_id = 1000032, name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32", forbid_guest = false },
	{ config_id = 1000034, name = "ANY_GADGET_DIE_34", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_34", action = "action_EVENT_ANY_GADGET_DIE_34" },
	{ config_id = 1000036, name = "ANY_GADGET_DIE_36", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36", action = "action_EVENT_ANY_GADGET_DIE_36" },
	{ config_id = 1000037, name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 40, 54, 55, 117, 133, 136, 221, 222, 223, 224, 227, 228, 229, 230, 231, 232, 266, 267, 268, 277, 278, 279, 280, 281, 282, 283, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311 },
		regions = { 3, 4, 11, 23, 24, 25, 31, 32, 37 },
		triggers = { "ENTER_REGION_3", "ENTER_REGION_4", "ANY_MONSTER_DIE_6", "GADGET_CREATE_9", "ENTER_REGION_11", "SELECT_OPTION_17", "ENTER_REGION_23", "ENTER_REGION_24", "ENTER_REGION_25", "ENTER_REGION_31", "ENTER_REGION_32", "ANY_GADGET_DIE_34", "ANY_GADGET_DIE_36", "ENTER_REGION_37" },
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
	-- 调用提示id为 1001002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
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
	if 0 ~= ScriptLib.ShowReminder(context, 1002001) then
		return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
	pos = {x=-147.3, y=33.0, z=49.9}
		if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
				return -1
			end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_8(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9(context, evt)
	-- 判断是gadgetid 54
	if 54 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 54 option_id 1
	if 54 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	-- 改变指定group组220009001中， configid为54的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220009001, 54, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220009001中， configid为55的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220009001, 55, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {133} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 删除指定group： 220009001 ；指定config：54；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220009001, 54, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_23(context, evt)
	if evt.param1 ~= 23 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23(context, evt)
	-- 创建id为140的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {139} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（-148，18，75），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-148, y=18, z=75}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	if evt.param1 ~= 24 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
	-- 调用提示id为 1032001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1032001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
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
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_2 }) then
		return -1
	end
	
	if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {defs.gadget_id_6} }) then
			return -1
		end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {138} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为139的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 139 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32(context, evt)
	if evt.param1 ~= 32 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32(context, evt)
	-- 创建id为141的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 141 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {140} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_34(context, evt)
	if 141 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_34(context, evt)
	-- 创建id为142的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 142 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36(context, evt)
	if 117 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {137} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为180的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 180 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009001, monsters = {}, gadgets = {180} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为179的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 179 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end