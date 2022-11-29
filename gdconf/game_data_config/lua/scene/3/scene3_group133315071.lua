-- 基础信息
local base_info = {
	group_id = 133315071
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
	-- 任务结束时 让我回去找钵参花
	{ config_id = 1071001, name = "QUEST_FINISH_71001", event = EventType.EVENT_QUEST_FINISH, source = "7306324", condition = "", action = "action_EVENT_QUEST_FINISH_71001" },
	-- 任务开始时 看头顶水片
	{ config_id = 1071008, name = "QUEST_START_71008", event = EventType.EVENT_QUEST_START, source = "7306324", condition = "", action = "action_EVENT_QUEST_START_71008" }
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
		triggers = { "QUEST_FINISH_71001", "QUEST_START_71008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_71001(context, evt)
	-- 调用提示id为 730632409 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632409) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_71008(context, evt)
	-- 调用提示id为 730632411 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end