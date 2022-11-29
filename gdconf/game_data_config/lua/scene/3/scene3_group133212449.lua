-- 基础信息
local base_info = {
	group_id = 133212449
}

-- Trigger变量
local defs = {
	max_gear = 3,
	timer = 10,
	group_id = 133212449,
	gadget_1 = 449001,
	gadget_2 = 449002,
	gadget_3 = 449003,
	gadget_chest = 449004,
	gadget_4 = 0
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
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 449001, gadget_id = 70900008, pos = { x = -4217.629, y = 199.776, z = -2507.831 }, rot = { x = 0.000, y = 298.915, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 13 },
		{ config_id = 449002, gadget_id = 70900008, pos = { x = -4227.058, y = 200.447, z = -2509.418 }, rot = { x = 0.000, y = 272.710, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 13 },
		{ config_id = 449003, gadget_id = 70900008, pos = { x = -4212.806, y = 200.031, z = -2516.563 }, rot = { x = 0.000, y = 91.816, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 13 },
		{ config_id = 449004, gadget_id = 70211101, pos = { x = -4219.074, y = 200.130, z = -2509.636 }, rot = { x = 352.523, y = 216.184, z = 1.742 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1449006, name = "GADGET_STATE_CHANGE_449006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449006", action = "action_EVENT_GADGET_STATE_CHANGE_449006", trigger_count = 0 },
		{ config_id = 1449007, name = "TIMER_EVENT_449007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_449007", action = "action_EVENT_TIMER_EVENT_449007", trigger_count = 0 },
		{ config_id = 1449008, name = "VARIABLE_CHANGE_449008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_449008", action = "action_EVENT_VARIABLE_CHANGE_449008", trigger_count = 0 }
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
		-- description = suite_1,
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