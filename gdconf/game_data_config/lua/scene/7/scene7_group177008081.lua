-- 基础信息
local base_info = {
	group_id = 177008081
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177008081,

	--挑战操作台
	challenge_gadget = 81006,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 81008,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {81001,81002,81003,81004},
	monster_min = 2,
	monster_max = 2,
	monster_count = 4
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 22040101, pos = { x = -225.474, y = 244.346, z = 162.426 }, rot = { x = 0.000, y = 197.749, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 81002, monster_id = 22040201, pos = { x = -232.234, y = 245.141, z = 162.802 }, rot = { x = 0.000, y = 153.560, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 81003, monster_id = 22040201, pos = { x = -223.155, y = 243.803, z = 158.683 }, rot = { x = 0.000, y = 239.886, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 81004, monster_id = 22050101, pos = { x = -222.178, y = 243.971, z = 151.587 }, rot = { x = 0.000, y = 309.152, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 81005, monster_id = 22040101, pos = { x = -229.324, y = 245.710, z = 151.188 }, rot = { x = 0.000, y = 16.634, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81006, gadget_id = 70330160, pos = { x = -227.355, y = 244.696, z = 155.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 81007, gadget_id = 70360001, pos = { x = -226.341, y = 245.689, z = 155.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 81008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -228.504, y = 244.946, z = 157.466 }, area_id = 210 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false },
	{ config_id = 2, name = "isUnlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1081009, name = "SELECT_OPTION_81009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81009", action = "action_EVENT_SELECT_OPTION_81009", trigger_count = 0 },
		{ config_id = 1081010, name = "CHALLENGE_SUCCESS_81010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_81010", trigger_count = 0 },
		{ config_id = 1081011, name = "CHALLENGE_FAIL_81011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_81011", trigger_count = 0 },
		{ config_id = 1081012, name = "GADGET_STATE_CHANGE_81012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81012", action = "action_EVENT_GADGET_STATE_CHANGE_81012", trigger_count = 0 },
		{ config_id = 1081013, name = "GADGET_CREATE_81013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81013", action = "action_EVENT_GADGET_CREATE_81013", trigger_count = 0 },
		{ config_id = 1081014, name = "GROUP_LOAD_81014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81014", action = "action_EVENT_GROUP_LOAD_81014", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 81006 },
		regions = { 81008 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/RecircleChallenge"