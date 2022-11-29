-- 基础信息
local base_info = {
	group_id = 133002100
}

-- Trigger变量
local defs = {
	gallery_id = 27002,
	region = 100009,
	stage_2_goal = 15
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
	{ config_id = 100010, npc_id = 30246, pos = { x = 1806.717, y = 207.468, z = -312.246 }, rot = { x = 0.000, y = 160.213, z = 0.000 }, area_id = 3 }
}

-- 装置
gadgets = {
	{ config_id = 100004, gadget_id = 70360001, pos = { x = 1803.617, y = 208.671, z = -318.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 100009, shape = RegionShape.SPHERE, radius = 130, pos = { x = 1741.296, y = 207.395, z = -327.119 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1100009, name = "ENTER_REGION_100009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_num", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 100001, gadget_id = 70380236, pos = { x = 1803.617, y = 207.671, z = -318.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
	},
	triggers = {
		{ config_id = 1100002, name = "SELECT_OPTION_100002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_100002", action = "action_EVENT_SELECT_OPTION_100002" },
		{ config_id = 1100003, name = "GADGET_CREATE_100003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100003", action = "action_EVENT_GADGET_CREATE_100003" },
		{ config_id = 1100005, name = "VARIABLE_CHANGE_100005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100005", action = "", tag = "133002100" },
		{ config_id = 1100006, name = "CHALLENGE_SUCCESS_100006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "133002100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_100006" },
		{ config_id = 1100007, name = "CHALLENGE_FAIL_100007", event = EventType.EVENT_CHALLENGE_FAIL, source = "133002100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_100007" },
		{ config_id = 1100008, name = "GROUP_LOAD_100008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_100008" }
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
		gadgets = { 100004 },
		regions = { 100009 },
		triggers = { "ENTER_REGION_100009" },
		npcs = { 100010 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_1/Activity_Hunt_Stage_1"