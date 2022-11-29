-- 基础信息
local base_info = {
	group_id = 133220290
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
	-- 1-4区间内
	{ config_id = 1290001, name = "VARIABLE_CHANGE_290001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_290001", action = "action_EVENT_VARIABLE_CHANGE_290001", trigger_count = 0 },
	-- 09调取时判断在1-4之间
	{ config_id = 1290002, name = "QUEST_START_290002", event = EventType.EVENT_QUEST_START, source = "7219909", condition = "condition_EVENT_QUEST_START_290002", action = "action_EVENT_QUEST_START_290002", trigger_count = 0 },
	-- 变量为4时向09,23发送完成通知
	{ config_id = 1290003, name = "VARIABLE_CHANGE_290003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_290003", action = "action_EVENT_VARIABLE_CHANGE_290003", trigger_count = 0 },
	-- 23调取时判断变量为4即完成任务
	{ config_id = 1290004, name = "QUEST_START_290004", event = EventType.EVENT_QUEST_START, source = "7219923", condition = "condition_EVENT_QUEST_START_290004", action = "action_EVENT_QUEST_START_290004", trigger_count = 0 },
	-- 保底load任意一块石板时完成09
	{ config_id = 1290005, name = "GROUP_LOAD_290005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290005", action = "action_EVENT_GROUP_LOAD_290005", trigger_count = 0 },
	-- 保底load四块石板时完成23
	{ config_id = 1290006, name = "GROUP_LOAD_290006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290006", action = "action_EVENT_GROUP_LOAD_290006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "slabcount", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_290001", "QUEST_START_290002", "VARIABLE_CHANGE_290003", "QUEST_START_290004", "GROUP_LOAD_290005", "GROUP_LOAD_290006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_290001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 1 > evt.param1 or 4 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_290001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_290002(context, evt)
	-- 判断变量"slabcount"为1234时
	local count = ScriptLib.GetGroupVariableValue(context, "slabcount")
	if count < 1 and count > 4  then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_290002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_290003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"slabcount"为4
	if ScriptLib.GetGroupVariableValue(context, "slabcount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_290003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_290004(context, evt)
	-- 判断变量"slabcount"为4
	if ScriptLib.GetGroupVariableValue(context, "slabcount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_290004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_290005(context, evt)
	-- 判断变量"slabcount"为123时
	local count = ScriptLib.GetGroupVariableValue(context, "slabcount")
	if count < 1 and count >= 4  then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_290006(context, evt)
	-- 判断变量"slabcount"为4
	if ScriptLib.GetGroupVariableValue(context, "slabcount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7219910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end