-- 基础信息
local base_info = {
	group_id = 133102194
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
	{ config_id = 194001, gadget_id = 70300118, pos = { x = 1313.467, y = 200.009, z = 207.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 194002, gadget_id = 70300118, pos = { x = 1307.350, y = 200.028, z = 209.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 194003, gadget_id = 70300118, pos = { x = 1302.256, y = 200.019, z = 195.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 194004, gadget_id = 70360001, pos = { x = 1313.466, y = 200.018, z = 207.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 194005, gadget_id = 70360001, pos = { x = 1307.355, y = 200.063, z = 209.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 194006, gadget_id = 70360001, pos = { x = 1302.258, y = 200.035, z = 195.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 194010, gadget_id = 71700288, pos = { x = 1307.360, y = 199.988, z = 209.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 194011, gadget_id = 71700288, pos = { x = 1313.474, y = 199.985, z = 207.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 },
	{ config_id = 194012, gadget_id = 71700288, pos = { x = 1302.226, y = 199.985, z = 195.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194007, name = "GADGET_CREATE_194007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194007", action = "action_EVENT_GADGET_CREATE_194007", trigger_count = 0 },
	{ config_id = 1194008, name = "SELECT_OPTION_194008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194008", action = "action_EVENT_SELECT_OPTION_194008", trigger_count = 0 },
	{ config_id = 1194009, name = "GADGET_CREATE_194009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194009", action = "action_EVENT_GADGET_CREATE_194009", trigger_count = 0 },
	{ config_id = 1194013, name = "SELECT_OPTION_194013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194013", action = "action_EVENT_SELECT_OPTION_194013", trigger_count = 0 },
	{ config_id = 1194014, name = "GADGET_CREATE_194014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194014", action = "action_EVENT_GADGET_CREATE_194014", trigger_count = 0 },
	{ config_id = 1194015, name = "SELECT_OPTION_194015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194015", action = "action_EVENT_SELECT_OPTION_194015", trigger_count = 0 },
	{ config_id = 1194016, name = "VARIABLE_CHANGE_194016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_194016", action = "action_EVENT_VARIABLE_CHANGE_194016" },
	{ config_id = 1194017, name = "VARIABLE_CHANGE_194017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_194017", action = "action_EVENT_VARIABLE_CHANGE_194017" },
	{ config_id = 1194018, name = "VARIABLE_CHANGE_194018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_194018", action = "action_EVENT_VARIABLE_CHANGE_194018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "check", value = 0, no_refresh = false }
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
		gadgets = { 194001, 194002, 194003, 194004, 194005, 194006, 194010, 194011, 194012 },
		regions = { },
		triggers = { "GADGET_CREATE_194007", "SELECT_OPTION_194008", "GADGET_CREATE_194009", "SELECT_OPTION_194013", "GADGET_CREATE_194014", "SELECT_OPTION_194015", "VARIABLE_CHANGE_194016", "VARIABLE_CHANGE_194017", "VARIABLE_CHANGE_194018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_194007(context, evt)
	if 194004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_194007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194008(context, evt)
	-- 判断是gadgetid 194004 option_id 68
	if 194004 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194008(context, evt)
	-- 删除指定group： 133102194 ；指定config：194004；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102194, 194004, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "check" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "check", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_194009(context, evt)
	if 194005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_194009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194013(context, evt)
	-- 判断是gadgetid 194005 option_id 68
	if 194005 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194013(context, evt)
	-- 删除指定group： 133102194 ；指定config：194005；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102194, 194005, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "check" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "check", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_194014(context, evt)
	if 194006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_194014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194015(context, evt)
	-- 判断是gadgetid 194006 option_id 68
	if 194006 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194015(context, evt)
	-- 删除指定group： 133102194 ；指定config：194006；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102194, 194006, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133102194, EntityType.GADGET, 194012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "check" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "check", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_194016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"check"为1
	if ScriptLib.GetGroupVariableValue(context, "check") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194016(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1302.505,y=200,z=201.1777}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110427, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_194017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"check"为2
	if ScriptLib.GetGroupVariableValue(context, "check") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194017(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1302.365,y=200,z=200.7323}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110428, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_194018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"check"为3
	if ScriptLib.GetGroupVariableValue(context, "check") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194018(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1303.939,y=200,z=200.5464}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110429, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331021941") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end