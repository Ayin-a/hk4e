-- 基础信息
local base_info = {
	group_id = 133212285
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133212285
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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 285001, gadget_id = 70211111, pos = { x = -4257.832, y = 196.513, z = -2403.759 }, rot = { x = 18.379, y = 167.409, z = 10.278 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 285002, gadget_id = 70350083, pos = { x = -4227.783, y = 201.602, z = -2510.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 13 },
		{ config_id = 285003, gadget_id = 70360001, pos = { x = -4227.783, y = 202.566, z = -2510.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1285005, name = "CHALLENGE_SUCCESS_285005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_285005", trigger_count = 0 },
		{ config_id = 1285006, name = "CHALLENGE_FAIL_285006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_285006", trigger_count = 0 },
		{ config_id = 1285007, name = "GADGET_STATE_CHANGE_285007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285007", action = "action_EVENT_GADGET_STATE_CHANGE_285007", trigger_count = 0 },
		{ config_id = 1285008, name = "GADGET_STATE_CHANGE_285008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285008", action = "", tag = "202" },
		{ config_id = 1285009, name = "GADGET_CREATE_285009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_285009", action = "action_EVENT_GADGET_CREATE_285009", trigger_count = 0 },
		{ config_id = 1285010, name = "SELECT_OPTION_285010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_285010", action = "action_EVENT_SELECT_OPTION_285010", trigger_count = 0 }
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
		-- description = suite_1,
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