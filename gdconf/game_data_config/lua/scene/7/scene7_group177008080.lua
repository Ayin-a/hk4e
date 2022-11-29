-- 基础信息
local base_info = {
	group_id = 177008080
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177008080,

	--挑战操作台
	challenge_gadget = 80006,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 80008,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {80001,80002},
	monster_min = 1,
	monster_max = 1,
	monster_count = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 26050901, pos = { x = -301.423, y = 261.705, z = 353.417 }, rot = { x = 0.000, y = 197.749, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 80002, monster_id = 26051001, pos = { x = -309.085, y = 262.900, z = 350.552 }, rot = { x = 0.000, y = 153.560, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 80003, monster_id = 26051101, pos = { x = -307.186, y = 261.979, z = 339.850 }, rot = { x = 0.000, y = 359.904, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 80004, monster_id = 26051001, pos = { x = -301.268, y = 260.314, z = 341.059 }, rot = { x = 0.000, y = 309.152, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1041 }, area_id = 210 },
	{ config_id = 80005, monster_id = 26051101, pos = { x = -312.930, y = 264.331, z = 344.373 }, rot = { x = 0.000, y = 16.634, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1041 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80006, gadget_id = 70330160, pos = { x = -306.692, y = 262.180, z = 350.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 80007, gadget_id = 70360001, pos = { x = -306.091, y = 262.915, z = 345.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 80008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -308.253, y = 262.678, z = 347.945 }, area_id = 210 }
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
		{ config_id = 1080009, name = "SELECT_OPTION_80009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80009", action = "action_EVENT_SELECT_OPTION_80009", trigger_count = 0 },
		{ config_id = 1080010, name = "CHALLENGE_SUCCESS_80010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_80010", trigger_count = 0 },
		{ config_id = 1080011, name = "CHALLENGE_FAIL_80011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_80011", trigger_count = 0 },
		{ config_id = 1080012, name = "GADGET_STATE_CHANGE_80012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80012", action = "action_EVENT_GADGET_STATE_CHANGE_80012", trigger_count = 0 },
		{ config_id = 1080013, name = "GADGET_CREATE_80013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80013", action = "action_EVENT_GADGET_CREATE_80013", trigger_count = 0 },
		{ config_id = 1080014, name = "GROUP_LOAD_80014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80014", action = "action_EVENT_GROUP_LOAD_80014", trigger_count = 0 }
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
		gadgets = { 80006 },
		regions = { 80008 },
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