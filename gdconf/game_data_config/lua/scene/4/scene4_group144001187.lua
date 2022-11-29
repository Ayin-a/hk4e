-- 基础信息
local base_info = {
	group_id = 144001187
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
}

-- 区域
regions = {
	-- 3号山顶左键
	{ config_id = 187001, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 192.260, y = 217.244, z = 300.288 }, area_id = 102 },
	-- 3号山顶右键
	{ config_id = 187002, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 194.205, y = 217.244, z = 301.924 }, area_id = 102 },
	-- 2号山顶左键
	{ config_id = 187003, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 216.307, y = 197.886, z = 163.609 }, area_id = 102 },
	-- 2号山顶右键
	{ config_id = 187004, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 214.402, y = 197.549, z = 164.038 }, area_id = 102 },
	-- 1号山顶右键
	{ config_id = 187005, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 318.554, y = 202.645, z = 158.507 }, area_id = 102 },
	-- 1号山顶左键
	{ config_id = 187006, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 316.786, y = 202.645, z = 159.426 }, area_id = 102 },
	-- 4号山顶左键
	{ config_id = 187007, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 223.017, y = 191.612, z = 437.707 }, area_id = 102 },
	-- 4号山顶右键
	{ config_id = 187008, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 221.996, y = 191.531, z = 435.513 }, area_id = 102 },
	-- 5号山顶左键
	{ config_id = 187009, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 352.907, y = 184.150, z = 420.131 }, area_id = 102 },
	-- 5号山顶左键
	{ config_id = 187010, shape = RegionShape.SPHERE, radius = 0.7, pos = { x = 353.876, y = 184.225, z = 417.243 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 3号山顶左键
	{ config_id = 1187001, name = "ENTER_REGION_187001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187001", action = "action_EVENT_ENTER_REGION_187001" },
	-- 3号山顶右键
	{ config_id = 1187002, name = "ENTER_REGION_187002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187002", action = "action_EVENT_ENTER_REGION_187002" },
	-- 2号山顶左键
	{ config_id = 1187003, name = "ENTER_REGION_187003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187003", action = "action_EVENT_ENTER_REGION_187003" },
	-- 2号山顶右键
	{ config_id = 1187004, name = "ENTER_REGION_187004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187004", action = "action_EVENT_ENTER_REGION_187004" },
	-- 1号山顶右键
	{ config_id = 1187005, name = "ENTER_REGION_187005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187005", action = "action_EVENT_ENTER_REGION_187005" },
	-- 1号山顶左键
	{ config_id = 1187006, name = "ENTER_REGION_187006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187006", action = "action_EVENT_ENTER_REGION_187006" },
	-- 4号山顶左键
	{ config_id = 1187007, name = "ENTER_REGION_187007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187007", action = "action_EVENT_ENTER_REGION_187007" },
	-- 4号山顶右键
	{ config_id = 1187008, name = "ENTER_REGION_187008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187008", action = "action_EVENT_ENTER_REGION_187008" },
	-- 5号山顶左键
	{ config_id = 1187009, name = "ENTER_REGION_187009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187009", action = "action_EVENT_ENTER_REGION_187009" },
	-- 5号山顶左键
	{ config_id = 1187010, name = "ENTER_REGION_187010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187010", action = "action_EVENT_ENTER_REGION_187010" },
	{ config_id = 1187012, name = "VARIABLE_CHANGE_187012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187012", action = "action_EVENT_VARIABLE_CHANGE_187012" },
	{ config_id = 1187013, name = "VARIABLE_CHANGE_187013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187013", action = "action_EVENT_VARIABLE_CHANGE_187013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ifreachedhilltop", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 187011, gadget_id = 40000001, pos = { x = 232.058, y = 185.344, z = 435.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
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
		gadgets = { },
		regions = { 187001, 187002, 187003, 187004, 187005, 187006, 187007, 187008, 187009, 187010 },
		triggers = { "ENTER_REGION_187001", "ENTER_REGION_187002", "ENTER_REGION_187003", "ENTER_REGION_187004", "ENTER_REGION_187005", "ENTER_REGION_187006", "ENTER_REGION_187007", "ENTER_REGION_187008", "ENTER_REGION_187009", "ENTER_REGION_187010", "VARIABLE_CHANGE_187012", "VARIABLE_CHANGE_187013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_187001(context, evt)
	if evt.param1 ~= 187001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187001(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（188.2132，210.9843，314.1208），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=188.2132, y=210.9843, z=314.1208}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187002(context, evt)
	if evt.param1 ~= 187002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187002(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（188.2132，210.9843，314.1208），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=188.2132, y=210.9843, z=314.1208}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187003(context, evt)
	if evt.param1 ~= 187003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187003(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（214.9878，195.25，155.428），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=214.9878, y=195.25, z=155.428}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187004(context, evt)
	if evt.param1 ~= 187004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187004(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（214.9878，195.25，155.428），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=214.9878, y=195.25, z=155.428}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187005(context, evt)
	if evt.param1 ~= 187005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187005(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（320.4826，200.9229，167.1213），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=320.4826, y=200.9229, z=167.1213}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187006(context, evt)
	if evt.param1 ~= 187006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187006(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（320.4826，200.9229，167.1213），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=320.4826, y=200.9229, z=167.1213}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187007(context, evt)
	if evt.param1 ~= 187007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187007(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（232.3025，185.7886，435.674），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=232.3025, y=185.7886, z=435.674}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187008(context, evt)
	if evt.param1 ~= 187008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187008(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（232.3025，185.7886，435.674），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=232.3025, y=185.7886, z=435.674}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187009(context, evt)
	if evt.param1 ~= 187009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187009(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（359.2453，181.1207，421.2856），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=359.2453, y=181.1207, z=421.2856}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187010(context, evt)
	if evt.param1 ~= 187010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"ifreachedhilltop"为0
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187010(context, evt)
	-- 针对当前group内变量名为 "ifreachedhilltop" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ifreachedhilltop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（359.2453，181.1207，421.2856），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=359.2453, y=181.1207, z=421.2856}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"complete"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "complete", 144001004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001187, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ifreachedhilltop"为1
	if ScriptLib.GetGroupVariableValue(context, "ifreachedhilltop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end