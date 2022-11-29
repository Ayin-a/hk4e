-- 基础信息
local base_info = {
	group_id = 133101248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248009, monster_id = 21010701, pos = { x = 1233.409, y = 263.849, z = 1318.336 }, rot = { x = 4.956, y = 169.161, z = 3.011 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 248021, monster_id = 20010201, pos = { x = 1212.208, y = 261.282, z = 1300.630 }, rot = { x = 355.877, y = 60.221, z = 354.376 }, level = 24, drop_id = 1000100, pose_id = 201, area_id = 6 },
	{ config_id = 248023, monster_id = 20011501, pos = { x = 1214.677, y = 268.526, z = 1299.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 248024, monster_id = 20011501, pos = { x = 1209.578, y = 265.899, z = 1299.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 248025, monster_id = 20011501, pos = { x = 1212.692, y = 266.463, z = 1303.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 248026, monster_id = 21010101, pos = { x = 1211.819, y = 261.281, z = 1301.256 }, rot = { x = 0.000, y = 136.285, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 248027, monster_id = 21010701, pos = { x = 1188.999, y = 259.906, z = 1274.050 }, rot = { x = 1.812, y = 63.191, z = 0.923 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 248001, gadget_id = 70211123, pos = { x = 1214.378, y = 269.776, z = 1292.633 }, rot = { x = 1.799, y = 358.792, z = 359.077 }, level = 21, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 248002, gadget_id = 70220061, pos = { x = 1212.980, y = 264.535, z = 1308.569 }, rot = { x = 4.436, y = 132.916, z = 354.927 }, level = 24, area_id = 6 },
	{ config_id = 248003, gadget_id = 70500000, pos = { x = 1210.698, y = 263.408, z = 1308.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248004, gadget_id = 70500000, pos = { x = 1201.001, y = 262.017, z = 1300.936 }, rot = { x = 0.000, y = 329.688, z = 0.000 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248005, gadget_id = 70500000, pos = { x = 1201.390, y = 261.972, z = 1300.746 }, rot = { x = 0.000, y = 250.189, z = 0.000 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248006, gadget_id = 70500000, pos = { x = 1210.863, y = 262.517, z = 1310.378 }, rot = { x = 0.000, y = 250.189, z = 0.000 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248007, gadget_id = 70500000, pos = { x = 1219.045, y = 261.751, z = 1296.035 }, rot = { x = 10.010, y = 276.524, z = 340.650 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248008, gadget_id = 70220061, pos = { x = 1202.778, y = 285.271, z = 1303.644 }, rot = { x = 345.813, y = 55.729, z = 4.220 }, level = 24, area_id = 6 },
	{ config_id = 248010, gadget_id = 70220061, pos = { x = 1217.746, y = 264.161, z = 1312.837 }, rot = { x = 28.800, y = 28.710, z = 22.988 }, level = 24, area_id = 6 },
	{ config_id = 248011, gadget_id = 70220061, pos = { x = 1195.819, y = 264.440, z = 1270.060 }, rot = { x = 353.783, y = 253.140, z = 332.181 }, level = 24, area_id = 6 },
	{ config_id = 248012, gadget_id = 70220061, pos = { x = 1216.787, y = 278.174, z = 1312.125 }, rot = { x = 45.400, y = 281.871, z = 177.955 }, level = 24, area_id = 6 },
	{ config_id = 248013, gadget_id = 70220061, pos = { x = 1219.545, y = 266.857, z = 1311.141 }, rot = { x = 15.257, y = 239.169, z = 43.104 }, level = 24, area_id = 6 },
	{ config_id = 248014, gadget_id = 70220061, pos = { x = 1197.722, y = 262.982, z = 1288.426 }, rot = { x = 37.720, y = 211.531, z = 341.370 }, level = 24, area_id = 6 },
	{ config_id = 248015, gadget_id = 70500000, pos = { x = 1219.374, y = 261.788, z = 1295.580 }, rot = { x = 338.333, y = 157.023, z = 1.170 }, level = 1, point_type = 2002, area_id = 6 },
	{ config_id = 248016, gadget_id = 70220061, pos = { x = 1219.522, y = 264.488, z = 1299.526 }, rot = { x = 351.725, y = 328.031, z = 1.858 }, level = 24, area_id = 6 },
	{ config_id = 248018, gadget_id = 70220061, pos = { x = 1233.260, y = 267.895, z = 1315.457 }, rot = { x = 2.646, y = 352.792, z = 328.905 }, level = 24, area_id = 6 },
	{ config_id = 248019, gadget_id = 70220061, pos = { x = 1217.828, y = 270.180, z = 1297.388 }, rot = { x = 14.006, y = 353.193, z = 341.696 }, level = 24, area_id = 6 },
	{ config_id = 248020, gadget_id = 70220061, pos = { x = 1203.998, y = 264.333, z = 1300.768 }, rot = { x = 17.528, y = 127.200, z = 354.313 }, level = 24, area_id = 6 },
	{ config_id = 248028, gadget_id = 70220061, pos = { x = 1198.445, y = 264.848, z = 1288.179 }, rot = { x = 12.700, y = 237.491, z = 28.614 }, level = 24, area_id = 6 },
	{ config_id = 248031, gadget_id = 70220061, pos = { x = 1211.893, y = 270.384, z = 1294.931 }, rot = { x = 17.024, y = 341.761, z = 358.489 }, level = 24, area_id = 6 },
	{ config_id = 248034, gadget_id = 70310002, pos = { x = 1212.293, y = 270.144, z = 1291.081 }, rot = { x = 0.000, y = 17.967, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 248030, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1208.973, y = 268.123, z = 1297.197 }, area_id = 6 },
	{ config_id = 248033, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1208.973, y = 268.123, z = 1297.197 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1248017, name = "GROUP_LOAD_248017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_248017", action = "action_EVENT_GROUP_LOAD_248017", trigger_count = 0 },
	{ config_id = 1248029, name = "SPECIFIC_MONSTER_HP_CHANGE_248029", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "248021", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_248029", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_248029" },
	{ config_id = 1248030, name = "ENTER_REGION_248030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248030", action = "action_EVENT_ENTER_REGION_248030", trigger_count = 0 },
	{ config_id = 1248032, name = "GADGET_STATE_CHANGE_248032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248032", action = "action_EVENT_GADGET_STATE_CHANGE_248032", trigger_count = 0 },
	{ config_id = 1248033, name = "ENTER_REGION_248033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248033", action = "action_EVENT_ENTER_REGION_248033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true }
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
		monsters = { 248009, 248021, 248026, 248027 },
		gadgets = { 248001, 248002, 248003, 248004, 248005, 248006, 248007, 248008, 248010, 248011, 248012, 248013, 248014, 248015, 248016, 248018, 248019, 248020, 248028, 248031, 248034 },
		regions = { 248030, 248033 },
		triggers = { "GROUP_LOAD_248017", "SPECIFIC_MONSTER_HP_CHANGE_248029", "ENTER_REGION_248030", "GADGET_STATE_CHANGE_248032", "ENTER_REGION_248033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_248017(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_248017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133101248") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_248029(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_248029(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248023, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 248025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_248030(context, evt)
	if evt.param1 ~= 248030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_248030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133101248_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_248032(context, evt)
	if 248001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_248032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133101248") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_248033(context, evt)
	if evt.param1 ~= 248033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_248033(context, evt)
	-- 调用提示id为 1110188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end