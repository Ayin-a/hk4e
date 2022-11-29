-- 基础信息
local base_info = {
	group_id = 177006090
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
	{ config_id = 90004, gadget_id = 70360001, pos = { x = 574.733, y = 121.212, z = -512.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 90005, gadget_id = 70500000, pos = { x = 584.897, y = 120.440, z = -517.468 }, rot = { x = 0.000, y = 0.000, z = 12.364 }, level = 36, point_type = 9292, isOneoff = true, area_id = 210 },
	{ config_id = 90007, gadget_id = 70500000, pos = { x = 573.076, y = 121.702, z = -521.769 }, rot = { x = 40.017, y = 0.000, z = 0.000 }, level = 36, point_type = 9293, isOneoff = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090001, name = "GATHER_90001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_90001", action = "action_EVENT_GATHER_90001" },
	{ config_id = 1090002, name = "GATHER_90002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_90002", action = "action_EVENT_GATHER_90002" },
	{ config_id = 1090003, name = "QUEST_START_90003", event = EventType.EVENT_QUEST_START, source = "7227614", condition = "condition_EVENT_QUEST_START_90003", action = "action_EVENT_QUEST_START_90003" },
	{ config_id = 1090006, name = "VARIABLE_CHANGE_90006", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_90006", action = "action_EVENT_VARIABLE_CHANGE_90006", trigger_count = 0 },
	{ config_id = 1090008, name = "QUEST_START_90008", event = EventType.EVENT_QUEST_START, source = "7227614", condition = "", action = "action_EVENT_QUEST_START_90008" },
	{ config_id = 1090009, name = "GATHER_90009", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_90009", action = "action_EVENT_GATHER_90009", trigger_count = 0 },
	{ config_id = 1090010, name = "GATHER_90010", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_90010", action = "action_EVENT_GATHER_90010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 90004, 90005, 90007 },
		regions = { },
		triggers = { "GATHER_90001", "GATHER_90002", "QUEST_START_90003", "VARIABLE_CHANGE_90006", "QUEST_START_90008", "GATHER_90009", "GATHER_90010" },
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
function condition_EVENT_GATHER_90001(context, evt)
	if 90005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_90001(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_90002(context, evt)
	if 90007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_90002(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90003(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_90003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227614") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227614") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_90008(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_90009(context, evt)
	if 90005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_90009(context, evt)
	-- 调用提示id为 500660244 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660244) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_90010(context, evt)
	if 90007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_90010(context, evt)
	-- 调用提示id为 500660245 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660245) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end