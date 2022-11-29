-- 基础信息
local base_info = {
	group_id = 220122001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29060201, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 171.520, z = 0.000 }, level = 1, title_id = 153, special_name_id = 11 }
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
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	{ config_id = 1001003, name = "QUEST_START_1003", event = EventType.EVENT_QUEST_START, source = "1204112", condition = "", action = "action_EVENT_QUEST_START_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "TIMER_EVENT_1004", event = EventType.EVENT_TIMER_EVENT, source = "playreminder", condition = "", action = "action_EVENT_TIMER_EVENT_1004" }
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
		triggers = { "QUEST_START_1003", "TIMER_EVENT_1004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1002", "QUEST_START_1003", "TIMER_EVENT_1004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1003(context, evt)
	-- 延迟3秒后,向groupId为：220122001的对象,请求一次调用,并将string参数："playreminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220122001, "playreminder", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1004(context, evt)
	-- 调用提示id为 201220104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201220104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end