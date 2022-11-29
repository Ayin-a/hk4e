-- 基础信息
local base_info = {
	group_id = 199003121
}

-- Trigger变量
local defs = {
	gadget_animal = 121001,
	pointarray_ID = 900300021,
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
	{ config_id = 121001, gadget_id = 70360358, pos = { x = -688.620, y = 125.976, z = -125.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearAction1, isOneoff = true, start_route = false, persistent = true, is_use_point_array = true, area_id = 403 },
	{ config_id = 121007, gadget_id = 70360001, pos = { x = -689.235, y = 123.995, z = -115.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121002, name = "VARIABLE_CHANGE_121002", event = EventType.EVENT_VARIABLE_CHANGE, source = "next_index", condition = "condition_EVENT_VARIABLE_CHANGE_121002", action = "action_EVENT_VARIABLE_CHANGE_121002", trigger_count = 0 },
	{ config_id = 1121003, name = "PLATFORM_REACH_POINT_121003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_121003", action = "action_EVENT_PLATFORM_REACH_POINT_121003", trigger_count = 0 },
	{ config_id = 1121004, name = "PLATFORM_REACH_POINT_121004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_121004", action = "action_EVENT_PLATFORM_REACH_POINT_121004", trigger_count = 0 },
	{ config_id = 1121005, name = "PLATFORM_REACH_POINT_121005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_121005", action = "action_EVENT_PLATFORM_REACH_POINT_121005", trigger_count = 0 },
	{ config_id = 1121006, name = "PLATFORM_REACH_POINT_121006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_121006", action = "action_EVENT_PLATFORM_REACH_POINT_121006", trigger_count = 0 },
	{ config_id = 1121008, name = "GROUP_LOAD_121008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_121008", trigger_count = 0 }
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
			{ config_id = 121007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_121002", "PLATFORM_REACH_POINT_121003", "PLATFORM_REACH_POINT_121004", "PLATFORM_REACH_POINT_121005", "PLATFORM_REACH_POINT_121006", "GROUP_LOAD_121008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 121001, state = 203, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_121002", "PLATFORM_REACH_POINT_121003", "PLATFORM_REACH_POINT_121004", "PLATFORM_REACH_POINT_121005", "PLATFORM_REACH_POINT_121006", "GROUP_LOAD_121008" },
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
function condition_EVENT_VARIABLE_CHANGE_121002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"next_index"为4
	if ScriptLib.GetGroupVariableValue(context, "next_index") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121002(context, evt)
	-- 将本组内变量名为 "next_index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "next_index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_121003(context, evt)
	-- 判断是gadgetid 为 121001的移动平台，是否到达了900300021 的点集中的 2 点
	
	if 121001 ~= evt.param1 then
	  return false
	end
	
	if 900300021 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_121003(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "c" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "c", 1, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_121004(context, evt)
	-- 判断是gadgetid 为 121001的移动平台，是否到达了900300021 的点集中的 5 点
	
	if 121001 ~= evt.param1 then
	  return false
	end
	
	if 900300021 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_121004(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "c" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "c", 2, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_121005(context, evt)
	-- 判断是gadgetid 为 121001的移动平台，是否到达了900300021 的点集中的 8 点
	
	if 121001 ~= evt.param1 then
	  return false
	end
	
	if 900300021 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_121005(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "c" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "c", 3, 199003108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_121006(context, evt)
	-- 判断是gadgetid 为 121001的移动平台，是否到达了900300021 的点集中的 9 点
	
	if 121001 ~= evt.param1 then
	  return false
	end
	
	if 900300021 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_121006(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_121008(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003108) == 1 then
			 ScriptLib.GoToFlowSuite(context, 199003121, 1)
		  else
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
			ScriptLib.GoToFlowSuite(context, 199003121, 2)
				  else
					 ScriptLib.GoToFlowSuite(context, 199003121, 1)
					end
				end
			return 0
end

require "V2_8/AnimalSeelie"