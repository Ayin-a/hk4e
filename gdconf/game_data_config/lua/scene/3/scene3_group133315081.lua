-- 基础信息
local base_info = {
	group_id = 133315081
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 80,
	group_id = 133315081,
	gadget_1 = 81001,
	gadget_2 = 81002,
	gadget_3 = 81003,
	gadget_4 = 81005,
	gadget_chest = 81004
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
		{ config_id = 81001, gadget_id = 70900050, pos = { x = -60.809, y = 263.335, z = 2350.042 }, rot = { x = 0.000, y = 296.990, z = 0.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
		{ config_id = 81002, gadget_id = 70900050, pos = { x = 8.550, y = 273.788, z = 2379.065 }, rot = { x = 0.000, y = 330.140, z = 0.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
		{ config_id = 81003, gadget_id = 70900050, pos = { x = -39.076, y = 281.774, z = 2325.277 }, rot = { x = 0.000, y = 39.245, z = 0.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
		{ config_id = 81004, gadget_id = 70211101, pos = { x = -9.668, y = 261.198, z = 2368.208 }, rot = { x = 351.025, y = 239.295, z = 358.950 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
		{ config_id = 81005, gadget_id = 70900050, pos = { x = 36.819, y = 274.608, z = 2336.776 }, rot = { x = 0.000, y = 33.192, z = 0.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
		{ config_id = 81009, gadget_id = 70230112, pos = { x = -8.719, y = 260.994, z = 2370.984 }, rot = { x = 2.460, y = 312.374, z = 91.367 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 81010, gadget_id = 70230112, pos = { x = -8.630, y = 260.317, z = 2368.825 }, rot = { x = 2.244, y = 246.160, z = 88.301 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 81011, gadget_id = 70230112, pos = { x = -6.263, y = 260.134, z = 2370.700 }, rot = { x = 357.651, y = 69.874, z = 91.551 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 81012, gadget_id = 70230112, pos = { x = -6.306, y = 259.898, z = 2368.468 }, rot = { x = 358.266, y = 155.305, z = 87.783 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 81014, gadget_id = 70220103, pos = { x = -60.165, y = 265.847, z = 2351.219 }, rot = { x = 0.000, y = 173.664, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 81015, gadget_id = 70220103, pos = { x = 7.051, y = 276.212, z = 2377.793 }, rot = { x = 0.000, y = 330.140, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 81016, gadget_id = 70220103, pos = { x = -39.502, y = 283.995, z = 2327.417 }, rot = { x = 0.000, y = 295.466, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1081006, name = "GADGET_STATE_CHANGE_81006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81006", action = "action_EVENT_GADGET_STATE_CHANGE_81006", trigger_count = 0 },
		{ config_id = 1081007, name = "TIMER_EVENT_81007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_81007", action = "action_EVENT_TIMER_EVENT_81007", trigger_count = 0 },
		{ config_id = 1081008, name = "VARIABLE_CHANGE_81008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_81008", action = "action_EVENT_VARIABLE_CHANGE_81008", trigger_count = 0 }
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