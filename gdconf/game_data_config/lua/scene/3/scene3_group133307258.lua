-- 基础信息
local base_info = {
	group_id = 133307258
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133307258,
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
		{ config_id = 258001, gadget_id = 70220005, pos = { x = -1302.022, y = 44.252, z = 5284.649 }, rot = { x = 352.072, y = 0.556, z = 351.995 }, level = 2, persistent = true, area_id = 32 },
		{ config_id = 258002, gadget_id = 70350084, pos = { x = -1308.901, y = 48.816, z = 5307.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 32 },
		{ config_id = 258003, gadget_id = 70211101, pos = { x = -1311.756, y = 48.592, z = 5307.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
		{ config_id = 258004, gadget_id = 70220005, pos = { x = -1311.200, y = 44.506, z = 5285.970 }, rot = { x = 352.090, y = 0.615, z = 351.119 }, level = 2, persistent = true, area_id = 32 },
		{ config_id = 258005, gadget_id = 70360001, pos = { x = -1308.892, y = 49.781, z = 5307.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 32 },
		{ config_id = 258013, gadget_id = 70220005, pos = { x = -1317.881, y = 46.392, z = 5292.421 }, rot = { x = 351.246, y = 0.755, z = 350.246 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 258014, gadget_id = 70220005, pos = { x = -1292.508, y = 51.419, z = 5283.431 }, rot = { x = 352.072, y = 74.716, z = 351.995 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 258015, gadget_id = 70220005, pos = { x = -1288.781, y = 51.014, z = 5290.186 }, rot = { x = 352.090, y = 74.776, z = 351.119 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 258016, gadget_id = 70220005, pos = { x = -1285.326, y = 50.240, z = 5296.199 }, rot = { x = 351.246, y = 74.916, z = 350.246 }, level = 32, persistent = true, area_id = 32 }
	},
	triggers = {
		{ config_id = 1258006, name = "CHALLENGE_SUCCESS_258006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_258006", trigger_count = 0 },
		{ config_id = 1258007, name = "CHALLENGE_FAIL_258007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_258007", trigger_count = 0 },
		{ config_id = 1258008, name = "GADGET_STATE_CHANGE_258008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258008", action = "action_EVENT_GADGET_STATE_CHANGE_258008", trigger_count = 0 },
		{ config_id = 1258009, name = "ANY_GADGET_DIE_258009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
		{ config_id = 1258010, name = "GADGET_CREATE_258010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_258010", action = "action_EVENT_GADGET_CREATE_258010", trigger_count = 0 },
		{ config_id = 1258011, name = "SELECT_OPTION_258011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_258011", action = "action_EVENT_SELECT_OPTION_258011", trigger_count = 0 },
		{ config_id = 1258012, name = "GROUP_LOAD_258012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_258012", trigger_count = 0 }
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