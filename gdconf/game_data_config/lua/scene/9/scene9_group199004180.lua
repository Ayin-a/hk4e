-- 基础信息
local base_info = {
	group_id = 199004180
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 199004180,
	gadget_controller_id = 180006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180001, monster_id = 21020701, pos = { x = -410.694, y = 126.353, z = -622.988 }, rot = { x = 0.000, y = 249.443, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 400 },
	{ config_id = 180002, monster_id = 21020701, pos = { x = -421.294, y = 120.667, z = -636.292 }, rot = { x = 0.000, y = 300.401, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 400 },
	{ config_id = 180003, monster_id = 21020701, pos = { x = -431.944, y = 120.466, z = -618.180 }, rot = { x = 0.000, y = 184.526, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 400 }
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
	gadgets = {
		{ config_id = 180004, gadget_id = 70350082, pos = { x = -429.583, y = 119.859, z = -632.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 180006, gadget_id = 70360001, pos = { x = -429.592, y = 120.328, z = -632.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1180007, name = "GROUP_LOAD_180007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_180007", action = "action_EVENT_GROUP_LOAD_180007", trigger_count = 0 },
		{ config_id = 1180008, name = "CHALLENGE_SUCCESS_180008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_180008", trigger_count = 0 },
		{ config_id = 1180009, name = "CHALLENGE_FAIL_180009", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_180009", trigger_count = 0 },
		{ config_id = 1180010, name = "GADGET_CREATE_180010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_180010", action = "action_EVENT_GADGET_CREATE_180010", trigger_count = 0 },
		{ config_id = 1180011, name = "SELECT_OPTION_180011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_180011", action = "action_EVENT_SELECT_OPTION_180011", trigger_count = 0 }
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
		monsters = { 180001, 180002, 180003 },
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