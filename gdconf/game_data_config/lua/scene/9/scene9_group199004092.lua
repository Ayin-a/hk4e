-- 基础信息
local base_info = {
	group_id = 199004092
}

-- Trigger变量
local defs = {
	gadget_animal = 92001,
	pointarray_ID = 900400005,
	maxPointCount = 9,
	gadget_Reward = 92002,
	pointInfo = {2,5,7,9},
	addSuite_Info = 2,
	animal_state = {0,201,203,201}
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
	{ config_id = 92001, gadget_id = 70360358, pos = { x = -363.666, y = 120.013, z = -554.029 }, rot = { x = 0.000, y = 302.171, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 92002, gadget_id = 70211001, pos = { x = -316.932, y = 179.435, z = -647.784 }, rot = { x = 359.369, y = 66.541, z = 4.854 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1092003, name = "PLATFORM_REACH_POINT_92003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_92003", action = "action_EVENT_PLATFORM_REACH_POINT_92003" },
		{ config_id = 1092004, name = "PLATFORM_REACH_POINT_92004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_92004", action = "action_EVENT_PLATFORM_REACH_POINT_92004" },
		{ config_id = 1092005, name = "PLATFORM_REACH_POINT_92005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_92005", action = "action_EVENT_PLATFORM_REACH_POINT_92005" },
		{ config_id = 1092006, name = "PLATFORM_REACH_POINT_92006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_92006", action = "action_EVENT_PLATFORM_REACH_POINT_92006" }
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
			{ config_id = 92001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 92002, state = 0 }
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