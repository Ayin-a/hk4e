-- 基础信息
local base_info = {
	group_id = 133220377
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {377001,377002,377003,377004,377005},
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
	monsters = {
		{ config_id = 377011, monster_id = 26010301, pos = { x = -3590.937, y = 229.505, z = -4661.727 }, rot = { x = 0.000, y = 218.593, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 },
		{ config_id = 377015, monster_id = 26010301, pos = { x = -3596.738, y = 230.669, z = -4664.654 }, rot = { x = 0.000, y = 218.593, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 },
		{ config_id = 377016, monster_id = 26010301, pos = { x = -3592.713, y = 230.424, z = -4666.315 }, rot = { x = 0.000, y = 218.593, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 }
	},
	gadgets = {
		{ config_id = 377001, gadget_id = 70510013, pos = { x = -3598.707, y = 230.212, z = -4660.492 }, rot = { x = 0.000, y = 32.572, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 377002, gadget_id = 70510013, pos = { x = -3586.783, y = 228.414, z = -4659.475 }, rot = { x = 0.000, y = 249.631, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 377003, gadget_id = 70510013, pos = { x = -3597.354, y = 231.393, z = -4668.694 }, rot = { x = 0.000, y = 48.066, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 377004, gadget_id = 70510013, pos = { x = -3585.304, y = 227.844, z = -4667.380 }, rot = { x = 0.000, y = 355.926, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 377005, gadget_id = 70510013, pos = { x = -3592.321, y = 231.032, z = -4670.410 }, rot = { x = 356.624, y = 52.219, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 377006, gadget_id = 70211122, pos = { x = -3592.610, y = 231.668, z = -4674.425 }, rot = { x = 1.259, y = 1.612, z = 356.894 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 377025, gadget_id = 70500000, pos = { x = -3593.605, y = 230.244, z = -4664.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 11 }
	},
	triggers = {
		{ config_id = 1377007, name = "GADGET_STATE_CHANGE_377007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377007", action = "action_EVENT_GADGET_STATE_CHANGE_377007", trigger_count = 0 },
		{ config_id = 1377008, name = "VARIABLE_CHANGE_377008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_377008", trigger_count = 0 },
		{ config_id = 1377009, name = "VARIABLE_CHANGE_377009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_377009", action = "action_EVENT_VARIABLE_CHANGE_377009", trigger_count = 0 },
		{ config_id = 1377010, name = "VARIABLE_CHANGE_377010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_377010", action = "action_EVENT_VARIABLE_CHANGE_377010", trigger_count = 0 },
		{ config_id = 1377012, name = "ANY_MONSTER_DIE_377012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_377012", action = "action_EVENT_ANY_MONSTER_DIE_377012" },
		{ config_id = 1377013, name = "GADGET_CREATE_377013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377013", action = "action_EVENT_GADGET_CREATE_377013", trigger_count = 0 },
		{ config_id = 1377014, name = "SELECT_OPTION_377014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377014", action = "action_EVENT_SELECT_OPTION_377014", trigger_count = 0 },
		{ config_id = 1377017, name = "GADGET_CREATE_377017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377017", action = "action_EVENT_GADGET_CREATE_377017", trigger_count = 0 },
		{ config_id = 1377018, name = "GADGET_CREATE_377018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377018", action = "action_EVENT_GADGET_CREATE_377018", trigger_count = 0 },
		{ config_id = 1377019, name = "GADGET_CREATE_377019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377019", action = "action_EVENT_GADGET_CREATE_377019", trigger_count = 0 },
		{ config_id = 1377020, name = "GADGET_CREATE_377020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377020", action = "action_EVENT_GADGET_CREATE_377020", trigger_count = 0 },
		{ config_id = 1377021, name = "SELECT_OPTION_377021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377021", action = "action_EVENT_SELECT_OPTION_377021", trigger_count = 0 },
		{ config_id = 1377022, name = "SELECT_OPTION_377022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377022", action = "action_EVENT_SELECT_OPTION_377022", trigger_count = 0 },
		{ config_id = 1377023, name = "SELECT_OPTION_377023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377023", action = "action_EVENT_SELECT_OPTION_377023", trigger_count = 0 },
		{ config_id = 1377024, name = "SELECT_OPTION_377024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377024", action = "action_EVENT_SELECT_OPTION_377024", trigger_count = 0 }
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