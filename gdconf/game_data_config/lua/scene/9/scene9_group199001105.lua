-- 基础信息
local base_info = {
	group_id = 199001105
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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 105001, gadget_id = 70310458, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 99.043, z = 0.000 }, level = 20, interact_id = 64, area_id = 402 },
		{ config_id = 105002, gadget_id = 70360001, pos = { x = 331.794, y = 119.375, z = 306.379 }, rot = { x = 0.000, y = 279.043, z = 0.000 }, level = 20, worktop_config = { init_options = { 754 } }, area_id = 402 }
	},
	regions = {
		{ config_id = 105004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 329.681, y = 119.794, z = 306.610 }, area_id = 402 },
		{ config_id = 105009, shape = RegionShape.SPHERE, radius = 7, pos = { x = 333.333, y = 120.000, z = 307.004 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1105003, name = "LUA_NOTIFY_105003", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_105003", trigger_count = 0 },
		{ config_id = 1105004, name = "ENTER_REGION_105004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105004" },
		{ config_id = 1105005, name = "LUA_NOTIFY_105005", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_105005", trigger_count = 0 },
		{ config_id = 1105006, name = "LUA_NOTIFY_105006", event = EventType.EVENT_LUA_NOTIFY, source = "XinyanPortal", condition = "", action = "action_EVENT_LUA_NOTIFY_105006", trigger_count = 0 },
		{ config_id = 1105007, name = "QUEST_START_105007", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "" },
		{ config_id = 1105008, name = "QUEST_START_105008", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "" },
		{ config_id = 1105009, name = "ENTER_REGION_105009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105009" },
		{ config_id = 1105010, name = "GADGET_CREATE_105010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_105010", action = "action_EVENT_GADGET_CREATE_105010", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
	},
	{
		-- suite_id = 3,
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