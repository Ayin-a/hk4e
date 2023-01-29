-- 基础信息
local base_info = {
	group_id = 133317032
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
	{ config_id = 32001, gadget_id = 70350467, pos = { x = 679.224, y = 232.829, z = 6023.175 }, rot = { x = 0.000, y = 38.577, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032002, name = "QUEST_FINISH_32002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_32002", action = "action_EVENT_QUEST_FINISH_32002", trigger_count = 0 },
	{ config_id = 1032003, name = "PLATFORM_ARRIVAL_32003", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_32003", action = "action_EVENT_PLATFORM_ARRIVAL_32003", trigger_count = 0 },
	{ config_id = 1032004, name = "PLATFORM_ARRIVAL_32004", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_32004", action = "action_EVENT_PLATFORM_ARRIVAL_32004", trigger_count = 0 },
	{ config_id = 1032005, name = "VARIABLE_CHANGE_32005", event = EventType.EVENT_VARIABLE_CHANGE, source = "fost1", condition = "condition_EVENT_VARIABLE_CHANGE_32005", action = "action_EVENT_VARIABLE_CHANGE_32005", trigger_count = 0 },
	{ config_id = 1032006, name = "VARIABLE_CHANGE_32006", event = EventType.EVENT_VARIABLE_CHANGE, source = "fost2", condition = "condition_EVENT_VARIABLE_CHANGE_32006", action = "action_EVENT_VARIABLE_CHANGE_32006", trigger_count = 0 },
	{ config_id = 1032007, name = "PLATFORM_ARRIVAL_32007", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_32007", action = "action_EVENT_PLATFORM_ARRIVAL_32007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fost1", value = 0, no_refresh = true },
	{ config_id = 2, name = "fost2", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_32002", "PLATFORM_ARRIVAL_32003", "PLATFORM_ARRIVAL_32004", "VARIABLE_CHANGE_32005", "VARIABLE_CHANGE_32006", "PLATFORM_ARRIVAL_32007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 设置指定移动平台点阵
function TLA_set_platform_pointarray(context, evt, config_id, point_array_id, point_id_list, route_type, turn_mode)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = route_type, turn_mode = turn_mode}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, config_id, point_array_id, point_id_list, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	return 0
end

-- 检测指定group的变量为指定值
function TLC_check_variable_by_group(context, evt, variable, group_id, value)
	-- 判断变量variable为value
	if ScriptLib.GetGroupVariableValueByGroup(context, variable, group_id) ~= value then
			return false
	end
	return true
end

-- 检测variable为预设值
function TLC_check_variable_equal_to(context, evt, variable, value)
	-- 判断变量variable为value
	if ScriptLib.GetGroupVariableValue(context, variable) ~= value then
			return false
	end
	return true
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_32002(context, evt)
	--检查ID为7323101的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7323101 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_32002(context, evt)
	ScriptLib.CreateGadget(context, {config_id=32001})
	
	TLA_set_platform_pointarray(context, evt, 32001, 331700008, {2}, 0, false)
	
	if TLC_check_variable_by_group(context, evt, "fost1", 133317032, 1) and TLC_check_variable_by_group(context, evt, "fost2", 133317032, 1) then
		TLA_active_reminder_ui(context, evt, 1000230018)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_32003(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了331700008 的点集中的 2 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 331700008 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_32003(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7323116")
	
	if TLC_check_variable_by_group(context, evt, "fost1", 133317032, 1) then
		TLA_set_platform_pointarray(context, evt, 32001, 331700008, {3}, 0, false)
	else
		TLA_active_reminder_ui(context, evt, 1000230000)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_32004(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了331700008 的点集中的 3 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 331700008 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_32004(context, evt)
	if TLC_check_variable_equal_to(context, evt, "fost2", 1) then
		TLA_set_platform_pointarray(context, evt, 32001, 331700008, {4}, 0, false)
	else
		TLA_active_reminder_ui(context, evt, 1000230004)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fost1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "fost1", 133317032) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 32001, 331700008, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323116") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fost2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "fost2", 133317032) ~= 1 then
			return false
	end
	
	-- 判断变量"fost1"为1
	if ScriptLib.GetGroupVariableValue(context, "fost1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 32001, 331700008, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_32007(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了331700008 的点集中的 4 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 331700008 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_32007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end