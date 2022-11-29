-- 基础信息
local base_info = {
	group_id = 133309034
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

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
		{ config_id = 34001, gadget_id = 70330416, pos = { x = -2380.251, y = -13.723, z = 5415.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 34002, gadget_id = 70330283, pos = { x = -2373.956, y = -13.843, z = 5410.956 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 2}, area_id = 27 }
	},
	triggers = {
		{ config_id = 1034003, name = "SELECT_OPTION_34003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_34003", action = "action_EVENT_SELECT_OPTION_34003", trigger_count = 0 },
		{ config_id = 1034004, name = "GADGET_STATE_CHANGE_34004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34004", action = "action_EVENT_GADGET_STATE_CHANGE_34004", trigger_count = 0 },
		{ config_id = 1034005, name = "GROUP_LOAD_34005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34005", action = "action_EVENT_GROUP_LOAD_34005", trigger_count = 0 }
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