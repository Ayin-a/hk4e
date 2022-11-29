-- 基础信息
local base_info = {
	group_id = 220138019
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
	{ config_id = 1, name = "lifter_pos_mark", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19001, gadget_id = 70380319, pos = { x = 3.027, y = 49.156, z = 77.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
		{ config_id = 19002, gadget_id = 70310380, pos = { x = -1.258, y = 38.021, z = 79.300 }, rot = { x = 359.724, y = 92.071, z = 0.004 }, level = 1 },
		{ config_id = 19008, gadget_id = 70310380, pos = { x = 8.119, y = 48.861, z = 78.801 }, rot = { x = 0.000, y = 178.579, z = 0.000 }, level = 1, state = GadgetState.GearStop }
	},
	triggers = {
		{ config_id = 1019003, name = "GADGET_STATE_CHANGE_19003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19003", action = "action_EVENT_GADGET_STATE_CHANGE_19003", trigger_count = 0 },
		{ config_id = 1019004, name = "GADGET_STATE_CHANGE_19004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19004", action = "action_EVENT_GADGET_STATE_CHANGE_19004", trigger_count = 0 },
		{ config_id = 1019005, name = "PLATFORM_ARRIVAL_19005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_19005", action = "action_EVENT_PLATFORM_ARRIVAL_19005", trigger_count = 0 },
		{ config_id = 1019006, name = "PLATFORM_ARRIVAL_19006", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_19006", action = "action_EVENT_PLATFORM_ARRIVAL_19006", trigger_count = 0 },
		{ config_id = 1019007, name = "GADGET_STATE_CHANGE_19007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19007", action = "action_EVENT_GADGET_STATE_CHANGE_19007", trigger_count = 0 },
		{ config_id = 1019009, name = "GADGET_STATE_CHANGE_19009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19009", action = "action_EVENT_GADGET_STATE_CHANGE_19009", trigger_count = 0 },
		{ config_id = 1019010, name = "PLATFORM_ARRIVAL_19010", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_19010", action = "action_EVENT_PLATFORM_ARRIVAL_19010", trigger_count = 0 },
		{ config_id = 1019011, name = "PLATFORM_ARRIVAL_19011", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_19011", action = "action_EVENT_PLATFORM_ARRIVAL_19011", trigger_count = 0 },
		{ config_id = 1019012, name = "GADGET_CREATE_19012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19012", action = "action_EVENT_GADGET_CREATE_19012", trigger_count = 0 }
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