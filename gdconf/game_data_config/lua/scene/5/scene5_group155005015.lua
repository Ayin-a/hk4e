-- 基础信息
local base_info = {
	group_id = 155005015
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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 15002, gadget_id = 70310011, pos = { x = -166.847, y = 268.769, z = 451.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1015001, name = "QUEST_START_15001", event = EventType.EVENT_QUEST_START, source = "7219101", condition = "", action = "action_EVENT_QUEST_START_15001", trigger_count = 0 },
		{ config_id = 1015003, name = "GADGET_STATE_CHANGE_15003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15003", action = "action_EVENT_GADGET_STATE_CHANGE_15003", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================