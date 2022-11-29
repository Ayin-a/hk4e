-- 基础信息
local base_info = {
	group_id = 199002142
}

-- Trigger变量
local defs = {
	gadget_animal = 142001,
	pointarray_ID = 900200092,
	maxPointCount = 28,
	gadget_Reward = 142002,
	pointInfo = {2,5,7,12,14,16,18,24,28},
	addSuite_Info = 2,
	animal_state = {203,201,0,203,0,0,203,203,201}
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
	{ config_id = 142001, gadget_id = 70360358, pos = { x = 576.568, y = 127.000, z = -80.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 142002, gadget_id = 70211001, pos = { x = 525.027, y = 187.893, z = -88.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		{ config_id = 1142003, name = "PLATFORM_REACH_POINT_142003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142003", action = "action_EVENT_PLATFORM_REACH_POINT_142003", trigger_count = 0 },
		{ config_id = 1142004, name = "PLATFORM_REACH_POINT_142004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142004", action = "action_EVENT_PLATFORM_REACH_POINT_142004", trigger_count = 0 },
		{ config_id = 1142005, name = "PLATFORM_REACH_POINT_142005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142005", action = "action_EVENT_PLATFORM_REACH_POINT_142005", trigger_count = 0 },
		{ config_id = 1142007, name = "PLATFORM_REACH_POINT_142007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142007", action = "action_EVENT_PLATFORM_REACH_POINT_142007", trigger_count = 0 },
		{ config_id = 1142008, name = "PLATFORM_REACH_POINT_142008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142008", action = "action_EVENT_PLATFORM_REACH_POINT_142008", trigger_count = 0 },
		{ config_id = 1142010, name = "PLATFORM_REACH_POINT_142010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142010", action = "action_EVENT_PLATFORM_REACH_POINT_142010", trigger_count = 0 },
		{ config_id = 1142011, name = "PLATFORM_REACH_POINT_142011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142011", action = "action_EVENT_PLATFORM_REACH_POINT_142011", trigger_count = 0 },
		{ config_id = 1142012, name = "PLATFORM_REACH_POINT_142012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142012", action = "action_EVENT_PLATFORM_REACH_POINT_142012", trigger_count = 0 },
		{ config_id = 1142013, name = "PLATFORM_REACH_POINT_142013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142013", action = "action_EVENT_PLATFORM_REACH_POINT_142013", trigger_count = 0 }
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
			{ config_id = 142001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 142002, state = 0 }
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