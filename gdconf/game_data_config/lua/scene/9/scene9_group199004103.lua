-- 基础信息
local base_info = {
	group_id = 199004103
}

-- Trigger变量
local defs = {
	gadget_animal = 103001,
	pointarray_ID = 900400007,
	maxPointCount = 10,
	gadget_Reward = 103002,
	pointInfo = {2,4,6,8,10},
	addSuite_Info = 2,
	animal_state = {0,201,201,203,0}
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
	{ config_id = 103001, gadget_id = 70360358, pos = { x = -401.932, y = 122.873, z = -651.034 }, rot = { x = 355.924, y = 326.738, z = 353.816 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 103002, gadget_id = 70211001, pos = { x = -302.493, y = 148.575, z = -673.000 }, rot = { x = 4.692, y = 162.532, z = 17.485 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1103003, name = "PLATFORM_REACH_POINT_103003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103003", action = "action_EVENT_PLATFORM_REACH_POINT_103003" },
		{ config_id = 1103004, name = "PLATFORM_REACH_POINT_103004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103004", action = "action_EVENT_PLATFORM_REACH_POINT_103004" },
		{ config_id = 1103005, name = "PLATFORM_REACH_POINT_103005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103005", action = "action_EVENT_PLATFORM_REACH_POINT_103005" },
		{ config_id = 1103006, name = "PLATFORM_REACH_POINT_103006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_103006", action = "action_EVENT_PLATFORM_REACH_POINT_103006" }
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
			{ config_id = 103001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 103002, state = 0 }
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