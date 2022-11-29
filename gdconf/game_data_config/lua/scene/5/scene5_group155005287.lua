-- 基础信息
local base_info = {
	group_id = 155005287
}

-- Trigger变量
local defs = {
	group_ID = 155005287,
	gadget_airforce = 287001,
	gadget_windforce = 287003,
	route_01 = 500500094,
	gadget_Switch = 287004,
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
		{ config_id = 287001, gadget_id = 70690028, pos = { x = 666.146, y = 198.980, z = 308.930 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500500094, start_route = false, area_id = 200 },
		{ config_id = 287003, gadget_id = 70690030, pos = { x = 666.146, y = 198.980, z = 308.930 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 287004, gadget_id = 70360309, pos = { x = 664.689, y = 197.827, z = 312.958 }, rot = { x = 2.820, y = 278.832, z = 359.106 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 287009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 666.146, y = 201.980, z = 308.930 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1287002, name = "LEVEL_TAG_CHANGE_287002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_287002", action = "action_EVENT_LEVEL_TAG_CHANGE_287002", trigger_count = 0 },
		{ config_id = 1287005, name = "GADGET_CREATE_287005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_287005", action = "action_EVENT_GADGET_CREATE_287005", trigger_count = 0 },
		{ config_id = 1287006, name = "GROUP_LOAD_287006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_287006", trigger_count = 0 },
		{ config_id = 1287007, name = "PLATFORM_REACH_POINT_287007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_287007", action = "action_EVENT_PLATFORM_REACH_POINT_287007", trigger_count = 0 },
		{ config_id = 1287008, name = "GADGET_STATE_CHANGE_287008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287008", action = "action_EVENT_GADGET_STATE_CHANGE_287008", trigger_count = 0 },
		{ config_id = 1287009, name = "ENTER_REGION_287009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_287009", action = "action_EVENT_ENTER_REGION_287009", trigger_count = 0 },
		{ config_id = 1287010, name = "ANY_GADGET_DIE_287010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287010", action = "action_EVENT_ANY_GADGET_DIE_287010", trigger_count = 0 },
		{ config_id = 1287011, name = "GADGET_STATE_CHANGE_287011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287011", action = "action_EVENT_GADGET_STATE_CHANGE_287011", trigger_count = 0 }
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