-- 基础信息
local base_info = {
	group_id = 133008360
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
	{ config_id = 360001, gadget_id = 70350004, pos = { x = 1034.103, y = 502.399, z = -893.218 }, rot = { x = 0.000, y = 47.156, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 360004, gadget_id = 70350081, pos = { x = 1042.872, y = 501.773, z = -891.800 }, rot = { x = 338.264, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 360007, gadget_id = 70360102, pos = { x = 1042.890, y = 502.118, z = -892.234 }, rot = { x = 0.000, y = 277.117, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 360008, gadget_id = 70220046, pos = { x = 1029.559, y = 503.983, z = -886.806 }, rot = { x = 353.849, y = 59.088, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 360009, gadget_id = 70350081, pos = { x = 1029.369, y = 502.525, z = -887.045 }, rot = { x = 338.264, y = 11.555, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360002, name = "SELECT_OPTION_360002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360002", action = "action_EVENT_SELECT_OPTION_360002", trigger_count = 0 },
	{ config_id = 1360003, name = "GADGET_CREATE_360003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360003", action = "action_EVENT_GADGET_CREATE_360003", trigger_count = 0 },
	{ config_id = 1360005, name = "ANY_GADGET_DIE_360005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360005", action = "action_EVENT_ANY_GADGET_DIE_360005", trigger_count = 0 },
	{ config_id = 1360006, name = "GADGET_CREATE_360006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360006", action = "action_EVENT_GADGET_CREATE_360006", trigger_count = 0 },
	{ config_id = 1360010, name = "ANY_GADGET_DIE_360010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360010", action = "action_EVENT_ANY_GADGET_DIE_360010" },
	{ config_id = 1360011, name = "SELECT_OPTION_360011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360011", action = "action_EVENT_SELECT_OPTION_360011", trigger_count = 0 },
	{ config_id = 1360012, name = "VARIABLE_CHANGE_360012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_360012", action = "action_EVENT_VARIABLE_CHANGE_360012", trigger_count = 0 },
	{ config_id = 1360013, name = "GADGET_CREATE_360013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360013", action = "action_EVENT_GADGET_CREATE_360013", trigger_count = 0 },
	{ config_id = 1360014, name = "GROUP_LOAD_360014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360014", action = "action_EVENT_GROUP_LOAD_360014", trigger_count = 0 },
	{ config_id = 1360015, name = "GROUP_LOAD_360015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360015", action = "action_EVENT_GROUP_LOAD_360015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_open", value = 0, no_refresh = true }
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
		gadgets = { 360001, 360004, 360007, 360008, 360009 },
		regions = { },
		triggers = { "SELECT_OPTION_360002", "ANY_GADGET_DIE_360005", "ANY_GADGET_DIE_360010", "SELECT_OPTION_360011", "VARIABLE_CHANGE_360012", "GROUP_LOAD_360014", "GROUP_LOAD_360015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 360001, 360004, 360009 },
		regions = { },
		triggers = { "GADGET_CREATE_360003", "GADGET_CREATE_360006", "GADGET_CREATE_360013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_360002(context, evt)
	-- 判断是gadgetid 360004 option_id 7
	if 360004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360002(context, evt)
	-- 将configid为 360004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008360 ；指定config：360004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008360, 360004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "is_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360003(context, evt)
	if 360004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360003(context, evt)
	-- 将configid为 360004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360005(context, evt)
	if 360007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008360, 360004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360006(context, evt)
	if 360001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360006(context, evt)
	-- 将configid为 360001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360010(context, evt)
	if 360008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008360, 360009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_360011(context, evt)
	-- 判断是gadgetid 360009 option_id 7
	if 360009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360011(context, evt)
	-- 将configid为 360009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133008360 ；指定config：360009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008360, 360009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "is_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_360012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_open"为2
	if ScriptLib.GetGroupVariableValue(context, "is_open") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_360012(context, evt)
	-- 将configid为 360001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008360, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360013(context, evt)
	if 360009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360013(context, evt)
	-- 将configid为 360009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_360014(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008360, 360007) or 0 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008360, 360004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008360, 360004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_360015(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008360, 360008) or 0 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008360, 360009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008360, 360009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end