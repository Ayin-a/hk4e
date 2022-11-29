-- 基础信息
local base_info = {
	group_id = 133104672
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
	{ config_id = 672001, gadget_id = 70210102, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672002, gadget_id = 70210102, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672003, gadget_id = 70210102, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672004, gadget_id = 70210102, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672005, gadget_id = 70210102, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672006, gadget_id = 70210102, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672007, gadget_id = 70210102, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672008, gadget_id = 70210102, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672009, gadget_id = 70210102, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050163, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672010, gadget_id = 70210102, pos = { x = 162.292, y = 201.622, z = 689.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672011, gadget_id = 70210102, pos = { x = 153.976, y = 201.622, z = 732.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 672012, gadget_id = 70210102, pos = { x = 115.400, y = 205.755, z = 699.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1001905, drop_count = 1, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1672013, name = "GADGET_STATE_CHANGE_672013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672013", action = "action_EVENT_GADGET_STATE_CHANGE_672013" },
	{ config_id = 1672014, name = "GADGET_STATE_CHANGE_672014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672014", action = "action_EVENT_GADGET_STATE_CHANGE_672014" },
	{ config_id = 1672015, name = "GADGET_STATE_CHANGE_672015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672015", action = "action_EVENT_GADGET_STATE_CHANGE_672015" },
	{ config_id = 1672016, name = "GADGET_STATE_CHANGE_672016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672016", action = "action_EVENT_GADGET_STATE_CHANGE_672016" },
	{ config_id = 1672017, name = "GADGET_STATE_CHANGE_672017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672017", action = "action_EVENT_GADGET_STATE_CHANGE_672017" },
	{ config_id = 1672018, name = "GADGET_STATE_CHANGE_672018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672018", action = "action_EVENT_GADGET_STATE_CHANGE_672018" },
	{ config_id = 1672019, name = "GADGET_STATE_CHANGE_672019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672019", action = "action_EVENT_GADGET_STATE_CHANGE_672019" },
	{ config_id = 1672020, name = "GADGET_STATE_CHANGE_672020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672020", action = "action_EVENT_GADGET_STATE_CHANGE_672020" },
	{ config_id = 1672021, name = "GADGET_STATE_CHANGE_672021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672021", action = "action_EVENT_GADGET_STATE_CHANGE_672021" },
	{ config_id = 1672022, name = "GADGET_STATE_CHANGE_672022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672022", action = "action_EVENT_GADGET_STATE_CHANGE_672022" },
	{ config_id = 1672023, name = "GADGET_STATE_CHANGE_672023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672023", action = "action_EVENT_GADGET_STATE_CHANGE_672023" },
	{ config_id = 1672024, name = "GADGET_STATE_CHANGE_672024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672024", action = "action_EVENT_GADGET_STATE_CHANGE_672024" },
	{ config_id = 1672025, name = "GROUP_REFRESH_672025", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672025", action = "action_EVENT_GROUP_REFRESH_672025" },
	{ config_id = 1672026, name = "GROUP_REFRESH_672026", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672026", action = "action_EVENT_GROUP_REFRESH_672026" },
	{ config_id = 1672027, name = "GROUP_REFRESH_672027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672027", action = "action_EVENT_GROUP_REFRESH_672027" },
	{ config_id = 1672028, name = "GROUP_REFRESH_672028", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672028", action = "action_EVENT_GROUP_REFRESH_672028" },
	{ config_id = 1672029, name = "GROUP_REFRESH_672029", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672029", action = "action_EVENT_GROUP_REFRESH_672029" },
	{ config_id = 1672030, name = "GROUP_REFRESH_672030", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672030", action = "action_EVENT_GROUP_REFRESH_672030" },
	{ config_id = 1672031, name = "GROUP_REFRESH_672031", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_672031", action = "action_EVENT_GROUP_REFRESH_672031" }
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
	suite = 9,
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
		gadgets = { 672001, 672002, 672003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672013", "GADGET_STATE_CHANGE_672014", "GADGET_STATE_CHANGE_672015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 672004, 672005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672016", "GADGET_STATE_CHANGE_672017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 672006, 672007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672018", "GADGET_STATE_CHANGE_672019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 672008, 672009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672020", "GADGET_STATE_CHANGE_672021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 672010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672022" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 672011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672023" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 672012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_672024" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_672025", "GROUP_REFRESH_672026", "GROUP_REFRESH_672027", "GROUP_REFRESH_672028", "GROUP_REFRESH_672029", "GROUP_REFRESH_672030", "GROUP_REFRESH_672031" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
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
function condition_EVENT_GADGET_STATE_CHANGE_672013(context, evt)
	if 672001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672013(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672014(context, evt)
	if 672002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672014(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672015(context, evt)
	if 672003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672015(context, evt)
	-- 调用提示id为 31040702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672016(context, evt)
	if 672004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672016(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672017(context, evt)
	if 672005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672017(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672018(context, evt)
	if 672006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672018(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672019(context, evt)
	if 672007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672019(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672020(context, evt)
	if 672008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672020(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672021(context, evt)
	if 672009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672021(context, evt)
	-- 调用提示id为 31040706 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040706) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672022(context, evt)
	if 672010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672022(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672023(context, evt)
	if 672011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672023(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672024(context, evt)
	if 672012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672024(context, evt)
	-- 调用提示id为 31040703 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672025(context, evt)
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672026(context, evt)
	-- 判断变量"stone_progress"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672027(context, evt)
	-- 判断变量"stone_progress"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672028(context, evt)
	-- 判断变量"stone_progress"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672029(context, evt)
	-- 判断变量"stone_progress"为6
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672029(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672030(context, evt)
	-- 判断变量"stone_progress"为7
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_672031(context, evt)
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stone_progress", 133104629) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_672031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104672, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end