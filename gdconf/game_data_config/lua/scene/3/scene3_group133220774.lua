-- 基础信息
local base_info = {
	group_id = 133220774
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
	{ config_id = 774001, gadget_id = 70710714, pos = { x = -2497.685, y = 425.573, z = -4413.863 }, rot = { x = 2.992, y = 243.410, z = 351.733 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1774002, name = "ANY_GADGET_DIE_774002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_774002", action = "action_EVENT_ANY_GADGET_DIE_774002", trigger_count = 0 },
	{ config_id = 1774003, name = "TIMER_EVENT_774003", event = EventType.EVENT_TIMER_EVENT, source = "billboard02", condition = "", action = "action_EVENT_TIMER_EVENT_774003", trigger_count = 0 },
	{ config_id = 1774004, name = "QUEST_FINISH_774004", event = EventType.EVENT_QUEST_FINISH, source = "1914601", condition = "", action = "action_EVENT_QUEST_FINISH_774004", trigger_count = 0 }
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
		gadgets = { 774001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_774002", "TIMER_EVENT_774003", "QUEST_FINISH_774004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_774002(context, evt)
	if 774001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_774002(context, evt)
	-- 延迟1秒后,向groupId为：133220774的对象,请求一次调用,并将string参数："billboard02" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220774, "billboard02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_774003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332207472") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133220774, "billboard02") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_774004(context, evt)
	-- 调用提示id为 400137 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400137) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end