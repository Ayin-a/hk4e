-- 基础信息
local base_info = {
	group_id = 133310287
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
	{ config_id = 287005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = -2351.210, y = 103.336, z = 5178.689 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1287001, name = "VARIABLE_CHANGE_287001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287001", action = "action_EVENT_VARIABLE_CHANGE_287001" },
	{ config_id = 1287002, name = "VARIABLE_CHANGE_287002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287002", action = "action_EVENT_VARIABLE_CHANGE_287002" },
	{ config_id = 1287003, name = "VARIABLE_CHANGE_287003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287003", action = "action_EVENT_VARIABLE_CHANGE_287003" },
	{ config_id = 1287004, name = "VARIABLE_CHANGE_287004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_287004", action = "action_EVENT_VARIABLE_CHANGE_287004" },
	{ config_id = 1287005, name = "ENTER_REGION_287005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287005", action = "action_EVENT_ENTER_REGION_287005" },
	{ config_id = 1287006, name = "QUEST_FINISH_287006", event = EventType.EVENT_QUEST_FINISH, source = "7305319", condition = "", action = "action_EVENT_QUEST_FINISH_287006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder1", value = 0, no_refresh = true },
	{ config_id = 2, name = "reminder2", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder3", value = 0, no_refresh = true },
	{ config_id = 4, name = "reminder4", value = 0, no_refresh = true }
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
		regions = { 287005 },
		triggers = { "VARIABLE_CHANGE_287001", "VARIABLE_CHANGE_287002", "VARIABLE_CHANGE_287003", "VARIABLE_CHANGE_287004", "ENTER_REGION_287005", "QUEST_FINISH_287006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder1"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287001(context, evt)
	-- 调用提示id为 1000060000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder2"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287002(context, evt)
	-- 调用提示id为 1000060004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder3"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287003(context, evt)
	-- 调用提示id为 1000060006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_287004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder4"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_287004(context, evt)
	-- 调用提示id为 1000060007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287005(context, evt)
	if evt.param1 ~= 287005 then return false end
	
	-- 判断变量"reminder2"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287005(context, evt)
	-- 将本组内变量名为 "reminder3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2342.16, y=100.4, z=5179.23}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2342.16, y=100.4, z=5179.23}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_287006(context, evt)
	-- 将本组内变量名为 "reminder2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end