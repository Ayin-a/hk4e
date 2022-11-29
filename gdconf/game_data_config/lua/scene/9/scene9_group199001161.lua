-- 基础信息
local base_info = {
	group_id = 199001161
}

-- Trigger变量
local defs = {
	gadget_animal = 161001,
	pointarray_ID = 900100006,
	maxPointCount = 15,
	gadget_Reward = 161002,
	pointInfo = {4,5,8,11,15},
	addSuite_Info = 2,
	animal_state = {201,201,0,203,0}
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
	{ config_id = 161001, gadget_id = 70360358, pos = { x = 730.201, y = 146.663, z = 210.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearAction1, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 161002, gadget_id = 70211001, pos = { x = 758.559, y = 169.704, z = 195.374 }, rot = { x = 0.000, y = 160.448, z = 349.509 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		{ config_id = 1161003, name = "PLATFORM_REACH_POINT_161003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161003", action = "action_EVENT_PLATFORM_REACH_POINT_161003", trigger_count = 0 },
		{ config_id = 1161005, name = "PLATFORM_REACH_POINT_161005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161005", action = "action_EVENT_PLATFORM_REACH_POINT_161005", trigger_count = 0 },
		{ config_id = 1161006, name = "PLATFORM_REACH_POINT_161006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161006", action = "action_EVENT_PLATFORM_REACH_POINT_161006", trigger_count = 0 },
		{ config_id = 1161007, name = "PLATFORM_REACH_POINT_161007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161007", action = "action_EVENT_PLATFORM_REACH_POINT_161007", trigger_count = 0 }
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
			{ config_id = 161001, state = 203, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 161002, state = 0 }
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