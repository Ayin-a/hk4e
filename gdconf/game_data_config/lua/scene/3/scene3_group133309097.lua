-- 基础信息
local base_info = {
	group_id = 133309097
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
		{ config_id = 97001, gadget_id = 70330404, pos = { x = -2385.560, y = -29.122, z = 5344.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 97002, gadget_id = 70330404, pos = { x = -2374.381, y = -29.297, z = 5345.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 97003, gadget_id = 70330404, pos = { x = -2385.587, y = -30.016, z = 5411.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 97004, gadget_id = 70330404, pos = { x = -2374.500, y = -29.587, z = 5411.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 97005, gadget_id = 70211151, pos = { x = -2379.930, y = -30.408, z = 5408.174 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1097007, name = "GADGET_STATE_CHANGE_97007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97007", action = "action_EVENT_GADGET_STATE_CHANGE_97007", trigger_count = 0 },
		{ config_id = 1097008, name = "VARIABLE_CHANGE_97008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_97008", trigger_count = 0 },
		{ config_id = 1097009, name = "VARIABLE_CHANGE_97009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_97009", action = "", trigger_count = 0 },
		{ config_id = 1097010, name = "VARIABLE_CHANGE_97010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_97010", action = "action_EVENT_VARIABLE_CHANGE_97010", trigger_count = 0 }
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