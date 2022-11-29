-- 基础信息
local base_info = {
	group_id = 177005155
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177005155,

	--挑战操作台
	challenge_gadget = 155006,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 155008,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {155003,155004,155005,155018,155019},
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
	{ config_id = 155003, monster_id = 21010201, pos = { x = 523.114, y = 200.082, z = 730.380 }, rot = { x = 0.000, y = 359.904, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 210 },
	{ config_id = 155004, monster_id = 21010201, pos = { x = 530.319, y = 201.439, z = 738.455 }, rot = { x = 0.000, y = 237.429, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 210 },
	{ config_id = 155005, monster_id = 21010201, pos = { x = 520.757, y = 199.451, z = 736.487 }, rot = { x = 0.000, y = 118.532, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 210 },
	{ config_id = 155018, monster_id = 21020101, pos = { x = 518.229, y = 199.056, z = 731.304 }, rot = { x = 0.000, y = 59.236, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 6110 }, area_id = 210 },
	{ config_id = 155019, monster_id = 21030101, pos = { x = 524.809, y = 200.114, z = 741.778 }, rot = { x = 0.000, y = 205.142, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 6111 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155006, gadget_id = 70330160, pos = { x = 525.045, y = 199.910, z = 734.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 155007, gadget_id = 70360001, pos = { x = 525.045, y = 199.910, z = 734.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 155008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 526.136, y = 200.423, z = 735.682 }, area_id = 210 }
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
	monsters = {
		{ config_id = 155016, monster_id = 26050901, pos = { x = 524.172, y = 200.398, z = 730.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5135 }, area_id = 210 },
		{ config_id = 155017, monster_id = 26050901, pos = { x = 524.518, y = 200.048, z = 740.053 }, rot = { x = 0.000, y = 145.688, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5135 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1155009, name = "SELECT_OPTION_155009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_155009", action = "action_EVENT_SELECT_OPTION_155009", trigger_count = 0 },
		{ config_id = 1155010, name = "CHALLENGE_SUCCESS_155010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_155010", trigger_count = 0 },
		{ config_id = 1155011, name = "CHALLENGE_FAIL_155011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_155011", trigger_count = 0 },
		{ config_id = 1155012, name = "GADGET_STATE_CHANGE_155012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_155012", action = "action_EVENT_GADGET_STATE_CHANGE_155012", trigger_count = 0 },
		{ config_id = 1155013, name = "ANY_MONSTER_DIE_155013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155013", action = "action_EVENT_ANY_MONSTER_DIE_155013" },
		{ config_id = 1155014, name = "GROUP_LOAD_155014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155014", action = "action_EVENT_GROUP_LOAD_155014", trigger_count = 0 },
		{ config_id = 1155015, name = "GADGET_CREATE_155015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_155015", action = "action_EVENT_GADGET_CREATE_155015", trigger_count = 0 }
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
		gadgets = { 155006 },
		regions = { 155008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/RecircleChallenge"