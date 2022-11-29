-- 基础信息
local base_info = {
	group_id = 133223182
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
	{ config_id = 1, name = "trigger", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 182001, gadget_id = 70220074, pos = { x = -6401.515, y = 200.000, z = -2941.375 }, rot = { x = 321.497, y = 57.167, z = 311.113 }, level = 30, state = GadgetState.GearStop, isOneoff = true, route_id = 322300034, start_route = false, persistent = true, area_id = 18 }
	},
	triggers = {
		{ config_id = 1182002, name = "GADGET_STATE_CHANGE_182002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182002", action = "action_EVENT_GADGET_STATE_CHANGE_182002", trigger_count = 0 },
		{ config_id = 1182003, name = "GADGET_STATE_CHANGE_182003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182003", action = "action_EVENT_GADGET_STATE_CHANGE_182003", trigger_count = 0 },
		{ config_id = 1182004, name = "ANY_GADGET_DIE_182004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182004", action = "action_EVENT_ANY_GADGET_DIE_182004" },
		{ config_id = 1182005, name = "VARIABLE_CHANGE_182005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_182005", action = "action_EVENT_VARIABLE_CHANGE_182005" }
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