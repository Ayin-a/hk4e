-- 基础信息
local base_info = {
	group_id = 242011013
}

-- Trigger变量
local defs = {
	timer = 60,
	group_id = 242011013,
	challange_group_id = 242011001
}

-- DEFS_MISCS
local light_bridge={
	{operator_id=13001,effect_id=13002,gadget_id={13003,13008}}
}
local wind_field={}

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
	{ config_id = 13001, gadget_id = 70360145, pos = { x = 71.214, y = 1.752, z = -46.971 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 13002, gadget_id = 70360140, pos = { x = 71.214, y = 1.752, z = -46.971 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70350110, pos = { x = 73.521, y = -6.347, z = -28.462 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13008, gadget_id = 70350110, pos = { x = 87.870, y = -6.613, z = -43.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
	triggers = {
		{ config_id = 1013004, name = "GADGET_CREATE_13004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13004", action = "action_EVENT_GADGET_CREATE_13004" },
		{ config_id = 1013005, name = "SELECT_OPTION_13005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13005", action = "action_EVENT_SELECT_OPTION_13005", trigger_count = 0 },
		{ config_id = 1013006, name = "TIMER_EVENT_13006", event = EventType.EVENT_TIMER_EVENT, source = "close", condition = "", action = "action_EVENT_TIMER_EVENT_13006", trigger_count = 0 },
		{ config_id = 1013007, name = "TIMER_EVENT_13007", event = EventType.EVENT_TIMER_EVENT, source = "cd", condition = "", action = "action_EVENT_TIMER_EVENT_13007", trigger_count = 0 }
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
		gadgets = { 13001, 13002, 13003, 13008 },
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

require "TowerDefense_Trap"