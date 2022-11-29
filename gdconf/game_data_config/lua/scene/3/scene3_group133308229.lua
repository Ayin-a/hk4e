-- 基础信息
local base_info = {
	group_id = 133308229
}

-- Trigger变量
local defs = {
	gadget_id = 229001,
	pointarray_id = 330800018
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
	{ config_id = 1, name = "isDefault", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 229001, gadget_id = 70330365, pos = { x = -1422.826, y = 30.674, z = 4730.085 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
		{ config_id = 229002, gadget_id = 70330341, pos = { x = -1428.645, y = 32.164, z = 4725.927 }, rot = { x = 0.000, y = 10.983, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
		{ config_id = 229003, gadget_id = 70360001, pos = { x = -1428.645, y = 32.164, z = 4725.927 }, rot = { x = 0.000, y = 10.983, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 229004, gadget_id = 70360001, pos = { x = -1422.839, y = 32.025, z = 4730.112 }, rot = { x = 0.000, y = 99.839, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 229005, gadget_id = 70360001, pos = { x = -1422.839, y = 14.774, z = 4730.112 }, rot = { x = 0.000, y = 99.839, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 229006, gadget_id = 70360001, pos = { x = -1427.885, y = 15.966, z = 4725.981 }, rot = { x = 273.856, y = 283.095, z = 358.451 }, level = 32, persistent = true, area_id = 26 },
		{ config_id = 229007, gadget_id = 70330341, pos = { x = -1427.885, y = 15.966, z = 4725.981 }, rot = { x = 273.856, y = 283.095, z = 358.451 }, level = 32, persistent = true, area_id = 26 }
	},
	triggers = {
		{ config_id = 1229008, name = "GADGET_CREATE_229008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229008", action = "action_EVENT_GADGET_CREATE_229008", trigger_count = 0 },
		{ config_id = 1229009, name = "GADGET_CREATE_229009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229009", action = "action_EVENT_GADGET_CREATE_229009", trigger_count = 0 },
		{ config_id = 1229010, name = "GADGET_CREATE_229010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229010", action = "action_EVENT_GADGET_CREATE_229010", trigger_count = 0 },
		{ config_id = 1229011, name = "GADGET_CREATE_229011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_229011", action = "action_EVENT_GADGET_CREATE_229011", trigger_count = 0 },
		{ config_id = 1229012, name = "SELECT_OPTION_229012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_229012", action = "action_EVENT_SELECT_OPTION_229012", trigger_count = 0 },
		{ config_id = 1229013, name = "SELECT_OPTION_229013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_229013", action = "action_EVENT_SELECT_OPTION_229013", trigger_count = 0 },
		{ config_id = 1229014, name = "SELECT_OPTION_229014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_229014", action = "action_EVENT_SELECT_OPTION_229014", trigger_count = 0 },
		{ config_id = 1229015, name = "SELECT_OPTION_229015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_229015", action = "action_EVENT_SELECT_OPTION_229015", trigger_count = 0 },
		{ config_id = 1229016, name = "TIME_AXIS_PASS_229016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_229016", action = "action_EVENT_TIME_AXIS_PASS_229016", trigger_count = 0 },
		{ config_id = 1229017, name = "TIME_AXIS_PASS_229017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_229017", action = "action_EVENT_TIME_AXIS_PASS_229017", trigger_count = 0 },
		{ config_id = 1229018, name = "PLATFORM_ARRIVAL_229018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_229018", action = "action_EVENT_PLATFORM_ARRIVAL_229018", trigger_count = 0 },
		{ config_id = 1229019, name = "PLATFORM_ARRIVAL_229019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_229019", action = "action_EVENT_PLATFORM_ARRIVAL_229019", trigger_count = 0 },
		{ config_id = 1229020, name = "TIME_AXIS_PASS_229020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_229020", action = "action_EVENT_TIME_AXIS_PASS_229020", trigger_count = 0 },
		{ config_id = 1229021, name = "TIME_AXIS_PASS_229021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_229021", action = "action_EVENT_TIME_AXIS_PASS_229021", trigger_count = 0 },
		{ config_id = 1229022, name = "GROUP_LOAD_229022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_229022", action = "action_EVENT_GROUP_LOAD_229022", trigger_count = 0 },
		{ config_id = 1229023, name = "GROUP_LOAD_229023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_229023", action = "action_EVENT_GROUP_LOAD_229023", trigger_count = 0 }
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