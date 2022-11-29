-- 基础信息
local base_info = {
	group_id = 133108252
}

-- Trigger变量
local defs = {
	group_id = 133108252,
	num_monster = 2
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
	{ config_id = 1, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 3, name = "hasReward", value = 0, no_refresh = true },
	{ config_id = 4, name = "giveReward", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 252001, monster_id = 20060201, pos = { x = -643.790, y = 200.000, z = -590.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5155 }, pose_id = 101, area_id = 7 },
		{ config_id = 252002, monster_id = 20060301, pos = { x = -646.112, y = 200.000, z = -591.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5155 }, pose_id = 101, area_id = 7 }
	},
	gadgets = {
		{ config_id = 252004, gadget_id = 70800060, pos = { x = -644.022, y = 200.020, z = -594.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
	},
	regions = {
		{ config_id = 252007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -645.378, y = 199.848, z = -591.626 }, area_id = 7 },
		{ config_id = 252008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -645.336, y = 199.848, z = -591.694 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1252003, name = "GROUP_LOAD_252003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252003", action = "action_EVENT_GROUP_LOAD_252003", trigger_count = 0 },
		{ config_id = 1252005, name = "GROUP_LOAD_252005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252005", action = "action_EVENT_GROUP_LOAD_252005", trigger_count = 0 },
		{ config_id = 1252007, name = "ENTER_REGION_252007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_252007", action = "action_EVENT_ENTER_REGION_252007", trigger_count = 0 },
		{ config_id = 1252008, name = "LEAVE_REGION_252008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_252008", action = "action_EVENT_LEAVE_REGION_252008", trigger_count = 0 },
		{ config_id = 1252010, name = "SELECT_OPTION_252010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_252010", action = "action_EVENT_SELECT_OPTION_252010", trigger_count = 0 },
		{ config_id = 1252011, name = "VARIABLE_CHANGE_252011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_252011", action = "action_EVENT_VARIABLE_CHANGE_252011", trigger_count = 0 },
		{ config_id = 1252012, name = "CHALLENGE_FAIL_252012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2210", condition = "", action = "action_EVENT_CHALLENGE_FAIL_252012", trigger_count = 0 },
		{ config_id = 1252013, name = "CHALLENGE_SUCCESS_252013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2210", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_252013", trigger_count = 0 }
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
	end_suite = 2,
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
	},
	{
		-- suite_id = 4,
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