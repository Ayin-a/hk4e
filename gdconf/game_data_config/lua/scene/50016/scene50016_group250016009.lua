-- 基础信息
local base_info = {
	group_id = 250016009
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
	{ config_id = 9, gadget_id = 70360002, pos = { x = -54.475, y = -11.000, z = -209.087 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 10, gadget_id = 70360002, pos = { x = -54.297, y = -11.000, z = -214.379 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 11, gadget_id = 70360002, pos = { x = -54.297, y = -11.000, z = -220.212 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12, gadget_id = 70360002, pos = { x = -54.297, y = -11.000, z = -218.011 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
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
		{ config_id = 1000019, name = "GADGET_CREATE_19", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19", action = "action_EVENT_GADGET_CREATE_19", trigger_count = 0 },
		{ config_id = 1000020, name = "SELECT_OPTION_20", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20", action = "action_EVENT_SELECT_OPTION_20", trigger_count = 0 },
		{ config_id = 1000021, name = "GADGET_CREATE_21", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21", action = "action_EVENT_GADGET_CREATE_21", trigger_count = 0 },
		{ config_id = 1000022, name = "SELECT_OPTION_22", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22", action = "action_EVENT_SELECT_OPTION_22", trigger_count = 0 },
		{ config_id = 1000023, name = "GADGET_CREATE_23", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23", action = "action_EVENT_GADGET_CREATE_23", trigger_count = 0 },
		{ config_id = 1000024, name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0 },
		{ config_id = 1000025, name = "GADGET_CREATE_25", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25", action = "action_EVENT_GADGET_CREATE_25", trigger_count = 0 },
		{ config_id = 1000026, name = "SELECT_OPTION_26", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_26", action = "action_EVENT_SELECT_OPTION_26", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 9, 10, 11 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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