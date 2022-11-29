-- 基础信息
local base_info = {
	group_id = 133304255
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
	{ config_id = 255001, gadget_id = 70230110, pos = { x = -1333.988, y = 185.771, z = 2882.162 }, rot = { x = 292.778, y = 54.845, z = 52.374 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 255002, gadget_id = 70230107, pos = { x = -1347.977, y = 187.060, z = 2906.940 }, rot = { x = 337.961, y = 257.388, z = 143.505 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 255004, gadget_id = 70230108, pos = { x = -1359.018, y = 193.615, z = 2916.861 }, rot = { x = 8.888, y = 188.322, z = 4.948 }, level = 30, persistent = true, area_id = 21 },
	-- 挂按钮用1
	{ config_id = 255006, gadget_id = 70360001, pos = { x = -1334.172, y = 184.935, z = 2880.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 挂按钮用2
	{ config_id = 255007, gadget_id = 70360001, pos = { x = -1347.634, y = 185.574, z = 2905.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 挂按钮用3
	{ config_id = 255008, gadget_id = 70360001, pos = { x = -1361.069, y = 192.396, z = 2916.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 任务回滚保底1
	{ config_id = 255026, gadget_id = 70360001, pos = { x = -1356.989, y = 183.770, z = 2904.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	-- 任务回滚保底2
	{ config_id = 255027, gadget_id = 70360001, pos = { x = -1357.829, y = 184.059, z = 2905.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	-- 任务回滚保底3
	{ config_id = 255028, gadget_id = 70360001, pos = { x = -1358.739, y = 184.264, z = 2906.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 255029, gadget_id = 70360001, pos = { x = -1332.776, y = 184.843, z = 2881.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1255003, name = "GADGET_CREATE_255003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_255003", action = "action_EVENT_GADGET_CREATE_255003", trigger_count = 0 },
	{ config_id = 1255005, name = "GADGET_CREATE_255005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_255005", action = "action_EVENT_GADGET_CREATE_255005", trigger_count = 0 },
	{ config_id = 1255009, name = "GADGET_CREATE_255009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_255009", action = "action_EVENT_GADGET_CREATE_255009", trigger_count = 0 },
	-- 保底删除按钮1
	{ config_id = 1255010, name = "GROUP_LOAD_255010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255010", action = "action_EVENT_GROUP_LOAD_255010", trigger_count = 0 },
	{ config_id = 1255011, name = "SELECT_OPTION_255011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_255011", action = "action_EVENT_SELECT_OPTION_255011", trigger_count = 0 },
	{ config_id = 1255012, name = "SELECT_OPTION_255012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_255012", action = "action_EVENT_SELECT_OPTION_255012", trigger_count = 0 },
	{ config_id = 1255013, name = "SELECT_OPTION_255013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_255013", action = "action_EVENT_SELECT_OPTION_255013", trigger_count = 0 },
	-- 加载出第一次交互的suite
	{ config_id = 1255014, name = "GROUP_REFRESH_255014", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_255014", trigger_count = 0 },
	-- 第一激活1号涂鸦
	{ config_id = 1255015, name = "GADGET_STATE_CHANGE_255015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255015", action = "action_EVENT_GADGET_STATE_CHANGE_255015", trigger_count = 0 },
	-- 第一激活2号涂鸦
	{ config_id = 1255016, name = "GADGET_STATE_CHANGE_255016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255016", action = "action_EVENT_GADGET_STATE_CHANGE_255016", trigger_count = 0 },
	-- 第一激活3号涂鸦
	{ config_id = 1255017, name = "GADGET_STATE_CHANGE_255017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255017", action = "action_EVENT_GADGET_STATE_CHANGE_255017", trigger_count = 0 },
	-- 第二激活1号涂鸦
	{ config_id = 1255018, name = "GADGET_STATE_CHANGE_255018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255018", action = "action_EVENT_GADGET_STATE_CHANGE_255018", trigger_count = 0 },
	-- 第二激活2号涂鸦
	{ config_id = 1255019, name = "GADGET_STATE_CHANGE_255019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255019", action = "action_EVENT_GADGET_STATE_CHANGE_255019", trigger_count = 0 },
	-- 第二激活3号涂鸦
	{ config_id = 1255020, name = "GADGET_STATE_CHANGE_255020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255020", action = "action_EVENT_GADGET_STATE_CHANGE_255020", trigger_count = 0 },
	-- 第三激活1号涂鸦
	{ config_id = 1255021, name = "GADGET_STATE_CHANGE_255021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255021", action = "action_EVENT_GADGET_STATE_CHANGE_255021", trigger_count = 0 },
	-- 第三激活2号涂鸦
	{ config_id = 1255022, name = "GADGET_STATE_CHANGE_255022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255022", action = "action_EVENT_GADGET_STATE_CHANGE_255022", trigger_count = 0 },
	-- 第三激活3号涂鸦
	{ config_id = 1255023, name = "GADGET_STATE_CHANGE_255023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255023", action = "action_EVENT_GADGET_STATE_CHANGE_255023", trigger_count = 0 },
	-- 保底删除按钮2
	{ config_id = 1255024, name = "GROUP_LOAD_255024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255024", action = "action_EVENT_GROUP_LOAD_255024", trigger_count = 0 },
	-- 保底删除按钮3
	{ config_id = 1255025, name = "GROUP_LOAD_255025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255025", action = "action_EVENT_GROUP_LOAD_255025", trigger_count = 0 },
	-- 保底刷suite1
	{ config_id = 1255030, name = "GROUP_LOAD_255030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255030", action = "action_EVENT_GROUP_LOAD_255030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "optiona", value = 0, no_refresh = true },
	{ config_id = 2, name = "optionb", value = 0, no_refresh = true },
	{ config_id = 3, name = "optionc", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
		gadgets = { 255001, 255002, 255004, 255006, 255007, 255008, 255026, 255027, 255028 },
		regions = { },
		triggers = { "GADGET_CREATE_255003", "GADGET_CREATE_255005", "GADGET_CREATE_255009", "GROUP_LOAD_255010", "SELECT_OPTION_255011", "SELECT_OPTION_255012", "SELECT_OPTION_255013", "GROUP_REFRESH_255014", "GROUP_LOAD_255024", "GROUP_LOAD_255025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_255015", "GADGET_STATE_CHANGE_255016", "GADGET_STATE_CHANGE_255017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_255018", "GADGET_STATE_CHANGE_255019", "GADGET_STATE_CHANGE_255020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_255021", "GADGET_STATE_CHANGE_255022", "GADGET_STATE_CHANGE_255023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 255029 },
		regions = { },
		triggers = { "GROUP_LOAD_255030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_255003(context, evt)
	if 255007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"optionb"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "optionb", 133304255) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_255003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304255, 255007, {75}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_255005(context, evt)
	if 255008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"optionc"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "optionc", 133304255) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_255005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304255, 255008, {75}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_255009(context, evt)
	if 255006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"optiona"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "optiona", 133304255) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_255009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304255, 255006, {75}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255010(context, evt)
	-- 判断变量"optiona"为1
	if ScriptLib.GetGroupVariableValue(context, "optiona") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255010(context, evt)
	-- 删除指定group： 133304255 ；指定config：255006；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255006, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_255011(context, evt)
	-- 判断是gadgetid 255006 option_id 75
	if 255006 ~= evt.param1 then
		return false	
	end
	
	if 75 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_255011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7306215_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 255026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 7306201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 255001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304255 ；指定config：255006；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255006, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "optiona" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "optiona", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_255012(context, evt)
	-- 判断是gadgetid 255007 option_id 75
	if 255007 ~= evt.param1 then
		return false	
	end
	
	if 75 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_255012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7306216_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 255027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 7306202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 255002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304255 ；指定config：255007；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255007, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "optionb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "optionb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_255013(context, evt)
	-- 判断是gadgetid 255008 option_id 75
	if 255008 ~= evt.param1 then
		return false	
	end
	
	if 75 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_255013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7306217_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 255028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 7306203 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306203) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 255004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304255 ；指定config：255008；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255008, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "optionc" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "optionc", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_255014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255015(context, evt)
	if 255001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255015(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 371001
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 371001, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304549, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255016(context, evt)
	if 255002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255016(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 371002
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 371002, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304550, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255017(context, evt)
	if 255004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255017(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 371003
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 371003, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304551, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255018(context, evt)
	if 255001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255018(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 371001
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 371001, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304549, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255019(context, evt)
	if 255002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255019(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 371002
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 371002, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304550, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255020(context, evt)
	if 255004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255020(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 371003
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 371003, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304551, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255021(context, evt)
	if 255001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255021(context, evt)
	-- 将本组内变量名为 "third" 的变量设置为 371001
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "third", 371001, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304549, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255022(context, evt)
	if 255002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255022(context, evt)
	-- 将本组内变量名为 "third" 的变量设置为 371002
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "third", 371002, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304550, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255023(context, evt)
	if 255004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255023(context, evt)
	-- 将本组内变量名为 "third" 的变量设置为 371003
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "third", 371003, 133304371) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304255, 4)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304551, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255024(context, evt)
	-- 判断变量"optionb"为1
	if ScriptLib.GetGroupVariableValue(context, "optionb") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255024(context, evt)
	-- 删除指定group： 133304255 ；指定config：255007；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255007, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255025(context, evt)
	-- 判断变量"optionc"为1
	if ScriptLib.GetGroupVariableValue(context, "optionc") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255025(context, evt)
	-- 删除指定group： 133304255 ；指定config：255008；物件身上指定option：75；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304255, 255008, 75) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255030(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306205)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304255, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end