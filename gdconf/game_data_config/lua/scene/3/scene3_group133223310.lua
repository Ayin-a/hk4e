-- 基础信息
local base_info = {
	group_id = 133223310
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
	{ config_id = 1310001, name = "QUEST_START_310001", event = EventType.EVENT_QUEST_START, source = "7216631", condition = "condition_EVENT_QUEST_START_310001", action = "action_EVENT_QUEST_START_310001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "can_trigger", value = 0, no_refresh = true }
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
		triggers = { "QUEST_START_310001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_310001(context, evt)
	-- 判断变量"can_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "can_trigger") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_310001(context, evt)
	-- 调用提示id为 32230109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216631_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end