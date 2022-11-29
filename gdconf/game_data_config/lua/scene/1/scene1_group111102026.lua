-- 基础信息
local base_info = {
	group_id = 111102026
}

-- Trigger变量
local defs = {
	gadget_animal = 26001,
	pointarray_ID = 110200012,
	maxPointCount = 8,
	gadget_Reward = 26002,
	pointInfo = {2,5,8}
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
	{ config_id = 26001, gadget_id = 70360358, pos = { x = 1907.251, y = 197.019, z = -1295.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 26002, gadget_id = 70211001, pos = { x = 1919.521, y = 195.277, z = -1345.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1026003, name = "PLATFORM_REACH_POINT_26003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_26003", action = "action_EVENT_PLATFORM_REACH_POINT_26003" },
	{ config_id = 1026004, name = "PLATFORM_REACH_POINT_26004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_26004", action = "action_EVENT_PLATFORM_REACH_POINT_26004" },
	{ config_id = 1026005, name = "PLATFORM_REACH_POINT_26005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_26005", action = "action_EVENT_PLATFORM_REACH_POINT_26005" }
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
			{ config_id = 26001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_26003", "PLATFORM_REACH_POINT_26004", "PLATFORM_REACH_POINT_26005" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 26002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
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
function condition_EVENT_PLATFORM_REACH_POINT_26003(context, evt)
	-- 判断是gadgetid 为 26001的移动平台，是否到达了110200012 的点集中的 2 点
	
	if 26001 ~= evt.param1 then
	  return false
	end
	
	if 110200012 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_26003(context, evt)
	-- 将configid为 26001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_26004(context, evt)
	-- 判断是gadgetid 为 26001的移动平台，是否到达了110200012 的点集中的 5 点
	
	if 26001 ~= evt.param1 then
	  return false
	end
	
	if 110200012 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_26004(context, evt)
	-- 将configid为 26001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_26005(context, evt)
	-- 判断是gadgetid 为 26001的移动平台，是否到达了110200012 的点集中的 8 点
	
	if 26001 ~= evt.param1 then
	  return false
	end
	
	if 110200012 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_26005(context, evt)
	-- 将configid为 26001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102026, 2)
	
	return 0
end

require "V2_8/AnimalSeelie"