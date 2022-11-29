-- 基础信息
local base_info = {
	group_id = 133108232
}

-- Trigger变量
local defs = {
	group_id = 133108232,
	num_monster = 5,
	monster_id_boss = 232004
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
		{ config_id = 232001, monster_id = 25010201, pos = { x = -609.974, y = 202.784, z = -674.730 }, rot = { x = 0.000, y = 83.252, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
		{ config_id = 232002, monster_id = 25010601, pos = { x = -609.487, y = 201.970, z = -671.172 }, rot = { x = 0.000, y = 256.792, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
		{ config_id = 232003, monster_id = 25010501, pos = { x = -611.075, y = 201.522, z = -668.901 }, rot = { x = 0.000, y = 205.272, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 7 },
		{ config_id = 232004, monster_id = 25040102, pos = { x = -606.076, y = 201.785, z = -674.253 }, rot = { x = 0.000, y = 161.034, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
		{ config_id = 232005, monster_id = 25030201, pos = { x = -612.134, y = 202.142, z = -670.513 }, rot = { x = 0.000, y = 153.852, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 },
		{ config_id = 232006, monster_id = 25010201, pos = { x = -607.823, y = 202.426, z = -676.432 }, rot = { x = 0.000, y = 324.165, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 }
	},
	gadgets = {
		{ config_id = 232007, gadget_id = 70800056, pos = { x = -611.732, y = 202.477, z = -671.889 }, rot = { x = 14.079, y = 78.724, z = 10.009 }, level = 1, area_id = 7 },
		{ config_id = 232008, gadget_id = 70800056, pos = { x = -605.400, y = 201.906, z = -675.601 }, rot = { x = 0.294, y = 355.244, z = 351.573 }, level = 1, area_id = 7 },
		{ config_id = 232009, gadget_id = 70300104, pos = { x = -603.161, y = 201.969, z = -677.514 }, rot = { x = 352.583, y = 254.761, z = 356.498 }, level = 1, area_id = 7 },
		{ config_id = 232010, gadget_id = 70800102, pos = { x = -608.643, y = 202.489, z = -675.198 }, rot = { x = 16.087, y = 39.588, z = 355.759 }, level = 1, area_id = 7 }
	},
	regions = {
		{ config_id = 232011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -609.739, y = 202.343, z = -672.591 }, area_id = 7 },
		{ config_id = 232012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -609.814, y = 202.363, z = -672.618 }, area_id = 7 },
		{ config_id = 232013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -609.814, y = 202.363, z = -672.618 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
		{ config_id = 232022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -609.814, y = 202.363, z = -672.618 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1232011, name = "ENTER_REGION_232011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_232011", action = "action_EVENT_ENTER_REGION_232011", trigger_count = 0 },
		{ config_id = 1232012, name = "LEAVE_REGION_232012", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_232012", action = "action_EVENT_LEAVE_REGION_232012", trigger_count = 0 },
		{ config_id = 1232014, name = "SELECT_OPTION_232014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_232014", action = "action_EVENT_SELECT_OPTION_232014", trigger_count = 0 },
		{ config_id = 1232015, name = "VARIABLE_CHANGE_232015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_232015", action = "action_EVENT_VARIABLE_CHANGE_232015", trigger_count = 0 },
		{ config_id = 1232016, name = "CHALLENGE_SUCCESS_232016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_232016", trigger_count = 0 },
		{ config_id = 1232017, name = "CHALLENGE_FAIL_232017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_232017", trigger_count = 0 },
		{ config_id = 1232018, name = "ANY_MONSTER_DIE_232018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232018", action = "", trigger_count = 0, tag = "20492" },
		{ config_id = 1232019, name = "ANY_MONSTER_DIE_232019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232019", action = "", trigger_count = 0, tag = "20491" },
		{ config_id = 1232020, name = "GROUP_LOAD_232020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232020", action = "action_EVENT_GROUP_LOAD_232020", trigger_count = 0 },
		{ config_id = 1232021, name = "TIME_AXIS_PASS_232021", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_232021", action = "action_EVENT_TIME_AXIS_PASS_232021", trigger_count = 0 },
		{ config_id = 1232022, name = "ENTER_REGION_232022", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_232022", action = "action_EVENT_ENTER_REGION_232022", trigger_count = 0 },
		{ config_id = 1232023, name = "GROUP_LOAD_232023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_232023", action = "action_EVENT_GROUP_LOAD_232023", trigger_count = 0 }
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