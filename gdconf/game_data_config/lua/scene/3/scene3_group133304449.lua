-- 基础信息
local base_info = {
	group_id = 133304449
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
		{ config_id = 449001, gadget_id = 70330238, pos = { x = -1167.111, y = 165.591, z = 2491.978 }, rot = { x = 0.000, y = 296.288, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 449002, gadget_id = 70290555, pos = { x = -1130.719, y = 168.651, z = 2452.682 }, rot = { x = 0.000, y = 100.814, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 449006, gadget_id = 70290556, pos = { x = -1130.367, y = 169.593, z = 2451.001 }, rot = { x = 0.000, y = 117.710, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1449003, name = "GADGET_STATE_CHANGE_449003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449003", action = "action_EVENT_GADGET_STATE_CHANGE_449003", trigger_count = 0 },
		{ config_id = 1449004, name = "GROUP_LOAD_449004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_449004", action = "action_EVENT_GROUP_LOAD_449004", trigger_count = 0 },
		{ config_id = 1449005, name = "GADGET_STATE_CHANGE_449005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449005", action = "action_EVENT_GADGET_STATE_CHANGE_449005" }
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
	},
	{
		-- suite_id = 2,
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