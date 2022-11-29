-- 基础信息
local base_info = {
	group_id = 199004098
}

-- Trigger变量
local defs = {
	gadget_animal = 98001,
	pointarray_ID = 900400006,
	maxPointCount = 10,
	gadget_Reward = 98002,
	pointInfo = {2,5,8,10},
	addSuite_Info = 2,
	animal_state = {201,203,0,203}
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
	{ config_id = 98001, gadget_id = 70360358, pos = { x = -445.365, y = 126.379, z = -681.652 }, rot = { x = 0.000, y = 48.254, z = 0.000 }, level = 20, state = GadgetState.GearAction1, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 98002, gadget_id = 70211001, pos = { x = -416.370, y = 120.392, z = -661.969 }, rot = { x = 0.000, y = 9.401, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1098003, name = "PLATFORM_REACH_POINT_98003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98003", action = "action_EVENT_PLATFORM_REACH_POINT_98003" },
		{ config_id = 1098004, name = "PLATFORM_REACH_POINT_98004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98004", action = "action_EVENT_PLATFORM_REACH_POINT_98004" },
		{ config_id = 1098005, name = "PLATFORM_REACH_POINT_98005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98005", action = "action_EVENT_PLATFORM_REACH_POINT_98005" },
		{ config_id = 1098006, name = "PLATFORM_REACH_POINT_98006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_98006", action = "action_EVENT_PLATFORM_REACH_POINT_98006" }
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
			{ config_id = 98001, state = 203, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 98002, state = 0 }
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