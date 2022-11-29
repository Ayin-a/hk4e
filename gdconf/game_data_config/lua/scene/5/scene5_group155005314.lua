-- 基础信息
local base_info = {
	group_id = 155005314
}

-- Trigger变量
local defs = {
	group_ID = 155005314,
	gadget_airforce = 314001,
	gadget_windforce = 314003,
	route_01 = 500500097,
	gadget_Switch = 314004,
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
		{ config_id = 314001, gadget_id = 70690028, pos = { x = 467.120, y = 140.026, z = 1022.444 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500500097, start_route = false, area_id = 200 },
		{ config_id = 314003, gadget_id = 70690030, pos = { x = 467.120, y = 140.026, z = 1022.444 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 314004, gadget_id = 70360305, pos = { x = 462.359, y = 140.141, z = 1019.084 }, rot = { x = 0.000, y = 245.191, z = 0.000 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 314009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 467.120, y = 143.026, z = 1022.444 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1314002, name = "LEVEL_TAG_CHANGE_314002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_314002", action = "action_EVENT_LEVEL_TAG_CHANGE_314002", trigger_count = 0 },
		{ config_id = 1314005, name = "GADGET_CREATE_314005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_314005", action = "action_EVENT_GADGET_CREATE_314005", trigger_count = 0 },
		{ config_id = 1314006, name = "GROUP_LOAD_314006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_314006", trigger_count = 0 },
		{ config_id = 1314007, name = "PLATFORM_REACH_POINT_314007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_314007", action = "action_EVENT_PLATFORM_REACH_POINT_314007", trigger_count = 0 },
		{ config_id = 1314008, name = "GADGET_STATE_CHANGE_314008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_314008", action = "action_EVENT_GADGET_STATE_CHANGE_314008", trigger_count = 0 },
		{ config_id = 1314009, name = "ENTER_REGION_314009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_314009", action = "action_EVENT_ENTER_REGION_314009", trigger_count = 0 },
		{ config_id = 1314010, name = "ANY_GADGET_DIE_314010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_314010", action = "action_EVENT_ANY_GADGET_DIE_314010", trigger_count = 0 },
		{ config_id = 1314011, name = "GADGET_STATE_CHANGE_314011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_314011", action = "action_EVENT_GADGET_STATE_CHANGE_314011", trigger_count = 0 }
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