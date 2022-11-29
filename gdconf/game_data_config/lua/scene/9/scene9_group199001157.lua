-- 基础信息
local base_info = {
	group_id = 199001157
}

-- Trigger变量
local defs = {
	gadget_animal = 157001,
	pointarray_ID = 900100005,
	maxPointCount = 16,
	gadget_Reward = 157002,
	pointInfo = {2,4,5,7,12,16},
	addSuite_Info = 2,
	animal_state = {0,203,203,202,201,0}
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
	{ config_id = 157001, gadget_id = 70360358, pos = { x = 721.674, y = 120.116, z = 242.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false, persistent = true, is_use_point_array = true, area_id = 402 },
	{ config_id = 157002, gadget_id = 70211001, pos = { x = 800.577, y = 132.681, z = 319.137 }, rot = { x = 0.000, y = 37.528, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		{ config_id = 1157003, name = "PLATFORM_REACH_POINT_157003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157003", action = "action_EVENT_PLATFORM_REACH_POINT_157003", trigger_count = 0 },
		{ config_id = 1157004, name = "PLATFORM_REACH_POINT_157004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157004", action = "action_EVENT_PLATFORM_REACH_POINT_157004", trigger_count = 0 },
		{ config_id = 1157006, name = "PLATFORM_REACH_POINT_157006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157006", action = "action_EVENT_PLATFORM_REACH_POINT_157006", trigger_count = 0 },
		{ config_id = 1157007, name = "PLATFORM_REACH_POINT_157007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157007", action = "action_EVENT_PLATFORM_REACH_POINT_157007", trigger_count = 0 },
		{ config_id = 1157008, name = "PLATFORM_REACH_POINT_157008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157008", action = "action_EVENT_PLATFORM_REACH_POINT_157008", trigger_count = 0 }
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
			{ config_id = 157001, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 157002, state = 0 }
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