-- 基础信息
local base_info = {
	group_id = 199004157
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 4,
	group_id = 199004157,
	gadget_controller_id = 157007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 157001, monster_id = 20060301, pos = { x = -438.103, y = 120.769, z = -604.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 },
	{ config_id = 157002, monster_id = 20060301, pos = { x = -447.210, y = 120.107, z = -601.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 },
	{ config_id = 157003, monster_id = 20060301, pos = { x = -439.695, y = 120.906, z = -592.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 }
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
		{ config_id = 157004, monster_id = 20060301, pos = { x = -441.499, y = 121.394, z = -596.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 }
	},
	gadgets = {
		{ config_id = 157005, gadget_id = 70350082, pos = { x = -446.468, y = 120.344, z = -598.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 157007, gadget_id = 70360001, pos = { x = -446.478, y = 120.813, z = -598.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1157008, name = "GROUP_LOAD_157008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_157008", action = "action_EVENT_GROUP_LOAD_157008", trigger_count = 0 },
		{ config_id = 1157009, name = "CHALLENGE_SUCCESS_157009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_157009", trigger_count = 0 },
		{ config_id = 1157010, name = "CHALLENGE_FAIL_157010", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_157010", trigger_count = 0 },
		{ config_id = 1157011, name = "GADGET_CREATE_157011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_157011", action = "action_EVENT_GADGET_CREATE_157011", trigger_count = 0 },
		{ config_id = 1157012, name = "SELECT_OPTION_157012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_157012", action = "action_EVENT_SELECT_OPTION_157012", trigger_count = 0 }
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
		monsters = { 157001, 157002, 157003 },
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