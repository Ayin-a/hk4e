-- 基础信息
local base_info = {
	group_id = 133220591
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
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 591001, gadget_id = 70330064, pos = { x = -2662.239, y = 205.104, z = -4804.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 11 },
		{ config_id = 591002, gadget_id = 70900380, pos = { x = -2662.239, y = 210.898, z = -4804.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 591003, gadget_id = 70900380, pos = { x = -2662.239, y = 225.282, z = -4804.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1591004, name = "VARIABLE_CHANGE_591004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_591004", action = "action_EVENT_VARIABLE_CHANGE_591004" },
		{ config_id = 1591005, name = "GADGET_STATE_CHANGE_591005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_591005", action = "action_EVENT_GADGET_STATE_CHANGE_591005", trigger_count = 0 },
		{ config_id = 1591006, name = "GADGET_STATE_CHANGE_591006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_591006", action = "action_EVENT_GADGET_STATE_CHANGE_591006", trigger_count = 0 },
		{ config_id = 1591007, name = "GADGET_CREATE_591007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_591007", action = "action_EVENT_GADGET_CREATE_591007", trigger_count = 0 }
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

require "V2_0/ElectricCore"