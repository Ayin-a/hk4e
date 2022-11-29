-- 基础信息
local base_info = {
	group_id = 133212368
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {368005,368002,368004,368001,368003},
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
		{ config_id = 368001, gadget_id = 70310001, pos = { x = -4164.641, y = 191.866, z = -2179.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 368002, gadget_id = 70310001, pos = { x = -4162.159, y = 196.749, z = -2213.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 368003, gadget_id = 70310001, pos = { x = -4167.048, y = 196.879, z = -2219.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 368004, gadget_id = 70310001, pos = { x = -4200.412, y = 208.275, z = -2220.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 368005, gadget_id = 70310001, pos = { x = -4196.695, y = 203.369, z = -2193.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 368006, gadget_id = 70350081, pos = { x = -4216.569, y = 139.900, z = -2596.287 }, rot = { x = 0.000, y = 266.462, z = 0.000 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1368007, name = "GADGET_STATE_CHANGE_368007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_368007", action = "action_EVENT_GADGET_STATE_CHANGE_368007", trigger_count = 0 },
		{ config_id = 1368008, name = "VARIABLE_CHANGE_368008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_368008", trigger_count = 0 },
		{ config_id = 1368009, name = "VARIABLE_CHANGE_368009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_368009", action = "", trigger_count = 0 },
		{ config_id = 1368010, name = "VARIABLE_CHANGE_368010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_368010", action = "action_EVENT_VARIABLE_CHANGE_368010", trigger_count = 0 }
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