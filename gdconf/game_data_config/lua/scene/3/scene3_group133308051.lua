-- 基础信息
local base_info = {
	group_id = 133308051
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
	-- 7305501
	{ config_id = 1051001, name = "QUEST_FINISH_51001", event = EventType.EVENT_QUEST_FINISH, source = "7305501", condition = "", action = "action_EVENT_QUEST_FINISH_51001" },
	-- 7305507
	{ config_id = 1051002, name = "QUEST_START_51002", event = EventType.EVENT_QUEST_START, source = "7305507", condition = "", action = "action_EVENT_QUEST_START_51002" },
	-- 7305525
	{ config_id = 1051003, name = "QUEST_FINISH_51003", event = EventType.EVENT_QUEST_FINISH, source = "7305525", condition = "", action = "action_EVENT_QUEST_FINISH_51003" },
	-- 7305521
	{ config_id = 1051004, name = "QUEST_START_51004", event = EventType.EVENT_QUEST_START, source = "7305521", condition = "", action = "action_EVENT_QUEST_START_51004" },
	-- 7305535
	{ config_id = 1051005, name = "QUEST_START_51005", event = EventType.EVENT_QUEST_START, source = "7305550", condition = "", action = "action_EVENT_QUEST_START_51005" },
	-- 7305536
	{ config_id = 1051006, name = "QUEST_START_51006", event = EventType.EVENT_QUEST_START, source = "7305536", condition = "", action = "action_EVENT_QUEST_START_51006" },
	-- 7305536
	{ config_id = 1051007, name = "QUEST_FINISH_51007", event = EventType.EVENT_QUEST_FINISH, source = "7305536", condition = "", action = "action_EVENT_QUEST_FINISH_51007" },
	-- 7305538
	{ config_id = 1051008, name = "QUEST_FINISH_51008", event = EventType.EVENT_QUEST_FINISH, source = "7305538", condition = "", action = "action_EVENT_QUEST_FINISH_51008" },
	-- 7305514
	{ config_id = 1051009, name = "QUEST_FINISH_51009", event = EventType.EVENT_QUEST_FINISH, source = "7305514", condition = "", action = "action_EVENT_QUEST_FINISH_51009" },
	-- 7305515
	{ config_id = 1051010, name = "QUEST_FINISH_51010", event = EventType.EVENT_QUEST_FINISH, source = "7305515", condition = "", action = "action_EVENT_QUEST_FINISH_51010" },
	-- 7305516
	{ config_id = 1051011, name = "QUEST_FINISH_51011", event = EventType.EVENT_QUEST_FINISH, source = "7305516", condition = "", action = "action_EVENT_QUEST_FINISH_51011" }
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
		triggers = { "QUEST_FINISH_51001", "QUEST_START_51002", "QUEST_FINISH_51003", "QUEST_START_51004", "QUEST_START_51005", "QUEST_START_51006", "QUEST_FINISH_51007", "QUEST_FINISH_51008", "QUEST_FINISH_51009", "QUEST_FINISH_51010", "QUEST_FINISH_51011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_51001(context, evt)
	-- 调用提示id为 730550101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730550101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51002(context, evt)
	-- 调用提示id为 1000130017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000130017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51003(context, evt)
	-- 调用提示id为 1000130000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000130000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51004(context, evt)
	-- 调用提示id为 730550701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730550701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51005(context, evt)
	-- 调用提示id为 730550801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730550801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51006(context, evt)
	-- 调用提示id为 730550901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730550901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51007(context, evt)
	-- 调用提示id为 730551001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730551001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51008(context, evt)
	-- 调用提示id为 730551401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730551401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51009(context, evt)
	-- 调用提示id为 1000130013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000130013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51010(context, evt)
	-- 调用提示id为 1000130009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000130009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_51011(context, evt)
	-- 调用提示id为 1000130006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000130006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end