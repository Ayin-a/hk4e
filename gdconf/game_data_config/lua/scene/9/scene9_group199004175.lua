-- 基础信息
local base_info = {
	group_id = 199004175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175002, monster_id = 20020101, pos = { x = -322.266, y = 250.135, z = -683.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 }
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
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 175001, monster_id = 20020101, pos = { x = -312.803, y = 250.225, z = -683.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 }
	},
	gadgets = {
		{ config_id = 175003, gadget_id = 70350082, pos = { x = -320.126, y = 248.381, z = -675.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 175005, gadget_id = 70360001, pos = { x = -320.126, y = 248.381, z = -675.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1175006, name = "GROUP_LOAD_175006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_175006", action = "action_EVENT_GROUP_LOAD_175006", trigger_count = 0 },
		{ config_id = 1175007, name = "CHALLENGE_SUCCESS_175007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_175007", trigger_count = 0 },
		{ config_id = 1175008, name = "CHALLENGE_FAIL_175008", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_175008", trigger_count = 0 },
		{ config_id = 1175009, name = "GADGET_CREATE_175009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_175009", action = "action_EVENT_GADGET_CREATE_175009", trigger_count = 0 },
		{ config_id = 1175010, name = "SELECT_OPTION_175010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_175010", action = "action_EVENT_SELECT_OPTION_175010", trigger_count = 0 }
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
		monsters = { 175002 },
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