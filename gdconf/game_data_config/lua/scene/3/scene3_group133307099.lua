-- 基础信息
local base_info = {
	group_id = 133307099
}

-- DEFS_MISCS


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
	{ config_id = 1, name = "pressbutton1", value = 0, no_refresh = true },
	{ config_id = 2, name = "pressbutton2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 99001, gadget_id = 70330308, pos = { x = -1988.010, y = 88.701, z = 5966.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 99002, gadget_id = 70330283, pos = { x = -1997.464, y = 89.362, z = 5970.574 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 3}, area_id = 27 }
	},
	triggers = {
		{ config_id = 1099003, name = "SELECT_OPTION_99003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99003", action = "action_EVENT_SELECT_OPTION_99003", trigger_count = 0 },
		{ config_id = 1099004, name = "VARIABLE_CHANGE_99004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99004", action = "action_EVENT_VARIABLE_CHANGE_99004", trigger_count = 0 },
		{ config_id = 1099005, name = "GROUP_LOAD_99005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_99005", action = "action_EVENT_GROUP_LOAD_99005", trigger_count = 0 },
		{ config_id = 1099006, name = "SELECT_OPTION_99006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99006", action = "action_EVENT_SELECT_OPTION_99006", trigger_count = 0 },
		{ config_id = 1099007, name = "VARIABLE_CHANGE_99007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99007", action = "action_EVENT_VARIABLE_CHANGE_99007", trigger_count = 0 },
		{ config_id = 1099008, name = "GROUP_LOAD_99008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_99008", action = "action_EVENT_GROUP_LOAD_99008", trigger_count = 0 }
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