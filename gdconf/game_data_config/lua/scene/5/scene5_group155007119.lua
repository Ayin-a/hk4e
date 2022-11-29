-- 基础信息
local base_info = {
	group_id = 155007119
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
		{ config_id = 119001, gadget_id = 70590044, pos = { x = -76.574, y = 201.488, z = 1427.842 }, rot = { x = 0.000, y = 23.825, z = 0.000 }, level = 36, isOneoff = true, persistent = true, interact_id = 56, area_id = 200 },
		{ config_id = 119002, gadget_id = 70290217, pos = { x = -75.590, y = 201.488, z = 1429.808 }, rot = { x = 0.000, y = 314.002, z = 0.000 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1119003, name = "GROUP_LOAD_119003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_119003", trigger_count = 0 },
		{ config_id = 1119004, name = "VARIABLE_CHANGE_119004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_119004", trigger_count = 0 },
		{ config_id = 1119005, name = "GADGET_STATE_CHANGE_119005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119005", action = "action_EVENT_GADGET_STATE_CHANGE_119005" }
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