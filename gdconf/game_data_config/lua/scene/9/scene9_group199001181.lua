-- 基础信息
local base_info = {
	group_id = 199001181
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 199001181,
	gadget_sum = 6
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
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 181001, gadget_id = 70950087, pos = { x = 467.095, y = 120.000, z = 368.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181002, gadget_id = 70350250, pos = { x = 454.954, y = 120.000, z = 359.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181004, gadget_id = 70220045, pos = { x = 462.468, y = 120.000, z = 381.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181005, gadget_id = 70360001, pos = { x = 454.963, y = 120.000, z = 359.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181006, gadget_id = 70220045, pos = { x = 467.660, y = 120.000, z = 389.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181007, gadget_id = 70950087, pos = { x = 462.439, y = 120.000, z = 398.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181008, gadget_id = 70220045, pos = { x = 467.779, y = 120.000, z = 410.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
		{ config_id = 181009, gadget_id = 70950087, pos = { x = 461.411, y = 120.000, z = 416.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 }
	},
	triggers = {
		{ config_id = 1181010, name = "CHALLENGE_SUCCESS_181010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_181010" },
		{ config_id = 1181011, name = "CHALLENGE_FAIL_181011", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_181011", trigger_count = 0 },
		{ config_id = 1181012, name = "GADGET_STATE_CHANGE_181012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181012", action = "action_EVENT_GADGET_STATE_CHANGE_181012", trigger_count = 0 },
		{ config_id = 1181013, name = "ANY_GADGET_DIE_181013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
		{ config_id = 1181014, name = "GADGET_CREATE_181014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181014", action = "action_EVENT_GADGET_CREATE_181014", trigger_count = 0 },
		{ config_id = 1181015, name = "SELECT_OPTION_181015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_181015", action = "action_EVENT_SELECT_OPTION_181015", trigger_count = 0 }
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
	end_suite = 3,
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