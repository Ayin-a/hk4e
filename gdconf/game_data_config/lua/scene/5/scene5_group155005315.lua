-- 基础信息
local base_info = {
	group_id = 155005315
}

-- Trigger变量
local defs = {
	group_ID = 155005315,
	gadget_airforce = 315001,
	gadget_windforce = 315003,
	route_01 = 500500098,
	gadget_Switch = 315004,
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
		{ config_id = 315001, gadget_id = 70690028, pos = { x = 469.191, y = 138.744, z = 1013.805 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500500098, start_route = false, area_id = 200 },
		{ config_id = 315003, gadget_id = 70690030, pos = { x = 469.191, y = 138.744, z = 1013.805 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 315004, gadget_id = 70360305, pos = { x = 466.820, y = 140.680, z = 1017.989 }, rot = { x = 0.000, y = 332.294, z = 0.000 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 315009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 469.191, y = 141.744, z = 1013.805 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1315002, name = "LEVEL_TAG_CHANGE_315002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_315002", action = "action_EVENT_LEVEL_TAG_CHANGE_315002", trigger_count = 0 },
		{ config_id = 1315005, name = "GADGET_CREATE_315005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_315005", action = "action_EVENT_GADGET_CREATE_315005", trigger_count = 0 },
		{ config_id = 1315006, name = "GROUP_LOAD_315006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_315006", trigger_count = 0 },
		{ config_id = 1315007, name = "PLATFORM_REACH_POINT_315007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_315007", action = "action_EVENT_PLATFORM_REACH_POINT_315007", trigger_count = 0 },
		{ config_id = 1315008, name = "GADGET_STATE_CHANGE_315008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315008", action = "action_EVENT_GADGET_STATE_CHANGE_315008", trigger_count = 0 },
		{ config_id = 1315009, name = "ENTER_REGION_315009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_315009", action = "action_EVENT_ENTER_REGION_315009", trigger_count = 0 },
		{ config_id = 1315010, name = "ANY_GADGET_DIE_315010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_315010", action = "action_EVENT_ANY_GADGET_DIE_315010", trigger_count = 0 },
		{ config_id = 1315011, name = "GADGET_STATE_CHANGE_315011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315011", action = "action_EVENT_GADGET_STATE_CHANGE_315011", trigger_count = 0 }
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