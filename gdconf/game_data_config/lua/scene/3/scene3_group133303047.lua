-- 基础信息
local base_info = {
	group_id = 133303047
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
	{ config_id = 47001, gadget_id = 70360089, pos = { x = -1088.095, y = 265.111, z = 3321.305 }, rot = { x = 0.000, y = 313.902, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 47002, gadget_id = 70360286, pos = { x = -1087.974, y = 265.063, z = 3321.099 }, rot = { x = 0.000, y = 313.902, z = 0.000 }, level = 30, worktop_config = { is_persistent = true, init_options = { 99 } }, area_id = 23 },
	{ config_id = 47003, gadget_id = 70211121, pos = { x = -1087.770, y = 264.851, z = 3320.979 }, rot = { x = 0.000, y = 313.902, z = 0.000 }, level = 26, chest_drop_id = 2004700, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047004, name = "VARIABLE_CHANGE_47004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47004", action = "action_EVENT_VARIABLE_CHANGE_47004" },
	{ config_id = 1047005, name = "SELECT_OPTION_47005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47005", action = "action_EVENT_SELECT_OPTION_47005" },
	{ config_id = 1047006, name = "VARIABLE_CHANGE_47006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47006", action = "action_EVENT_VARIABLE_CHANGE_47006" },
	{ config_id = 1047007, name = "VARIABLE_CHANGE_47007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47007", action = "action_EVENT_VARIABLE_CHANGE_47007" },
	{ config_id = 1047008, name = "VARIABLE_CHANGE_47008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47008", action = "action_EVENT_VARIABLE_CHANGE_47008" },
	{ config_id = 1047009, name = "VARIABLE_CHANGE_47009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47009", action = "action_EVENT_VARIABLE_CHANGE_47009" },
	{ config_id = 1047010, name = "VARIABLE_CHANGE_47010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47010", action = "action_EVENT_VARIABLE_CHANGE_47010" },
	{ config_id = 1047011, name = "VARIABLE_CHANGE_47011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47011", action = "action_EVENT_VARIABLE_CHANGE_47011" },
	{ config_id = 1047012, name = "VARIABLE_CHANGE_47012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47012", action = "action_EVENT_VARIABLE_CHANGE_47012" },
	{ config_id = 1047013, name = "VARIABLE_CHANGE_47013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47013", action = "action_EVENT_VARIABLE_CHANGE_47013" },
	{ config_id = 1047014, name = "GROUP_LOAD_47014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_47014", action = "action_EVENT_GROUP_LOAD_47014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "finished", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_47004", "VARIABLE_CHANGE_47006", "VARIABLE_CHANGE_47007", "VARIABLE_CHANGE_47008", "VARIABLE_CHANGE_47009", "VARIABLE_CHANGE_47010", "VARIABLE_CHANGE_47011", "VARIABLE_CHANGE_47012", "VARIABLE_CHANGE_47013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 47001, 47002 },
		regions = { },
		triggers = { "SELECT_OPTION_47005", "GROUP_LOAD_47014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 47003 },
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
function condition_EVENT_VARIABLE_CHANGE_47004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为1
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47004(context, evt)
	-- 调用提示id为 1111383 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111383) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47005(context, evt)
	-- 判断是gadgetid 47002 option_id 99
	if 47002 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47005(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306404_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303047, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303047, EntityType.GADGET, 47002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303047, EntityType.GADGET, 47001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为2
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47006(context, evt)
	-- 调用提示id为 1111384 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111384) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为3
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47007(context, evt)
	-- 调用提示id为 1111385 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111385) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为4
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47008(context, evt)
	-- 调用提示id为 1111386 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111386) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为5
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47009(context, evt)
	-- 调用提示id为 1111387 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111387) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为6
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47010(context, evt)
	-- 调用提示id为 1111388 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为7
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47011(context, evt)
	-- 调用提示id为 1111389 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为8
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47012(context, evt)
	-- 调用提示id为 1111390 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestNum"为9
	if ScriptLib.GetGroupVariableValue(context, "chestNum") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47013(context, evt)
	-- 调用提示id为 1111391 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_47014(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_47014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306404_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303047, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303047, EntityType.GADGET, 47002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303047, EntityType.GADGET, 47001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end