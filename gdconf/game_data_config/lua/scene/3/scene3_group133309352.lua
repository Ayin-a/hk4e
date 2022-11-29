-- 基础信息
local base_info = {
	group_id = 133309352
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
	{ config_id = 352005, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = -2348.306, y = 173.099, z = 5637.835 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1352002, name = "VARIABLE_CHANGE_352002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_352002", action = "action_EVENT_VARIABLE_CHANGE_352002" },
	{ config_id = 1352003, name = "VARIABLE_CHANGE_352003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_352003", action = "action_EVENT_VARIABLE_CHANGE_352003" },
	{ config_id = 1352004, name = "VARIABLE_CHANGE_352004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_352004", action = "action_EVENT_VARIABLE_CHANGE_352004" },
	{ config_id = 1352005, name = "ENTER_REGION_352005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_352005", action = "action_EVENT_ENTER_REGION_352005" },
	{ config_id = 1352006, name = "QUEST_FINISH_352006", event = EventType.EVENT_QUEST_FINISH, source = "7305413", condition = "", action = "action_EVENT_QUEST_FINISH_352006" }
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
		regions = { 352005 },
		triggers = { "VARIABLE_CHANGE_352002", "VARIABLE_CHANGE_352003", "VARIABLE_CHANGE_352004", "ENTER_REGION_352005", "QUEST_FINISH_352006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_352002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder2"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352002(context, evt)
	-- 调用提示id为 1000060004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_352003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder3"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352003(context, evt)
	-- 调用提示id为 1000060006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_352004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder4"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_352004(context, evt)
	-- 调用提示id为 1000060007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_352005(context, evt)
	if evt.param1 ~= 352005 then return false end
	
	-- 判断变量"reminder2"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_352005(context, evt)
	-- 将本组内变量名为 "reminder3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_352006(context, evt)
	-- 将本组内变量名为 "reminder1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end