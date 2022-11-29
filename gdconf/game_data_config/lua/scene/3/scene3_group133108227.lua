-- 基础信息
local base_info = {
	group_id = 133108227
}

-- Trigger变量
local defs = {
	group_id = 133108227,
	num_monster = 5,
	monster_id_boss = 227004
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
		{ config_id = 227001, monster_id = 25010201, pos = { x = -344.786, y = 200.371, z = -608.012 }, rot = { x = 356.225, y = 250.492, z = 354.717 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9005, area_id = 7 },
		{ config_id = 227002, monster_id = 25010301, pos = { x = -351.123, y = 200.000, z = -608.444 }, rot = { x = 359.614, y = 109.340, z = 6.479 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 },
		{ config_id = 227003, monster_id = 25010501, pos = { x = -348.580, y = 200.013, z = -609.791 }, rot = { x = 359.632, y = 282.708, z = 353.520 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 },
		{ config_id = 227004, monster_id = 25010105, pos = { x = -350.788, y = 200.000, z = -610.999 }, rot = { x = 353.531, y = 19.839, z = 0.526 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 },
		{ config_id = 227005, monster_id = 25030301, pos = { x = -345.380, y = 200.382, z = -611.339 }, rot = { x = 6.366, y = 4.679, z = 358.735 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9009, area_id = 7 },
		{ config_id = 227006, monster_id = 25010201, pos = { x = -352.216, y = 200.068, z = -613.516 }, rot = { x = 0.000, y = 349.689, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 7 }
	},
	gadgets = {
		{ config_id = 227007, gadget_id = 70800056, pos = { x = -343.744, y = 200.414, z = -606.736 }, rot = { x = 7.404, y = 273.833, z = 356.052 }, level = 1, area_id = 7 },
		{ config_id = 227008, gadget_id = 70800056, pos = { x = -347.054, y = 200.255, z = -612.611 }, rot = { x = 354.688, y = 89.068, z = 2.759 }, level = 1, area_id = 7 },
		{ config_id = 227009, gadget_id = 70300092, pos = { x = -341.888, y = 200.703, z = -608.668 }, rot = { x = 5.136, y = 329.807, z = 5.254 }, level = 1, area_id = 7 },
		{ config_id = 227010, gadget_id = 70800102, pos = { x = -344.717, y = 200.430, z = -609.762 }, rot = { x = 2.483, y = 211.234, z = 354.202 }, level = 1, area_id = 7 }
	},
	regions = {
		{ config_id = 227011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -346.343, y = 200.131, z = -606.829 }, area_id = 7 },
		{ config_id = 227012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -346.274, y = 200.136, z = -606.791 }, area_id = 7 },
		{ config_id = 227013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -346.274, y = 200.136, z = -606.791 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
		{ config_id = 227022, shape = RegionShape.SPHERE, radius = 50, pos = { x = -346.274, y = 200.136, z = -606.791 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1227011, name = "ENTER_REGION_227011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_227011", action = "action_EVENT_ENTER_REGION_227011", trigger_count = 0 },
		{ config_id = 1227012, name = "LEAVE_REGION_227012", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_227012", action = "action_EVENT_LEAVE_REGION_227012", trigger_count = 0 },
		{ config_id = 1227014, name = "SELECT_OPTION_227014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_227014", action = "action_EVENT_SELECT_OPTION_227014", trigger_count = 0 },
		{ config_id = 1227015, name = "VARIABLE_CHANGE_227015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227015", action = "action_EVENT_VARIABLE_CHANGE_227015", trigger_count = 0 },
		{ config_id = 1227016, name = "CHALLENGE_SUCCESS_227016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_227016", trigger_count = 0 },
		{ config_id = 1227017, name = "CHALLENGE_FAIL_227017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2040", condition = "", action = "action_EVENT_CHALLENGE_FAIL_227017", trigger_count = 0 },
		{ config_id = 1227018, name = "ANY_MONSTER_DIE_227018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_227018", action = "", trigger_count = 0, tag = "20492" },
		{ config_id = 1227019, name = "ANY_MONSTER_DIE_227019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_227019", action = "", trigger_count = 0, tag = "20491" },
		{ config_id = 1227020, name = "GROUP_LOAD_227020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_227020", action = "action_EVENT_GROUP_LOAD_227020", trigger_count = 0 },
		{ config_id = 1227021, name = "TIME_AXIS_PASS_227021", event = EventType.EVENT_TIME_AXIS_PASS, source = "started", condition = "condition_EVENT_TIME_AXIS_PASS_227021", action = "action_EVENT_TIME_AXIS_PASS_227021", trigger_count = 0 },
		{ config_id = 1227022, name = "ENTER_REGION_227022", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_227022", action = "action_EVENT_ENTER_REGION_227022", trigger_count = 0 },
		{ config_id = 1227023, name = "GROUP_LOAD_227023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_227023", action = "action_EVENT_GROUP_LOAD_227023", trigger_count = 0 }
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