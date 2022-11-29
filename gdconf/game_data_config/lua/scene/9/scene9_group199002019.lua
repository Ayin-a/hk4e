-- 基础信息
local base_info = {
	group_id = 199002019
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
	{ config_id = 19004, gadget_id = 70360002, pos = { x = 462.522, y = 106.892, z = -582.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	-- 丙处团长
	{ config_id = 19009, gadget_id = 70310332, pos = { x = 465.913, y = 121.091, z = -729.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	-- 甲处团长
	{ config_id = 19010, gadget_id = 70310332, pos = { x = 558.348, y = 126.645, z = -559.656 }, rot = { x = 0.000, y = 170.472, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	-- 乙处团长
	{ config_id = 19011, gadget_id = 70310332, pos = { x = 376.545, y = 122.064, z = -457.223 }, rot = { x = 0.000, y = 233.257, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 隐藏任务检测丙是最后一个完成的剧场
	{ config_id = 1019001, name = "QUEST_START_19001", event = EventType.EVENT_QUEST_START, source = "7902614", condition = "condition_EVENT_QUEST_START_19001", action = "action_EVENT_QUEST_START_19001", trigger_count = 0 },
	-- 隐藏任务检测甲是最后一个完成的剧场
	{ config_id = 1019002, name = "QUEST_START_19002", event = EventType.EVENT_QUEST_START, source = "7902615", condition = "condition_EVENT_QUEST_START_19002", action = "action_EVENT_QUEST_START_19002", trigger_count = 0 },
	-- 隐藏任务检测乙是最后一个完成的剧场
	{ config_id = 1019003, name = "QUEST_START_19003", event = EventType.EVENT_QUEST_START, source = "7902616", condition = "condition_EVENT_QUEST_START_19003", action = "action_EVENT_QUEST_START_19003", trigger_count = 0 },
	-- 7902612开始执行创丙
	{ config_id = 1019005, name = "QUEST_START_19005", event = EventType.EVENT_QUEST_START, source = "7902612", condition = "", action = "action_EVENT_QUEST_START_19005", trigger_count = 0 },
	-- 7902617开始执行创甲
	{ config_id = 1019006, name = "QUEST_START_19006", event = EventType.EVENT_QUEST_START, source = "7902617", condition = "", action = "action_EVENT_QUEST_START_19006", trigger_count = 0 },
	-- 7902618开始执行创乙
	{ config_id = 1019007, name = "QUEST_START_19007", event = EventType.EVENT_QUEST_START, source = "7902618", condition = "", action = "action_EVENT_QUEST_START_19007", trigger_count = 0 },
	-- 任务结束时将NPC卸载
	{ config_id = 1019008, name = "QUEST_START_19008", event = EventType.EVENT_QUEST_START, source = "7902604", condition = "", action = "action_EVENT_QUEST_START_19008", trigger_count = 0 },
	-- 完成间幕时在位置1对话
	{ config_id = 1019012, name = "GADGETTALK_DONE_19012", event = EventType.EVENT_GADGETTALK_DONE, source = "6800253", condition = "", action = "action_EVENT_GADGETTALK_DONE_19012", trigger_count = 0 },
	-- 完成间幕时在位置2对话
	{ config_id = 1019013, name = "GADGETTALK_DONE_19013", event = EventType.EVENT_GADGETTALK_DONE, source = "6800254", condition = "", action = "action_EVENT_GADGETTALK_DONE_19013", trigger_count = 0 },
	-- 完成间幕时在位置3对话
	{ config_id = 1019014, name = "GADGETTALK_DONE_19014", event = EventType.EVENT_GADGETTALK_DONE, source = "6800255", condition = "", action = "action_EVENT_GADGETTALK_DONE_19014", trigger_count = 0 },
	-- 使用reminder1111283
	{ config_id = 1019015, name = "QUEST_FINISH_19015", event = EventType.EVENT_QUEST_FINISH, source = "7902613", condition = "", action = "action_EVENT_QUEST_FINISH_19015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "jianmu1", value = 0, no_refresh = true },
	{ config_id = 2, name = "jianmu2", value = 0, no_refresh = true },
	{ config_id = 3, name = "jianmu3", value = 0, no_refresh = true },
	{ config_id = 4, name = "dramamiddle", value = 0, no_refresh = true }
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
		gadgets = { 19004 },
		regions = { },
		triggers = { "QUEST_START_19001", "QUEST_START_19002", "QUEST_START_19003", "QUEST_START_19005", "QUEST_START_19006", "QUEST_START_19007", "QUEST_START_19008", "QUEST_FINISH_19015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19009 },
		regions = { },
		triggers = { "QUEST_START_19008", "GADGETTALK_DONE_19012", "QUEST_FINISH_19015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19010 },
		regions = { },
		triggers = { "QUEST_START_19008", "GADGETTALK_DONE_19013", "QUEST_FINISH_19015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 19011 },
		regions = { },
		triggers = { "QUEST_START_19008", "GADGETTALK_DONE_19014", "QUEST_FINISH_19015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_19001(context, evt)
	-- 判断变量"jianmu1"为1
	if ScriptLib.GetGroupVariableValue(context, "jianmu1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_19001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902614") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_19002(context, evt)
	-- 判断变量"jianmu2"为1
	if ScriptLib.GetGroupVariableValue(context, "jianmu2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_19002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902615") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_19003(context, evt)
	-- 判断变量"jianmu3"为1
	if ScriptLib.GetGroupVariableValue(context, "jianmu3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_19003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902616") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_19005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002019, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_19006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002019, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_19007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002019, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_19008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002019, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_19012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_19013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_19014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902612") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_19015(context, evt)
	-- 调用提示id为 1111283 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111283) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end