-- 基础信息
local base_info = {
	group_id = 133310562
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
		{ config_id = 562001, gadget_id = 70330225, pos = { x = -2358.874, y = 158.818, z = 4542.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 562002, gadget_id = 70330225, pos = { x = -2355.469, y = 157.647, z = 4545.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 562003, gadget_id = 70330225, pos = { x = -2357.250, y = 156.098, z = 4551.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
	},
	triggers = {
		{ config_id = 1562004, name = "VARIABLE_CHANGE_562004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_562004", action = "action_EVENT_VARIABLE_CHANGE_562004" },
		{ config_id = 1562005, name = "VARIABLE_CHANGE_562005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_562005", action = "action_EVENT_VARIABLE_CHANGE_562005" },
		{ config_id = 1562006, name = "VARIABLE_CHANGE_562006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_562006", action = "action_EVENT_VARIABLE_CHANGE_562006" }
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