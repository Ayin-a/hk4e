-- 基础信息
local base_info = {
	group_id = 133309714
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {439,438}

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
	{ config_id = 714001, gadget_id = 70330308, pos = { x = -2992.896, y = 158.377, z = 5436.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 714002, gadget_id = 70330283, pos = { x = -2992.846, y = 159.002, z = 5429.254 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 3}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1714003, name = "SELECT_OPTION_714003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_714003", action = "action_EVENT_SELECT_OPTION_714003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1714004, name = "VARIABLE_CHANGE_714004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_714004", action = "action_EVENT_VARIABLE_CHANGE_714004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1714005, name = "GROUP_LOAD_714005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_714005", action = "action_EVENT_GROUP_LOAD_714005", trigger_count = 0 },
	-- 点击misc中配置的option2
	{ config_id = 1714006, name = "SELECT_OPTION_714006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_714006", action = "action_EVENT_SELECT_OPTION_714006", trigger_count = 0 },
	-- 点击option2后的执行
	{ config_id = 1714007, name = "VARIABLE_CHANGE_714007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_714007", action = "action_EVENT_VARIABLE_CHANGE_714007", trigger_count = 0 },
	-- 点击option2后的保底
	{ config_id = 1714008, name = "GROUP_LOAD_714008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_714008", action = "action_EVENT_GROUP_LOAD_714008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pressbutton1", value = 0, no_refresh = true },
	{ config_id = 2, name = "pressbutton2", value = 0, no_refresh = true }
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
		gadgets = { 714001, 714002 },
		regions = { },
		triggers = { "SELECT_OPTION_714003", "VARIABLE_CHANGE_714004", "GROUP_LOAD_714005", "SELECT_OPTION_714006", "VARIABLE_CHANGE_714007", "GROUP_LOAD_714008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_714003(context, evt)
	-- 判断是gadgetid 714002 option_id 439
	if 714002 ~= evt.param1 then
		return false	
	end
	
	if 439 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_714003(context, evt)
	-- 将configid为 714002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "pressbutton1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pressbutton1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "pressbutton2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pressbutton2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_714004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"pressbutton1"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") ~= 1 then
			return false
	end
	
	-- 判断变量"pressbutton2"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_714004(context, evt)
	-- 将configid为 714001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_714005(context, evt)
	-- 判断变量"pressbutton1"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") ~= 1 then
			return false
	end
	
	-- 判断变量"pressbutton2"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_714005(context, evt)
	-- 将configid为 714001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_714006(context, evt)
	-- 判断是gadgetid 714002 option_id 438
	if 714002 ~= evt.param1 then
		return false	
	end
	
	if 438 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_714006(context, evt)
	-- 将configid为 714002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "pressbutton1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pressbutton1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "pressbutton2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pressbutton2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_714007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"pressbutton1"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") ~= 0 then
			return false
	end
	
	-- 判断变量"pressbutton2"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_714007(context, evt)
	-- 将configid为 714001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_714008(context, evt)
	-- 判断变量"pressbutton1"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") ~= 0 then
			return false
	end
	
	-- 判断变量"pressbutton2"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_714008(context, evt)
	-- 将configid为 714001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 714001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"