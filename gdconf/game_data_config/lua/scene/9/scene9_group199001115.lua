-- 基础信息
local base_info = {
	group_id = 199001115
}

-- Trigger变量
local defs = {
	gadget_id = 115004
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
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 115001, gadget_id = 70330019, pos = { x = 202.841, y = 89.881, z = 429.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
		{ config_id = 115002, gadget_id = 70330021, pos = { x = 192.211, y = 90.271, z = 430.497 }, rot = { x = 0.000, y = 98.869, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 115003, gadget_id = 70900007, pos = { x = 198.631, y = 89.956, z = 427.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 }
	},
	regions = {
		{ config_id = 115008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 201.428, y = 90.521, z = 431.110 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1115005, name = "GADGET_STATE_CHANGE_115005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115005", action = "action_EVENT_GADGET_STATE_CHANGE_115005", trigger_count = 0 },
		{ config_id = 1115006, name = "GADGET_STATE_CHANGE_115006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115006", action = "action_EVENT_GADGET_STATE_CHANGE_115006", trigger_count = 0 },
		{ config_id = 1115007, name = "GROUP_LOAD_115007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_115007", trigger_count = 0 },
		{ config_id = 1115008, name = "ENTER_REGION_115008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_115008" },
		{ config_id = 1115009, name = "GADGET_STATE_CHANGE_115009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115009", action = "action_EVENT_GADGET_STATE_CHANGE_115009", trigger_count = 0 },
		{ config_id = 1115010, name = "GADGET_STATE_CHANGE_115010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115010", action = "action_EVENT_GADGET_STATE_CHANGE_115010", trigger_count = 0 }
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
		-- description = 岩片产生suit,
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