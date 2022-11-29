-- 基础信息
local base_info = {
	group_id = 133213052
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 52001,
	gadget_Teleport_2 = 52002,
	gadget_Teleport_3 = 52003,
	gadget_Teleport_4 = 52004,
	pointarray_1 = 321300009,
	pointarray_2 = 321300010,
	pointarray_3 = 321300011,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 52005,
	gadget_TeleportOperator_2 = 52006,
	gadget_TeleportOperator_3 = 52007,
	gadget_TeleportOperator_4 = 52008,
	group_ID = 133213052,
	pointarray_Rotate = 321300012
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,7},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,7},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_3,7}
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
		{ config_id = 52001, gadget_id = 70950095, pos = { x = -3568.045, y = 249.326, z = -3206.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 52002, gadget_id = 70950095, pos = { x = -3603.647, y = 268.785, z = -3102.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 52003, gadget_id = 70950095, pos = { x = -3697.289, y = 285.631, z = -3041.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 52004, gadget_id = 70950095, pos = { x = -3801.784, y = 321.077, z = -3068.599 }, rot = { x = 0.000, y = 71.421, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 52005, gadget_id = 70360001, pos = { x = -3571.315, y = 252.125, z = -3185.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
		{ config_id = 52006, gadget_id = 70360001, pos = { x = -3570.177, y = 252.569, z = -3209.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
		{ config_id = 52007, gadget_id = 70360001, pos = { x = -3593.813, y = 251.849, z = -3208.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
		{ config_id = 52008, gadget_id = 70360001, pos = { x = -3537.194, y = 252.048, z = -3185.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 }
	},
	regions = {
		{ config_id = 52009, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3571.270, y = 252.927, z = -3185.748 }, area_id = 12 },
		{ config_id = 52010, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3570.140, y = 252.597, z = -3209.065 }, area_id = 12 },
		{ config_id = 52011, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3593.829, y = 252.304, z = -3208.625 }, area_id = 12 },
		{ config_id = 52012, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3537.160, y = 252.267, z = -3185.938 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1052009, name = "ENTER_REGION_52009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52009", action = "action_EVENT_ENTER_REGION_52009", trigger_count = 0 },
		{ config_id = 1052010, name = "ENTER_REGION_52010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52010", action = "action_EVENT_ENTER_REGION_52010", trigger_count = 0 },
		{ config_id = 1052011, name = "ENTER_REGION_52011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52011", action = "action_EVENT_ENTER_REGION_52011", trigger_count = 0 },
		{ config_id = 1052012, name = "ENTER_REGION_52012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52012", action = "action_EVENT_ENTER_REGION_52012", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "BlackBoxPlay/TeleportHighway"