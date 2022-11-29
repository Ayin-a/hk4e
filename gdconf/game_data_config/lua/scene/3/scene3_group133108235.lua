-- 基础信息
local base_info = {
	group_id = 133108235
}

-- Trigger变量
local defs = {
	group_id = 133108235,
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
		{ config_id = 235001, monster_id = 25020201, pos = { x = -437.058, y = 200.056, z = -663.172 }, rot = { x = 0.000, y = 241.943, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
		{ config_id = 235002, monster_id = 25010501, pos = { x = -439.084, y = 200.070, z = -664.115 }, rot = { x = 0.000, y = 60.141, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 }
	},
	gadgets = {
		{ config_id = 235003, gadget_id = 70800056, pos = { x = -436.756, y = 200.084, z = -666.542 }, rot = { x = 1.710, y = 3.766, z = 0.403 }, level = 1, area_id = 7 },
		{ config_id = 235004, gadget_id = 70800060, pos = { x = -442.707, y = 200.000, z = -662.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 235005, gadget_id = 70800088, pos = { x = -436.818, y = 199.946, z = -663.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 235006, gadget_id = 70800088, pos = { x = -439.100, y = 199.946, z = -664.110 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 235014, gadget_id = 70800105, pos = { x = -441.086, y = 200.000, z = -666.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
		{ config_id = 235015, gadget_id = 70800105, pos = { x = -434.864, y = 200.000, z = -661.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 }
	},
	regions = {
		{ config_id = 235007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -438.122, y = 199.848, z = -664.046 }, area_id = 7 },
		{ config_id = 235008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -438.081, y = 199.848, z = -664.114 }, area_id = 7 },
		{ config_id = 235009, shape = RegionShape.SPHERE, radius = 70, pos = { x = -437.968, y = 199.848, z = -664.138 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
	},
	triggers = {
		{ config_id = 1235007, name = "ENTER_REGION_235007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_235007", action = "action_EVENT_ENTER_REGION_235007", trigger_count = 0 },
		{ config_id = 1235008, name = "LEAVE_REGION_235008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_235008", action = "action_EVENT_LEAVE_REGION_235008", trigger_count = 0 },
		{ config_id = 1235010, name = "SELECT_OPTION_235010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_235010", action = "action_EVENT_SELECT_OPTION_235010", trigger_count = 0 },
		{ config_id = 1235011, name = "VARIABLE_CHANGE_235011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_235011", action = "action_EVENT_VARIABLE_CHANGE_235011", trigger_count = 0 },
		{ config_id = 1235012, name = "CHALLENGE_FAIL_235012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_FAIL_235012", trigger_count = 0 },
		{ config_id = 1235013, name = "CHALLENGE_SUCCESS_235013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_235013", trigger_count = 0 },
		{ config_id = 1235016, name = "GROUP_LOAD_235016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_235016", action = "action_EVENT_GROUP_LOAD_235016", trigger_count = 0 },
		{ config_id = 1235017, name = "GROUP_LOAD_235017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_235017", action = "action_EVENT_GROUP_LOAD_235017", trigger_count = 0 }
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