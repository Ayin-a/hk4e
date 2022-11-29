-- 基础信息
local base_info = {
	group_id = 133102363
}

-- Trigger变量
local defs = {
	box_1 = 375002,
	box_2 = 375003,
	box_3 = 375005,
	box_4 = 375016,
	box_5 = 1042,
	box_6 = 1043,
	box_7 = 0
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
	{ config_id = 1, name = "destroycount", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 363001, gadget_id = 70900007, pos = { x = 1288.519, y = 200.405, z = -221.866 }, rot = { x = 0.000, y = 320.123, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
		{ config_id = 363004, gadget_id = 70211111, pos = { x = 1271.852, y = 200.036, z = -223.799 }, rot = { x = 359.531, y = 238.368, z = 359.238 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
		{ config_id = 363006, gadget_id = 70900201, pos = { x = 1278.896, y = 200.967, z = -223.822 }, rot = { x = 0.000, y = 359.116, z = 0.000 }, level = 16, area_id = 5 },
		{ config_id = 363007, gadget_id = 70900201, pos = { x = 1257.467, y = 202.966, z = -223.623 }, rot = { x = 0.000, y = 359.116, z = 0.000 }, level = 16, area_id = 5 },
		{ config_id = 363008, gadget_id = 70900201, pos = { x = 1258.668, y = 200.920, z = -211.260 }, rot = { x = 0.000, y = 212.963, z = 0.000 }, level = 16, area_id = 5 }
	},
	triggers = {
		{ config_id = 1363009, name = "GADGET_STATE_CHANGE_363009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_363009", action = "action_EVENT_GADGET_STATE_CHANGE_363009", trigger_count = 0 },
		{ config_id = 1363010, name = "ANY_GADGET_DIE_363010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363010", action = "", trigger_count = 0, tag = "324" },
		{ config_id = 1363011, name = "CHALLENGE_SUCCESS_363011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363011" },
		{ config_id = 1363012, name = "CHALLENGE_FAIL_363012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363012", trigger_count = 0 },
		{ config_id = 1363013, name = "ANY_GADGET_DIE_363013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363013", action = "action_EVENT_ANY_GADGET_DIE_363013", trigger_count = 0, tag = "324" },
		{ config_id = 1363014, name = "ANY_GADGET_DIE_363014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363014", action = "action_EVENT_ANY_GADGET_DIE_363014", trigger_count = 0, tag = "324" },
		{ config_id = 1363015, name = "ANY_GADGET_DIE_363015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363015", action = "action_EVENT_ANY_GADGET_DIE_363015", trigger_count = 0, tag = "324" },
		{ config_id = 1363016, name = "GADGET_CREATE_363016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_363016", action = "action_EVENT_GADGET_CREATE_363016", trigger_count = 0 }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
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