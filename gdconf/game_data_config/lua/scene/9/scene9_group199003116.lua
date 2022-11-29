-- 基础信息
local base_info = {
	group_id = 199003116
}

-- Trigger变量
local defs = {
	gadget_animal = 116001,
	pointarray_ID = 900300019,
	maxPointCount = 9,
	gadget_Reward = 0,
	pointInfo = {2,5,8,9},
	addSuite_Info = 0
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
	{ config_id = 116001, gadget_id = 70360358, pos = { x = -693.437, y = 125.888, z = -124.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, isOneoff = true, start_route = false, persistent = true, is_use_point_array = true, area_id = 403 },
	{ config_id = 116007, gadget_id = 70360001, pos = { x = -684.600, y = 123.724, z = -116.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116002, name = "VARIABLE_CHANGE_116002", event = EventType.EVENT_VARIABLE_CHANGE, source = "next_index", condition = "condition_EVENT_VARIABLE_CHANGE_116002", action = "action_EVENT_VARIABLE_CHANGE_116002", trigger_count = 0 },
	{ config_id = 1116003, name = "PLATFORM_REACH_POINT_116003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116003", action = "action_EVENT_PLATFORM_REACH_POINT_116003", trigger_count = 0 },
	{ config_id = 1116004, name = "PLATFORM_REACH_POINT_116004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116004", action = "action_EVENT_PLATFORM_REACH_POINT_116004", trigger_count = 0 },
	{ config_id = 1116005, name = "PLATFORM_REACH_POINT_116005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116005", action = "action_EVENT_PLATFORM_REACH_POINT_116005", trigger_count = 0 },
	{ config_id = 1116006, name = "PLATFORM_REACH_POINT_116006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116006", action = "action_EVENT_PLATFORM_REACH_POINT_116006", trigger_count = 0 },
	{ config_id = 1116008, name = "GROUP_LOAD_116008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116008", trigger_count = 0 }
}

-- 变量
variables = {
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
	end_suite = 2,
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
			{ config_id = 116007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_116002", "PLATFORM_REACH_POINT_116003", "PLATFORM_REACH_POINT_116004", "PLATFORM_REACH_POINT_116005", "PLATFORM_REACH_POINT_116006", "GROUP_LOAD_116008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 116001, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_116002", "PLATFORM_REACH_POINT_116003", "PLATFORM_REACH_POINT_116004", "PLATFORM_REACH_POINT_116005", "PLATFORM_REACH_POINT_116006", "GROUP_LOAD_116008" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_116002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"next_index"为4
	if ScriptLib.GetGroupVariableValue(context, "next_index") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_116002(context, evt)
	-- 将本组内变量名为 "next_index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "next_index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116003(context, evt)
	-- 判断是gadgetid 为 116001的移动平台，是否到达了900300019 的点集中的 2 点
	
	if 116001 ~= evt.param1 then
	  return false
	end
	
	if 900300019 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_116003(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "a" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "a", 1, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116004(context, evt)
	-- 判断是gadgetid 为 116001的移动平台，是否到达了900300019 的点集中的 5 点
	
	if 116001 ~= evt.param1 then
	  return false
	end
	
	if 900300019 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_116004(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "a" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "a", 2, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116005(context, evt)
	-- 判断是gadgetid 为 116001的移动平台，是否到达了900300019 的点集中的 8 点
	
	if 116001 ~= evt.param1 then
	  return false
	end
	
	if 900300019 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_116005(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "a" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "a", 3, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116006(context, evt)
	-- 判断是gadgetid 为 116001的移动平台，是否到达了900300019 的点集中的 9 点
	
	if 116001 ~= evt.param1 then
	  return false
	end
	
	if 900300019 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_116006(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_116008(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 1 then
			  ScriptLib.GoToFlowSuite(context, 199003116, 1)
		  else
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
			  ScriptLib.GoToFlowSuite(context, 199003116, 2)
				  else
				  ScriptLib.GoToFlowSuite(context, 199003116, 1)
					end
				end
			return 0
end

require "V2_8/AnimalSeelie"