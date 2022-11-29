-- 基础信息
local base_info = {
	group_id = 220133027
}

-- Trigger变量
local defs = {
	gadget_animal = 27001,
	pointarray_ID = 5,
	maxPointCount = 9,
	gadget_Reward = 27002,
	pointInfo = {3,7,9},
	addSuite_Info = 2,
	animal_state = {0,0,0}
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
	{ config_id = 27001, gadget_id = 70360358, pos = { x = 5089.219, y = 552.028, z = -1778.192 }, rot = { x = 1.008, y = 224.886, z = 343.144 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 27002, gadget_id = 70211001, pos = { x = 5029.729, y = 541.088, z = -1828.453 }, rot = { x = 356.333, y = 67.854, z = 15.541 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "PLATFORM_REACH_POINT_27003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_27003", action = "action_EVENT_PLATFORM_REACH_POINT_27003", trigger_count = 0 },
	{ config_id = 1027004, name = "PLATFORM_REACH_POINT_27004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_27004", action = "action_EVENT_PLATFORM_REACH_POINT_27004", trigger_count = 0 },
	{ config_id = 1027006, name = "PLATFORM_REACH_POINT_27006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_27006", action = "action_EVENT_PLATFORM_REACH_POINT_27006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1027005, name = "PLATFORM_REACH_POINT_27005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_27005", action = "action_EVENT_PLATFORM_REACH_POINT_27005", trigger_count = 0 }
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
	suite = 3,
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
			{ config_id = 27001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_27003", "PLATFORM_REACH_POINT_27004", "PLATFORM_REACH_POINT_27006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 27002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
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
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_27003(context, evt)
	-- 判断是gadgetid 为 27001的移动平台，是否到达了5 的点集中的 3 点
	
	if 27001 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_27003(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_27004(context, evt)
	-- 判断是gadgetid 为 27001的移动平台，是否到达了5 的点集中的 7 点
	
	if 27001 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_27004(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_27006(context, evt)
	-- 判断是gadgetid 为 27001的移动平台，是否到达了5 的点集中的 9 点
	
	if 27001 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_27006(context, evt)
	-- 将configid为 27001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/AnimalSeelie"