-- 基础信息
local base_info = {
	group_id = 220139002
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
	-- 4007312 任务保底
	{ config_id = 1002001, name = "QUEST_START_2001", event = EventType.EVENT_QUEST_START, source = "4007312", condition = "condition_EVENT_QUEST_START_2001", action = "action_EVENT_QUEST_START_2001", trigger_count = 0 },
	-- 4007312 任务保底
	{ config_id = 1002002, name = "GROUP_LOAD_2002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2002", action = "action_EVENT_GROUP_LOAD_2002", trigger_count = 0 }
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
		triggers = { "QUEST_START_2001", "GROUP_LOAD_2002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_2001(context, evt)
	-- 判断变量"QuestFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestFinish", 220139022) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2002(context, evt)
	-- 判断变量"QuestFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestFinish", 220139022) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end