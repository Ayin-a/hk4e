-- 基础信息
local base_info = {
	group_id = 199004088
}

-- Trigger变量
local defs = {
	gadget_animal = 88001,
	pointarray_ID = 900400003,
	maxPointCount = 9,
	gadget_Reward = 88002,
	pointInfo = {1,3,5,7,9},
	addSuite_Info = 2,
	animal_state = {0,201,0,203,203}
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
	{ config_id = 88001, gadget_id = 70360358, pos = { x = -387.592, y = 120.018, z = -684.725 }, rot = { x = 0.000, y = 319.918, z = 0.000 }, level = 20, state = GadgetState.GearAction1, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 88002, gadget_id = 70211101, pos = { x = -336.118, y = 155.391, z = -703.173 }, rot = { x = 0.000, y = 289.815, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1088003, name = "PLATFORM_REACH_POINT_88003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_88003", action = "action_EVENT_PLATFORM_REACH_POINT_88003" },
		{ config_id = 1088004, name = "PLATFORM_REACH_POINT_88004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_88004", action = "action_EVENT_PLATFORM_REACH_POINT_88004" },
		{ config_id = 1088005, name = "PLATFORM_REACH_POINT_88005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_88005", action = "action_EVENT_PLATFORM_REACH_POINT_88005" },
		{ config_id = 1088006, name = "PLATFORM_REACH_POINT_88006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_88006", action = "action_EVENT_PLATFORM_REACH_POINT_88006" }
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
			{ config_id = 88001, state = 203, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 88002, state = 0 }
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