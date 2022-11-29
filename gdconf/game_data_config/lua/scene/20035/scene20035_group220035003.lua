-- 基础信息
local base_info = {
	group_id = 220035003
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
	{ config_id = 3002, gadget_id = 70900202, pos = { x = 343.352, y = -11.242, z = 269.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70360002, pos = { x = 349.700, y = -12.741, z = 262.948 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350002, pos = { x = 343.272, y = -11.167, z = 240.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360002, pos = { x = 336.845, y = -12.741, z = 263.032 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70360021, pos = { x = 323.552, y = -10.903, z = 270.178 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 3007, gadget_id = 70360021, pos = { x = 363.167, y = -10.903, z = 256.227 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 3008, gadget_id = 70900202, pos = { x = 336.845, y = -11.242, z = 263.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70900202, pos = { x = 343.296, y = -11.242, z = 257.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70360002, pos = { x = 343.352, y = -12.741, z = 269.414 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70360002, pos = { x = 343.296, y = -12.741, z = 257.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70900202, pos = { x = 349.700, y = -11.242, z = 262.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70360021, pos = { x = 350.600, y = -13.136, z = 270.313 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 3017, gadget_id = 70360021, pos = { x = 335.968, y = -13.136, z = 270.313 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 3018, gadget_id = 70360021, pos = { x = 335.968, y = -13.136, z = 255.712 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 3019, gadget_id = 70360021, pos = { x = 335.968, y = -13.136, z = 265.335 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "QUEST_START_3001", event = EventType.EVENT_QUEST_START, source = "1904410", condition = "", action = "action_EVENT_QUEST_START_3001" },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010" },
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011" },
	{ config_id = 1003015, name = "VARIABLE_CHANGE_3015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3015", action = "action_EVENT_VARIABLE_CHANGE_3015" },
	{ config_id = 1003020, name = "SELECT_OPTION_3020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3020", action = "action_EVENT_SELECT_OPTION_3020" },
	{ config_id = 1003021, name = "SELECT_OPTION_3021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3021", action = "action_EVENT_SELECT_OPTION_3021" },
	{ config_id = 1003022, name = "VARIABLE_CHANGE_3022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3022", action = "action_EVENT_VARIABLE_CHANGE_3022" },
	{ config_id = 1003023, name = "VARIABLE_CHANGE_3023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3023", action = "action_EVENT_VARIABLE_CHANGE_3023" },
	{ config_id = 1003024, name = "VARIABLE_CHANGE_3024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3024", action = "action_EVENT_VARIABLE_CHANGE_3024" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder_count", value = 0, no_refresh = false }
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
		gadgets = { 3003, 3004, 3005, 3006, 3007, 3012, 3013, 3016, 3017, 3018, 3019 },
		regions = { },
		triggers = { "QUEST_START_3001", "SELECT_OPTION_3010", "SELECT_OPTION_3011", "VARIABLE_CHANGE_3015", "SELECT_OPTION_3020", "SELECT_OPTION_3021", "VARIABLE_CHANGE_3022", "VARIABLE_CHANGE_3023", "VARIABLE_CHANGE_3024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3008, 3009, 3014 },
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

-- 触发操作
function action_EVENT_QUEST_START_3001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220035003, 3003, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220035003, 3005, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220035003, 3013, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220035003, 3012, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220035003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3003 option_id 24
	if 3003 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
	-- 删除指定group： 220035003 ；指定config：3003；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220035003, 3003, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 3007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200350031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220035003, EntityType.GADGET, 3014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "reminder_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3005 option_id 24
	if 3005 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 删除指定group： 220035003 ；指定config：3005；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220035003, 3005, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 3006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200350031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220035003, EntityType.GADGET, 3008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "reminder_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder_count"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3015(context, evt)
	-- 调用提示id为 200350101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200350101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3020(context, evt)
	-- 判断是gadgetid 3013 option_id 24
	if 3013 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3020(context, evt)
	-- 删除指定group： 220035003 ；指定config：3013；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220035003, 3013, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200350031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220035003, EntityType.GADGET, 3009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "reminder_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3021(context, evt)
	-- 判断是gadgetid 3012 option_id 24
	if 3012 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3021(context, evt)
	-- 删除指定group： 220035003 ；指定config：3012；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220035003, 3012, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200350031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220035003, EntityType.GADGET, 3002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "reminder_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reminder_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder_count"为2
	if ScriptLib.GetGroupVariableValue(context, "reminder_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3022(context, evt)
	-- 调用提示id为 200350102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200350102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder_count"为3
	if ScriptLib.GetGroupVariableValue(context, "reminder_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3023(context, evt)
	-- 调用提示id为 200350103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200350103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reminder_count"为4
	if ScriptLib.GetGroupVariableValue(context, "reminder_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3024(context, evt)
	-- 调用提示id为 200350104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200350104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end