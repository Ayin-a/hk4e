-- 基础信息
local base_info = {
	group_id = 166001250
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
	{ config_id = 250001, gadget_id = 70360001, pos = { x = 387.135, y = 124.573, z = 1365.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 250002, gadget_id = 70360001, pos = { x = 89.958, y = 327.213, z = 412.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 250003, gadget_id = 70360001, pos = { x = 453.007, y = 378.416, z = 520.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 250004, gadget_id = 70360001, pos = { x = 626.136, y = 380.762, z = 768.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 250005, gadget_id = 70360001, pos = { x = 293.137, y = 158.681, z = 745.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 250011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 205.947, y = 461.087, z = 615.017 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1250006, name = "VARIABLE_CHANGE_250006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250006", action = "action_EVENT_VARIABLE_CHANGE_250006" },
	{ config_id = 1250007, name = "VARIABLE_CHANGE_250007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250007", action = "action_EVENT_VARIABLE_CHANGE_250007" },
	{ config_id = 1250008, name = "VARIABLE_CHANGE_250008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250008", action = "action_EVENT_VARIABLE_CHANGE_250008" },
	{ config_id = 1250009, name = "VARIABLE_CHANGE_250009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250009", action = "action_EVENT_VARIABLE_CHANGE_250009" },
	{ config_id = 1250010, name = "VARIABLE_CHANGE_250010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250010", action = "action_EVENT_VARIABLE_CHANGE_250010" },
	{ config_id = 1250011, name = "ENTER_REGION_250011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_250011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true },
	{ config_id = 2, name = "save", value = 0, no_refresh = true }
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
		gadgets = { 250001, 250002, 250003, 250004, 250005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_250006", "VARIABLE_CHANGE_250007", "VARIABLE_CHANGE_250008", "VARIABLE_CHANGE_250009", "VARIABLE_CHANGE_250010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 250011 },
		triggers = { "ENTER_REGION_250011" },
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
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_VARIABLE_CHANGE_250006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250006(context, evt)
	-- 调用提示id为 60010260 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010260) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为2
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250007(context, evt)
	-- 调用提示id为 60010261 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为3
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250008(context, evt)
	-- 调用提示id为 60010262 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为4
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250009(context, evt)
	-- 调用提示id为 60010263 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010263) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_250010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为5
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250010(context, evt)
	-- 调用提示id为 60010264 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010264) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_250011(context, evt)
	-- 调用提示id为 60010265 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010265) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end