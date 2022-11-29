-- 基础信息
local base_info = {
	group_id = 177008052
}

-- DEFS_MISCS
local BossConfigID = {52001,52002}
local bossReviveTime = 20
local ReviveGadgetID = 52003
local OperatorConfigID = 52004
local OptionID = 175
local ChestID = 52011

local ChallengeID = 2005015
local ChallengeDuration = 180

local GroupID = 177008052

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52001, monster_id = 26051101, pos = { x = -520.345, y = 215.533, z = 528.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5150, 1041 }, area_id = 210 },
	{ config_id = 52002, monster_id = 26051001, pos = { x = -529.789, y = 215.565, z = 528.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5150, 1041 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52003, gadget_id = 70330168, pos = { x = -525.323, y = 215.681, z = 535.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 52004, gadget_id = 70330140, pos = { x = -524.600, y = 215.476, z = 535.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearAction2, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 210 },
	{ config_id = 52011, gadget_id = 70211163, pos = { x = -525.213, y = 215.490, z = 531.377 }, rot = { x = 0.000, y = 9.260, z = 0.000 }, level = 21, drop_tag = "渊下宫活动超级稻妻", isOneoff = true, persistent = true, area_id = 210 }
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
	gadgets = {
		{ config_id = 52005, gadget_id = 70360001, pos = { x = -524.562, y = 216.464, z = 535.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 }
	},
	triggers = {
		{ config_id = 1052006, name = "GADGET_STATE_CHANGE_52006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52006", action = "action_EVENT_GADGET_STATE_CHANGE_52006", trigger_count = 0 },
		{ config_id = 1052007, name = "SELECT_OPTION_52007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52007", action = "action_EVENT_SELECT_OPTION_52007", trigger_count = 0 },
		{ config_id = 1052008, name = "ANY_MONSTER_DIE_52008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52008", action = "action_EVENT_ANY_MONSTER_DIE_52008", trigger_count = 0, tag = "666" },
		{ config_id = 1052009, name = "CHALLENGE_FAIL_52009", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_52009", trigger_count = 0 },
		{ config_id = 1052010, name = "CHALLENGE_SUCCESS_52010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_52010" },
		{ config_id = 1052012, name = "GROUP_LOAD_52012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_52012", action = "action_EVENT_GROUP_LOAD_52012", trigger_count = 0 },
		{ config_id = 1052013, name = "ANY_MONSTER_LIVE_52013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_52013", action = "action_EVENT_ANY_MONSTER_LIVE_52013", trigger_count = 0 },
		{ config_id = 1052014, name = "ANY_MONSTER_LIVE_52014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_52014", action = "action_EVENT_ANY_MONSTER_LIVE_52014", trigger_count = 0 }
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
		gadgets = { 52004 },
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

require "V2_5/ReviveBoss"