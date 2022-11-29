-- 基础信息
local base_info = {
	group_id = 133107915
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
	{ config_id = 915001, gadget_id = 70210102, pos = { x = -482.355, y = 205.341, z = 155.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7 },
	{ config_id = 915002, gadget_id = 70210102, pos = { x = -479.029, y = 203.940, z = 168.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7 },
	{ config_id = 915003, gadget_id = 70210102, pos = { x = -465.500, y = 211.257, z = 192.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1915004, name = "GADGET_STATE_CHANGE_915004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915004", action = "action_EVENT_GADGET_STATE_CHANGE_915004", trigger_count = 0 },
	{ config_id = 1915005, name = "GADGET_STATE_CHANGE_915005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915005", action = "action_EVENT_GADGET_STATE_CHANGE_915005" },
	{ config_id = 1915006, name = "GADGET_STATE_CHANGE_915006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915006", action = "action_EVENT_GADGET_STATE_CHANGE_915006" },
	{ config_id = 1915007, name = "GADGET_STATE_CHANGE_915007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915007", action = "action_EVENT_GADGET_STATE_CHANGE_915007" },
	{ config_id = 1915008, name = "GADGET_STATE_CHANGE_915008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_915008", action = "action_EVENT_GADGET_STATE_CHANGE_915008", trigger_count = 0 },
	{ config_id = 1915009, name = "TIMER_EVENT_915009", event = EventType.EVENT_TIMER_EVENT, source = "delayshowui", condition = "", action = "action_EVENT_TIMER_EVENT_915009" }
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
	suite = 2,
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
		gadgets = { 915001, 915002, 915003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_915004", "GADGET_STATE_CHANGE_915005", "GADGET_STATE_CHANGE_915006", "GADGET_STATE_CHANGE_915007", "GADGET_STATE_CHANGE_915008", "TIMER_EVENT_915009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_915004(context, evt)
	if 915001 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 915002 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 915003 ==  evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22114Count") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_915005(context, evt)
	if 915001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915005(context, evt)
	-- 调用提示id为 1110112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_915006(context, evt)
	if 915002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915006(context, evt)
	-- 调用提示id为 1110113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_915007(context, evt)
	if 915003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915007(context, evt)
	-- 调用提示id为 1110114 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_915008(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133107915}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_915008(context, evt)
	-- 延迟4秒后,向groupId为：133107915的对象,请求一次调用,并将string参数："delayshowui" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107915, "delayshowui", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_915009(context, evt)
	-- 调用提示id为 1110115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end