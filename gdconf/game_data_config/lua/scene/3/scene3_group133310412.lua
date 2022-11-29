-- 基础信息
local base_info = {
	group_id = 133310412
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
		{ config_id = 412001, gadget_id = 70330228, pos = { x = -2985.510, y = 261.762, z = 4728.526 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
		{ config_id = 412002, gadget_id = 70330228, pos = { x = -2969.010, y = 287.041, z = 4728.526 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
		{ config_id = 412003, gadget_id = 70330228, pos = { x = -3003.060, y = 287.558, z = 4718.810 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
		{ config_id = 412004, gadget_id = 70211150, pos = { x = -3010.010, y = 284.580, z = 4728.526 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 28 },
		{ config_id = 412010, gadget_id = 70330288, pos = { x = -2976.010, y = 268.262, z = 4719.026 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412011, gadget_id = 70330393, pos = { x = -2998.510, y = 270.562, z = 4728.526 }, rot = { x = 0.000, y = 0.000, z = 30.000 }, level = 32, area_id = 28 },
		{ config_id = 412012, gadget_id = 70220103, pos = { x = -3008.010, y = 287.080, z = 4728.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
		{ config_id = 412015, gadget_id = 70330393, pos = { x = -2976.010, y = 264.762, z = 4729.526 }, rot = { x = 0.000, y = 90.000, z = 30.000 }, level = 32, area_id = 28 },
		{ config_id = 412016, gadget_id = 70330288, pos = { x = -3005.510, y = 268.262, z = 4728.326 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412017, gadget_id = 70330392, pos = { x = -2985.510, y = 269.262, z = 4719.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412018, gadget_id = 70330392, pos = { x = -2985.510, y = 269.262, z = 4709.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412019, gadget_id = 70330392, pos = { x = -2995.510, y = 269.262, z = 4709.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412020, gadget_id = 70330392, pos = { x = -3005.510, y = 269.262, z = 4709.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412021, gadget_id = 70330392, pos = { x = -3005.510, y = 269.262, z = 4719.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412022, gadget_id = 70330392, pos = { x = -2987.010, y = 274.262, z = 4729.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412023, gadget_id = 70330288, pos = { x = -2986.510, y = 273.262, z = 4738.326 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412024, gadget_id = 70330319, pos = { x = -2993.510, y = 284.262, z = 4743.826 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412025, gadget_id = 70220103, pos = { x = -2992.660, y = 287.526, z = 4742.354 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, area_id = 28 },
		{ config_id = 412026, gadget_id = 70330392, pos = { x = -3012.010, y = 284.260, z = 4730.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
	},
	regions = {
		{ config_id = 412008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2976.010, y = 268.262, z = 4719.026 }, area_id = 28 },
		{ config_id = 412009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3005.510, y = 268.262, z = 4728.326 }, area_id = 28 },
		{ config_id = 412027, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2986.510, y = 273.262, z = 4738.326 }, area_id = 28 },
		{ config_id = 412036, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2985.689, y = 261.762, z = 4728.801 }, area_id = 28 },
		{ config_id = 412037, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2985.689, y = 261.762, z = 4728.801 }, area_id = 28 },
		{ config_id = 412038, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2985.689, y = 261.762, z = 4728.801 }, area_id = 28 }
	},
	triggers = {
		{ config_id = 1412005, name = "VARIABLE_CHANGE_412005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_412005", action = "action_EVENT_VARIABLE_CHANGE_412005" },
		{ config_id = 1412006, name = "VARIABLE_CHANGE_412006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_412006", action = "action_EVENT_VARIABLE_CHANGE_412006" },
		{ config_id = 1412007, name = "VARIABLE_CHANGE_412007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_412007", action = "action_EVENT_VARIABLE_CHANGE_412007", trigger_count = 0 },
		{ config_id = 1412008, name = "ENTER_REGION_412008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412008", action = "action_EVENT_ENTER_REGION_412008" },
		{ config_id = 1412009, name = "ENTER_REGION_412009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412009", action = "action_EVENT_ENTER_REGION_412009" },
		{ config_id = 1412013, name = "VARIABLE_CHANGE_412013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_412013", action = "action_EVENT_VARIABLE_CHANGE_412013", trigger_count = 0 },
		{ config_id = 1412014, name = "GROUP_LOAD_412014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_412014", action = "action_EVENT_GROUP_LOAD_412014", trigger_count = 0 },
		{ config_id = 1412027, name = "ENTER_REGION_412027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412027", action = "action_EVENT_ENTER_REGION_412027" },
		{ config_id = 1412028, name = "GADGET_STATE_CHANGE_412028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412028", action = "action_EVENT_GADGET_STATE_CHANGE_412028", trigger_count = 0 },
		{ config_id = 1412029, name = "TIME_AXIS_PASS_412029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_412029", action = "action_EVENT_TIME_AXIS_PASS_412029", trigger_count = 0 },
		{ config_id = 1412030, name = "GADGET_STATE_CHANGE_412030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412030", action = "action_EVENT_GADGET_STATE_CHANGE_412030", trigger_count = 0 },
		{ config_id = 1412031, name = "TIME_AXIS_PASS_412031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_412031", action = "action_EVENT_TIME_AXIS_PASS_412031", trigger_count = 0 },
		{ config_id = 1412032, name = "GADGET_STATE_CHANGE_412032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412032", action = "action_EVENT_GADGET_STATE_CHANGE_412032", trigger_count = 0 },
		{ config_id = 1412033, name = "TIME_AXIS_PASS_412033", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_412033", action = "action_EVENT_TIME_AXIS_PASS_412033", trigger_count = 0 },
		{ config_id = 1412034, name = "GADGET_STATE_CHANGE_412034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412034", action = "action_EVENT_GADGET_STATE_CHANGE_412034", trigger_count = 0 },
		{ config_id = 1412035, name = "TIME_AXIS_PASS_412035", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_412035", action = "action_EVENT_TIME_AXIS_PASS_412035", trigger_count = 0 },
		{ config_id = 1412036, name = "ENTER_REGION_412036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412036", action = "action_EVENT_ENTER_REGION_412036" },
		{ config_id = 1412037, name = "ENTER_REGION_412037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412037", action = "action_EVENT_ENTER_REGION_412037" },
		{ config_id = 1412038, name = "ENTER_REGION_412038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_412038", action = "action_EVENT_ENTER_REGION_412038" }
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
	end_suite = 6,
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
		-- description = 透明通路1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 透明通路2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = end_suite,
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