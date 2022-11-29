-- 基础信息
local base_info = {
	group_id = 133301073
}

-- Trigger变量
local defs = {
	gadget_id = 73003
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 73001, gadget_id = 70310200, pos = { x = -877.969, y = -30.482, z = 3187.430 }, rot = { x = 0.000, y = 34.998, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 73002, gadget_id = 70310200, pos = { x = -872.041, y = -26.872, z = 3172.875 }, rot = { x = 0.000, y = 105.864, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 73004, gadget_id = 70310200, pos = { x = -874.005, y = -26.494, z = 3180.518 }, rot = { x = 0.000, y = 77.376, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
	},
	triggers = {
		{ config_id = 1073005, name = "GADGET_STATE_CHANGE_73005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73005", action = "action_EVENT_GADGET_STATE_CHANGE_73005", trigger_count = 0 },
		{ config_id = 1073006, name = "GADGET_STATE_CHANGE_73006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73006", action = "action_EVENT_GADGET_STATE_CHANGE_73006", trigger_count = 0 },
		{ config_id = 1073007, name = "GADGET_STATE_CHANGE_73007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73007", action = "action_EVENT_GADGET_STATE_CHANGE_73007", trigger_count = 0 }
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
	end_suite = 3,
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
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
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
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
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
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================