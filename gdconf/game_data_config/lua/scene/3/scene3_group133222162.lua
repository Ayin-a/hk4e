-- 基础信息
local base_info = {
	group_id = 133222162
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 162001,
	gadget_Teleport_2 = 162002,
	gadget_Teleport_3 = 162003,
	gadget_Teleport_4 = 162004,
	pointarray_1 = 322200012,
	pointarray_2 = 322200013,
	pointarray_3 = 322200014,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 162005,
	gadget_TeleportOperator_2 = 162006,
	gadget_TeleportOperator_3 = 162007,
	gadget_TeleportOperator_4 = 162008,
	group_ID = 133222162,
	pointarray_Rotate = 322200015,
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
	{ config_id = 1, name = "tele1", value = 0, no_refresh = false },
	{ config_id = 2, name = "tele2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 162001, gadget_id = 70950095, pos = { x = -5200.374, y = 201.935, z = -4298.780 }, rot = { x = 0.000, y = 139.313, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 162002, gadget_id = 70950095, pos = { x = -5246.173, y = 228.799, z = -4244.998 }, rot = { x = 0.000, y = 148.557, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 162003, gadget_id = 70950095, pos = { x = -5298.537, y = 203.294, z = -4300.847 }, rot = { x = 0.000, y = 285.806, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true },
		{ config_id = 162004, gadget_id = 70950095, pos = { x = -5246.215, y = 237.209, z = -4317.812 }, rot = { x = 0.000, y = 289.272, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 162005, gadget_id = 70950145, pos = { x = -5200.374, y = 201.935, z = -4298.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 162006, gadget_id = 70950145, pos = { x = -5246.173, y = 228.799, z = -4244.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 162007, gadget_id = 70950145, pos = { x = -5298.537, y = 203.294, z = -4300.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true },
		{ config_id = 162008, gadget_id = 70950145, pos = { x = -5246.215, y = 237.209, z = -4317.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 162017, gadget_id = 70330114, pos = { x = -5200.374, y = 204.285, z = -4298.780 }, rot = { x = 0.000, y = 318.239, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 162018, gadget_id = 70330114, pos = { x = -5246.173, y = 230.450, z = -4244.998 }, rot = { x = 0.000, y = 139.288, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 162019, gadget_id = 70330114, pos = { x = -5298.432, y = 205.019, z = -4300.875 }, rot = { x = 342.000, y = 112.534, z = 357.809 }, level = 30 },
		{ config_id = 162020, gadget_id = 70330114, pos = { x = -5246.180, y = 239.467, z = -4317.804 }, rot = { x = 13.489, y = 290.867, z = 8.708 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 162009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5200.374, y = 201.935, z = -4298.780 }, area_id = 14 },
		{ config_id = 162010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5246.173, y = 228.799, z = -4244.998 }, area_id = 14 },
		{ config_id = 162011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5298.537, y = 203.294, z = -4300.847 } },
		{ config_id = 162012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5246.215, y = 237.209, z = -4317.812 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1162009, name = "ENTER_REGION_162009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162009", action = "action_EVENT_ENTER_REGION_162009", trigger_count = 0, forbid_guest = false },
		{ config_id = 1162010, name = "ENTER_REGION_162010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162010", action = "action_EVENT_ENTER_REGION_162010", trigger_count = 0, forbid_guest = false },
		{ config_id = 1162011, name = "ENTER_REGION_162011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162011", action = "action_EVENT_ENTER_REGION_162011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1162012, name = "ENTER_REGION_162012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162012", action = "action_EVENT_ENTER_REGION_162012", trigger_count = 0, forbid_guest = false },
		{ config_id = 1162013, name = "VARIABLE_CHANGE_162013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162013", action = "action_EVENT_VARIABLE_CHANGE_162013" },
		{ config_id = 1162014, name = "GROUP_LOAD_162014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162014", action = "action_EVENT_GROUP_LOAD_162014" },
		{ config_id = 1162015, name = "VARIABLE_CHANGE_162015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162015", action = "action_EVENT_VARIABLE_CHANGE_162015" },
		{ config_id = 1162016, name = "GROUP_LOAD_162016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162016", action = "action_EVENT_GROUP_LOAD_162016" }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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