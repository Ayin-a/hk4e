-- 基础信息
local base_info = {
	group_id = 133210236
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 236001,
	gadget_Teleport_2 = 236002,
	gadget_Teleport_3 = 236003,
	gadget_Teleport_4 = 236018,
	pointarray_1 = 321000015,
	pointarray_2 = 321000016,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 236005,
	gadget_TeleportOperator_2 = 236006,
	gadget_TeleportOperator_3 = 236007,
	gadget_TeleportOperator_4 = 236019,
	group_ID = 133210236,
	pointarray_Rotate = 321000018,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_4,defs.gadget_Teleport_3,defs.pointarray_2,10}
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
		{ config_id = 236001, gadget_id = 70950095, pos = { x = -3894.420, y = 245.153, z = -474.913 }, rot = { x = 0.000, y = 297.715, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
		{ config_id = 236002, gadget_id = 70950095, pos = { x = -3963.110, y = 229.567, z = -433.853 }, rot = { x = 0.000, y = 135.843, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
		{ config_id = 236003, gadget_id = 70950095, pos = { x = -3888.862, y = 200.373, z = -365.991 }, rot = { x = 0.000, y = 236.201, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
		{ config_id = 236004, gadget_id = 70330114, pos = { x = -3894.387, y = 246.842, z = -475.064 }, rot = { x = 0.000, y = 300.712, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 236005, gadget_id = 70950145, pos = { x = -3894.420, y = 245.153, z = -474.913 }, rot = { x = 351.041, y = 358.411, z = 10.654 }, level = 2, persistent = true, area_id = 17 },
		{ config_id = 236006, gadget_id = 70950145, pos = { x = -3963.110, y = 229.567, z = -433.853 }, rot = { x = 0.000, y = 359.739, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
		{ config_id = 236007, gadget_id = 70950145, pos = { x = -3888.862, y = 200.373, z = -365.991 }, rot = { x = 1.789, y = 0.097, z = 0.898 }, level = 2, persistent = true, area_id = 17 },
		{ config_id = 236008, gadget_id = 70330114, pos = { x = -3963.205, y = 231.283, z = -433.820 }, rot = { x = 0.000, y = 130.075, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 236012, gadget_id = 70330114, pos = { x = -3963.147, y = 231.063, z = -433.846 }, rot = { x = 358.308, y = 42.049, z = 11.379 }, level = 30, area_id = 17 },
		{ config_id = 236013, gadget_id = 70330114, pos = { x = -3888.780, y = 202.445, z = -365.894 }, rot = { x = 0.000, y = 236.201, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 236014, gadget_id = 70950095, pos = { x = -3969.341, y = 226.214, z = -422.361 }, rot = { x = 0.000, y = 55.112, z = 0.000 }, level = 30, persistent = true, is_use_point_array = true, area_id = 17 },
		{ config_id = 236015, gadget_id = 70950145, pos = { x = -3969.341, y = 226.214, z = -422.361 }, rot = { x = 0.000, y = 279.008, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
		{ config_id = 236017, gadget_id = 70330114, pos = { x = -3968.492, y = 227.304, z = -421.769 }, rot = { x = 0.000, y = 55.112, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 236018, gadget_id = 70950095, pos = { x = -3969.341, y = 226.214, z = -422.361 }, rot = { x = 0.000, y = 55.112, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
		{ config_id = 236019, gadget_id = 70950145, pos = { x = -3969.341, y = 226.214, z = -422.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
	},
	regions = {
		{ config_id = 236009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3894.420, y = 246.049, z = -474.913 }, area_id = 17 },
		{ config_id = 236010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3963.110, y = 230.468, z = -433.853 }, area_id = 17 },
		{ config_id = 236011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3888.862, y = 200.954, z = -365.991 }, area_id = 17 },
		{ config_id = 236016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3969.341, y = 227.114, z = -422.361 }, area_id = 17 },
		{ config_id = 236020, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3969.341, y = 226.800, z = -422.361 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1236009, name = "ENTER_REGION_236009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236009", action = "action_EVENT_ENTER_REGION_236009", trigger_count = 0, forbid_guest = false },
		{ config_id = 1236010, name = "ENTER_REGION_236010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236010", action = "action_EVENT_ENTER_REGION_236010", trigger_count = 0, forbid_guest = false },
		{ config_id = 1236011, name = "ENTER_REGION_236011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236011", action = "action_EVENT_ENTER_REGION_236011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1236016, name = "ENTER_REGION_236016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236016", action = "action_EVENT_ENTER_REGION_236016", trigger_count = 0, forbid_guest = false },
		{ config_id = 1236020, name = "ENTER_REGION_236020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236020", action = "action_EVENT_ENTER_REGION_236020", trigger_count = 0, forbid_guest = false }
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