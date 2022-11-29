-- 基础信息
local base_info = {
	group_id = 133217280
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 280001,
	gadget_Teleport_2 = 280002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700027,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 280005,
	gadget_TeleportOperator_2 = 280006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217280,
	pointarray_Rotate = 321700030,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10}

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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 280001, gadget_id = 70950095, pos = { x = -4573.867, y = 417.379, z = -4175.500 }, rot = { x = 0.000, y = 249.851, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 280002, gadget_id = 70950095, pos = { x = -4798.760, y = 513.203, z = -4257.299 }, rot = { x = 0.000, y = 70.899, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 280005, gadget_id = 70950145, pos = { x = -4573.858, y = 90.000, z = -4175.462 }, rot = { x = 0.000, y = 245.494, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 280006, gadget_id = 70950145, pos = { x = -4798.751, y = 90.000, z = -4258.182 }, rot = { x = 0.000, y = 73.260, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 280009, gadget_id = 70330114, pos = { x = -4574.439, y = 421.622, z = -4175.680 }, rot = { x = 0.000, y = 251.460, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 280010, gadget_id = 70330114, pos = { x = -4799.018, y = 515.547, z = -4257.239 }, rot = { x = 0.000, y = 81.252, z = 0.000 }, level = 2, area_id = 14 }
	},
	regions = {
		{ config_id = 280015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4573.896, y = 417.696, z = -4175.572 }, area_id = 14 },
		{ config_id = 280016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4798.714, y = 513.817, z = -4257.557 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1280003, name = "GADGET_CREATE_280003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_280003", action = "action_EVENT_GADGET_CREATE_280003", trigger_count = 0 },
		{ config_id = 1280004, name = "TIME_AXIS_PASS_280004", event = EventType.EVENT_TIME_AXIS_PASS, source = "Start", condition = "condition_EVENT_TIME_AXIS_PASS_280004", action = "action_EVENT_TIME_AXIS_PASS_280004", trigger_count = 0 },
		{ config_id = 1280015, name = "ENTER_REGION_280015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280015", action = "action_EVENT_ENTER_REGION_280015", trigger_count = 0 },
		{ config_id = 1280016, name = "ENTER_REGION_280016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280016", action = "action_EVENT_ENTER_REGION_280016", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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

require "BlackBoxPlay/TeleportHighway"