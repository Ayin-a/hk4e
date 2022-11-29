-- 基础信息
local base_info = {
	group_id = 133209039
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
	{ config_id = 39001, gadget_id = 70210102, pos = { x = -2462.563, y = 203.681, z = -3892.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 39002, gadget_id = 70210102, pos = { x = -2464.333, y = 204.036, z = -3899.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 39003, gadget_id = 70210102, pos = { x = -2461.581, y = 203.315, z = -3895.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039004, name = "GADGET_STATE_CHANGE_39004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39004", action = "action_EVENT_GADGET_STATE_CHANGE_39004", trigger_count = 0 },
	{ config_id = 1039005, name = "GADGET_STATE_CHANGE_39005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39005", action = "action_EVENT_GADGET_STATE_CHANGE_39005", trigger_count = 0 },
	{ config_id = 1039006, name = "GADGET_STATE_CHANGE_39006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39006", action = "action_EVENT_GADGET_STATE_CHANGE_39006", trigger_count = 0 },
	{ config_id = 1039007, name = "VARIABLE_CHANGE_39007", event = EventType.EVENT_VARIABLE_CHANGE, source = "total_count", condition = "condition_EVENT_VARIABLE_CHANGE_39007", action = "action_EVENT_VARIABLE_CHANGE_39007", trigger_count = 0 },
	{ config_id = 1039008, name = "VARIABLE_CHANGE_39008", event = EventType.EVENT_VARIABLE_CHANGE, source = "total_count", condition = "condition_EVENT_VARIABLE_CHANGE_39008", action = "action_EVENT_VARIABLE_CHANGE_39008", trigger_count = 0 },
	{ config_id = 1039009, name = "VARIABLE_CHANGE_39009", event = EventType.EVENT_VARIABLE_CHANGE, source = "total_count", condition = "condition_EVENT_VARIABLE_CHANGE_39009", action = "action_EVENT_VARIABLE_CHANGE_39009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "total_count", value = 0, no_refresh = false }
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
		gadgets = { 39001, 39002, 39003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_39004", "GADGET_STATE_CHANGE_39005", "GADGET_STATE_CHANGE_39006", "VARIABLE_CHANGE_39007", "VARIABLE_CHANGE_39008", "VARIABLE_CHANGE_39009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39004(context, evt)
	if 39001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39004(context, evt)
	-- 针对当前group内变量名为 "total_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72809_DIAOCHAYINGDI") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39005(context, evt)
	if 39002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39005(context, evt)
	-- 针对当前group内变量名为 "total_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72809_DIAOCHAYINGDI") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39006(context, evt)
	if 39003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39006(context, evt)
	-- 针对当前group内变量名为 "total_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "total_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72809_DIAOCHAYINGDI") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_39007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"total_count"为1
	if ScriptLib.GetGroupVariableValue(context, "total_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2464.452,y=203.52,z=-3896.599}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110368, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_39008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"total_count"为2
	if ScriptLib.GetGroupVariableValue(context, "total_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2464.452,y=203.52,z=-3896.599}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110369, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_39009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"total_count"为3
	if ScriptLib.GetGroupVariableValue(context, "total_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2464.452,y=203.52,z=-3896.599}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110370, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end