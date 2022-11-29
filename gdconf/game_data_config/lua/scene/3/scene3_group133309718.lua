-- 基础信息
local base_info = {
	group_id = 133309718
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {447,449}

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
	{ config_id = 718001, gadget_id = 70330256, pos = { x = -2380.230, y = 26.637, z = 5298.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 718002, gadget_id = 70330283, pos = { x = -2374.696, y = 21.670, z = 5310.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 3}, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 718010, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -2381.122, y = 26.693, z = 5319.163 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1718003, name = "SELECT_OPTION_718003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_718003", action = "action_EVENT_SELECT_OPTION_718003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1718004, name = "VARIABLE_CHANGE_718004", event = EventType.EVENT_VARIABLE_CHANGE, source = "pressbutton1", condition = "condition_EVENT_VARIABLE_CHANGE_718004", action = "action_EVENT_VARIABLE_CHANGE_718004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1718005, name = "GROUP_LOAD_718005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_718005", action = "action_EVENT_GROUP_LOAD_718005", trigger_count = 0 },
	-- 点击misc中配置的option2
	{ config_id = 1718006, name = "SELECT_OPTION_718006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_718006", action = "action_EVENT_SELECT_OPTION_718006", trigger_count = 0 },
	-- 点击option2后的执行
	{ config_id = 1718007, name = "VARIABLE_CHANGE_718007", event = EventType.EVENT_VARIABLE_CHANGE, source = "pressbutton2", condition = "condition_EVENT_VARIABLE_CHANGE_718007", action = "action_EVENT_VARIABLE_CHANGE_718007", trigger_count = 0 },
	-- 点击option2后的保底
	{ config_id = 1718008, name = "GROUP_LOAD_718008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_718008", action = "action_EVENT_GROUP_LOAD_718008", trigger_count = 0 },
	{ config_id = 1718009, name = "VARIABLE_CHANGE_718009", event = EventType.EVENT_VARIABLE_CHANGE, source = "stopblow", condition = "condition_EVENT_VARIABLE_CHANGE_718009", action = "action_EVENT_VARIABLE_CHANGE_718009" },
	{ config_id = 1718010, name = "ENTER_REGION_718010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_718010", action = "action_EVENT_ENTER_REGION_718010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "pressbutton1", value = 0, no_refresh = true },
	{ config_id = 2, name = "pressbutton2", value = 0, no_refresh = true },
	{ config_id = 3, name = "stopblow", value = 0, no_refresh = true }
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
		gadgets = { 718001, 718002 },
		regions = { 718010 },
		triggers = { "SELECT_OPTION_718003", "VARIABLE_CHANGE_718004", "GROUP_LOAD_718005", "SELECT_OPTION_718006", "VARIABLE_CHANGE_718007", "GROUP_LOAD_718008", "VARIABLE_CHANGE_718009", "ENTER_REGION_718010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_718003(context, evt)
	-- 判断是gadgetid 718002 option_id 447
	if 718002 ~= evt.param1 then
		return false	
	end
	
	if 447 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_718003(context, evt)
	-- 将configid为 718002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 判断变量"pressbutton1"为0且"pressbutton2"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") == 0 and ScriptLib.GetGroupVariableValue(context, "pressbutton2") == 0 then
	    ScriptLib.SetGroupVariableValue(context, "pressbutton1", 1)
	
	-- 判断变量"pressbutton1"为1且"pressbutton2"为0
	elseif ScriptLib.GetGroupVariableValue(context, "pressbutton1") == 1 and ScriptLib.GetGroupVariableValue(context, "pressbutton2") == 0 then
	    ScriptLib.SetGroupVariableValue(context, "pressbutton1", 0)
	    ScriptLib.SetGroupVariableValue(context, "pressbutton2", 1)
	
	-- 判断变量"pressbutton1"为0且"pressbutton2"为1
	elseif ScriptLib.GetGroupVariableValue(context, "pressbutton1") == 0 and ScriptLib.GetGroupVariableValue(context, "pressbutton2") == 1 then
	    ScriptLib.SetGroupVariableValue(context, "pressbutton1", 1)
	    ScriptLib.SetGroupVariableValue(context, "pressbutton2", 0)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_718004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"pressbutton1"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_718004(context, evt)
	-- 将configid为 718001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718001, GadgetState.Default) then
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
function condition_EVENT_GROUP_LOAD_718005(context, evt)
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
function action_EVENT_GROUP_LOAD_718005(context, evt)
	-- 将configid为 718001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_718006(context, evt)
	-- 判断是gadgetid 718002 option_id 449
	if 718002 ~= evt.param1 then
		return false	
	end
	
	if 449 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_718006(context, evt)
	-- 将configid为 718002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 判断变量"pressbutton1"为1且"pressbutton2"为0
	if ScriptLib.GetGroupVariableValue(context, "pressbutton1") == 1 and ScriptLib.GetGroupVariableValue(context, "pressbutton2") == 0 then
	    ScriptLib.SetGroupVariableValue(context, "pressbutton1", 0)
	    ScriptLib.SetGroupVariableValue(context, "pressbutton2", 1)
	
	-- 判断变量"pressbutton1"为0且"pressbutton2"为1
	elseif ScriptLib.GetGroupVariableValue(context, "pressbutton1") == 0 and ScriptLib.GetGroupVariableValue(context, "pressbutton2") == 1 then
	    ScriptLib.SetGroupVariableValue(context, "pressbutton1", 1)
	    ScriptLib.SetGroupVariableValue(context, "pressbutton2", 0)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_718007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"pressbutton2"为1
	if ScriptLib.GetGroupVariableValue(context, "pressbutton2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_718007(context, evt)
	-- 将configid为 718001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718001, GadgetState.GearStart) then
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
function condition_EVENT_GROUP_LOAD_718008(context, evt)
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
function action_EVENT_GROUP_LOAD_718008(context, evt)
	-- 将configid为 718001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_718009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stopblow"为1
	if ScriptLib.GetGroupVariableValue(context, "stopblow") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_718009(context, evt)
	-- 将configid为 718001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 718001, GadgetState.Default) then
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
function condition_EVENT_ENTER_REGION_718010(context, evt)
	if evt.param1 ~= 718010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_718010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/PermissonOperator"