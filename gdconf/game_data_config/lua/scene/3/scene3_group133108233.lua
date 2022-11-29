-- 基础信息
local base_info = {
	group_id = 133108233
}

-- Trigger变量
local defs = {
	group_id = 133108233,
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
		{ config_id = 233001, monster_id = 25020201, pos = { x = -584.094, y = 200.138, z = -908.434 }, rot = { x = 0.000, y = 308.080, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
		{ config_id = 233002, monster_id = 25010601, pos = { x = -586.554, y = 200.158, z = -908.329 }, rot = { x = 0.000, y = 288.797, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 7 }
	},
	gadgets = {
		{ config_id = 233003, gadget_id = 70800056, pos = { x = -583.952, y = 200.164, z = -910.542 }, rot = { x = 359.657, y = 336.047, z = 358.504 }, level = 1, area_id = 7 },
		{ config_id = 233004, gadget_id = 70800060, pos = { x = -589.136, y = 200.000, z = -908.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 233005, gadget_id = 70800088, pos = { x = -584.062, y = 200.030, z = -908.837 }, rot = { x = 0.000, y = 358.272, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 233006, gadget_id = 70800088, pos = { x = -586.262, y = 200.030, z = -908.917 }, rot = { x = 0.000, y = 178.272, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 233016, gadget_id = 70800105, pos = { x = -582.088, y = 200.000, z = -909.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 233017, gadget_id = 70800105, pos = { x = -588.259, y = 200.000, z = -906.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
	},
	regions = {
		{ config_id = 233007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -585.439, y = 199.848, z = -908.724 }, area_id = 7 },
		{ config_id = 233008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -585.397, y = 199.848, z = -908.793 }, area_id = 7 },
		{ config_id = 233009, shape = RegionShape.SPHERE, radius = 70, pos = { x = -585.285, y = 199.848, z = -908.816 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
	},
	triggers = {
		{ config_id = 1233007, name = "ENTER_REGION_233007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_233007", action = "action_EVENT_ENTER_REGION_233007", trigger_count = 0 },
		{ config_id = 1233008, name = "LEAVE_REGION_233008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_233008", action = "action_EVENT_LEAVE_REGION_233008", trigger_count = 0 },
		{ config_id = 1233010, name = "SELECT_OPTION_233010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_233010", action = "action_EVENT_SELECT_OPTION_233010", trigger_count = 0 },
		{ config_id = 1233011, name = "VARIABLE_CHANGE_233011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_233011", action = "action_EVENT_VARIABLE_CHANGE_233011", trigger_count = 0 },
		{ config_id = 1233012, name = "CHALLENGE_FAIL_233012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_FAIL_233012", trigger_count = 0 },
		{ config_id = 1233013, name = "CHALLENGE_SUCCESS_233013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_233013", trigger_count = 0 },
		{ config_id = 1233014, name = "GROUP_LOAD_233014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_233014", action = "action_EVENT_GROUP_LOAD_233014", trigger_count = 0 },
		{ config_id = 1233015, name = "GROUP_LOAD_233015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_233015", action = "action_EVENT_GROUP_LOAD_233015", trigger_count = 0 }
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