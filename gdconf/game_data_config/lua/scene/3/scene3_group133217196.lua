-- 基础信息
local base_info = {
	group_id = 133217196
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 196001,
	gadget_Teleport_2 = 196002,
	gadget_Teleport_3 = 196003,
	gadget_Teleport_4 = 196004,
	pointarray_1 = 321700004,
	pointarray_2 = 321700005,
	pointarray_3 = 321700006,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 196005,
	gadget_TeleportOperator_2 = 196006,
	gadget_TeleportOperator_3 = 196007,
	gadget_TeleportOperator_4 = 196008,
	group_ID = 133217196,
	pointarray_Rotate = 321700007,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_2,10}
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
		{ config_id = 196001, gadget_id = 70950095, pos = { x = -4790.713, y = 194.165, z = -3692.284 }, rot = { x = 0.000, y = 253.725, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 196002, gadget_id = 70950095, pos = { x = -5040.986, y = 196.011, z = -3769.460 }, rot = { x = 0.000, y = 73.725, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 196003, gadget_id = 70950095, pos = { x = -5035.964, y = 195.505, z = -3494.928 }, rot = { x = 0.000, y = 8.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
		{ config_id = 196004, gadget_id = 70950095, pos = { x = -5048.758, y = 200.323, z = -3646.688 }, rot = { x = 0.000, y = 8.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 196005, gadget_id = 70950145, pos = { x = -4790.713, y = 194.165, z = -3692.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 196006, gadget_id = 70950145, pos = { x = -5040.986, y = 196.011, z = -3769.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 196007, gadget_id = 70950145, pos = { x = -5035.964, y = 195.505, z = -3494.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
		{ config_id = 196008, gadget_id = 70950145, pos = { x = -5048.759, y = 200.323, z = -3646.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 196013, gadget_id = 70330114, pos = { x = -4790.713, y = 195.728, z = -3692.284 }, rot = { x = 0.000, y = 253.725, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 196014, gadget_id = 70330114, pos = { x = -5040.986, y = 197.888, z = -3769.460 }, rot = { x = 0.000, y = 73.725, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 196015, gadget_id = 70330114, pos = { x = -5035.964, y = 197.361, z = -3494.928 }, rot = { x = 0.000, y = 188.000, z = 0.000 }, level = 30, area_id = 18 },
		{ config_id = 196016, gadget_id = 70330114, pos = { x = -5048.759, y = 201.933, z = -3646.688 }, rot = { x = 0.000, y = 8.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 196009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4790.713, y = 194.165, z = -3692.284 }, area_id = 14 },
		{ config_id = 196010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5040.986, y = 196.011, z = -3769.460 }, area_id = 14 },
		{ config_id = 196011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5035.964, y = 195.505, z = -3494.928 }, area_id = 18 },
		{ config_id = 196012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5048.759, y = 200.323, z = -3646.688 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1196009, name = "ENTER_REGION_196009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196009", action = "action_EVENT_ENTER_REGION_196009", trigger_count = 0, forbid_guest = false },
		{ config_id = 1196010, name = "ENTER_REGION_196010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196010", action = "action_EVENT_ENTER_REGION_196010", trigger_count = 0, forbid_guest = false },
		{ config_id = 1196011, name = "ENTER_REGION_196011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196011", action = "action_EVENT_ENTER_REGION_196011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1196012, name = "ENTER_REGION_196012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196012", action = "action_EVENT_ENTER_REGION_196012", trigger_count = 0, forbid_guest = false }
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