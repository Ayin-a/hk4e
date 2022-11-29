-- 基础信息
local base_info = {
	group_id = 177005156
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177005156,

	--挑战操作台
	challenge_gadget = 156006,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 156008,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {156001,156002,156003,156015,156016},
	monster_min = 5,
	monster_max = 5,
	monster_count = 5
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156001, monster_id = 22010101, pos = { x = 381.242, y = 172.121, z = 951.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 156002, monster_id = 21030101, pos = { x = 380.485, y = 174.114, z = 959.135 }, rot = { x = 0.000, y = 89.042, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 156003, monster_id = 21020201, pos = { x = 387.020, y = 171.839, z = 946.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 156015, monster_id = 22010301, pos = { x = 391.989, y = 173.117, z = 950.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
	{ config_id = 156016, monster_id = 22010401, pos = { x = 385.524, y = 174.211, z = 958.292 }, rot = { x = 0.000, y = 173.160, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156006, gadget_id = 70330160, pos = { x = 384.014, y = 172.807, z = 953.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 156007, gadget_id = 70360001, pos = { x = 384.014, y = 172.807, z = 953.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 156008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 384.522, y = 172.259, z = 950.151 }, area_id = 210 }
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
		{ config_id = 1156009, name = "SELECT_OPTION_156009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_156009", action = "action_EVENT_SELECT_OPTION_156009", trigger_count = 0 },
		{ config_id = 1156010, name = "CHALLENGE_SUCCESS_156010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_156010", trigger_count = 0 },
		{ config_id = 1156011, name = "CHALLENGE_FAIL_156011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_156011", trigger_count = 0 },
		{ config_id = 1156012, name = "GADGET_STATE_CHANGE_156012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_156012", action = "action_EVENT_GADGET_STATE_CHANGE_156012", trigger_count = 0 },
		{ config_id = 1156013, name = "GADGET_CREATE_156013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_156013", action = "action_EVENT_GADGET_CREATE_156013", trigger_count = 0 },
		{ config_id = 1156014, name = "GROUP_LOAD_156014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_156014", action = "action_EVENT_GROUP_LOAD_156014", trigger_count = 0 }
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
		gadgets = { 156006 },
		regions = { 156008 },
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