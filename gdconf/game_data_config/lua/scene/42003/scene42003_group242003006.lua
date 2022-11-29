-- 基础信息
local base_info = {
	group_id = 242003006
}

-- Trigger变量
local defs = {
	group_id = 242003006,
	timer = 60,
	challange_group_id = 242003010
}

-- DEFS_MISCS
local light_bridge={
	{operator_id=6010,effect_id=6034,gadget_id={6001,6002}}
}
local wind_field={

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
	{ config_id = 6001, gadget_id = 70350110, pos = { x = 94.868, y = 2.980, z = -40.740 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70350110, pos = { x = 95.087, y = 2.995, z = -62.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, gadget_id = 70360145, pos = { x = 103.960, y = 3.249, z = -50.183 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 6034, gadget_id = 70360140, pos = { x = 103.960, y = 3.249, z = -50.183 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
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
		{ config_id = 1006009, name = "GROUP_LOAD_6009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6009" },
		{ config_id = 1006012, name = "GADGET_CREATE_6012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6012", action = "action_EVENT_GADGET_CREATE_6012" },
		{ config_id = 1006013, name = "SELECT_OPTION_6013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6013", action = "action_EVENT_SELECT_OPTION_6013", trigger_count = 0 },
		{ config_id = 1006014, name = "TIMER_EVENT_6014", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_6014", trigger_count = 0 }
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
		gadgets = { 6001, 6002, 6010, 6034 },
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

require "TowerDefense_Trap"