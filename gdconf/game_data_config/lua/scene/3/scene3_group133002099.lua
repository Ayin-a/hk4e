-- 基础信息
local base_info = {
	group_id = 133002099
}

-- Trigger变量
local defs = {
	target_group = 133002100,
	circle_region = 99025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99003, monster_id = 28030505, pos = { x = 1641.313, y = 200.000, z = -348.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99004, monster_id = 28030505, pos = { x = 1641.628, y = 200.000, z = -347.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99006, monster_id = 28020311, pos = { x = 1654.990, y = 202.285, z = -356.502 }, rot = { x = 0.000, y = 165.630, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99008, monster_id = 28020107, pos = { x = 1663.972, y = 201.796, z = -369.929 }, rot = { x = 0.000, y = 355.067, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99014, monster_id = 28020107, pos = { x = 1654.825, y = 200.898, z = -390.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 99016, monster_id = 28020107, pos = { x = 1642.238, y = 202.682, z = -381.035 }, rot = { x = 0.000, y = 327.730, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 99017, monster_id = 28020107, pos = { x = 1639.145, y = 202.827, z = -385.391 }, rot = { x = 0.000, y = 254.059, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 99037, monster_id = 28020107, pos = { x = 1659.284, y = 201.708, z = -375.354 }, rot = { x = 0.000, y = 277.056, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99040, monster_id = 28030505, pos = { x = 1622.071, y = 200.000, z = -365.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, ban_excel_drop = true, pose_id = 1001, area_id = 3 },
	{ config_id = 99041, monster_id = 28030505, pos = { x = 1623.312, y = 200.000, z = -365.079 }, rot = { x = 0.000, y = 276.208, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99044, monster_id = 28020107, pos = { x = 1647.647, y = 201.463, z = -383.261 }, rot = { x = 0.000, y = 230.822, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 99050, monster_id = 28030312, pos = { x = 1632.189, y = 203.263, z = -378.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 99051, monster_id = 28030312, pos = { x = 1643.637, y = 203.482, z = -371.142 }, rot = { x = 0.000, y = 244.902, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 99053, monster_id = 28030312, pos = { x = 1631.680, y = 202.924, z = -375.479 }, rot = { x = 0.000, y = 163.130, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 99056, monster_id = 28030312, pos = { x = 1672.022, y = 203.977, z = -367.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 99063, monster_id = 28020311, pos = { x = 1654.690, y = 202.374, z = -365.168 }, rot = { x = 0.000, y = 187.953, z = 0.000 }, level = 80, drop_tag = "走兽", pose_id = 1001, area_id = 3 },
	{ config_id = 99075, monster_id = 28020311, pos = { x = 1656.845, y = 202.379, z = -365.354 }, rot = { x = 0.000, y = 187.953, z = 0.000 }, level = 80, drop_tag = "走兽", pose_id = 1001, area_id = 3 },
	{ config_id = 99076, monster_id = 28020310, pos = { x = 1655.835, y = 202.380, z = -364.480 }, rot = { x = 0.000, y = 190.019, z = 0.000 }, level = 80, drop_tag = "走兽", pose_id = 1001, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99001, gadget_id = 70800236, pos = { x = 1636.082, y = 203.685, z = -382.032 }, rot = { x = 0.000, y = 0.000, z = 355.881 }, level = 1, area_id = 3 },
	{ config_id = 99005, gadget_id = 70800236, pos = { x = 1645.419, y = 202.946, z = -359.763 }, rot = { x = 0.000, y = 83.415, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99007, gadget_id = 70800235, pos = { x = 1658.726, y = 201.873, z = -370.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99009, gadget_id = 70800236, pos = { x = 1658.800, y = 202.358, z = -356.935 }, rot = { x = 0.000, y = 63.842, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99011, gadget_id = 70800238, pos = { x = 1639.519, y = 203.119, z = -382.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99012, gadget_id = 70800236, pos = { x = 1647.438, y = 202.038, z = -377.280 }, rot = { x = 9.730, y = 91.291, z = 351.755 }, level = 1, area_id = 3 },
	{ config_id = 99013, gadget_id = 70800237, pos = { x = 1644.203, y = 201.943, z = -357.312 }, rot = { x = 46.318, y = 307.245, z = 355.119 }, level = 1, area_id = 3 },
	{ config_id = 99018, gadget_id = 70800236, pos = { x = 1636.601, y = 202.934, z = -370.823 }, rot = { x = 0.000, y = 353.446, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99022, gadget_id = 70800238, pos = { x = 1632.663, y = 203.044, z = -376.406 }, rot = { x = 358.933, y = 90.319, z = 7.459 }, level = 1, area_id = 3 },
	{ config_id = 99023, gadget_id = 70800235, pos = { x = 1662.664, y = 202.036, z = -366.314 }, rot = { x = 0.000, y = 30.852, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99029, gadget_id = 70800288, pos = { x = 1634.858, y = 202.879, z = -373.737 }, rot = { x = 0.000, y = 101.236, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99030, gadget_id = 70800237, pos = { x = 1645.673, y = 203.480, z = -363.115 }, rot = { x = 0.000, y = 134.898, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99032, gadget_id = 70800237, pos = { x = 1655.126, y = 201.405, z = -351.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99033, gadget_id = 70800237, pos = { x = 1657.784, y = 201.879, z = -352.450 }, rot = { x = 0.000, y = 318.606, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99034, gadget_id = 70800235, pos = { x = 1649.438, y = 200.070, z = -346.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99038, gadget_id = 70800235, pos = { x = 1648.799, y = 203.017, z = -367.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99039, gadget_id = 70800237, pos = { x = 1663.936, y = 207.631, z = -403.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99043, gadget_id = 70800236, pos = { x = 1665.552, y = 201.974, z = -375.420 }, rot = { x = 0.000, y = 38.024, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99046, gadget_id = 70800236, pos = { x = 1645.725, y = 202.271, z = -378.648 }, rot = { x = 0.000, y = 353.446, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99047, gadget_id = 70800237, pos = { x = 1639.806, y = 202.981, z = -377.546 }, rot = { x = 0.000, y = 322.018, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99048, gadget_id = 70800236, pos = { x = 1636.144, y = 203.481, z = -379.372 }, rot = { x = 0.000, y = 312.326, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99049, gadget_id = 70800237, pos = { x = 1630.884, y = 201.996, z = -370.585 }, rot = { x = 0.000, y = 293.900, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99054, gadget_id = 70800235, pos = { x = 1626.825, y = 200.457, z = -370.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99055, gadget_id = 70800235, pos = { x = 1672.145, y = 201.635, z = -360.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99057, gadget_id = 70800237, pos = { x = 1634.735, y = 202.876, z = -373.788 }, rot = { x = 0.000, y = 30.923, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99058, gadget_id = 70800236, pos = { x = 1669.384, y = 202.111, z = -368.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99059, gadget_id = 71700435, pos = { x = 1649.092, y = 202.612, z = -357.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99060, gadget_id = 70800235, pos = { x = 1642.810, y = 201.156, z = -355.392 }, rot = { x = 14.791, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99061, gadget_id = 70950138, pos = { x = 1657.533, y = 201.431, z = -348.130 }, rot = { x = 0.000, y = 337.646, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99062, gadget_id = 70300092, pos = { x = 1645.026, y = 202.413, z = -376.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99066, gadget_id = 70300092, pos = { x = 1647.693, y = 200.874, z = -387.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99067, gadget_id = 70800288, pos = { x = 1655.287, y = 201.430, z = -351.013 }, rot = { x = 343.057, y = 176.462, z = 348.068 }, level = 1, area_id = 3 },
	{ config_id = 99069, gadget_id = 70800288, pos = { x = 1723.362, y = 208.166, z = -293.579 }, rot = { x = 0.000, y = 23.112, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99070, gadget_id = 70800288, pos = { x = 1720.133, y = 207.495, z = -292.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99071, gadget_id = 70300092, pos = { x = 1671.646, y = 202.340, z = -367.313 }, rot = { x = 0.000, y = 78.871, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99072, gadget_id = 70800236, pos = { x = 1658.758, y = 202.419, z = -360.460 }, rot = { x = 0.000, y = 222.987, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 99073, gadget_id = 70800236, pos = { x = 1659.819, y = 202.067, z = -382.151 }, rot = { x = 10.347, y = 344.459, z = 10.209 }, level = 1, area_id = 3 },
	{ config_id = 99074, gadget_id = 70800236, pos = { x = 1657.165, y = 201.302, z = -385.065 }, rot = { x = 9.938, y = 252.047, z = 349.393 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 99024, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1644.548, y = 203.073, z = -367.444 }, area_id = 3 },
	-- 进入区域reminder
	{ config_id = 99025, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1644.548, y = 203.073, z = -367.444 }, area_id = 3 }
}

-- 触发器
triggers = {
	-- 进入区域reminder
	{ config_id = 1099025, name = "ENTER_REGION_99025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99025", action = "action_EVENT_ENTER_REGION_99025", trigger_count = 0 },
	-- 怪物所剩无几reminder
	{ config_id = 1099026, name = "ANY_MONSTER_DIE_99026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99026", action = "action_EVENT_ANY_MONSTER_DIE_99026" },
	-- 怪物清空reminder
	{ config_id = 1099027, name = "ANY_MONSTER_DIE_99027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99027", action = "action_EVENT_ANY_MONSTER_DIE_99027" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 99010, gadget_id = 70800288, pos = { x = 1644.026, y = 201.987, z = -357.438 }, rot = { x = 0.000, y = 4.996, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 99019, gadget_id = 70800288, pos = { x = 1634.858, y = 202.879, z = -373.737 }, rot = { x = 0.000, y = 101.236, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 99031, gadget_id = 70800288, pos = { x = 1639.812, y = 202.976, z = -377.460 }, rot = { x = 0.000, y = 31.113, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 99042, gadget_id = 70800288, pos = { x = 1631.058, y = 202.058, z = -370.606 }, rot = { x = 0.000, y = 159.590, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 99064, gadget_id = 70800288, pos = { x = 1645.921, y = 203.849, z = -363.214 }, rot = { x = 0.000, y = 4.774, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 99065, gadget_id = 70800288, pos = { x = 1657.879, y = 201.839, z = -352.243 }, rot = { x = 343.057, y = 176.462, z = 348.068 }, level = 1, area_id = 3 },
		{ config_id = 99068, gadget_id = 70800288, pos = { x = 1704.925, y = 200.000, z = -285.218 }, rot = { x = 0.000, y = 251.854, z = 0.000 }, level = 1, area_id = 3 }
	},
	triggers = {
		{ config_id = 1099028, name = "ANY_MONSTER_DIE_99028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_99028", trigger_count = 0 }
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
		gadgets = { 99001, 99005, 99007, 99009, 99011, 99012, 99013, 99018, 99022, 99023, 99029, 99030, 99032, 99033, 99034, 99038, 99039, 99043, 99046, 99047, 99048, 99049, 99054, 99055, 99057, 99058, 99059, 99060, 99061, 99062, 99066, 99067, 99069, 99070, 99071, 99072, 99073, 99074 },
		regions = { 99024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99003, 99004, 99006, 99008, 99014, 99016, 99017, 99037, 99040, 99041, 99044, 99050, 99051, 99053, 99056, 99063, 99075, 99076 },
		gadgets = { },
		regions = { 99025 },
		triggers = { "ENTER_REGION_99025", "ANY_MONSTER_DIE_99026", "ANY_MONSTER_DIE_99027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_99025(context, evt)
	if evt.param1 ~= 99025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_99025(context, evt)
	-- 调用提示id为 400181 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400181) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99026(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99026(context, evt)
	-- 调用提示id为 400182 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99027(context, evt)
	-- 调用提示id为 400183 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/Activity_Hunt_Stage_2"