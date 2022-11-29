-- 基础信息
local base_info = {
	group_id = 133309495
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
	{ config_id = 1495001, name = "VARIABLE_CHANGE_495001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_495001", action = "action_EVENT_VARIABLE_CHANGE_495001" },
	{ config_id = 1495002, name = "VARIABLE_CHANGE_495002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_495002", action = "action_EVENT_VARIABLE_CHANGE_495002" },
	{ config_id = 1495003, name = "VARIABLE_CHANGE_495003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_495003", action = "action_EVENT_VARIABLE_CHANGE_495003" },
	{ config_id = 1495004, name = "VARIABLE_CHANGE_495004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_495004", action = "action_EVENT_VARIABLE_CHANGE_495004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder1", value = 0, no_refresh = true },
	{ config_id = 2, name = "reminder2", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_495001", "VARIABLE_CHANGE_495002", "VARIABLE_CHANGE_495003", "VARIABLE_CHANGE_495004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_495001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder1"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_495001(context, evt)
	-- 调用提示id为 1000060008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_495002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder2"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_495002(context, evt)
	-- 调用提示id为 1000060009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_495003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder2"为2
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_495003(context, evt)
	-- 调用提示id为 1000060010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_495004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder2"为3
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_495004(context, evt)
	-- 调用提示id为 1000060011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end