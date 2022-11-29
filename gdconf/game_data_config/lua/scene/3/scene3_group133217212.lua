-- 基础信息
local base_info = {
	group_id = 133217212
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 212001,
	gadget_Teleport_2 = 212002,
	gadget_Teleport_3 = 212003,
	gadget_Teleport_4 = 212004,
	pointarray_1 = 321700010,
	pointarray_2 = 321700011,
	pointarray_3 = 321700012,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 212005,
	gadget_TeleportOperator_2 = 212006,
	gadget_TeleportOperator_3 = 212007,
	gadget_TeleportOperator_4 = 212008,
	group_ID = 133217212,
	pointarray_Rotate = 321700013,
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
		{ config_id = 212001, gadget_id = 70950095, pos = { x = -5064.264, y = 198.221, z = -3802.385 }, rot = { x = 0.000, y = 187.899, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 212002, gadget_id = 70950095, pos = { x = -5054.599, y = 269.691, z = -3727.560 }, rot = { x = 0.000, y = 187.493, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 212003, gadget_id = 70950095, pos = { x = -5068.732, y = 200.650, z = -3823.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 212004, gadget_id = 70950095, pos = { x = -5011.837, y = 200.064, z = -3800.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 212005, gadget_id = 70950145, pos = { x = -5064.264, y = 198.221, z = -3802.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 212006, gadget_id = 70950145, pos = { x = -5054.599, y = 269.691, z = -3727.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 212007, gadget_id = 70950145, pos = { x = -5068.571, y = 199.887, z = -3823.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 212008, gadget_id = 70950145, pos = { x = -5011.952, y = 200.086, z = -3800.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 212013, gadget_id = 70330114, pos = { x = -5064.264, y = 199.976, z = -3802.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 212014, gadget_id = 70330114, pos = { x = -5054.599, y = 271.919, z = -3727.560 }, rot = { x = 0.000, y = 181.989, z = 0.000 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 212009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5064.264, y = 199.387, z = -3802.385 }, area_id = 14 },
		{ config_id = 212010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5054.599, y = 270.718, z = -3727.560 }, area_id = 14 },
		{ config_id = 212011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5068.586, y = 200.342, z = -3823.828 }, area_id = 14 },
		{ config_id = 212012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5011.917, y = 200.306, z = -3801.141 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1212009, name = "ENTER_REGION_212009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_212009", action = "action_EVENT_ENTER_REGION_212009", trigger_count = 0, forbid_guest = false },
		{ config_id = 1212010, name = "ENTER_REGION_212010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_212010", action = "action_EVENT_ENTER_REGION_212010", trigger_count = 0, forbid_guest = false },
		{ config_id = 1212011, name = "ENTER_REGION_212011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_212011", action = "action_EVENT_ENTER_REGION_212011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1212012, name = "ENTER_REGION_212012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_212012", action = "action_EVENT_ENTER_REGION_212012", trigger_count = 0, forbid_guest = false }
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