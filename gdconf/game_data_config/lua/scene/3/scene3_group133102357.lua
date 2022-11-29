-- 基础信息
local base_info = {
	group_id = 133102357
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
}

-- 触发器
triggers = {
	{ config_id = 1357001, name = "QUEST_FINISH_357001", event = EventType.EVENT_QUEST_FINISH, source = "2101505", condition = "", action = "action_EVENT_QUEST_FINISH_357001" },
	{ config_id = 1357002, name = "QUEST_FINISH_357002", event = EventType.EVENT_QUEST_FINISH, source = "2101503", condition = "", action = "action_EVENT_QUEST_FINISH_357002" },
	{ config_id = 1357003, name = "QUEST_FINISH_357003", event = EventType.EVENT_QUEST_FINISH, source = "2101504", condition = "", action = "action_EVENT_QUEST_FINISH_357003" },
	{ config_id = 1357005, name = "QUEST_FINISH_357005", event = EventType.EVENT_QUEST_FINISH, source = "2101502", condition = "", action = "action_EVENT_QUEST_FINISH_357005" },
	{ config_id = 1357006, name = "TIMER_EVENT_357006", event = EventType.EVENT_TIMER_EVENT, source = "Reminder", condition = "", action = "action_EVENT_TIMER_EVENT_357006" }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_357001", "QUEST_FINISH_357002", "QUEST_FINISH_357003", "QUEST_FINISH_357005", "TIMER_EVENT_357006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_357001(context, evt)
	-- 调用提示id为 31020201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_357002(context, evt)
	-- 调用提示id为 31020301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_357003(context, evt)
	-- 调用提示id为 31020401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_357005(context, evt)
	-- 延迟10秒后,向groupId为：133102357的对象,请求一次调用,并将string参数："Reminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133102357, "Reminder", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_357006(context, evt)
	-- 调用提示id为 31020501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end