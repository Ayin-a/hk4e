-- 基础信息
local base_info = {
	group_id = 133309684
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {438,439}

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
	{ config_id = 684001, gadget_id = 70330308, pos = { x = -2380.799, y = -37.674, z = 5377.764 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 684002, gadget_id = 70330283, pos = { x = -2373.929, y = -36.916, z = 5382.507 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 3}, area_id = 27 },
	-- 开风扇之后刷加速环
	{ config_id = 684010, gadget_id = 70690001, pos = { x = -2380.331, y = -13.619, z = 5377.669 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1684003, name = "SELECT_OPTION_684003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_684003", action = "action_EVENT_SELECT_OPTION_684003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1684004, name = "VARIABLE_CHANGE_684004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684004", action = "action_EVENT_VARIABLE_CHANGE_684004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1684005, name = "GROUP_LOAD_684005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_684005", action = "action_EVENT_GROUP_LOAD_684005", trigger_count = 0 },
	-- 点击misc中配置的option2
	{ config_id = 1684006, name = "SELECT_OPTION_684006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_684006", action = "action_EVENT_SELECT_OPTION_684006", trigger_count = 0 },
	-- 点击option2后的执行
	{ config_id = 1684007, name = "VARIABLE_CHANGE_684007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684007", action = "action_EVENT_VARIABLE_CHANGE_684007", trigger_count = 0 },
	-- 点击option2后的保底
	{ config_id = 1684008, name = "GROUP_LOAD_684008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_684008", action = "action_EVENT_GROUP_LOAD_684008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pressbutton1", value = 0, no_refresh = true },
	{ config_id = 2, name = "pressbutton2", value = 0, no_refresh = true },
	{ config_id = 3, name = "waterdown", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1684009, name = "VARIABLE_CHANGE_684009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684009", action = "action_EVENT_VARIABLE_CHANGE_684009" }
	}
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
		gadgets = { 684001, 684002 },
		regions = { },
		triggers = { "SELECT_OPTION_684003", "VARIABLE_CHANGE_684004", "GROUP_LOAD_684005", "SELECT_OPTION_684006", "VARIABLE_CHANGE_684007", "GROUP_LOAD_684008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_684003(context, evt)
	-- 判断是gadgetid 684002 option_id 439
	if 684002 ~= evt.param1 then
		return false	
	end
	
	if 439 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_684003(context, evt)
	-- 将configid为 684002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684002, GadgetState.GearAction2) then
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
function condition_EVENT_VARIABLE_CHANGE_684004(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_684004(context, evt)
	-- 将configid为 684001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 684010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_684005(context, evt)
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
function action_EVENT_GROUP_LOAD_684005(context, evt)
	-- 将configid为 684001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 684010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_684006(context, evt)
	-- 判断是gadgetid 684002 option_id 438
	if 684002 ~= evt.param1 then
		return false	
	end
	
	if 438 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_684006(context, evt)
	-- 将configid为 684002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684002, GadgetState.GearAction2) then
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
function condition_EVENT_VARIABLE_CHANGE_684007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_684007(context, evt)
	-- 将configid为 684001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为684010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 684010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_684008(context, evt)
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
function action_EVENT_GROUP_LOAD_684008(context, evt)
	-- 将configid为 684001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为684010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 684010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_1/PermissonOperator"