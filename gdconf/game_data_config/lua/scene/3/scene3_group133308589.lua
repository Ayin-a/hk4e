-- 基础信息
local base_info = {
	group_id = 133308589
}

-- Trigger变量
local defs = {
	gadget_id = 589001,
	pointarray_id = 330800041
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
	{ config_id = 1, name = "isDefault", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 589001, gadget_id = 70330365, pos = { x = -1663.219, y = 25.720, z = 4533.121 }, rot = { x = 0.000, y = 99.676, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
		{ config_id = 589002, gadget_id = 70330341, pos = { x = -1657.558, y = 96.570, z = 4537.037 }, rot = { x = 0.000, y = 8.713, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
		{ config_id = 589003, gadget_id = 70360001, pos = { x = -1657.614, y = 96.877, z = 4537.004 }, rot = { x = 0.000, y = 5.362, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 589004, gadget_id = 70360001, pos = { x = -1663.203, y = 96.323, z = 4533.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 589005, gadget_id = 70360001, pos = { x = -1663.183, y = 27.070, z = 4533.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 589006, gadget_id = 70360001, pos = { x = -1669.371, y = 25.927, z = 4534.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 589007, gadget_id = 70330341, pos = { x = -1669.368, y = 25.609, z = 4534.206 }, rot = { x = 0.000, y = 280.378, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 589024, gadget_id = 70360001, pos = { x = -1663.183, y = 27.070, z = 4533.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
	},
	triggers = {
		{ config_id = 1589008, name = "GADGET_CREATE_589008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589008", action = "action_EVENT_GADGET_CREATE_589008", trigger_count = 0 },
		{ config_id = 1589009, name = "GADGET_CREATE_589009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589009", action = "action_EVENT_GADGET_CREATE_589009", trigger_count = 0 },
		{ config_id = 1589010, name = "GADGET_CREATE_589010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589010", action = "action_EVENT_GADGET_CREATE_589010", trigger_count = 0 },
		{ config_id = 1589011, name = "GADGET_CREATE_589011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589011", action = "action_EVENT_GADGET_CREATE_589011", trigger_count = 0 },
		{ config_id = 1589012, name = "SELECT_OPTION_589012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589012", action = "action_EVENT_SELECT_OPTION_589012", trigger_count = 0 },
		{ config_id = 1589013, name = "SELECT_OPTION_589013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589013", action = "action_EVENT_SELECT_OPTION_589013", trigger_count = 0 },
		{ config_id = 1589014, name = "SELECT_OPTION_589014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589014", action = "action_EVENT_SELECT_OPTION_589014", trigger_count = 0 },
		{ config_id = 1589015, name = "SELECT_OPTION_589015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589015", action = "action_EVENT_SELECT_OPTION_589015", trigger_count = 0 },
		{ config_id = 1589016, name = "TIME_AXIS_PASS_589016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_589016", action = "action_EVENT_TIME_AXIS_PASS_589016", trigger_count = 0 },
		{ config_id = 1589017, name = "TIME_AXIS_PASS_589017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_589017", action = "action_EVENT_TIME_AXIS_PASS_589017", trigger_count = 0 },
		{ config_id = 1589018, name = "PLATFORM_ARRIVAL_589018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_589018", action = "action_EVENT_PLATFORM_ARRIVAL_589018", trigger_count = 0 },
		{ config_id = 1589019, name = "PLATFORM_ARRIVAL_589019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_589019", action = "action_EVENT_PLATFORM_ARRIVAL_589019", trigger_count = 0 },
		{ config_id = 1589020, name = "TIME_AXIS_PASS_589020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_589020", action = "action_EVENT_TIME_AXIS_PASS_589020", trigger_count = 0 },
		{ config_id = 1589021, name = "TIME_AXIS_PASS_589021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_589021", action = "action_EVENT_TIME_AXIS_PASS_589021", trigger_count = 0 },
		{ config_id = 1589022, name = "GROUP_LOAD_589022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_589022", action = "action_EVENT_GROUP_LOAD_589022", trigger_count = 0 },
		{ config_id = 1589023, name = "GROUP_LOAD_589023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_589023", action = "action_EVENT_GROUP_LOAD_589023", trigger_count = 0 },
		{ config_id = 1589025, name = "GADGET_CREATE_589025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589025", action = "action_EVENT_GADGET_CREATE_589025", trigger_count = 0 },
		{ config_id = 1589026, name = "SELECT_OPTION_589026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589026", action = "action_EVENT_SELECT_OPTION_589026", trigger_count = 0 }
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