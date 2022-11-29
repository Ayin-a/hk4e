-- 基础信息
local base_info = {
	group_id = 133004318
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
	{ config_id = 318001, gadget_id = 70300113, pos = { x = 2260.425, y = 236.351, z = -733.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 318002, gadget_id = 70300113, pos = { x = 2262.484, y = 236.351, z = -736.841 }, rot = { x = 0.000, y = 236.563, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 318003, gadget_id = 70300113, pos = { x = 2260.725, y = 236.351, z = -732.106 }, rot = { x = 0.000, y = 285.266, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318004, name = "ANY_GADGET_DIE_318004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_318004", action = "action_EVENT_ANY_GADGET_DIE_318004", trigger_count = 0 },
	{ config_id = 1318005, name = "GADGET_CREATE_318005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_318005", action = "", trigger_count = 0 },
	{ config_id = 1318006, name = "ANY_GADGET_DIE_318006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_318006", action = "action_EVENT_ANY_GADGET_DIE_318006", trigger_count = 0 },
	{ config_id = 1318007, name = "TIMER_EVENT_318007", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge2", condition = "condition_EVENT_TIMER_EVENT_318007", action = "action_EVENT_TIMER_EVENT_318007", trigger_count = 0 },
	{ config_id = 1318008, name = "TIMER_EVENT_318008", event = EventType.EVENT_TIMER_EVENT, source = "delayMessage2", condition = "", action = "action_EVENT_TIMER_EVENT_318008", trigger_count = 0 }
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
		gadgets = { 318001, 318002, 318003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_318004", "GADGET_CREATE_318005", "ANY_GADGET_DIE_318006", "TIMER_EVENT_318007", "TIMER_EVENT_318008" },
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
function condition_EVENT_ANY_GADGET_DIE_318004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004318}) ~= 0 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_318004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043181") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_318005(context, evt)
	if 318001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_318006(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_318006(context, evt)
	-- 延迟2秒后,向groupId为：133004318的对象,请求一次调用,并将string参数："delayJudge2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004318, "delayJudge2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_318007(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004318})  == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_318007(context, evt)
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
	
	-- 延迟2秒后,向groupId为：133004318的对象,请求一次调用,并将string参数："delayMessage2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004318, "delayMessage2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_318008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330043182") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end