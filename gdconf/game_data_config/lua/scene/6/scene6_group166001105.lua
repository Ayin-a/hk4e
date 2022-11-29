-- 基础信息
local base_info = {
	group_id = 166001105
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
	{ config_id = 105001, gadget_id = 70290204, pos = { x = 162.619, y = 146.451, z = 666.480 }, rot = { x = 8.776, y = 359.317, z = 351.119 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 105003, gadget_id = 70290204, pos = { x = 107.341, y = 148.548, z = 745.418 }, rot = { x = 5.849, y = 0.345, z = 6.753 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 105004, gadget_id = 70290204, pos = { x = 75.159, y = 144.155, z = 660.891 }, rot = { x = 10.817, y = 46.928, z = 354.777 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 105005, gadget_id = 70290233, pos = { x = 74.032, y = 144.701, z = 663.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 105010, gadget_id = 70290233, pos = { x = 163.132, y = 148.623, z = 662.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 105011, gadget_id = 70290233, pos = { x = 107.678, y = 148.924, z = 743.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105002, name = "ANY_GADGET_DIE_105002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_105002", action = "action_EVENT_ANY_GADGET_DIE_105002" },
	{ config_id = 1105006, name = "ANY_GADGET_DIE_105006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_105006", action = "action_EVENT_ANY_GADGET_DIE_105006" },
	{ config_id = 1105007, name = "ANY_GADGET_DIE_105007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_105007", action = "action_EVENT_ANY_GADGET_DIE_105007" },
	{ config_id = 1105008, name = "VARIABLE_CHANGE_105008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_105008", action = "action_EVENT_VARIABLE_CHANGE_105008" },
	{ config_id = 1105009, name = "VARIABLE_CHANGE_105009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_105009", action = "action_EVENT_VARIABLE_CHANGE_105009" },
	{ config_id = 1105012, name = "VARIABLE_CHANGE_105012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_105012", action = "action_EVENT_VARIABLE_CHANGE_105012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = false }
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
		gadgets = { 105001, 105003, 105004, 105005, 105010, 105011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_105002", "ANY_GADGET_DIE_105006", "ANY_GADGET_DIE_105007", "VARIABLE_CHANGE_105008", "VARIABLE_CHANGE_105009", "VARIABLE_CHANGE_105012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_105002(context, evt)
	if 105001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105002(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_105006(context, evt)
	if 105003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105006(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_105007(context, evt)
	if 105004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105007(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_105008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_105008(context, evt)
	-- 调用提示id为 60010321 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010321) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_105009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为3
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_105009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_105012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为2
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_105012(context, evt)
	-- 调用提示id为 60010322 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010322) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end