-- 基础信息
local base_info = {
	group_id = 133222311
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 311002,
	gadget_Teleport_2 = 311001,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322200031,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 311005,
	gadget_TeleportOperator_2 = 311006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133222311,
	pointarray_Rotate = 322200034,
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
		{ config_id = 311001, gadget_id = 70950095, pos = { x = -4493.894, y = 389.659, z = -4247.371 }, rot = { x = 0.000, y = 111.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 311002, gadget_id = 70950095, pos = { x = -4457.259, y = 389.095, z = -4260.197 }, rot = { x = 0.000, y = 291.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 311005, gadget_id = 70950145, pos = { x = -4485.440, y = 74.253, z = -4274.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 311006, gadget_id = 70950145, pos = { x = -4485.440, y = 74.253, z = -4274.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 }
	},
	regions = {
		{ config_id = 311015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4493.894, y = 390.576, z = -4247.371 }, area_id = 14 },
		{ config_id = 311016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4457.259, y = 390.037, z = -4260.197 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1311003, name = "GADGET_CREATE_311003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_311003", action = "action_EVENT_GADGET_CREATE_311003", trigger_count = 0 },
		{ config_id = 1311004, name = "TIME_AXIS_PASS_311004", event = EventType.EVENT_TIME_AXIS_PASS, source = "Start", condition = "condition_EVENT_TIME_AXIS_PASS_311004", action = "action_EVENT_TIME_AXIS_PASS_311004", trigger_count = 0 },
		{ config_id = 1311015, name = "ENTER_REGION_311015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_311015", action = "action_EVENT_ENTER_REGION_311015", trigger_count = 0, forbid_guest = false },
		{ config_id = 1311016, name = "ENTER_REGION_311016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_311016", action = "action_EVENT_ENTER_REGION_311016", trigger_count = 0, forbid_guest = false }
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

require "BlackBoxPlay/TeleportHighway"