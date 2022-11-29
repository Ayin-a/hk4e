-- 基础信息
local base_info = {
	group_id = 133220150
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
	{ config_id = 150001, gadget_id = 70500000, pos = { x = -3005.147, y = 225.552, z = -4393.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9153, area_id = 11 },
	{ config_id = 150002, gadget_id = 70500000, pos = { x = -3005.302, y = 225.609, z = -4394.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9151, area_id = 11 },
	{ config_id = 150003, gadget_id = 70500000, pos = { x = -3004.466, y = 225.564, z = -4391.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9152, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150004, name = "GATHER_150004", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_150004", action = "action_EVENT_GATHER_150004", trigger_count = 0 },
	{ config_id = 1150005, name = "GATHER_150005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_150005", action = "action_EVENT_GATHER_150005", trigger_count = 0 },
	{ config_id = 1150006, name = "GATHER_150006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_150006", action = "action_EVENT_GATHER_150006", trigger_count = 0 }
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
		gadgets = { 150001, 150002, 150003 },
		regions = { },
		triggers = { "GATHER_150004", "GATHER_150005", "GATHER_150006" },
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
function condition_EVENT_GATHER_150004(context, evt)
	if 150002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_150004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110324 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_150005(context, evt)
	if 150003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_150005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110325 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110325) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_150006(context, evt)
	if 150001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_150006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110326 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110326) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end