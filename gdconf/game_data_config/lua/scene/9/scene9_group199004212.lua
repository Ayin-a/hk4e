-- 基础信息
local base_info = {
	group_id = 199004212
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 199004212,
	gadget_controller_id = 212004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212010, monster_id = 22050101, pos = { x = -411.537, y = 133.493, z = -575.557 }, rot = { x = 0.000, y = 313.503, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 },
	{ config_id = 212011, monster_id = 22050101, pos = { x = -431.432, y = 120.000, z = -561.166 }, rot = { x = 0.000, y = 16.405, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 }
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
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 212001, monster_id = 22050101, pos = { x = -415.814, y = 123.311, z = -560.982 }, rot = { x = 0.000, y = 332.159, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 }
	},
	gadgets = {
		{ config_id = 212002, gadget_id = 70350082, pos = { x = -424.769, y = 120.000, z = -544.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 212004, gadget_id = 70360001, pos = { x = -424.779, y = 120.469, z = -544.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1212005, name = "GROUP_LOAD_212005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_212005", action = "action_EVENT_GROUP_LOAD_212005", trigger_count = 0 },
		{ config_id = 1212006, name = "CHALLENGE_SUCCESS_212006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_212006", trigger_count = 0 },
		{ config_id = 1212007, name = "CHALLENGE_FAIL_212007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_212007", trigger_count = 0 },
		{ config_id = 1212008, name = "GADGET_CREATE_212008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_212008", action = "action_EVENT_GADGET_CREATE_212008", trigger_count = 0 },
		{ config_id = 1212009, name = "SELECT_OPTION_212009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_212009", action = "action_EVENT_SELECT_OPTION_212009", trigger_count = 0 }
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
		monsters = { 212010, 212011 },
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