-- 基础信息
local base_info = {
	group_id = 199001173
}

-- Trigger变量
local defs = {
	gadget_animal = 173001,
	pointarray_ID = 900100007,
	maxPointCount = 18,
	gadget_Reward = 173002,
	pointInfo = {1,2,4,7,9,11,13,15,17,18},
	addSuite_Info = 2,
	animal_state = {0,0,0,0,0,0,0,0,0,0}
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
	{ config_id = 173001, gadget_id = 70360358, pos = { x = 294.682, y = 166.694, z = 185.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 173002, gadget_id = 70211001, pos = { x = 343.726, y = 202.616, z = 174.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		{ config_id = 1173003, name = "PLATFORM_REACH_POINT_173003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173003", action = "action_EVENT_PLATFORM_REACH_POINT_173003", trigger_count = 0 },
		{ config_id = 1173004, name = "PLATFORM_REACH_POINT_173004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173004", action = "action_EVENT_PLATFORM_REACH_POINT_173004", trigger_count = 0 },
		{ config_id = 1173005, name = "PLATFORM_REACH_POINT_173005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173005", action = "action_EVENT_PLATFORM_REACH_POINT_173005", trigger_count = 0 },
		{ config_id = 1173006, name = "PLATFORM_REACH_POINT_173006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173006", action = "action_EVENT_PLATFORM_REACH_POINT_173006", trigger_count = 0 },
		{ config_id = 1173007, name = "PLATFORM_REACH_POINT_173007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173007", action = "action_EVENT_PLATFORM_REACH_POINT_173007", trigger_count = 0 },
		{ config_id = 1173008, name = "PLATFORM_REACH_POINT_173008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173008", action = "action_EVENT_PLATFORM_REACH_POINT_173008", trigger_count = 0 },
		{ config_id = 1173009, name = "PLATFORM_REACH_POINT_173009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173009", action = "action_EVENT_PLATFORM_REACH_POINT_173009", trigger_count = 0 },
		{ config_id = 1173010, name = "PLATFORM_REACH_POINT_173010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173010", action = "action_EVENT_PLATFORM_REACH_POINT_173010", trigger_count = 0 },
		{ config_id = 1173011, name = "PLATFORM_REACH_POINT_173011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_173011", action = "action_EVENT_PLATFORM_REACH_POINT_173011", trigger_count = 0 }
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
			{ config_id = 173001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 173002, state = 0 }
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