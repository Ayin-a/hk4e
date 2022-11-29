-- 基础信息
local base_info = {
	group_id = 133310172
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 15,
	group_id = 133310172,
	gadget_1 = 172001,
	gadget_2 = 172002,
	gadget_3 = 172003,
	gadget_4 = 172005,
	gadget_chest = 172004
}

-- DEFS_MISCS
defs.gearsRegion = {
[172009] = defs.gadget_1,
[172010] = defs.gadget_2,
[172011] = defs.gadget_3,
[172012] = defs.gadget_4,
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
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 172001, gadget_id = 70330332, pos = { x = -2388.160, y = 241.474, z = 4477.746 }, rot = { x = 5.571, y = 14.838, z = 355.845 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
		{ config_id = 172002, gadget_id = 70330332, pos = { x = -2380.624, y = 240.703, z = 4464.444 }, rot = { x = 351.649, y = 329.572, z = 353.605 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
		{ config_id = 172003, gadget_id = 70330332, pos = { x = -2393.113, y = 243.217, z = 4453.369 }, rot = { x = 4.043, y = 52.804, z = 0.232 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
		{ config_id = 172004, gadget_id = 70211111, pos = { x = -2389.143, y = 241.645, z = 4469.862 }, rot = { x = 357.156, y = 223.485, z = 353.768 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
		{ config_id = 172005, gadget_id = 70330332, pos = { x = -2398.782, y = 242.294, z = 4474.625 }, rot = { x = 4.266, y = 359.914, z = 357.152 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
		{ config_id = 172016, gadget_id = 70330396, pos = { x = -2392.981, y = 241.808, z = 4467.675 }, rot = { x = 357.996, y = 0.154, z = 354.197 }, level = 32, area_id = 26 },
		{ config_id = 172019, gadget_id = 70330392, pos = { x = -2388.780, y = 245.844, z = 4473.133 }, rot = { x = 90.000, y = 195.001, z = 0.000 }, level = 32, area_id = 26 }
	},
	regions = {
		{ config_id = 172009, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2388.160, y = 241.474, z = 4477.746 }, height = 15.000, area_id = 26 },
		{ config_id = 172010, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2388.160, y = 241.474, z = 4477.746 }, height = 15.000, area_id = 26 },
		{ config_id = 172011, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2380.624, y = 240.703, z = 4464.444 }, height = 15.000, area_id = 26 },
		{ config_id = 172012, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2380.624, y = 240.703, z = 4464.444 }, height = 15.000, area_id = 26 },
		{ config_id = 172013, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2393.113, y = 243.217, z = 4453.369 }, height = 15.000, area_id = 26 },
		{ config_id = 172014, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2393.113, y = 243.217, z = 4453.369 }, height = 15.000, area_id = 26 },
		{ config_id = 172015, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2398.782, y = 242.294, z = 4474.625 }, height = 15.000, area_id = 26 },
		{ config_id = 172017, shape = RegionShape.CYLINDER, radius = 16, pos = { x = -2398.782, y = 242.294, z = 4474.625 }, height = 15.000, area_id = 26 }
	},
	triggers = {
		{ config_id = 1172006, name = "GADGET_STATE_CHANGE_172006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172006", action = "action_EVENT_GADGET_STATE_CHANGE_172006", trigger_count = 0 },
		{ config_id = 1172007, name = "TIMER_EVENT_172007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_172007", action = "action_EVENT_TIMER_EVENT_172007", trigger_count = 0 },
		{ config_id = 1172008, name = "VARIABLE_CHANGE_172008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_172008", action = "action_EVENT_VARIABLE_CHANGE_172008" },
		{ config_id = 1172009, name = "ENTER_REGION_172009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172009", action = "action_EVENT_ENTER_REGION_172009", trigger_count = 0 },
		{ config_id = 1172010, name = "LEAVE_REGION_172010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172010", action = "action_EVENT_LEAVE_REGION_172010", trigger_count = 0 },
		{ config_id = 1172011, name = "ENTER_REGION_172011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172011", action = "action_EVENT_ENTER_REGION_172011", trigger_count = 0 },
		{ config_id = 1172012, name = "LEAVE_REGION_172012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172012", action = "action_EVENT_LEAVE_REGION_172012", trigger_count = 0 },
		{ config_id = 1172013, name = "ENTER_REGION_172013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172013", action = "action_EVENT_ENTER_REGION_172013", trigger_count = 0 },
		{ config_id = 1172014, name = "LEAVE_REGION_172014", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172014", action = "action_EVENT_LEAVE_REGION_172014", trigger_count = 0 },
		{ config_id = 1172015, name = "ENTER_REGION_172015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172015", action = "action_EVENT_ENTER_REGION_172015", trigger_count = 0 },
		{ config_id = 1172017, name = "LEAVE_REGION_172017", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172017", action = "action_EVENT_LEAVE_REGION_172017", trigger_count = 0 },
		{ config_id = 1172018, name = "VARIABLE_CHANGE_172018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_172018", action = "action_EVENT_VARIABLE_CHANGE_172018" },
		{ config_id = 1172020, name = "GADGET_STATE_CHANGE_172020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172020", action = "action_EVENT_GADGET_STATE_CHANGE_172020", trigger_count = 0 },
		{ config_id = 1172021, name = "TIME_AXIS_PASS_172021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_172021", action = "action_EVENT_TIME_AXIS_PASS_172021", trigger_count = 0 },
		{ config_id = 1172022, name = "GROUP_LOAD_172022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_172022", trigger_count = 0 }
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
	end_suite = 2,
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