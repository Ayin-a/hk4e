-- 基础信息
local base_info = {
	group_id = 155007117
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
		{ config_id = 117001, gadget_id = 70590044, pos = { x = -88.182, y = 235.991, z = 1663.076 }, rot = { x = 0.000, y = 201.316, z = 0.000 }, level = 36, isOneoff = true, persistent = true, interact_id = 56, area_id = 200 },
		{ config_id = 117002, gadget_id = 70290217, pos = { x = -88.850, y = 235.991, z = 1662.067 }, rot = { x = 0.000, y = 314.002, z = 0.000 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1117003, name = "GROUP_LOAD_117003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_117003", trigger_count = 0 },
		{ config_id = 1117004, name = "VARIABLE_CHANGE_117004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_117004", trigger_count = 0 },
		{ config_id = 1117005, name = "GADGET_STATE_CHANGE_117005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117005", action = "action_EVENT_GADGET_STATE_CHANGE_117005" }
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