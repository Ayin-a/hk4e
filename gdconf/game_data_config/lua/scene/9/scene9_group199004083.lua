-- 基础信息
local base_info = {
	group_id = 199004083
}

-- Trigger变量
local defs = {
	gadget_animal = 83001,
	pointarray_ID = 900400002,
	maxPointCount = 9,
	gadget_Reward = 83002,
	pointInfo = {2,4,5,7,9},
	addSuite_Info = 2,
	animal_state = {0,0,201,203,201}
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
	{ config_id = 83001, gadget_id = 70360358, pos = { x = -413.359, y = 122.211, z = -549.178 }, rot = { x = 0.000, y = 66.238, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 83002, gadget_id = 70211001, pos = { x = -465.802, y = 120.134, z = -724.142 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1083003, name = "PLATFORM_REACH_POINT_83003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_83003", action = "action_EVENT_PLATFORM_REACH_POINT_83003" },
		{ config_id = 1083004, name = "PLATFORM_REACH_POINT_83004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_83004", action = "action_EVENT_PLATFORM_REACH_POINT_83004" },
		{ config_id = 1083005, name = "PLATFORM_REACH_POINT_83005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_83005", action = "action_EVENT_PLATFORM_REACH_POINT_83005" },
		{ config_id = 1083006, name = "PLATFORM_REACH_POINT_83006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_83006", action = "action_EVENT_PLATFORM_REACH_POINT_83006" }
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
			{ config_id = 83001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 83002, state = 0 }
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