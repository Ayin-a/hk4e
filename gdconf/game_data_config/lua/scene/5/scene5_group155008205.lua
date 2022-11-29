-- 基础信息
local base_info = {
	group_id = 155008205
}

-- Trigger变量
local defs = {
	group_ID = 155008205,
	gadget_airforce = 205001,
	gadget_windforce = 205002,
	route_01 = 500800042,
	gadget_Switch = 205003,
	reachpoint = 2
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {defs.gadget_Switch}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 205001, gadget_id = 70690028, pos = { x = -373.296, y = 214.202, z = 376.636 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500800042, start_route = false, area_id = 200 },
		{ config_id = 205002, gadget_id = 70690030, pos = { x = -373.296, y = 214.202, z = 376.636 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 205003, gadget_id = 70360309, pos = { x = -367.926, y = 213.596, z = 375.953 }, rot = { x = 0.000, y = 284.672, z = 0.000 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 205009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -373.296, y = 217.202, z = 376.636 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1205004, name = "LEVEL_TAG_CHANGE_205004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_205004", action = "action_EVENT_LEVEL_TAG_CHANGE_205004", trigger_count = 0 },
		{ config_id = 1205005, name = "GADGET_CREATE_205005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_205005", action = "action_EVENT_GADGET_CREATE_205005", trigger_count = 0 },
		{ config_id = 1205006, name = "GROUP_LOAD_205006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_205006", trigger_count = 0 },
		{ config_id = 1205007, name = "PLATFORM_REACH_POINT_205007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_205007", action = "action_EVENT_PLATFORM_REACH_POINT_205007", trigger_count = 0 },
		{ config_id = 1205008, name = "GADGET_STATE_CHANGE_205008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205008", action = "action_EVENT_GADGET_STATE_CHANGE_205008", trigger_count = 0 },
		{ config_id = 1205009, name = "ENTER_REGION_205009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_205009", action = "action_EVENT_ENTER_REGION_205009", trigger_count = 0 },
		{ config_id = 1205010, name = "ANY_GADGET_DIE_205010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_205010", action = "action_EVENT_ANY_GADGET_DIE_205010", trigger_count = 0 },
		{ config_id = 1205011, name = "GADGET_STATE_CHANGE_205011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205011", action = "action_EVENT_GADGET_STATE_CHANGE_205011", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_4/EnvState"