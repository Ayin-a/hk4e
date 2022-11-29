-- 基础信息
local base_info = {
	group_id = 133210027
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
	{ config_id = 1027001, name = "QUEST_FINISH_27001", event = EventType.EVENT_QUEST_FINISH, source = "7223301", condition = "", action = "action_EVENT_QUEST_FINISH_27001" },
	{ config_id = 1027002, name = "VARIABLE_CHANGE_27002", event = EventType.EVENT_VARIABLE_CHANGE, source = "ActiveCount", condition = "condition_EVENT_VARIABLE_CHANGE_27002", action = "action_EVENT_VARIABLE_CHANGE_27002" },
	{ config_id = 1027003, name = "VARIABLE_CHANGE_27003", event = EventType.EVENT_VARIABLE_CHANGE, source = "ActiveCount", condition = "condition_EVENT_VARIABLE_CHANGE_27003", action = "action_EVENT_VARIABLE_CHANGE_27003" },
	{ config_id = 1027004, name = "TIME_AXIS_PASS_27004", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder1", condition = "condition_EVENT_TIME_AXIS_PASS_27004", action = "action_EVENT_TIME_AXIS_PASS_27004", trigger_count = 0 },
	{ config_id = 1027005, name = "TIME_AXIS_PASS_27005", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder2", condition = "condition_EVENT_TIME_AXIS_PASS_27005", action = "action_EVENT_TIME_AXIS_PASS_27005", trigger_count = 0 },
	{ config_id = 1027006, name = "VARIABLE_CHANGE_27006", event = EventType.EVENT_VARIABLE_CHANGE, source = "QuestFinish1", condition = "condition_EVENT_VARIABLE_CHANGE_27006", action = "action_EVENT_VARIABLE_CHANGE_27006" },
	{ config_id = 1027007, name = "VARIABLE_CHANGE_27007", event = EventType.EVENT_VARIABLE_CHANGE, source = "QuestFinish2", condition = "condition_EVENT_VARIABLE_CHANGE_27007", action = "action_EVENT_VARIABLE_CHANGE_27007" },
	{ config_id = 1027008, name = "QUEST_START_27008", event = EventType.EVENT_QUEST_START, source = "7223314", condition = "condition_EVENT_QUEST_START_27008", action = "action_EVENT_QUEST_START_27008", trigger_count = 0 },
	{ config_id = 1027009, name = "QUEST_START_27009", event = EventType.EVENT_QUEST_START, source = "7223315", condition = "condition_EVENT_QUEST_START_27009", action = "action_EVENT_QUEST_START_27009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ActiveCount", value = 0, no_refresh = true },
	{ config_id = 2, name = "QuestFinish1", value = 0, no_refresh = true },
	{ config_id = 3, name = "QuestFinish2", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_27001", "VARIABLE_CHANGE_27002", "VARIABLE_CHANGE_27003", "TIME_AXIS_PASS_27004", "TIME_AXIS_PASS_27005", "VARIABLE_CHANGE_27006", "VARIABLE_CHANGE_27007", "QUEST_START_27008", "QUEST_START_27009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_27001(context, evt)
	-- 调用提示id为 32100205 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ActiveCount"为1
	if ScriptLib.GetGroupVariableValue(context, "ActiveCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27002(context, evt)
	-- 创建标识为"reminder1"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder1", {10}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ActiveCount"为2
	if ScriptLib.GetGroupVariableValue(context, "ActiveCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27003(context, evt)
	-- 创建标识为"reminder2"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder2", {10}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_27004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_27004(context, evt)
	-- 调用提示id为 32100209 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_27005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_27005(context, evt)
	-- 调用提示id为 32100210 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestFinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223314") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_27007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestFinish2"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223315") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_27008(context, evt)
	-- 判断变量"QuestFinish1"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_27008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223314") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_27009(context, evt)
	-- 判断变量"QuestFinish2"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_27009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223315") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end