-- 基础信息
local base_info = {
	group_id = 133217369
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 133217369,
	gadget_1 = 369001,
	gadget_2 = 369002,
	gadget_3 = 369003,
	gadget_4 = 369005,
	gadget_chest = 369004
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
		{ config_id = 369001, gadget_id = 70900008, pos = { x = -5091.319, y = 200.000, z = -4505.844 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 14 },
		{ config_id = 369002, gadget_id = 70900008, pos = { x = -5081.020, y = 200.000, z = -4501.044 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 14 },
		{ config_id = 369003, gadget_id = 70900008, pos = { x = -5088.219, y = 200.000, z = -4498.844 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 14 },
		{ config_id = 369004, gadget_id = 70211111, pos = { x = -5086.020, y = 200.000, z = -4503.144 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 369005, gadget_id = 70900008, pos = { x = -5084.219, y = 200.000, z = -4507.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1369006, name = "GADGET_STATE_CHANGE_369006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_369006", action = "action_EVENT_GADGET_STATE_CHANGE_369006", trigger_count = 0 },
		{ config_id = 1369007, name = "TIMER_EVENT_369007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_369007", action = "action_EVENT_TIMER_EVENT_369007", trigger_count = 0 },
		{ config_id = 1369008, name = "VARIABLE_CHANGE_369008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_369008", action = "action_EVENT_VARIABLE_CHANGE_369008", trigger_count = 0 }
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