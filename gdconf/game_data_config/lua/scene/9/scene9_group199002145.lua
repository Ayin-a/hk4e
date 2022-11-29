-- 基础信息
local base_info = {
	group_id = 199002145
}

-- Trigger变量
local defs = {
	gadget_animal = 145001,
	pointarray_ID = 900200093,
	maxPointCount = 15,
	gadget_Reward = 145002,
	pointInfo = {2,5,8,10,12,15},
	addSuite_Info = 2,
	animal_state = {201,0,203,202,203,201}
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
	{ config_id = 145001, gadget_id = 70360358, pos = { x = 216.686, y = 120.002, z = -157.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false, persistent = true, is_use_point_array = true, area_id = 401 },
	{ config_id = 145002, gadget_id = 70211001, pos = { x = 112.788, y = 126.789, z = -119.919 }, rot = { x = 0.000, y = 179.167, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
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
		{ config_id = 1145003, name = "PLATFORM_REACH_POINT_145003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145003", action = "action_EVENT_PLATFORM_REACH_POINT_145003", trigger_count = 0 },
		{ config_id = 1145004, name = "PLATFORM_REACH_POINT_145004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145004", action = "action_EVENT_PLATFORM_REACH_POINT_145004", trigger_count = 0 },
		{ config_id = 1145005, name = "PLATFORM_REACH_POINT_145005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145005", action = "action_EVENT_PLATFORM_REACH_POINT_145005", trigger_count = 0 },
		{ config_id = 1145006, name = "PLATFORM_REACH_POINT_145006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145006", action = "action_EVENT_PLATFORM_REACH_POINT_145006", trigger_count = 0 },
		{ config_id = 1145007, name = "PLATFORM_REACH_POINT_145007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_145007", action = "action_EVENT_PLATFORM_REACH_POINT_145007", trigger_count = 0 }
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
			{ config_id = 145001, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 145002, state = 0 }
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