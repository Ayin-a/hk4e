-- 基础信息
local base_info = {
	group_id = 199004192
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
		{ config_id = 192001, gadget_id = 70360001, pos = { x = -461.876, y = 134.144, z = -702.147 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 20, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 400 }
	},
	triggers = {
		{ config_id = 1192003, name = "GADGET_CREATE_192003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_192003", action = "action_EVENT_GADGET_CREATE_192003", trigger_count = 0 },
		{ config_id = 1192004, name = "SELECT_OPTION_192004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192004", action = "action_EVENT_SELECT_OPTION_192004" },
		{ config_id = 1192005, name = "GADGET_STATE_CHANGE_192005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192005", action = "action_EVENT_GADGET_STATE_CHANGE_192005", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================