-- 基础信息
local base_info = {
	group_id = 220133032
}

-- Trigger变量
local defs = {
	gadget_animal = 32001,
	pointarray_ID = 6,
	maxPointCount = 11,
	gadget_Reward = 0,
	pointInfo = {1,4,11},
	addSuite_Info = 3,
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
	{ config_id = 32001, gadget_id = 70360358, pos = { x = 2638.105, y = 584.297, z = -1771.661 }, rot = { x = 0.000, y = 183.003, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 32008, gadget_id = 70360358, pos = { x = 2638.105, y = 584.297, z = -1771.662 }, rot = { x = 0.000, y = 183.003, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032005, name = "PLATFORM_REACH_POINT_32005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_32005", action = "action_EVENT_PLATFORM_REACH_POINT_32005", trigger_count = 0 },
	{ config_id = 1032006, name = "PLATFORM_REACH_POINT_32006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_32006", action = "action_EVENT_PLATFORM_REACH_POINT_32006", trigger_count = 0 },
	{ config_id = 1032007, name = "PLATFORM_REACH_POINT_32007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_32007", action = "action_EVENT_PLATFORM_REACH_POINT_32007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1032002, name = "VARIABLE_CHANGE_32002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_32002", action = "action_EVENT_VARIABLE_CHANGE_32002", trigger_count = 0 },
		{ config_id = 1032003, name = "PLATFORM_REACH_POINT_32003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_32003", action = "action_EVENT_PLATFORM_REACH_POINT_32003", trigger_count = 0 },
		{ config_id = 1032004, name = "PLATFORM_REACH_POINT_32004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_32004", action = "action_EVENT_PLATFORM_REACH_POINT_32004", trigger_count = 0 }
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
	suite = 2,
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
			{ config_id = 32001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_32005", "PLATFORM_REACH_POINT_32006", "PLATFORM_REACH_POINT_32007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 32008, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
function condition_EVENT_PLATFORM_REACH_POINT_32005(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了6 的点集中的 4 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_32005(context, evt)
	-- 将configid为 32001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_32006(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了6 的点集中的 11 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 11 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_32006(context, evt)
	-- 将configid为 32001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133033, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_32007(context, evt)
	-- 判断是gadgetid 为 32001的移动平台，是否到达了6 的点集中的 5 点
	
	if 32001 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_32007(context, evt)
	-- 触发镜头注目，注目位置为坐标（2656.48，585.839，-1748.326），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2656.48, y=585.839, z=-1748.326}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_8/AnimalSeelie"