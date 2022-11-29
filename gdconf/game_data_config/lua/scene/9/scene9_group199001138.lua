-- 基础信息
local base_info = {
	group_id = 199001138
}

-- Trigger变量
local defs = {
	gadget_animal = 138001,
	pointarray_ID = 900100004,
	maxPointCount = 8,
	gadget_Reward = 138002,
	pointInfo = {1,3,5,8},
	addSuite_Info = 2,
	animal_state = {202,202,202,0}
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
	{ config_id = 138001, gadget_id = 70360358, pos = { x = 333.033, y = 119.364, z = 388.322 }, rot = { x = 0.000, y = 307.727, z = 0.000 }, level = 20, state = GadgetState.GearStop, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 138002, gadget_id = 70211111, pos = { x = 353.683, y = 127.758, z = 418.658 }, rot = { x = 31.532, y = 277.641, z = 0.002 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1138003, name = "PLATFORM_REACH_POINT_138003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_138003", action = "action_EVENT_PLATFORM_REACH_POINT_138003", trigger_count = 0 },
		{ config_id = 1138004, name = "PLATFORM_REACH_POINT_138004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_138004", action = "action_EVENT_PLATFORM_REACH_POINT_138004" },
		{ config_id = 1138005, name = "PLATFORM_REACH_POINT_138005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_138005", action = "action_EVENT_PLATFORM_REACH_POINT_138005", trigger_count = 0 },
		{ config_id = 1138006, name = "PLATFORM_REACH_POINT_138006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_138006", action = "action_EVENT_PLATFORM_REACH_POINT_138006", trigger_count = 0 }
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
			{ config_id = 138001, state = 202, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 138002, state = 0 }
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

require "V2_8/AnimalSeelie"