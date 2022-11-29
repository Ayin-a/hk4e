-- 基础信息
local base_info = {
	group_id = 133210034
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 20,
	group_id = 133210034,
	gadget_1 = 34001,
	gadget_2 = 34002,
	gadget_3 = 34003,
	gadget_4 = 34005,
	gadget_chest = 34004
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
		{ config_id = 34001, gadget_id = 70900008, pos = { x = -3976.188, y = 204.506, z = -1013.840 }, rot = { x = 349.382, y = 244.320, z = 3.899 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
		{ config_id = 34002, gadget_id = 70900008, pos = { x = -3983.652, y = 200.243, z = -969.780 }, rot = { x = 345.234, y = 280.565, z = 342.871 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
		{ config_id = 34003, gadget_id = 70900008, pos = { x = -3984.323, y = 200.146, z = -939.316 }, rot = { x = 355.049, y = 333.689, z = 347.460 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
		{ config_id = 34004, gadget_id = 70211101, pos = { x = -3979.132, y = 200.513, z = -979.053 }, rot = { x = 343.237, y = 236.518, z = 7.400 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 34005, gadget_id = 70900008, pos = { x = -3972.770, y = 199.217, z = -984.718 }, rot = { x = 356.782, y = 62.636, z = 352.329 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 }
	},
	triggers = {
		{ config_id = 1034006, name = "GADGET_STATE_CHANGE_34006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34006", action = "action_EVENT_GADGET_STATE_CHANGE_34006", trigger_count = 0 },
		{ config_id = 1034007, name = "TIMER_EVENT_34007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_34007", action = "action_EVENT_TIMER_EVENT_34007", trigger_count = 0 },
		{ config_id = 1034008, name = "VARIABLE_CHANGE_34008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34008", action = "action_EVENT_VARIABLE_CHANGE_34008", trigger_count = 0 }
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