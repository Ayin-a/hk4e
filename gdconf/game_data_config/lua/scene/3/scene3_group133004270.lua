-- 基础信息
local base_info = {
	group_id = 133004270
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
	{ config_id = 1554, gadget_id = 70300111, pos = { x = 2265.945, y = 236.285, z = -738.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1555, gadget_id = 70300111, pos = { x = 2262.021, y = 236.285, z = -737.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1556, gadget_id = 70300111, pos = { x = 2261.307, y = 236.273, z = -735.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1557, gadget_id = 70300111, pos = { x = 2266.695, y = 236.295, z = -736.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1558, gadget_id = 70300111, pos = { x = 2263.986, y = 236.275, z = -739.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270004, gadget_id = 70300111, pos = { x = 2266.681, y = 236.214, z = -738.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270005, gadget_id = 70300111, pos = { x = 2268.550, y = 236.264, z = -736.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270006, gadget_id = 70300111, pos = { x = 2261.364, y = 236.214, z = -737.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270007, gadget_id = 70300111, pos = { x = 2259.811, y = 236.351, z = -735.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270008, gadget_id = 70310001, pos = { x = 2264.213, y = 236.158, z = -734.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270011, gadget_id = 70300111, pos = { x = 2266.489, y = 236.219, z = -741.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270012, gadget_id = 70300111, pos = { x = 2267.425, y = 236.271, z = -737.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270013, gadget_id = 70300111, pos = { x = 2258.974, y = 236.235, z = -734.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270014, gadget_id = 70300111, pos = { x = 2256.823, y = 236.230, z = -732.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270015, gadget_id = 70300111, pos = { x = 2259.904, y = 236.257, z = -730.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270017, gadget_id = 70300113, pos = { x = 2269.280, y = 236.351, z = -736.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270018, gadget_id = 70300113, pos = { x = 2266.526, y = 236.313, z = -737.015 }, rot = { x = 0.000, y = 328.152, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270019, gadget_id = 70300113, pos = { x = 2264.116, y = 236.350, z = -737.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270020, gadget_id = 70300113, pos = { x = 2261.473, y = 236.364, z = -737.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 270021, gadget_id = 70300113, pos = { x = 2259.097, y = 236.351, z = -737.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000327, name = "ANY_GADGET_DIE_327", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_327", action = "action_EVENT_ANY_GADGET_DIE_327", trigger_count = 0 },
	{ config_id = 1270001, name = "ANY_GADGET_DIE_270001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_270001", action = "action_EVENT_ANY_GADGET_DIE_270001", trigger_count = 0 },
	{ config_id = 1270002, name = "TIMER_EVENT_270002", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge", condition = "condition_EVENT_TIMER_EVENT_270002", action = "action_EVENT_TIMER_EVENT_270002" },
	{ config_id = 1270003, name = "GADGET_CREATE_270003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270003", action = "action_EVENT_GADGET_CREATE_270003" },
	{ config_id = 1270009, name = "ANY_GADGET_DIE_270009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_270009", action = "action_EVENT_ANY_GADGET_DIE_270009", trigger_count = 0 },
	{ config_id = 1270010, name = "TIMER_EVENT_270010", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge", condition = "condition_EVENT_TIMER_EVENT_270010", action = "action_EVENT_TIMER_EVENT_270010" },
	{ config_id = 1270016, name = "GADGET_CREATE_270016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270016", action = "action_EVENT_GADGET_CREATE_270016" },
	{ config_id = 1270022, name = "GADGET_CREATE_270022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270022", action = "action_EVENT_GADGET_CREATE_270022" },
	{ config_id = 1270023, name = "TIMER_EVENT_270023", event = EventType.EVENT_TIMER_EVENT, source = "delaymessage", condition = "", action = "action_EVENT_TIMER_EVENT_270023" }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 1554, 1555, 1556, 1557, 1558 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270003", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 1558, 270004, 270005, 270006, 270007, 270008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_270001", "GADGET_CREATE_270003", "ANY_GADGET_DIE_270009", "TIMER_EVENT_270010", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 1558, 270011, 270012, 270013, 270014, 270015 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270016", "TIMER_EVENT_270023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 270017, 270018, 270019, 270020, 270021 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_327", "ANY_GADGET_DIE_270001", "TIMER_EVENT_270002", "GADGET_CREATE_270022", "TIMER_EVENT_270023" },
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
function condition_EVENT_ANY_GADGET_DIE_327(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270}) ~= 0 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_327(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004270") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_270001(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_270001(context, evt)
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delayJudge" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delayJudge", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_270002(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270})  == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_270002(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delaymessage" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delaymessage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270003(context, evt)
	if 1558 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270003(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_270009(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270}) ~= 1 then
		return false
	end
	
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_270009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004270") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_270010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004270})  == 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_270010(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004270的对象,请求一次调用,并将string参数："delaymessage" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004270, "delaymessage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270016(context, evt)
	if 1558 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270016(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270022(context, evt)
	if 270019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270022(context, evt)
	-- 调用提示id为 1110032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_270023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300427001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end