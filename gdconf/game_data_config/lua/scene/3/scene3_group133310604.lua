-- 基础信息
local base_info = {
	group_id = 133310604
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
	{ config_id = 1604001, name = "VARIABLE_CHANGE_604001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_604001", action = "action_EVENT_VARIABLE_CHANGE_604001" },
	{ config_id = 1604002, name = "VARIABLE_CHANGE_604002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_604002", action = "action_EVENT_VARIABLE_CHANGE_604002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true },
	{ config_id = 2, name = "queststart", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_604001", "VARIABLE_CHANGE_604002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_604001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	-- 判断变量"queststart"为1
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_604001(context, evt)
	-- 调用提示id为 7319011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7319011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_604002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	-- 判断变量"queststart"为0
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_604002(context, evt)
	-- 调用提示id为 1000070006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000070006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end