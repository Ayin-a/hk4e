-- 基础信息
local base_info = {
	group_id = 199003168
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
	{ config_id = 168001, gadget_id = 70360001, pos = { x = -763.636, y = 145.468, z = 23.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, worktop_config = { init_options = { 418 } }, area_id = 403 },
	{ config_id = 168004, gadget_id = 70360001, pos = { x = -790.436, y = 120.000, z = 59.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, worktop_config = { init_options = { 418 } }, area_id = 403 },
	{ config_id = 168005, gadget_id = 70360001, pos = { x = -742.717, y = 171.686, z = 31.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, worktop_config = { init_options = { 418 } }, area_id = 403 },
	{ config_id = 168007, gadget_id = 70360001, pos = { x = -725.534, y = 205.620, z = -65.601 }, rot = { x = 0.000, y = 86.409, z = 0.000 }, level = 1, isOneoff = true, worktop_config = { init_options = { 418 } }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168002, name = "SELECT_OPTION_168002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168002", action = "action_EVENT_SELECT_OPTION_168002", trigger_count = 0 },
	{ config_id = 1168003, name = "SELECT_OPTION_168003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168003", action = "action_EVENT_SELECT_OPTION_168003", trigger_count = 0 },
	{ config_id = 1168006, name = "SELECT_OPTION_168006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168006", action = "action_EVENT_SELECT_OPTION_168006", trigger_count = 0 },
	{ config_id = 1168008, name = "SELECT_OPTION_168008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168008", action = "action_EVENT_SELECT_OPTION_168008", trigger_count = 0 },
	{ config_id = 1168009, name = "GROUP_LOAD_168009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_168009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 168001, 168004, 168005, 168007 },
		regions = { },
		triggers = { "SELECT_OPTION_168002", "SELECT_OPTION_168003", "SELECT_OPTION_168006", "SELECT_OPTION_168008", "GROUP_LOAD_168009" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_168002(context, evt)
	-- 判断是gadgetid 168001 option_id 418
	if 168001 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168002(context, evt)
	-- 调用提示id为 1111354 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 199003168 ；指定config：168001；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003168, 168001, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_168003(context, evt)
	-- 判断是gadgetid 168004 option_id 418
	if 168004 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168003(context, evt)
	-- 调用提示id为 1111354 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 199003168 ；指定config：168004；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003168, 168004, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_168006(context, evt)
	-- 判断是gadgetid 168005 option_id 418
	if 168005 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168006(context, evt)
	-- 调用提示id为 1111354 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 199003168 ；指定config：168005；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003168, 168005, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_168008(context, evt)
	-- 判断是gadgetid 168007 option_id 418
	if 168007 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168008(context, evt)
	-- 调用提示id为 1111354 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 199003168 ；指定config：168007；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003168, 168007, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_168009(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003171) == 1 then
	
	 ScriptLib.RefreshGroup(context, { group_id = 199003168, suite = 2 })
	end
	
	return 0
end