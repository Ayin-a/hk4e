-- 基础信息
local base_info = {
	group_id = 177006001
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177006001,

	--挑战操作台
	challenge_gadget = 1006,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 1008,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {1001,1002,1003,1004,1005},
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
	{ config_id = 1001, monster_id = 22010201, pos = { x = 187.242, y = 200.986, z = -424.272 }, rot = { x = 0.000, y = 197.749, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135, 1006 }, area_id = 210 },
	{ config_id = 1002, monster_id = 21011001, pos = { x = 179.579, y = 201.606, z = -427.137 }, rot = { x = 0.000, y = 153.560, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135, 1006 }, area_id = 210 },
	{ config_id = 1003, monster_id = 21010501, pos = { x = 181.478, y = 199.839, z = -437.839 }, rot = { x = 0.000, y = 359.904, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135, 1006 }, area_id = 210 },
	{ config_id = 1004, monster_id = 21020701, pos = { x = 187.396, y = 199.609, z = -436.630 }, rot = { x = 0.000, y = 309.152, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135, 1006 }, area_id = 210 },
	{ config_id = 1005, monster_id = 21011201, pos = { x = 177.176, y = 201.124, z = -433.315 }, rot = { x = 0.000, y = 64.203, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135, 1006 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70330160, pos = { x = 182.573, y = 200.522, z = -431.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 1007, gadget_id = 70360001, pos = { x = 182.572, y = 200.522, z = -431.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 1008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 180.411, y = 201.104, z = -429.744 }, area_id = 210 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001009, name = "SELECT_OPTION_1009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1009", action = "action_EVENT_SELECT_OPTION_1009", trigger_count = 0 },
		{ config_id = 1001010, name = "CHALLENGE_SUCCESS_1010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1010", trigger_count = 0 },
		{ config_id = 1001011, name = "CHALLENGE_FAIL_1011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1011", trigger_count = 0 },
		{ config_id = 1001012, name = "GADGET_STATE_CHANGE_1012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1012", action = "action_EVENT_GADGET_STATE_CHANGE_1012", trigger_count = 0 }
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
		gadgets = { 1006, 1007 },
		regions = { 1008 },
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