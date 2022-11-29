-- 基础信息
local base_info = {
	group_id = 133102375
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
		{ config_id = 375001, gadget_id = 70900007, pos = { x = 1316.916, y = 199.338, z = 179.223 }, rot = { x = 0.000, y = 320.568, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
		{ config_id = 375002, gadget_id = 70220005, pos = { x = 1319.538, y = 201.094, z = 170.722 }, rot = { x = 359.720, y = 54.251, z = 357.496 }, level = 16, area_id = 5 },
		{ config_id = 375003, gadget_id = 70220005, pos = { x = 1323.136, y = 201.800, z = 184.594 }, rot = { x = 355.630, y = 223.643, z = 3.715 }, level = 16, area_id = 5 },
		{ config_id = 375004, gadget_id = 70211111, pos = { x = 1318.773, y = 201.201, z = 170.337 }, rot = { x = 349.816, y = 344.103, z = 4.857 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
		{ config_id = 375005, gadget_id = 70220005, pos = { x = 1309.217, y = 201.849, z = 179.301 }, rot = { x = 336.772, y = 210.542, z = 354.983 }, level = 16, area_id = 5 },
		{ config_id = 375006, gadget_id = 70900201, pos = { x = 1319.619, y = 201.928, z = 170.740 }, rot = { x = 357.815, y = 0.512, z = 358.745 }, level = 16, area_id = 5 },
		{ config_id = 375007, gadget_id = 70900201, pos = { x = 1323.094, y = 202.641, z = 184.732 }, rot = { x = 0.503, y = 359.090, z = 354.289 }, level = 16, area_id = 5 },
		{ config_id = 375008, gadget_id = 70900201, pos = { x = 1309.263, y = 202.645, z = 179.562 }, rot = { x = 23.208, y = 5.192, z = 354.884 }, level = 16, area_id = 5 },
		{ config_id = 375016, gadget_id = 70220005, pos = { x = 1315.906, y = 198.142, z = 180.837 }, rot = { x = 0.000, y = 213.215, z = 0.000 }, level = 16, area_id = 5 },
		{ config_id = 375017, gadget_id = 70900201, pos = { x = 1315.980, y = 198.975, z = 181.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
	},
	triggers = {
		{ config_id = 1375009, name = "GADGET_STATE_CHANGE_375009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375009", action = "action_EVENT_GADGET_STATE_CHANGE_375009", trigger_count = 0 },
		{ config_id = 1375010, name = "ANY_GADGET_DIE_375010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375010", action = "", trigger_count = 0, tag = "324" },
		{ config_id = 1375011, name = "CHALLENGE_SUCCESS_375011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_375011" },
		{ config_id = 1375012, name = "CHALLENGE_FAIL_375012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_375012", trigger_count = 0 },
		{ config_id = 1375013, name = "ANY_GADGET_DIE_375013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375013", action = "action_EVENT_ANY_GADGET_DIE_375013", trigger_count = 0, tag = "324" },
		{ config_id = 1375014, name = "ANY_GADGET_DIE_375014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375014", action = "action_EVENT_ANY_GADGET_DIE_375014", trigger_count = 0, tag = "324" },
		{ config_id = 1375015, name = "ANY_GADGET_DIE_375015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375015", action = "action_EVENT_ANY_GADGET_DIE_375015", trigger_count = 0, tag = "324" },
		{ config_id = 1375018, name = "ANY_GADGET_DIE_375018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375018", action = "action_EVENT_ANY_GADGET_DIE_375018", trigger_count = 0, tag = "324" },
		{ config_id = 1375019, name = "GADGET_CREATE_375019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_375019", action = "action_EVENT_GADGET_CREATE_375019", trigger_count = 0 }
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
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
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