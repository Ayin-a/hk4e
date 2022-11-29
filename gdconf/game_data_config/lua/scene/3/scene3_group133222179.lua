-- 基础信息
local base_info = {
	group_id = 133222179
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
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 179001, gadget_id = 70330064, pos = { x = -5191.727, y = 204.300, z = -4265.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
		{ config_id = 179002, gadget_id = 70900380, pos = { x = -5189.106, y = 208.702, z = -4269.158 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 179003, gadget_id = 70900380, pos = { x = -5185.068, y = 218.153, z = -4273.771 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 179004, gadget_id = 70900380, pos = { x = -5181.502, y = 226.932, z = -4277.939 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 179007, gadget_id = 70900380, pos = { x = -5177.143, y = 234.313, z = -4283.412 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
		{ config_id = 179008, gadget_id = 70900380, pos = { x = -5173.812, y = 242.405, z = -4287.810 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
		{ config_id = 179009, gadget_id = 70900380, pos = { x = -5169.728, y = 249.325, z = -4293.523 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1179005, name = "GADGET_STATE_CHANGE_179005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179005", action = "action_EVENT_GADGET_STATE_CHANGE_179005", trigger_count = 0 },
		{ config_id = 1179006, name = "GADGET_STATE_CHANGE_179006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179006", action = "action_EVENT_GADGET_STATE_CHANGE_179006", trigger_count = 0 },
		{ config_id = 1179010, name = "GADGET_CREATE_179010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_179010", action = "action_EVENT_GADGET_CREATE_179010" },
		{ config_id = 1179011, name = "VARIABLE_CHANGE_179011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_179011", action = "action_EVENT_VARIABLE_CHANGE_179011" }
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