-- 基础信息
local base_info = {
	group_id = 133308193
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
	[193001] = { config_id = 193001, gadget_id = 70330263, pos = { x = -1905.749, y = 135.390, z = 5292.109 }, rot = { x = 0.000, y = 315.766, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[193002] = { config_id = 193002, gadget_id = 70220103, pos = { x = -1905.746, y = 137.982, z = 5295.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[193012] = { config_id = 193012, gadget_id = 70360286, pos = { x = -1905.743, y = 135.390, z = 5292.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 红变蓝
	{ config_id = 1193003, name = "SELECT_OPTION_193003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193003", action = "action_EVENT_SELECT_OPTION_193003", trigger_count = 0 },
	{ config_id = 1193004, name = "TIME_AXIS_PASS_193004", event = EventType.EVENT_TIME_AXIS_PASS, source = "button", condition = "condition_EVENT_TIME_AXIS_PASS_193004", action = "action_EVENT_TIME_AXIS_PASS_193004", trigger_count = 0 },
	{ config_id = 1193011, name = "GADGET_CREATE_193011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_193011", action = "action_EVENT_GADGET_CREATE_193011", trigger_count = 0 },
	-- 红变蓝
	{ config_id = 1193013, name = "SELECT_OPTION_193013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193013", action = "action_EVENT_SELECT_OPTION_193013", trigger_count = 0 },
	-- 蓝变红
	{ config_id = 1193014, name = "SELECT_OPTION_193014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193014", action = "action_EVENT_SELECT_OPTION_193014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "re", value = 0, no_refresh = true }
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
		gadgets = { 193001, 193002, 193012 },
		regions = { },
		triggers = { "SELECT_OPTION_193003", "TIME_AXIS_PASS_193004", "GADGET_CREATE_193011", "SELECT_OPTION_193013", "SELECT_OPTION_193014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 193001, 193002 },
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
function condition_EVENT_SELECT_OPTION_193003(context, evt)
	-- 判断是gadgetid 193012 option_id 918
	if 193012 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308193, 193001) then
		return false
	end
	
	-- 判断变量"re"为1
	if ScriptLib.GetGroupVariableValue(context, "re") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193003(context, evt)
	-- 将本组内变量名为 "redblue" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "redblue", 1, 133308581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308193 ；指定config：193012；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308193, 193012, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"button"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_193004(context, evt)
	if "button" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_193004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308193, 193012, {918}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 停止标识为"button"的时间轴
	ScriptLib.EndTimeAxis(context, "button")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_193011(context, evt)
	if 193012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_193011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308193, 193012, {918}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_193013(context, evt)
	-- 判断是gadgetid 193012 option_id 918
	if 193012 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308193, 193001) then
		return false
	end
	
	-- 判断变量"re"为0
	if ScriptLib.GetGroupVariableValue(context, "re") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193013(context, evt)
	-- 将本组内变量名为 "re" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "re", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "redblue" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "redblue", 1, 133308581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 193001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1000120000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000120000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 133308193 ；指定config：193012；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308193, 193012, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"button"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_193014(context, evt)
	-- 判断是gadgetid 193012 option_id 918
	if 193012 ~= evt.param1 then
		return false	
	end
	
	if 918 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308193, 193001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193014(context, evt)
	-- 将configid为 193001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "redblue" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "redblue", 0, 133308581) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 133308193 ；指定config：193012；物件身上指定option：918；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308193, 193012, 918) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"button"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "button", {1}, false)
	
	
	return 0
end