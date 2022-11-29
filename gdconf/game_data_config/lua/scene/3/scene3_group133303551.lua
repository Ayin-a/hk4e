-- 基础信息
local base_info = {
	group_id = 133303551
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {551002,551003,551004},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

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
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 551001, gadget_id = 70310200, pos = { x = -1412.673, y = 238.397, z = 3677.167 }, rot = { x = 0.000, y = 201.178, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 551002, gadget_id = 70310200, pos = { x = -1404.526, y = 240.237, z = 3694.154 }, rot = { x = 0.000, y = 310.646, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 551003, gadget_id = 70310200, pos = { x = -1404.738, y = 242.811, z = 3682.427 }, rot = { x = 0.000, y = 7.513, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 551004, gadget_id = 70310200, pos = { x = -1426.996, y = 237.148, z = 3682.141 }, rot = { x = 0.000, y = 272.344, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 551005, gadget_id = 70211121, pos = { x = -1412.995, y = 230.799, z = 3687.787 }, rot = { x = 0.000, y = 81.527, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
		{ config_id = 551006, gadget_id = 70310198, pos = { x = -1400.913, y = 237.901, z = 3704.291 }, rot = { x = 343.646, y = 359.613, z = 12.358 }, level = 30, persistent = true, area_id = 23 }
	},
	triggers = {
		{ config_id = 1551010, name = "GADGET_STATE_CHANGE_551010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551010", action = "action_EVENT_GADGET_STATE_CHANGE_551010", trigger_count = 0 },
		{ config_id = 1551011, name = "GADGET_STATE_CHANGE_551011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551011", action = "action_EVENT_GADGET_STATE_CHANGE_551011", trigger_count = 0 },
		{ config_id = 1551012, name = "VARIABLE_CHANGE_551012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_551012", trigger_count = 0 },
		{ config_id = 1551013, name = "VARIABLE_CHANGE_551013", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_551013", action = "action_EVENT_VARIABLE_CHANGE_551013", trigger_count = 0 },
		{ config_id = 1551014, name = "VARIABLE_CHANGE_551014", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_551014", action = "action_EVENT_VARIABLE_CHANGE_551014", trigger_count = 0 }
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
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
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
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
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
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================