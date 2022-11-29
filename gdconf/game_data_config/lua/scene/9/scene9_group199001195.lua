-- 基础信息
local base_info = {
	group_id = 199001195
}

-- Trigger变量
local defs = {
	CollectSuit = 0
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
		{ config_id = 195001, gadget_id = 70350083, pos = { x = 161.233, y = 120.680, z = 401.417 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 195002, gadget_id = 70360001, pos = { x = 160.730, y = 120.687, z = 400.979 }, rot = { x = 0.000, y = 74.542, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 195003, gadget_id = 70211101, pos = { x = 212.954, y = 126.956, z = 408.138 }, rot = { x = 334.886, y = 25.425, z = 0.149 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 195004, gadget_id = 70360094, pos = { x = 185.193, y = 131.343, z = 392.046 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
		{ config_id = 195005, gadget_id = 70360094, pos = { x = 190.549, y = 133.580, z = 392.675 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
		{ config_id = 195006, gadget_id = 70360094, pos = { x = 195.338, y = 135.579, z = 393.237 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
		{ config_id = 195007, gadget_id = 70360094, pos = { x = 199.684, y = 137.394, z = 393.747 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1195010, name = "CHALLENGE_SUCCESS_195010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_195010" },
		{ config_id = 1195011, name = "CHALLENGE_FAIL_195011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_195011", trigger_count = 0 },
		{ config_id = 1195012, name = "GADGET_STATE_CHANGE_195012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_195012", action = "action_EVENT_GADGET_STATE_CHANGE_195012", trigger_count = 0 },
		{ config_id = 1195013, name = "ANY_GADGET_DIE_195013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1195014, name = "GADGET_CREATE_195014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_195014", action = "action_EVENT_GADGET_CREATE_195014", trigger_count = 0 },
		{ config_id = 1195015, name = "SELECT_OPTION_195015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_195015", action = "action_EVENT_SELECT_OPTION_195015", trigger_count = 0 }
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