-- 基础信息
local base_info = {
	group_id = 133222255
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 255001,
	gadget_Teleport_2 = 255002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322200026,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 255005,
	gadget_TeleportOperator_2 = 255006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133222255,
	pointarray_Rotate = 322200029,
	rotStep = 90
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
		{ config_id = 255001, gadget_id = 70950095, pos = { x = -4315.642, y = 245.954, z = -4190.110 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 255002, gadget_id = 70950095, pos = { x = -4399.198, y = 251.395, z = -3894.778 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 255005, gadget_id = 70950145, pos = { x = -4315.645, y = 90.000, z = -4190.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 255006, gadget_id = 70950145, pos = { x = -4315.645, y = 90.000, z = -4190.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 255009, gadget_id = 70330114, pos = { x = -4315.999, y = 247.101, z = -4189.075 }, rot = { x = 0.000, y = 340.979, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 255010, gadget_id = 70330114, pos = { x = -4397.927, y = 252.929, z = -3897.228 }, rot = { x = 0.000, y = 163.051, z = 0.000 }, level = 2, area_id = 14 }
	},
	regions = {
		{ config_id = 255015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4315.506, y = 246.271, z = -4190.331 }, area_id = 14 },
		{ config_id = 255016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4399.198, y = 251.907, z = -3894.778 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1255015, name = "ENTER_REGION_255015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255015", action = "action_EVENT_ENTER_REGION_255015", trigger_count = 0, forbid_guest = false },
		{ config_id = 1255016, name = "ENTER_REGION_255016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255016", action = "action_EVENT_ENTER_REGION_255016", trigger_count = 0, forbid_guest = false }
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