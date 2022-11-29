-- 基础信息
local base_info = {
	group_id = 133210372
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
	{ config_id = 372004, gadget_id = 70350081, pos = { x = -3556.146, y = 189.916, z = -1175.945 }, rot = { x = 26.254, y = 87.017, z = 337.856 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 372005, gadget_id = 70350081, pos = { x = -3543.873, y = 189.916, z = -1186.542 }, rot = { x = 26.254, y = 267.017, z = 337.856 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 372009, gadget_id = 70350081, pos = { x = -3555.029, y = 189.916, z = -1186.867 }, rot = { x = 26.254, y = 357.017, z = 337.856 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 372014, gadget_id = 70350004, pos = { x = -3541.473, y = 194.826, z = -1179.495 }, rot = { x = 0.000, y = 222.156, z = 270.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 372015, gadget_id = 70350004, pos = { x = -3541.473, y = 189.228, z = -1179.495 }, rot = { x = 0.000, y = 222.156, z = 270.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372001, name = "GADGET_STATE_CHANGE_372001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "372004", condition = "condition_EVENT_GADGET_STATE_CHANGE_372001", action = "action_EVENT_GADGET_STATE_CHANGE_372001", trigger_count = 0 },
	{ config_id = 1372002, name = "GADGET_CREATE_372002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_372002", action = "action_EVENT_GADGET_CREATE_372002", trigger_count = 0 },
	{ config_id = 1372003, name = "SELECT_OPTION_372003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_372003", action = "action_EVENT_SELECT_OPTION_372003", trigger_count = 0 },
	{ config_id = 1372006, name = "GADGET_STATE_CHANGE_372006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "372005", condition = "condition_EVENT_GADGET_STATE_CHANGE_372006", action = "action_EVENT_GADGET_STATE_CHANGE_372006", trigger_count = 0 },
	{ config_id = 1372007, name = "GADGET_CREATE_372007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_372007", action = "action_EVENT_GADGET_CREATE_372007", trigger_count = 0 },
	{ config_id = 1372008, name = "SELECT_OPTION_372008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_372008", action = "action_EVENT_SELECT_OPTION_372008", trigger_count = 0 },
	{ config_id = 1372010, name = "GADGET_STATE_CHANGE_372010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "372009", condition = "condition_EVENT_GADGET_STATE_CHANGE_372010", action = "action_EVENT_GADGET_STATE_CHANGE_372010", trigger_count = 0 },
	{ config_id = 1372011, name = "GADGET_CREATE_372011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_372011", action = "action_EVENT_GADGET_CREATE_372011", trigger_count = 0 },
	{ config_id = 1372012, name = "SELECT_OPTION_372012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_372012", action = "action_EVENT_SELECT_OPTION_372012", trigger_count = 0 },
	{ config_id = 1372013, name = "VARIABLE_CHANGE_372013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_372013", action = "action_EVENT_VARIABLE_CHANGE_372013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Active_Count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 372004, state = 0 },
			{ config_id = 372005, state = 0 },
			{ config_id = 372009, state = 0 },
			{ config_id = 372014, state = 0 },
			{ config_id = 372015, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_372001", "GADGET_CREATE_372002", "SELECT_OPTION_372003", "GADGET_STATE_CHANGE_372006", "GADGET_CREATE_372007", "SELECT_OPTION_372008", "GADGET_STATE_CHANGE_372010", "GADGET_CREATE_372011", "SELECT_OPTION_372012", "VARIABLE_CHANGE_372013" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Active_Count", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 372004, state = 201 },
			{ config_id = 372005, state = 201 },
			{ config_id = 372009, state = 201 },
			{ config_id = 372014, state = 201 },
			{ config_id = 372015, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Active_Count", value = 3, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372001(context, evt)
	if 372004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372001(context, evt)
	-- 针对当前group内变量名为 "Active_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Active_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_372002(context, evt)
	if 372004 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_372002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210372, 372004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_372003(context, evt)
	-- 判断是gadgetid 372004 option_id 7
	if 372004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_372003(context, evt)
	-- 将configid为 372004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210372 ；指定config：372004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210372, 372004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	if 372005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	-- 针对当前group内变量名为 "Active_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Active_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_372007(context, evt)
	if 372005 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_372007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210372, 372005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_372008(context, evt)
	-- 判断是gadgetid 372005 option_id 7
	if 372005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_372008(context, evt)
	-- 将configid为 372005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210372 ；指定config：372005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210372, 372005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372010(context, evt)
	if 372009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372010(context, evt)
	-- 针对当前group内变量名为 "Active_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Active_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_372011(context, evt)
	if 372009 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_372011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210372, 372009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_372012(context, evt)
	-- 判断是gadgetid 372009 option_id 7
	if 372009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_372012(context, evt)
	-- 将configid为 372009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210372 ；指定config：372009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210372, 372009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_372013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Active_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Active_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_372013(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210372, 2)
	
	return 0
end