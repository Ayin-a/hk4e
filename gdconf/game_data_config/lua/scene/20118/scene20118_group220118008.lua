-- 基础信息
local base_info = {
	group_id = 220118008
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
	{ config_id = 8019, gadget_id = 70210102, pos = { x = 14.671, y = 77.174, z = -96.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1 }
}

-- 区域
regions = {
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 3.306, y = 76.921, z = -87.702 } },
	{ config_id = 8002, shape = RegionShape.SPHERE, radius = 4.12, pos = { x = -4.218, y = 76.890, z = -101.349 } },
	{ config_id = 8003, shape = RegionShape.SPHERE, radius = 3.72, pos = { x = 3.732, y = 54.438, z = -83.717 } },
	{ config_id = 8004, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 8.000 }, pos = { x = 12.086, y = 62.559, z = -62.613 } },
	{ config_id = 8005, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 8.000 }, pos = { x = 13.036, y = 63.099, z = -62.461 } },
	{ config_id = 8006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 8.000 }, pos = { x = 10.030, y = 61.463, z = -63.198 } },
	{ config_id = 8007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 8.000 }, pos = { x = 13.589, y = 63.522, z = -63.362 } },
	{ config_id = 8008, shape = RegionShape.SPHERE, radius = 2.39, pos = { x = 23.069, y = 65.129, z = -66.921 } },
	{ config_id = 8009, shape = RegionShape.CUBIC, size = { x = 5.960, y = 3.000, z = 2.930 }, pos = { x = 23.969, y = 66.561, z = -74.841 } },
	{ config_id = 8010, shape = RegionShape.SPHERE, radius = 8.61, pos = { x = 24.826, y = 65.722, z = -86.604 } },
	{ config_id = 8011, shape = RegionShape.SPHERE, radius = 3.65, pos = { x = 9.439, y = 71.054, z = -75.953 } },
	{ config_id = 8012, shape = RegionShape.CUBIC, size = { x = 10.000, y = 3.000, z = 5.000 }, pos = { x = 10.624, y = 71.906, z = -85.673 } },
	{ config_id = 8013, shape = RegionShape.SPHERE, radius = 7.93, pos = { x = 7.846, y = 81.054, z = -71.540 } },
	{ config_id = 8014, shape = RegionShape.SPHERE, radius = 4.15, pos = { x = 14.577, y = 76.983, z = -94.928 } },
	{ config_id = 8015, shape = RegionShape.SPHERE, radius = 2.02, pos = { x = 20.768, y = 77.040, z = -76.543 } },
	{ config_id = 8016, shape = RegionShape.SPHERE, radius = 2.02, pos = { x = 19.968, y = 77.760, z = -86.588 } },
	{ config_id = 8017, shape = RegionShape.CUBIC, size = { x = 8.000, y = 2.000, z = 3.000 }, pos = { x = 19.343, y = 77.709, z = -67.400 } },
	{ config_id = 8018, shape = RegionShape.CUBIC, size = { x = 4.000, y = 3.000, z = 10.000 }, pos = { x = 8.201, y = 77.366, z = -86.142 } },
	{ config_id = 8021, shape = RegionShape.SPHERE, radius = 5.32, pos = { x = 33.355, y = 77.040, z = -81.188 } }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001" },
	{ config_id = 1008002, name = "ENTER_REGION_8002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8002", action = "action_EVENT_ENTER_REGION_8002" },
	{ config_id = 1008003, name = "ENTER_REGION_8003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8003", action = "action_EVENT_ENTER_REGION_8003" },
	{ config_id = 1008004, name = "ENTER_REGION_8004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8004", action = "action_EVENT_ENTER_REGION_8004" },
	{ config_id = 1008005, name = "ENTER_REGION_8005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8005", action = "action_EVENT_ENTER_REGION_8005" },
	{ config_id = 1008006, name = "ENTER_REGION_8006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8006", action = "action_EVENT_ENTER_REGION_8006" },
	{ config_id = 1008007, name = "ENTER_REGION_8007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8007", action = "action_EVENT_ENTER_REGION_8007" },
	{ config_id = 1008008, name = "ENTER_REGION_8008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8008", action = "action_EVENT_ENTER_REGION_8008" },
	{ config_id = 1008009, name = "ENTER_REGION_8009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8009", action = "action_EVENT_ENTER_REGION_8009" },
	{ config_id = 1008010, name = "ENTER_REGION_8010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8010", action = "action_EVENT_ENTER_REGION_8010" },
	{ config_id = 1008011, name = "ENTER_REGION_8011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8011", action = "action_EVENT_ENTER_REGION_8011" },
	{ config_id = 1008012, name = "ENTER_REGION_8012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8012", action = "action_EVENT_ENTER_REGION_8012" },
	{ config_id = 1008013, name = "ENTER_REGION_8013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8013", action = "action_EVENT_ENTER_REGION_8013" },
	{ config_id = 1008014, name = "ENTER_REGION_8014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8014", action = "action_EVENT_ENTER_REGION_8014" },
	{ config_id = 1008015, name = "ENTER_REGION_8015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8015", action = "action_EVENT_ENTER_REGION_8015" },
	{ config_id = 1008016, name = "ENTER_REGION_8016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8016", action = "action_EVENT_ENTER_REGION_8016" },
	{ config_id = 1008017, name = "ENTER_REGION_8017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8017", action = "action_EVENT_ENTER_REGION_8017" },
	{ config_id = 1008018, name = "ENTER_REGION_8018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8018", action = "action_EVENT_ENTER_REGION_8018" },
	{ config_id = 1008020, name = "GADGET_STATE_CHANGE_8020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8020", action = "action_EVENT_GADGET_STATE_CHANGE_8020" },
	{ config_id = 1008021, name = "ENTER_REGION_8021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8021", action = "action_EVENT_ENTER_REGION_8021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isEscape", value = 0, no_refresh = false }
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
		gadgets = { 8019 },
		regions = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8016, 8017, 8018, 8021 },
		triggers = { "ENTER_REGION_8001", "ENTER_REGION_8002", "ENTER_REGION_8003", "ENTER_REGION_8004", "ENTER_REGION_8005", "ENTER_REGION_8006", "ENTER_REGION_8007", "ENTER_REGION_8008", "ENTER_REGION_8009", "ENTER_REGION_8010", "ENTER_REGION_8011", "ENTER_REGION_8012", "ENTER_REGION_8013", "ENTER_REGION_8014", "ENTER_REGION_8015", "ENTER_REGION_8016", "ENTER_REGION_8017", "ENTER_REGION_8018", "GADGET_STATE_CHANGE_8020", "ENTER_REGION_8021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 调用提示id为 1110390 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8002(context, evt)
	if evt.param1 ~= 8002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8002(context, evt)
	-- 调用提示id为 1110391 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8003(context, evt)
	if evt.param1 ~= 8003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8003(context, evt)
	-- 调用提示id为 1110393 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110393) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8004(context, evt)
	if evt.param1 ~= 8004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isAllKill"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isAllKill", 220118009) ~= 1 then
			return false
	end
	
	-- 判断变量"isEscape"为0
	if ScriptLib.GetGroupVariableValue(context, "isEscape") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8004(context, evt)
	-- 调用提示id为 1110394 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110394) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8005(context, evt)
	if evt.param1 ~= 8005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isEnterBattle"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isEnterBattle", 220118009) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8005(context, evt)
	-- 调用提示id为 1110395 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110395) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8006(context, evt)
	if evt.param1 ~= 8006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isEnterBattle"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isEnterBattle", 220118009) ~= 1 then
			return false
	end
	
	-- 判断变量"isAllKill"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isAllKill", 220118009) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8006(context, evt)
	-- 调用提示id为 1110396 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110396) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "isEscape" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isEscape", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8007(context, evt)
	if evt.param1 ~= 8007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isEnterBattle"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isEnterBattle", 220118009) ~= 1 then
			return false
	end
	
	-- 判断变量"isAllKill"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isAllKill", 220118009) ~= 1 then
			return false
	end
	
	-- 判断变量"isEscape"为1
	if ScriptLib.GetGroupVariableValue(context, "isEscape") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8007(context, evt)
	-- 调用提示id为 1110397 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110397) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8008(context, evt)
	if evt.param1 ~= 8008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8008(context, evt)
	-- 调用提示id为 1110398 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110398) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8009(context, evt)
	if evt.param1 ~= 8009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8009(context, evt)
	-- 调用提示id为 1110399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（25，67，-94），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=25, y=67, z=-94}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8010(context, evt)
	if evt.param1 ~= 8010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8010(context, evt)
	-- 调用提示id为 1110412 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110412) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8011(context, evt)
	if evt.param1 ~= 8011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8011(context, evt)
	-- 触发镜头注目，注目位置为坐标（11，72，-94），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=11, y=72, z=-94}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110413 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110413) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8012(context, evt)
	if evt.param1 ~= 8012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8012(context, evt)
	-- 调用提示id为 1110414 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110414) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8013(context, evt)
	if evt.param1 ~= 8013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8013(context, evt)
	-- 调用提示id为 1110402 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110402) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8014(context, evt)
	if evt.param1 ~= 8014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8014(context, evt)
	-- 调用提示id为 1110403 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110403) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8015(context, evt)
	if evt.param1 ~= 8015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8015(context, evt)
	-- 调用提示id为 1110404 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110404) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8016(context, evt)
	if evt.param1 ~= 8016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8016(context, evt)
	-- 调用提示id为 1110404 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110404) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8017(context, evt)
	if evt.param1 ~= 8017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8017(context, evt)
	-- 调用提示id为 1110405 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110405) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8018(context, evt)
	if evt.param1 ~= 8018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8018(context, evt)
	-- 调用提示id为 1110405 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110405) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8020(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 220118008, 8019) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8020(context, evt)
	-- 调用提示id为 1110406 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220118005, EntityType.GADGET, 5001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "SHUNJIXIAOSHUO") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8021(context, evt)
	if evt.param1 ~= 8021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8021(context, evt)
	-- 调用提示id为 1110407 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110407) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end