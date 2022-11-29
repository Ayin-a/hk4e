-- 基础信息
local base_info = {
	group_id = 133302604
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
	{ config_id = 1, name = "create", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 604001, gadget_id = 70330199, pos = { x = 155.192, y = 383.036, z = 2138.707 }, rot = { x = 354.377, y = 125.913, z = 9.356 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
		{ config_id = 604002, gadget_id = 70330199, pos = { x = 161.821, y = 382.885, z = 2142.006 }, rot = { x = 350.773, y = 202.533, z = 354.581 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
		{ config_id = 604004, gadget_id = 70330199, pos = { x = 166.979, y = 383.543, z = 2138.803 }, rot = { x = 356.276, y = 95.912, z = 13.508 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
		{ config_id = 604008, gadget_id = 70220103, pos = { x = 166.163, y = 394.126, z = 2165.459 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604009, gadget_id = 70220103, pos = { x = 197.621, y = 387.991, z = 2222.616 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604010, gadget_id = 70220103, pos = { x = 222.991, y = 412.282, z = 2348.289 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604011, gadget_id = 70220103, pos = { x = 242.218, y = 411.646, z = 2386.997 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604012, gadget_id = 70220103, pos = { x = 303.275, y = 408.046, z = 2450.051 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604013, gadget_id = 70220103, pos = { x = 223.447, y = 380.317, z = 2262.903 }, rot = { x = 0.000, y = 28.758, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604014, gadget_id = 70211101, pos = { x = 306.388, y = 406.500, z = 2452.032 }, rot = { x = 0.000, y = 34.852, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
		{ config_id = 604015, gadget_id = 70220103, pos = { x = 178.041, y = 393.960, z = 2191.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604016, gadget_id = 70220103, pos = { x = 211.775, y = 412.024, z = 2310.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 604017, gadget_id = 70220103, pos = { x = 266.540, y = 413.067, z = 2421.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1604003, name = "GADGET_STATE_CHANGE_604003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_604003", action = "action_EVENT_GADGET_STATE_CHANGE_604003" },
		{ config_id = 1604005, name = "GADGET_STATE_CHANGE_604005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_604005", action = "action_EVENT_GADGET_STATE_CHANGE_604005" },
		{ config_id = 1604006, name = "GADGET_STATE_CHANGE_604006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_604006", action = "action_EVENT_GADGET_STATE_CHANGE_604006" },
		{ config_id = 1604007, name = "VARIABLE_CHANGE_604007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_604007", action = "action_EVENT_VARIABLE_CHANGE_604007" }
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