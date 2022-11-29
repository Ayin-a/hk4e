-- 基础信息
local base_info = {
	group_id = 199004066
}

-- Trigger变量
local defs = {
	gadget_animal = 66001,
	pointarray_ID = 900400001,
	maxPointCount = 10,
	gadget_Reward = 66002,
	pointInfo = {1,3,5,7,10},
	addSuite_Info = 2,
	animal_state = {0,0,203,201,0}
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
	{ config_id = 66001, gadget_id = 70360358, pos = { x = -412.414, y = 134.825, z = -578.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 },
	{ config_id = 66002, gadget_id = 70211101, pos = { x = -364.086, y = 214.908, z = -630.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		{ config_id = 1066003, name = "PLATFORM_REACH_POINT_66003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66003", action = "action_EVENT_PLATFORM_REACH_POINT_66003" },
		{ config_id = 1066004, name = "PLATFORM_REACH_POINT_66004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66004", action = "action_EVENT_PLATFORM_REACH_POINT_66004" },
		{ config_id = 1066005, name = "PLATFORM_REACH_POINT_66005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_66005", action = "action_EVENT_PLATFORM_REACH_POINT_66005" }
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
			{ config_id = 66001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
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
			{ config_id = 66002, state = 0 }
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