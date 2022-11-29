-- 基础信息
local base_info = {
	group_id = 133210416
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
	{ config_id = 1416001, name = "VARIABLE_CHANGE_416001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_416001", action = "action_EVENT_VARIABLE_CHANGE_416001" },
	{ config_id = 1416002, name = "VARIABLE_CHANGE_416002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_416002", action = "action_EVENT_VARIABLE_CHANGE_416002" },
	{ config_id = 1416003, name = "VARIABLE_CHANGE_416003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_416003", action = "action_EVENT_VARIABLE_CHANGE_416003" },
	{ config_id = 1416004, name = "VARIABLE_CHANGE_416004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_416004", action = "action_EVENT_VARIABLE_CHANGE_416004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SucCount", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_416001", "VARIABLE_CHANGE_416002", "VARIABLE_CHANGE_416003", "VARIABLE_CHANGE_416004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_416001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"SucCount"为1
	if ScriptLib.GetGroupVariableValue(context, "SucCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_416001(context, evt)
	-- 调用提示id为 32100157 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_416002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"SucCount"为2
	if ScriptLib.GetGroupVariableValue(context, "SucCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_416002(context, evt)
	-- 调用提示id为 32100158 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100158) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_416003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"SucCount"为3
	if ScriptLib.GetGroupVariableValue(context, "SucCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_416003(context, evt)
	-- 调用提示id为 32100159 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100159) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_416004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"SucCount"为4
	if ScriptLib.GetGroupVariableValue(context, "SucCount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_416004(context, evt)
	-- 调用提示id为 32100160 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end