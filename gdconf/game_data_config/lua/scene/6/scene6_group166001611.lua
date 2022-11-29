-- 基础信息
local base_info = {
	group_id = 166001611
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
	{ config_id = 611001, gadget_id = 70360001, pos = { x = 771.554, y = 791.000, z = 654.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1611002, name = "VARIABLE_CHANGE_611002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_611002", action = "action_EVENT_VARIABLE_CHANGE_611002", trigger_count = 0 },
	{ config_id = 1611004, name = "GROUP_LOAD_611004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_611004", action = "action_EVENT_GROUP_LOAD_611004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fishdone", value = 0, no_refresh = false },
	{ config_id = 2, name = "fishstop", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1611003, name = "GROUP_LOAD_611003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_611003", action = "action_EVENT_GROUP_LOAD_611003", trigger_count = 0 }
	}
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
		gadgets = { 611001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_611002", "GROUP_LOAD_611004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_611002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fishstop"为1
	if ScriptLib.GetGroupVariableValue(context, "fishstop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_611002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010196 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_611004(context, evt)
	-- 判断变量"fishstop"为1
	if ScriptLib.GetGroupVariableValue(context, "fishstop") > 0 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_611004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end