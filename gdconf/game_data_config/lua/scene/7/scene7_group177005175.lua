-- 基础信息
local base_info = {
	group_id = 177005175
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
	{ config_id = 175005, gadget_id = 70360001, pos = { x = 605.303, y = 204.354, z = 612.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 175006, gadget_id = 70500000, pos = { x = 594.340, y = 205.734, z = 628.982 }, rot = { x = 31.427, y = 0.000, z = 0.000 }, level = 36, point_type = 9296, isOneoff = true, area_id = 210 },
	{ config_id = 175007, gadget_id = 70500000, pos = { x = 593.971, y = 210.668, z = 618.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9290, isOneoff = true, area_id = 210 },
	{ config_id = 175008, gadget_id = 70500000, pos = { x = 618.284, y = 209.261, z = 643.789 }, rot = { x = 297.272, y = 0.000, z = 0.000 }, level = 36, point_type = 9291, isOneoff = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175001, name = "GATHER_175001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175001", action = "action_EVENT_GATHER_175001" },
	{ config_id = 1175002, name = "GATHER_175002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175002", action = "action_EVENT_GATHER_175002" },
	{ config_id = 1175003, name = "GATHER_175003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175003", action = "action_EVENT_GATHER_175003" },
	{ config_id = 1175004, name = "QUEST_START_175004", event = EventType.EVENT_QUEST_START, source = "7227604", condition = "condition_EVENT_QUEST_START_175004", action = "action_EVENT_QUEST_START_175004", trigger_count = 0 },
	{ config_id = 1175010, name = "QUEST_START_175010", event = EventType.EVENT_QUEST_START, source = "7227604", condition = "", action = "action_EVENT_QUEST_START_175010", trigger_count = 0 },
	{ config_id = 1175011, name = "GATHER_175011", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175011", action = "action_EVENT_GATHER_175011" },
	{ config_id = 1175012, name = "GATHER_175012", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175012", action = "action_EVENT_GATHER_175012" },
	{ config_id = 1175013, name = "GATHER_175013", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_175013", action = "action_EVENT_GATHER_175013" },
	{ config_id = 1175014, name = "VARIABLE_CHANGE_175014", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_175014", action = "action_EVENT_VARIABLE_CHANGE_175014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 175005, 175006, 175007, 175008 },
		regions = { },
		triggers = { "GATHER_175001", "GATHER_175002", "GATHER_175003", "QUEST_START_175004", "QUEST_START_175010", "GATHER_175011", "GATHER_175012", "GATHER_175013", "VARIABLE_CHANGE_175014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_175001(context, evt)
	if 175006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175001(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_175002(context, evt)
	if 175007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175002(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_175003(context, evt)
	if 175008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175003(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_175004(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_175004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_175010(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_175011(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	if 175006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175011(context, evt)
	-- 调用提示id为 500660244 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660244) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_175012(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	if 175007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175012(context, evt)
	-- 调用提示id为 500660245 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660245) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_175013(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	if 175008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_175013(context, evt)
	-- 调用提示id为 500660246 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660246) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end