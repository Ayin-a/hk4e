-- 基础信息
local base_info = {
	group_id = 220133066
}

-- Trigger变量
local defs = {
	gadget_animal = 66001,
	pointarray_ID = 4,
	maxPointCount = 8,
	gadget_Reward = 0,
	pointInfo = {1,6,7,8},
	addSuite_Info = 0,
	animal_state = {0,0,0,0}
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
	{ config_id = 66001, gadget_id = 70360358, pos = { x = 5089.773, y = 552.180, z = -1777.721 }, rot = { x = 13.940, y = 346.703, z = 9.623 }, level = 1, start_route = false, persistent = true, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "PLATFORM_REACH_POINT_66003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66003", action = "action_EVENT_PLATFORM_REACH_POINT_66003", trigger_count = 0 },
	-- 移动到点7时变为鹤的形象
	{ config_id = 1066006, name = "PLATFORM_REACH_POINT_66006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66006", action = "action_EVENT_PLATFORM_REACH_POINT_66006", trigger_count = 0 },
	-- 移动到点8时变为鹤的形象
	{ config_id = 1066008, name = "PLATFORM_REACH_POINT_66008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66008", action = "action_EVENT_PLATFORM_REACH_POINT_66008", trigger_count = 0 },
	-- 循环到点1时作为猪的形象
	{ config_id = 1066009, name = "PLATFORM_REACH_POINT_66009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66009", action = "action_EVENT_PLATFORM_REACH_POINT_66009", trigger_count = 0 },
	-- 循环到点6next=3 时setnext=1
	{ config_id = 1066010, name = "VARIABLE_CHANGE_66010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66010", action = "action_EVENT_VARIABLE_CHANGE_66010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "A", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1066004, name = "GADGET_CREATE_66004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66004", action = "action_EVENT_GADGET_CREATE_66004", trigger_count = 0 },
		{ config_id = 1066005, name = "PLATFORM_REACH_POINT_66005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_66005", trigger_count = 0 },
		{ config_id = 1066007, name = "PLATFORM_ARRIVAL_66007", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_66007", action = "action_EVENT_PLATFORM_ARRIVAL_66007", trigger_count = 0 }
	}
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
	end_suite = 3,
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
			{ config_id = 66001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_66003", "PLATFORM_REACH_POINT_66006", "PLATFORM_REACH_POINT_66008", "PLATFORM_REACH_POINT_66009", "VARIABLE_CHANGE_66010" },
		npcs = { },
		variables = {
			{ config_id = 3, name = "A", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 3, name = "A", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 3, name = "A", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_66003(context, evt)
	-- 判断是gadgetid 为 66001的移动平台，是否到达了4 的点集中的 6 点
	
	if 66001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_66003(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_66006(context, evt)
	-- 判断是gadgetid 为 66001的移动平台，是否到达了4 的点集中的 7 点
	
	if 66001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_66006(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_66008(context, evt)
	-- 判断是gadgetid 为 66001的移动平台，是否到达了4 的点集中的 8 点
	
	if 66001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_66008(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_66009(context, evt)
	-- 判断是gadgetid 为 66001的移动平台，是否到达了4 的点集中的 1 点
	
	if 66001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_66009(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"next_index"为3
	if ScriptLib.GetGroupVariableValue(context, "next_index") ~= 3 then
			return false
	end
	
	-- 判断变量"A"为0
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66010(context, evt)
	-- 将本组内变量名为 "next_index" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "next_index", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/AnimalSeelie"