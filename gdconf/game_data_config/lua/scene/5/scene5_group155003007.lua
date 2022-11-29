-- 基础信息
local base_info = {
	group_id = 155003007
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
	monsters = {
		{ config_id = 7001, monster_id = 21010101, pos = { x = 1255.470, y = 235.500, z = -797.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
	},
	gadgets = {
		{ config_id = 7002, gadget_id = 70350082, pos = { x = 1257.502, y = 235.039, z = -792.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
		{ config_id = 7004, gadget_id = 70360001, pos = { x = 1257.492, y = 235.039, z = -792.958 }, rot = { x = 2.528, y = 0.193, z = 0.446 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1007006, name = "CHALLENGE_SUCCESS_7006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "condition_EVENT_CHALLENGE_SUCCESS_7006", action = "action_EVENT_CHALLENGE_SUCCESS_7006", trigger_count = 0 },
		{ config_id = 1007007, name = "CHALLENGE_FAIL_7007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7007", trigger_count = 0 },
		{ config_id = 1007008, name = "GROUP_LOAD_7008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7008", trigger_count = 0 },
		{ config_id = 1007009, name = "SELECT_OPTION_7009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7009", action = "action_EVENT_SELECT_OPTION_7009", trigger_count = 0 },
		{ config_id = 1007010, name = "VARIABLE_CHANGE_7010", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_7010", action = "action_EVENT_VARIABLE_CHANGE_7010", trigger_count = 0 },
		{ config_id = 1007011, name = "GADGET_STATE_CHANGE_7011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7011", action = "action_EVENT_GADGET_STATE_CHANGE_7011", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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