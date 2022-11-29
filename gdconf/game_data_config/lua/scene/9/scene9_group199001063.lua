-- 基础信息
local base_info = {
	group_id = 199001063
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
		{ config_id = 63003, gadget_id = 70310171, pos = { x = 261.351, y = 120.322, z = 203.854 }, rot = { x = 354.669, y = 2.823, z = 3.804 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 63004, gadget_id = 70310169, pos = { x = 263.255, y = 120.187, z = 204.613 }, rot = { x = 349.122, y = 283.016, z = 349.325 }, level = 20, area_id = 402 },
		{ config_id = 63011, gadget_id = 70310341, pos = { x = 263.606, y = 122.244, z = 204.932 }, rot = { x = 340.857, y = 274.584, z = 350.959 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1063025, name = "VARIABLE_CHANGE_63025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_63025", action = "action_EVENT_VARIABLE_CHANGE_63025", trigger_count = 0 },
		{ config_id = 1063026, name = "TIME_AXIS_PASS_63026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_63026", action = "action_EVENT_TIME_AXIS_PASS_63026", trigger_count = 0 }
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