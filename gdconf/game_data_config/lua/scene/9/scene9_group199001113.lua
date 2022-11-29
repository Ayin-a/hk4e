-- 基础信息
local base_info = {
	group_id = 199001113
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
	{ config_id = 1, name = "NumTotal", value = 0, no_refresh = false },
	{ config_id = 2, name = "tombUnlocked", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 113001, gadget_id = 70330019, pos = { x = 206.192, y = 86.105, z = 353.481 }, rot = { x = 0.000, y = 228.733, z = 336.483 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
		{ config_id = 113003, gadget_id = 70330021, pos = { x = 217.540, y = 95.435, z = 326.426 }, rot = { x = 359.761, y = 357.454, z = 359.003 }, level = 20, area_id = 402 },
		{ config_id = 113007, gadget_id = 70330019, pos = { x = 201.050, y = 86.177, z = 352.286 }, rot = { x = 342.423, y = 189.770, z = 1.972 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
		{ config_id = 113008, gadget_id = 70330019, pos = { x = 206.752, y = 88.704, z = 347.023 }, rot = { x = 354.030, y = 226.415, z = 331.747 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
		{ config_id = 113009, gadget_id = 70900007, pos = { x = 203.910, y = 87.292, z = 350.527 }, rot = { x = 14.246, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 },
		{ config_id = 113011, gadget_id = 70330021, pos = { x = 219.877, y = 84.664, z = 393.868 }, rot = { x = 359.225, y = 240.021, z = 0.672 }, level = 20, area_id = 402 },
		{ config_id = 113012, gadget_id = 70330021, pos = { x = 193.471, y = 134.005, z = 300.437 }, rot = { x = 359.761, y = 357.454, z = 359.003 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1113002, name = "GADGET_STATE_CHANGE_113002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113002", action = "action_EVENT_GADGET_STATE_CHANGE_113002", trigger_count = 0 },
		{ config_id = 1113004, name = "GADGET_STATE_CHANGE_113004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113004", action = "action_EVENT_GADGET_STATE_CHANGE_113004", trigger_count = 0 },
		{ config_id = 1113005, name = "GADGET_STATE_CHANGE_113005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113005", action = "action_EVENT_GADGET_STATE_CHANGE_113005", trigger_count = 0 },
		{ config_id = 1113006, name = "GADGET_STATE_CHANGE_113006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113006", action = "action_EVENT_GADGET_STATE_CHANGE_113006" },
		{ config_id = 1113013, name = "GADGET_STATE_CHANGE_113013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113013", action = "action_EVENT_GADGET_STATE_CHANGE_113013", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
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