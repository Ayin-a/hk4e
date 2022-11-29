-- 基础信息
local base_info = {
	group_id = 133309045
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
	{ config_id = 1045001, name = "QUEST_FINISH_45001", event = EventType.EVENT_QUEST_FINISH, source = "7308301", condition = "", action = "action_EVENT_QUEST_FINISH_45001" },
	{ config_id = 1045002, name = "QUEST_FINISH_45002", event = EventType.EVENT_QUEST_FINISH, source = "7308303", condition = "condition_EVENT_QUEST_FINISH_45002", action = "action_EVENT_QUEST_FINISH_45002" },
	{ config_id = 1045003, name = "QUEST_FINISH_45003", event = EventType.EVENT_QUEST_FINISH, source = "7308304", condition = "condition_EVENT_QUEST_FINISH_45003", action = "action_EVENT_QUEST_FINISH_45003" },
	{ config_id = 1045004, name = "QUEST_FINISH_45004", event = EventType.EVENT_QUEST_FINISH, source = "7308305", condition = "condition_EVENT_QUEST_FINISH_45004", action = "action_EVENT_QUEST_FINISH_45004" },
	{ config_id = 1045005, name = "TIME_AXIS_PASS_45005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_45005", action = "action_EVENT_TIME_AXIS_PASS_45005" },
	{ config_id = 1045006, name = "TIME_AXIS_PASS_45006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_45006", action = "action_EVENT_TIME_AXIS_PASS_45006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "queststate", value = 0, no_refresh = true },
	{ config_id = 2, name = "complete", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_45001", "QUEST_FINISH_45002", "QUEST_FINISH_45003", "QUEST_FINISH_45004", "TIME_AXIS_PASS_45005", "TIME_AXIS_PASS_45006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_45001(context, evt)
	-- 将本组内变量名为 "queststate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 7308303 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308303) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_45002(context, evt)
	-- 判断变量"queststate"为1
	if ScriptLib.GetGroupVariableValue(context, "queststate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_45002(context, evt)
	-- 针对当前group内变量名为 "complete" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 1 then
	
	-- 创建标识为"playcs1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcs", {16}, false)
	
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 2 then
	
	-- 创建标识为"playcs2"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcutscene", {16}, false)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_45003(context, evt)
	-- 判断变量"queststate"为1
	if ScriptLib.GetGroupVariableValue(context, "queststate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_45003(context, evt)
	-- 针对当前group内变量名为 "complete" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 1 then
	
	-- 创建标识为"playcs1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcs", {16}, false)
	
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 2 then
	
	-- 创建标识为"playcs2"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcutscene", {16}, false)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_45004(context, evt)
	-- 判断变量"queststate"为1
	if ScriptLib.GetGroupVariableValue(context, "queststate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_45004(context, evt)
	-- 针对当前group内变量名为 "complete" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 1 then
	
	-- 创建标识为"playcs1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcs", {16}, false)
	
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "complete") == 2 then
	
	-- 创建标识为"playcs2"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playcutscene", {16}, false)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_45005(context, evt)
	if "playcs" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_45005(context, evt)
	-- 调用提示id为 7308305 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308305) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_45006(context, evt)
	if "playcutscene" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_45006(context, evt)
	-- 调用提示id为 7308307 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end