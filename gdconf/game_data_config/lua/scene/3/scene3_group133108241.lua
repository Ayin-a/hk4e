-- 基础信息
local base_info = {
	group_id = 133108241
}

-- Trigger变量
local defs = {
	group_id = 133108241
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
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasReward", value = 0, no_refresh = true },
	{ config_id = 3, name = "giveReward", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 241001, gadget_id = 70800060, pos = { x = -623.680, y = 200.000, z = -834.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
	},
	triggers = {
		{ config_id = 1241002, name = "GADGET_CREATE_241002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_241002", action = "action_EVENT_GADGET_CREATE_241002", trigger_count = 0 },
		{ config_id = 1241003, name = "SELECT_OPTION_241003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_241003", action = "action_EVENT_SELECT_OPTION_241003", trigger_count = 0 },
		{ config_id = 1241004, name = "VARIABLE_CHANGE_241004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_241004", action = "action_EVENT_VARIABLE_CHANGE_241004", trigger_count = 0 }
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
	end_suite = 2,
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