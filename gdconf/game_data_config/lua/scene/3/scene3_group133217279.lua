-- 基础信息
local base_info = {
	group_id = 133217279
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 279001,
	gadget_Teleport_2 = 279002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700023,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 279005,
	gadget_TeleportOperator_2 = 279006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217279,
	pointarray_Rotate = 321700026,
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
		{ config_id = 279001, gadget_id = 70950095, pos = { x = -4433.086, y = 267.163, z = -4207.670 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 279002, gadget_id = 70950095, pos = { x = -4575.115, y = 417.762, z = -4167.859 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 279005, gadget_id = 70950145, pos = { x = -4429.846, y = 90.000, z = -4208.083 }, rot = { x = 337.984, y = 275.079, z = 353.171 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 279006, gadget_id = 70950145, pos = { x = -4575.974, y = 90.000, z = -4167.645 }, rot = { x = 0.000, y = 104.657, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 279009, gadget_id = 70330114, pos = { x = -4433.162, y = 265.836, z = -4207.771 }, rot = { x = 0.000, y = 270.494, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 279010, gadget_id = 70330114, pos = { x = -4574.957, y = 418.644, z = -4167.869 }, rot = { x = 0.000, y = 91.214, z = 0.000 }, level = 2, area_id = 14 }
	},
	regions = {
		{ config_id = 279015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4432.829, y = 267.053, z = -4207.646 }, area_id = 14 },
		{ config_id = 279016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4575.376, y = 417.793, z = -4167.839 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1279003, name = "GADGET_CREATE_279003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279003", action = "action_EVENT_GADGET_CREATE_279003", trigger_count = 0 },
		{ config_id = 1279004, name = "TIME_AXIS_PASS_279004", event = EventType.EVENT_TIME_AXIS_PASS, source = "Start", condition = "condition_EVENT_TIME_AXIS_PASS_279004", action = "action_EVENT_TIME_AXIS_PASS_279004", trigger_count = 0 },
		{ config_id = 1279015, name = "ENTER_REGION_279015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_279015", action = "action_EVENT_ENTER_REGION_279015", trigger_count = 0 },
		{ config_id = 1279016, name = "ENTER_REGION_279016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_279016", action = "action_EVENT_ENTER_REGION_279016", trigger_count = 0 }
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