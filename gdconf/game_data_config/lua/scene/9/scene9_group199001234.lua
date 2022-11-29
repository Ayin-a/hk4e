-- 基础信息
local base_info = {
	group_id = 199001234
}

-- Trigger变量
local defs = {
	gadget_animal = 234001,
	pointarray_ID = 900100013,
	maxPointCount = 26,
	gadget_Reward = 234002,
	pointInfo = {1,7,12,17,23,26},
	addSuite_Info = 2,
	animal_state = {0,0,0,0,0,0}
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
	{ config_id = 234001, gadget_id = 70360358, pos = { x = 321.247, y = 120.191, z = 263.773 }, rot = { x = 0.000, y = 53.715, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 234002, gadget_id = 70211165, pos = { x = 374.878, y = 138.066, z = 186.007 }, rot = { x = 0.000, y = 257.114, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234008, name = "GADGET_STATE_CHANGE_234008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234008", action = "action_EVENT_GADGET_STATE_CHANGE_234008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1234003, name = "PLATFORM_REACH_POINT_234003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_234003", action = "action_EVENT_PLATFORM_REACH_POINT_234003", trigger_count = 0 },
		{ config_id = 1234004, name = "PLATFORM_REACH_POINT_234004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_234004", action = "action_EVENT_PLATFORM_REACH_POINT_234004", trigger_count = 0 },
		{ config_id = 1234005, name = "PLATFORM_REACH_POINT_234005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_234005", action = "action_EVENT_PLATFORM_REACH_POINT_234005", trigger_count = 0 },
		{ config_id = 1234006, name = "PLATFORM_REACH_POINT_234006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_234006", action = "action_EVENT_PLATFORM_REACH_POINT_234006", trigger_count = 0 },
		{ config_id = 1234007, name = "PLATFORM_REACH_POINT_234007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_234007", action = "action_EVENT_PLATFORM_REACH_POINT_234007", trigger_count = 0 }
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
			{ config_id = 234001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 234002, state = 101 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234008" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 234002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_234008(context, evt)
	if 234002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199001234, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/AnimalSeelie"