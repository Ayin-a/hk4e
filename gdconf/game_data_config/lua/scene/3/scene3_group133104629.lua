-- 基础信息
local base_info = {
	group_id = 133104629
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
	{ config_id = 629001, gadget_id = 70210101, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629002, gadget_id = 70210101, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629003, gadget_id = 70210101, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629004, gadget_id = 70210101, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629005, gadget_id = 70210101, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629006, gadget_id = 70210101, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629007, gadget_id = 70210101, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629008, gadget_id = 70210101, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629009, gadget_id = 70210101, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629010, gadget_id = 70210101, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629011, gadget_id = 70210101, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 629012, gadget_id = 70210101, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1629013, name = "GADGET_STATE_CHANGE_629013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629013", action = "action_EVENT_GADGET_STATE_CHANGE_629013" },
	{ config_id = 1629014, name = "GADGET_STATE_CHANGE_629014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629014", action = "action_EVENT_GADGET_STATE_CHANGE_629014" },
	{ config_id = 1629015, name = "GADGET_STATE_CHANGE_629015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629015", action = "action_EVENT_GADGET_STATE_CHANGE_629015" },
	{ config_id = 1629016, name = "GADGET_STATE_CHANGE_629016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629016", action = "action_EVENT_GADGET_STATE_CHANGE_629016" },
	{ config_id = 1629017, name = "GADGET_STATE_CHANGE_629017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629017", action = "action_EVENT_GADGET_STATE_CHANGE_629017" },
	{ config_id = 1629018, name = "GADGET_STATE_CHANGE_629018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629018", action = "action_EVENT_GADGET_STATE_CHANGE_629018" },
	{ config_id = 1629019, name = "GADGET_STATE_CHANGE_629019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629019", action = "action_EVENT_GADGET_STATE_CHANGE_629019" },
	{ config_id = 1629020, name = "GADGET_STATE_CHANGE_629020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629020", action = "action_EVENT_GADGET_STATE_CHANGE_629020" },
	{ config_id = 1629021, name = "GADGET_STATE_CHANGE_629021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629021", action = "action_EVENT_GADGET_STATE_CHANGE_629021" },
	{ config_id = 1629022, name = "GADGET_STATE_CHANGE_629022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629022", action = "action_EVENT_GADGET_STATE_CHANGE_629022" },
	{ config_id = 1629023, name = "GADGET_STATE_CHANGE_629023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629023", action = "action_EVENT_GADGET_STATE_CHANGE_629023" },
	{ config_id = 1629024, name = "GADGET_STATE_CHANGE_629024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_629024", action = "action_EVENT_GADGET_STATE_CHANGE_629024" }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone_progress", value = 1, no_refresh = true }
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
		gadgets = { 629001, 629002, 629003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629013", "GADGET_STATE_CHANGE_629014", "GADGET_STATE_CHANGE_629015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 629004, 629005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629016", "GADGET_STATE_CHANGE_629017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 629006, 629007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629018", "GADGET_STATE_CHANGE_629019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 629008, 629009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629020", "GADGET_STATE_CHANGE_629021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 629010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629022" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 629011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629023" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 629012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_629024" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
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
function condition_EVENT_GADGET_STATE_CHANGE_629013(context, evt)
	if 629001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629013(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629014(context, evt)
	if 629002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629014(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629015(context, evt)
	if 629003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629015(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629016(context, evt)
	if 629004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629016(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629017(context, evt)
	if 629005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629017(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629018(context, evt)
	if 629006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629018(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 7
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629019(context, evt)
	if 629007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629019(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629020(context, evt)
	if 629008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629020(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 7
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629021(context, evt)
	if 629009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629021(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104629, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone_progress", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629022(context, evt)
	if 629010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629022(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629023(context, evt)
	if 629011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629023(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_629024(context, evt)
	if 629012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_629024(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end