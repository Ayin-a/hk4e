-- 基础信息
local base_info = {
	group_id = 133004319
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
	{ config_id = 319001, gadget_id = 70300113, pos = { x = 2262.484, y = 236.351, z = -735.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 319002, gadget_id = 70300113, pos = { x = 2266.650, y = 236.351, z = -734.843 }, rot = { x = 0.000, y = 283.512, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 319003, gadget_id = 70300113, pos = { x = 2261.467, y = 236.308, z = -731.265 }, rot = { x = 0.000, y = 35.864, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1319004, name = "ANY_GADGET_DIE_319004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_319004", action = "action_EVENT_ANY_GADGET_DIE_319004", trigger_count = 0 },
	{ config_id = 1319005, name = "GADGET_CREATE_319005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_319005", action = "action_EVENT_GADGET_CREATE_319005", trigger_count = 0 },
	{ config_id = 1319006, name = "ANY_GADGET_DIE_319006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_319006", action = "action_EVENT_ANY_GADGET_DIE_319006", trigger_count = 0 },
	{ config_id = 1319007, name = "TIMER_EVENT_319007", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge3", condition = "condition_EVENT_TIMER_EVENT_319007", action = "action_EVENT_TIMER_EVENT_319007", trigger_count = 0 },
	{ config_id = 1319008, name = "TIMER_EVENT_319008", event = EventType.EVENT_TIMER_EVENT, source = "delayMessage3", condition = "", action = "action_EVENT_TIMER_EVENT_319008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfail", value = 0, no_refresh = false }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 319001, 319002, 319003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_319004", "GADGET_CREATE_319005", "ANY_GADGET_DIE_319006", "TIMER_EVENT_319007", "TIMER_EVENT_319008" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_319004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004319}) ~= 0 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_319004(context, evt)
	-- 调用提示id为 1110049 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110049) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043191") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_319005(context, evt)
	if 319001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_319005(context, evt)
	-- 调用提示id为 1110047 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_319006(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_319006(context, evt)
	-- 延迟2秒后,向groupId为：133004319的对象,请求一次调用,并将string参数："delayJudge3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004319, "delayJudge3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_319007(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004319})  == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_319007(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1110048 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004319的对象,请求一次调用,并将string参数："delayMessage3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004319, "delayMessage3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_319008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043192") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end