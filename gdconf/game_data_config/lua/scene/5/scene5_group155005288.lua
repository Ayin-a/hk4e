-- 基础信息
local base_info = {
	group_id = 155005288
}

-- Trigger变量
local defs = {
	group_ID = 155005288,
	gadget_airforce = 288001,
	gadget_windforce = 288003,
	route_01 = 500500095,
	gadget_Switch = 288004,
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
		{ config_id = 288001, gadget_id = 70690028, pos = { x = 854.960, y = 247.320, z = 105.879 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500500095, start_route = false, area_id = 200 },
		{ config_id = 288003, gadget_id = 70690030, pos = { x = 854.960, y = 247.320, z = 105.879 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
		{ config_id = 288004, gadget_id = 70360305, pos = { x = 857.086, y = 246.944, z = 107.964 }, rot = { x = 0.000, y = 262.751, z = 357.465 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 288009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 854.960, y = 250.320, z = 105.879 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1288002, name = "LEVEL_TAG_CHANGE_288002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_288002", action = "action_EVENT_LEVEL_TAG_CHANGE_288002", trigger_count = 0 },
		{ config_id = 1288005, name = "GADGET_CREATE_288005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_288005", action = "action_EVENT_GADGET_CREATE_288005", trigger_count = 0 },
		{ config_id = 1288006, name = "GROUP_LOAD_288006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_288006", trigger_count = 0 },
		{ config_id = 1288007, name = "PLATFORM_REACH_POINT_288007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_288007", action = "action_EVENT_PLATFORM_REACH_POINT_288007", trigger_count = 0 },
		{ config_id = 1288008, name = "GADGET_STATE_CHANGE_288008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288008", action = "action_EVENT_GADGET_STATE_CHANGE_288008", trigger_count = 0 },
		{ config_id = 1288009, name = "ENTER_REGION_288009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_288009", action = "action_EVENT_ENTER_REGION_288009", trigger_count = 0 },
		{ config_id = 1288010, name = "ANY_GADGET_DIE_288010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_288010", action = "action_EVENT_ANY_GADGET_DIE_288010", trigger_count = 0 },
		{ config_id = 1288011, name = "GADGET_STATE_CHANGE_288011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288011", action = "action_EVENT_GADGET_STATE_CHANGE_288011", trigger_count = 0 }
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