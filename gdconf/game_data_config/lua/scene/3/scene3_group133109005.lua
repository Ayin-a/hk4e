-- 基础信息
local base_info = {
	group_id = 133109005
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
	{ config_id = 5016, gadget_id = 70360001, pos = { x = -1342.480, y = 272.448, z = 1913.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 5001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1339.535, y = 273.038, z = 1922.292 }, area_id = 21 },
	{ config_id = 5003, shape = RegionShape.SPHERE, radius = 40, pos = { x = -88.461, y = 247.532, z = 2116.714 }, area_id = 20 },
	{ config_id = 5005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1108.673, y = 82.000, z = 3846.680 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001" },
	{ config_id = 1005002, name = "VARIABLE_CHANGE_5002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5002", action = "action_EVENT_VARIABLE_CHANGE_5002" },
	{ config_id = 1005003, name = "ENTER_REGION_5003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5003", action = "action_EVENT_ENTER_REGION_5003" },
	{ config_id = 1005004, name = "VARIABLE_CHANGE_5004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5004", action = "action_EVENT_VARIABLE_CHANGE_5004" },
	{ config_id = 1005005, name = "ENTER_REGION_5005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5005", action = "action_EVENT_ENTER_REGION_5005" },
	{ config_id = 1005006, name = "VARIABLE_CHANGE_5006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5006", action = "action_EVENT_VARIABLE_CHANGE_5006" },
	-- 传送门一
	{ config_id = 1005007, name = "QUEST_START_5007", event = EventType.EVENT_QUEST_START, source = "7306914", condition = "condition_EVENT_QUEST_START_5007", action = "action_EVENT_QUEST_START_5007" },
	-- 传送门二
	{ config_id = 1005008, name = "QUEST_START_5008", event = EventType.EVENT_QUEST_START, source = "7306914", condition = "condition_EVENT_QUEST_START_5008", action = "action_EVENT_QUEST_START_5008" },
	-- 传送门三
	{ config_id = 1005009, name = "QUEST_START_5009", event = EventType.EVENT_QUEST_START, source = "7306914", condition = "condition_EVENT_QUEST_START_5009", action = "action_EVENT_QUEST_START_5009" },
	-- 删除花一
	{ config_id = 1005010, name = "QUEST_START_5010", event = EventType.EVENT_QUEST_START, source = "7307413", condition = "condition_EVENT_QUEST_START_5010", action = "action_EVENT_QUEST_START_5010" },
	-- 删除花二
	{ config_id = 1005011, name = "QUEST_START_5011", event = EventType.EVENT_QUEST_START, source = "7307413", condition = "condition_EVENT_QUEST_START_5011", action = "action_EVENT_QUEST_START_5011" },
	-- 删除花三
	{ config_id = 1005012, name = "QUEST_START_5012", event = EventType.EVENT_QUEST_START, source = "7307413", condition = "condition_EVENT_QUEST_START_5012", action = "action_EVENT_QUEST_START_5012" },
	-- 草种子一
	{ config_id = 1005013, name = "QUEST_START_5013", event = EventType.EVENT_QUEST_START, source = "7307015", condition = "condition_EVENT_QUEST_START_5013", action = "action_EVENT_QUEST_START_5013" },
	-- 草种子二
	{ config_id = 1005014, name = "QUEST_START_5014", event = EventType.EVENT_QUEST_START, source = "7307015", condition = "condition_EVENT_QUEST_START_5014", action = "action_EVENT_QUEST_START_5014" },
	-- 草种子三
	{ config_id = 1005015, name = "QUEST_START_5015", event = EventType.EVENT_QUEST_START, source = "7307015", condition = "condition_EVENT_QUEST_START_5015", action = "action_EVENT_QUEST_START_5015" }
}

-- 变量
variables = {
	{ config_id = 3, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 5016 },
		regions = { 5001, 5003, 5005 },
		triggers = { "ENTER_REGION_5001", "VARIABLE_CHANGE_5002", "ENTER_REGION_5003", "VARIABLE_CHANGE_5004", "ENTER_REGION_5005", "VARIABLE_CHANGE_5006", "QUEST_START_5007", "QUEST_START_5008", "QUEST_START_5009", "QUEST_START_5010", "QUEST_START_5011", "QUEST_START_5012", "QUEST_START_5013", "QUEST_START_5014", "QUEST_START_5015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5001(context, evt)
	if evt.param1 ~= 5001 then return false end
	
	-- 判断是区域5001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 5001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5001(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5002(context, evt)
	-- 调用提示id为 73069101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5003(context, evt)
	if evt.param1 ~= 5003 then return false end
	
	-- 判断是区域5003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 5003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5003(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-82.09121, y=240.6005, z=2077.073}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-82.09121, y=240.6005, z=2077.073}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5004(context, evt)
	-- 调用提示id为 73069103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5005(context, evt)
	if evt.param1 ~= 5005 then return false end
	
	-- 判断是区域5005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 5005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1094.569, y=89.34392, z=3842.903}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1094.569, y=89.34392, z=3842.903}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5006(context, evt)
	-- 调用提示id为 73069105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5007(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5007(context, evt)
	-- 调用提示id为 73069141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5008(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5008(context, evt)
	-- 调用提示id为 73069142 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5009(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5009(context, evt)
	-- 调用提示id为 73069143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5010(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5010(context, evt)
	-- 调用提示id为 73069141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5011(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5011(context, evt)
	-- 调用提示id为 73069142 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5012(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5012(context, evt)
	-- 调用提示id为 73069143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5013(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5013(context, evt)
	-- 调用提示id为 73069141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5014(context, evt)
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5014(context, evt)
	-- 调用提示id为 73069142 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_5015(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_5015(context, evt)
	-- 调用提示id为 73069143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end