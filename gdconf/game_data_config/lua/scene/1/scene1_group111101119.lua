-- 基础信息
local base_info = {
	group_id = 111101119
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 110100053,
	gadget_seelie = 119002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	gadgets = {
		{ config_id = 119001, gadget_id = 70720215, pos = { x = 2659.939, y = 248.547, z = -1230.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32 },
		{ config_id = 119002, gadget_id = 70720214, pos = { x = 2676.206, y = 252.241, z = -1244.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 110100054 },
		{ config_id = 119003, gadget_id = 70720216, pos = { x = 2660.639, y = 248.622, z = -1231.697 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 32 },
		{ config_id = 119004, gadget_id = 70211111, pos = { x = 2659.824, y = 248.442, z = -1229.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
		{ config_id = 119010, gadget_id = 70350081, pos = { x = 2665.455, y = 248.862, z = -1247.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 119011, gadget_id = 70350081, pos = { x = 2662.676, y = 249.031, z = -1242.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 119007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2676.505, y = 251.485, z = -1244.694 } }
	},
	triggers = {
		{ config_id = 1119005, name = "PLATFORM_REACH_POINT_119005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_119005", action = "action_EVENT_PLATFORM_REACH_POINT_119005", trigger_count = 0 },
		{ config_id = 1119006, name = "AVATAR_NEAR_PLATFORM_119006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_119006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_119006", trigger_count = 0 },
		{ config_id = 1119007, name = "ENTER_REGION_119007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119007", action = "action_EVENT_ENTER_REGION_119007", trigger_count = 0 },
		{ config_id = 1119008, name = "GADGET_STATE_CHANGE_119008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119008", action = "action_EVENT_GADGET_STATE_CHANGE_119008" },
		{ config_id = 1119012, name = "GADGET_CREATE_119012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_119012", action = "action_EVENT_GADGET_CREATE_119012", trigger_count = 0 },
		{ config_id = 1119013, name = "GADGET_CREATE_119013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_119013", action = "action_EVENT_GADGET_CREATE_119013", trigger_count = 0 },
		{ config_id = 1119014, name = "SELECT_OPTION_119014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_119014", action = "action_EVENT_SELECT_OPTION_119014", trigger_count = 0 },
		{ config_id = 1119015, name = "SELECT_OPTION_119015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_119015", action = "action_EVENT_SELECT_OPTION_119015", trigger_count = 0 }
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
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
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