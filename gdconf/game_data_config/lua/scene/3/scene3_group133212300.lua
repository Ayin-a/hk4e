-- 基础信息
local base_info = {
	group_id = 133212300
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 300001,
	gadget_Teleport_2 = 300002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321200033,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 300005,
	gadget_TeleportOperator_2 = 300006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133212300,
	pointarray_Rotate = 321200036
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,7}
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
		{ config_id = 300001, gadget_id = 70950095, pos = { x = -3687.308, y = 271.827, z = -2325.579 }, rot = { x = 0.000, y = 164.716, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 13 },
		{ config_id = 300002, gadget_id = 70950095, pos = { x = -3760.839, y = 274.031, z = -2340.812 }, rot = { x = 1.088, y = 1.306, z = 348.246 }, level = 2, persistent = true, is_use_point_array = true, area_id = 13 },
		{ config_id = 300005, gadget_id = 70360001, pos = { x = -3687.270, y = 271.341, z = -2325.578 }, rot = { x = 0.000, y = 74.716, z = 0.000 }, level = 2, persistent = true, area_id = 13 },
		{ config_id = 300006, gadget_id = 70360001, pos = { x = -3760.712, y = 273.933, z = -2340.696 }, rot = { x = 1.700, y = 0.000, z = 298.033 }, level = 2, persistent = true, area_id = 13 }
	},
	regions = {
		{ config_id = 300009, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3687.608, y = 271.846, z = -2325.067 }, area_id = 13 },
		{ config_id = 300010, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3759.996, y = 273.720, z = -2340.266 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1300009, name = "ENTER_REGION_300009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300009", action = "action_EVENT_ENTER_REGION_300009", trigger_count = 0 },
		{ config_id = 1300010, name = "ENTER_REGION_300010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300010", action = "action_EVENT_ENTER_REGION_300010", trigger_count = 0 }
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