-- 基础信息
local base_info = {
	group_id = 155006077
}

-- Trigger变量
local defs = {
	group_ID = 155006077,
	gadget_airforce = 77001,
	gadget_mask = 77002,
	gadget_windforce = 77003,
	route_01 = 500600009,
	gadget_Switch = 77011
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
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 77001, gadget_id = 70690028, pos = { x = 277.100, y = 150.658, z = -424.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 500600009, start_route = false, area_id = 200 },
		{ config_id = 77002, gadget_id = 70290229, pos = { x = 277.100, y = 150.658, z = -424.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 77003, gadget_id = 70690030, pos = { x = 277.100, y = 150.658, z = -424.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 77011, gadget_id = 70360309, pos = { x = 271.004, y = 152.104, z = -424.355 }, rot = { x = 337.250, y = 247.825, z = 1.106 }, level = 36, area_id = 200 }
	},
	regions = {
		{ config_id = 77006, shape = RegionShape.SPHERE, radius = 15, pos = { x = 271.114, y = 154.254, z = -427.148 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1077004, name = "GROUP_LOAD_77004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_77004", trigger_count = 0 },
		{ config_id = 1077005, name = "VARIABLE_CHANGE_77005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_77005", trigger_count = 0 },
		{ config_id = 1077006, name = "ENTER_REGION_77006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_77006", action = "action_EVENT_ENTER_REGION_77006", trigger_count = 0 },
		{ config_id = 1077007, name = "PLATFORM_REACH_POINT_77007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_77007", action = "action_EVENT_PLATFORM_REACH_POINT_77007", trigger_count = 0 },
		{ config_id = 1077008, name = "GADGET_STATE_CHANGE_77008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77008", action = "action_EVENT_GADGET_STATE_CHANGE_77008", trigger_count = 0 },
		{ config_id = 1077009, name = "AVATAR_NEAR_PLATFORM_77009", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_77009", action = "action_EVENT_AVATAR_NEAR_PLATFORM_77009", trigger_count = 0 },
		{ config_id = 1077010, name = "TIME_AXIS_PASS_77010", event = EventType.EVENT_TIME_AXIS_PASS, source = "InitalWindForce", condition = "", action = "action_EVENT_TIME_AXIS_PASS_77010", trigger_count = 0 },
		{ config_id = 1077013, name = "ANY_GADGET_DIE_77013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_77013", action = "action_EVENT_ANY_GADGET_DIE_77013", trigger_count = 0 }
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
	},
	{
		-- suite_id = 3,
		-- description = 出现方法替换Suit,
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