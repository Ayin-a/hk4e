-- 基础信息
local base_info = {
	group_id = 240050009
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
	{ config_id = 9001, gadget_id = 70350004, pos = { x = 23.455, y = 64.555, z = -65.245 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70360170, pos = { x = 25.683, y = 67.007, z = -65.462 }, rot = { x = 89.479, y = 33.825, z = 122.900 }, level = 1 },
	{ config_id = 9004, gadget_id = 70360001, pos = { x = 26.031, y = 66.710, z = -65.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创建时加载开门按钮
	{ config_id = 1009003, name = "GADGET_CREATE_9003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9003", action = "action_EVENT_GADGET_CREATE_9003", trigger_count = 0 },
	-- open=1 加载关门
	{ config_id = 1009005, name = "VARIABLE_CHANGE_9005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9005", action = "action_EVENT_VARIABLE_CHANGE_9005", trigger_count = 0 },
	-- 点击后开门
	{ config_id = 1009006, name = "SELECT_OPTION_9006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9006", action = "action_EVENT_SELECT_OPTION_9006", trigger_count = 0 },
	-- 点击后关门
	{ config_id = 1009007, name = "SELECT_OPTION_9007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9007", action = "action_EVENT_SELECT_OPTION_9007", trigger_count = 0 },
	-- open=0 加载开门
	{ config_id = 1009008, name = "VARIABLE_CHANGE_9008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9008", action = "action_EVENT_VARIABLE_CHANGE_9008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 9001, 9002, 9004 },
		regions = { },
		triggers = { "GADGET_CREATE_9003", "VARIABLE_CHANGE_9005", "SELECT_OPTION_9006", "SELECT_OPTION_9007", "VARIABLE_CHANGE_9008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_9003(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050009, 9004, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050009, 9004, {4}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9006(context, evt)
	-- 判断是gadgetid 9004 option_id 1
	if 9004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9006(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050009 ；指定config：9004；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050009, 9004, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9007(context, evt)
	-- 判断是gadgetid 9004 option_id 4
	if 9004 ~= evt.param1 then
		return false	
	end
	
	if 4 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9007(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240050009 ；指定config：9004；物件身上指定option：4；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050009, 9004, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "open" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050009, 9004, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end