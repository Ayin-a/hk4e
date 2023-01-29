-- 基础信息
local base_info = {
	group_id = 133317040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40006, monster_id = 21010401, pos = { x = 884.349, y = 241.956, z = 6051.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 40007, monster_id = 21010401, pos = { x = 881.300, y = 241.187, z = 6053.931 }, rot = { x = 0.000, y = 48.663, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 },
	{ config_id = 40008, monster_id = 21010401, pos = { x = 881.856, y = 242.854, z = 6050.755 }, rot = { x = 0.000, y = 27.632, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40001, gadget_id = 70350467, pos = { x = 876.270, y = 200.680, z = 6071.758 }, rot = { x = 0.000, y = 94.641, z = 0.000 }, level = 32, is_use_point_array = true, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040002, name = "GADGET_CREATE_40002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40002", action = "action_EVENT_GADGET_CREATE_40002", trigger_count = 0 },
	{ config_id = 1040003, name = "PLATFORM_ARRIVAL_40003", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_40003", action = "action_EVENT_PLATFORM_ARRIVAL_40003", trigger_count = 0 },
	{ config_id = 1040004, name = "PLATFORM_ARRIVAL_40004", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_40004", action = "action_EVENT_PLATFORM_ARRIVAL_40004", trigger_count = 0 },
	{ config_id = 1040005, name = "ANY_MONSTER_DIE_40005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40005", action = "action_EVENT_ANY_MONSTER_DIE_40005", trigger_count = 0 },
	{ config_id = 1040009, name = "VARIABLE_CHANGE_40009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40009", action = "action_EVENT_VARIABLE_CHANGE_40009" },
	{ config_id = 1040010, name = "PLATFORM_ARRIVAL_40010", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_40010", action = "action_EVENT_PLATFORM_ARRIVAL_40010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "obstructQ", value = 0, no_refresh = true }
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
		gadgets = { 40001 },
		regions = { },
		triggers = { "GADGET_CREATE_40002", "PLATFORM_ARRIVAL_40003", "PLATFORM_ARRIVAL_40004", "ANY_MONSTER_DIE_40005", "PLATFORM_ARRIVAL_40010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 40006, 40007, 40008 },
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
		triggers = { "VARIABLE_CHANGE_40009" },
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

-- 创建指定group的指定suite内所有内容
function TLA_add_groupsuite(context, evt, group_id, suite_id)
	-- 添加suitesuite_id的新内容
	    ScriptLib.AddExtraGroupSuite(context, group_id, suite_id)
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_40002(context, evt)
	if 40001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 40001, 331700009, {1,2,3,4,5,6,7,8,9,10,11,12,13,14}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_40003(context, evt)
	-- 判断是gadgetid 为 40001的移动平台，是否到达了331700009 的点集中的 14 点
	
	if 40001 ~= evt.param1 then
	  return false
	end
	
	if 331700009 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_40003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317040, 2)
	
	-- 调用提示id为 1000230014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000230014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_40004(context, evt)
	-- 判断是gadgetid 为 40001的移动平台，是否到达了331700009 的点集中的 19 点
	
	if 40001 ~= evt.param1 then
	  return false
	end
	
	if 331700009 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_40004(context, evt)
	if TLC_check_variable_by_group(context, evt, "obstructQ", 133317065, 1) then
		TLA_set_platform_pointarray(context, evt, 40001, 331700009, {20,21,22}, 0, false)
	else
		TLA_active_reminder_ui(context, evt, 1000230016)
		
		TLA_add_groupsuite(context, evt, 133317040, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133317040) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 40001, 331700009, {15,16,17,18,19}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"obstructQ"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "obstructQ", 133317040) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 40001, 331700009, {20,21,22}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_40010(context, evt)
	-- 判断是gadgetid 为 40001的移动平台，是否到达了331700009 的点集中的 22 点
	
	if 40001 ~= evt.param1 then
	  return false
	end
	
	if 331700009 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_40010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323109") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end