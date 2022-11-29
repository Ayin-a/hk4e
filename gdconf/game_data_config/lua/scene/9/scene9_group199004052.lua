-- 基础信息
local base_info = {
	group_id = 199004052
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 900400002,
	gadget_seelie = 52002
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
		{ config_id = 52001, gadget_id = 70710006, pos = { x = -394.359, y = 186.003, z = -615.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 52002, gadget_id = 70710010, pos = { x = -372.658, y = 132.075, z = -576.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400003, area_id = 400 },
		{ config_id = 52003, gadget_id = 70710007, pos = { x = -381.457, y = 133.089, z = -586.841 }, rot = { x = 0.000, y = 113.474, z = 0.000 }, level = 20, area_id = 400 }
	},
	regions = {
		{ config_id = 52007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -371.652, y = 132.256, z = -576.234 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1052005, name = "PLATFORM_REACH_POINT_52005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_52005", action = "action_EVENT_PLATFORM_REACH_POINT_52005", trigger_count = 0 },
		{ config_id = 1052006, name = "AVATAR_NEAR_PLATFORM_52006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_52006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_52006", trigger_count = 0 },
		{ config_id = 1052007, name = "ENTER_REGION_52007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52007", action = "action_EVENT_ENTER_REGION_52007", trigger_count = 0 },
		{ config_id = 1052008, name = "GADGET_STATE_CHANGE_52008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52008", action = "action_EVENT_GADGET_STATE_CHANGE_52008" },
		{ config_id = 1052009, name = "GADGET_CREATE_52009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_52009", action = "action_EVENT_GADGET_CREATE_52009", trigger_count = 0 }
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