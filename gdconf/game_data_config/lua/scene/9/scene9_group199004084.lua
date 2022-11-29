-- 基础信息
local base_info = {
	group_id = 199004084
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 900400007,
	gadget_seelie = 84002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
		{ config_id = 84001, gadget_id = 70710006, pos = { x = -315.287, y = 179.211, z = -648.102 }, rot = { x = 358.020, y = 305.734, z = 2.746 }, level = 20, area_id = 400 },
		{ config_id = 84002, gadget_id = 70710010, pos = { x = -354.467, y = 124.138, z = -576.352 }, rot = { x = 0.000, y = 198.898, z = 0.000 }, level = 20, route_id = 900400008, area_id = 400 },
		{ config_id = 84003, gadget_id = 70710007, pos = { x = -334.552, y = 123.165, z = -574.654 }, rot = { x = 0.000, y = 317.549, z = 0.000 }, level = 20, area_id = 400 }
	},
	regions = {
		{ config_id = 84007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -356.788, y = 122.494, z = -578.307 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1084005, name = "PLATFORM_REACH_POINT_84005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_84005", action = "action_EVENT_PLATFORM_REACH_POINT_84005", trigger_count = 0 },
		{ config_id = 1084006, name = "AVATAR_NEAR_PLATFORM_84006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_84006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_84006", trigger_count = 0 },
		{ config_id = 1084007, name = "ENTER_REGION_84007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_84007", action = "action_EVENT_ENTER_REGION_84007", trigger_count = 0 },
		{ config_id = 1084008, name = "GADGET_STATE_CHANGE_84008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_84008", action = "action_EVENT_GADGET_STATE_CHANGE_84008" },
		{ config_id = 1084009, name = "GADGET_CREATE_84009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_84009", action = "action_EVENT_GADGET_CREATE_84009", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================