-- 基础信息
local base_info = {
	group_id = 133309199
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133309199,
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
		{ config_id = 199001, gadget_id = 70220005, pos = { x = -2454.086, y = -46.303, z = 5719.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199002, gadget_id = 70330344, pos = { x = -2437.751, y = -45.099, z = 5707.245 }, rot = { x = 0.000, y = 25.313, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199003, gadget_id = 70211111, pos = { x = -2444.072, y = -47.227, z = 5719.339 }, rot = { x = 7.700, y = 94.559, z = 4.166 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
		{ config_id = 199004, gadget_id = 70220005, pos = { x = -2454.297, y = -46.450, z = 5715.909 }, rot = { x = 347.828, y = 204.602, z = 358.353 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199005, gadget_id = 70360001, pos = { x = -2437.739, y = -45.103, z = 5707.254 }, rot = { x = 0.000, y = 55.449, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199013, gadget_id = 70220005, pos = { x = -2453.176, y = -46.202, z = 5722.333 }, rot = { x = 5.594, y = 166.655, z = 4.384 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199015, gadget_id = 70220005, pos = { x = -2456.130, y = -36.808, z = 5729.551 }, rot = { x = 0.000, y = 113.005, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199017, gadget_id = 70220005, pos = { x = -2462.576, y = -34.215, z = 5718.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 199018, gadget_id = 70220005, pos = { x = -2452.594, y = -36.029, z = 5704.635 }, rot = { x = 0.000, y = 192.809, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	triggers = {
		{ config_id = 1199006, name = "CHALLENGE_SUCCESS_199006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_199006", trigger_count = 0 },
		{ config_id = 1199007, name = "CHALLENGE_FAIL_199007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_199007", trigger_count = 0 },
		{ config_id = 1199008, name = "GADGET_STATE_CHANGE_199008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199008", action = "action_EVENT_GADGET_STATE_CHANGE_199008", trigger_count = 0 },
		{ config_id = 1199009, name = "ANY_GADGET_DIE_199009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
		{ config_id = 1199010, name = "GADGET_CREATE_199010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199010", action = "action_EVENT_GADGET_CREATE_199010", trigger_count = 0 },
		{ config_id = 1199011, name = "SELECT_OPTION_199011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199011", action = "action_EVENT_SELECT_OPTION_199011", trigger_count = 0 },
		{ config_id = 1199012, name = "GROUP_LOAD_199012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_199012", trigger_count = 0 }
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