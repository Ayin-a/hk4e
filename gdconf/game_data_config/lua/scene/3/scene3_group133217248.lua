-- 基础信息
local base_info = {
	group_id = 133217248
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
		{ config_id = 248001, gadget_id = 70360180, pos = { x = -4358.625, y = 214.771, z = -3817.783 }, rot = { x = 3.933, y = 348.297, z = 0.824 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 248007, gadget_id = 70360286, pos = { x = -4358.653, y = 215.805, z = -3817.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1248003, name = "GADGET_STATE_CHANGE_248003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248003", action = "action_EVENT_GADGET_STATE_CHANGE_248003", trigger_count = 0 },
		{ config_id = 1248004, name = "GADGET_STATE_CHANGE_248004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248004", action = "action_EVENT_GADGET_STATE_CHANGE_248004", trigger_count = 0 },
		{ config_id = 1248005, name = "GADGET_STATE_CHANGE_248005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248005", action = "action_EVENT_GADGET_STATE_CHANGE_248005", trigger_count = 0 },
		{ config_id = 1248008, name = "GADGET_STATE_CHANGE_248008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248008", action = "action_EVENT_GADGET_STATE_CHANGE_248008", trigger_count = 0 },
		{ config_id = 1248009, name = "SELECT_OPTION_248009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_248009", action = "action_EVENT_SELECT_OPTION_248009", trigger_count = 0 },
		{ config_id = 1248010, name = "SELECT_OPTION_248010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_248010", action = "action_EVENT_SELECT_OPTION_248010", trigger_count = 0 }
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
	end_suite = 0,
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
		-- description = ,
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