-- 基础信息
local base_info = {
	group_id = 155008213
}

-- Trigger变量
local defs = {
	group_ID = 155008213,
	gadget_airforce = 213001,
	gadget_windforce = 213002,
	route_01 = 500800043,
	gadget_Switch = 213003,
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
		{ config_id = 213001, gadget_id = 70690028, pos = { x = -493.409, y = 250.714, z = 479.833 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500800043, start_route = false, area_id = 200 },
		{ config_id = 213002, gadget_id = 70690030, pos = { x = -493.409, y = 250.714, z = 479.833 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 213003, gadget_id = 70360309, pos = { x = -498.818, y = 251.777, z = 480.773 }, rot = { x = 11.565, y = 271.514, z = 0.000 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 213009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -493.409, y = 253.714, z = 479.833 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1213004, name = "LEVEL_TAG_CHANGE_213004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_213004", action = "action_EVENT_LEVEL_TAG_CHANGE_213004", trigger_count = 0 },
		{ config_id = 1213005, name = "GADGET_CREATE_213005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_213005", action = "action_EVENT_GADGET_CREATE_213005", trigger_count = 0 },
		{ config_id = 1213006, name = "GROUP_LOAD_213006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_213006", trigger_count = 0 },
		{ config_id = 1213007, name = "PLATFORM_REACH_POINT_213007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_213007", action = "action_EVENT_PLATFORM_REACH_POINT_213007", trigger_count = 0 },
		{ config_id = 1213008, name = "GADGET_STATE_CHANGE_213008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_213008", action = "action_EVENT_GADGET_STATE_CHANGE_213008", trigger_count = 0 },
		{ config_id = 1213009, name = "ENTER_REGION_213009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_213009", action = "action_EVENT_ENTER_REGION_213009", trigger_count = 0 },
		{ config_id = 1213010, name = "ANY_GADGET_DIE_213010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213010", action = "action_EVENT_ANY_GADGET_DIE_213010", trigger_count = 0 },
		{ config_id = 1213011, name = "GADGET_STATE_CHANGE_213011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_213011", action = "action_EVENT_GADGET_STATE_CHANGE_213011", trigger_count = 0 }
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