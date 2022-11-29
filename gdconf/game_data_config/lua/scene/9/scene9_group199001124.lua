-- 基础信息
local base_info = {
	group_id = 199001124
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
		{ config_id = 124001, gadget_id = 70350083, pos = { x = 220.331, y = 203.294, z = 342.231 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 124002, gadget_id = 70360001, pos = { x = 219.828, y = 203.302, z = 341.794 }, rot = { x = 0.000, y = 74.542, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 124003, gadget_id = 70211111, pos = { x = 349.937, y = 142.838, z = 418.719 }, rot = { x = 359.048, y = 36.961, z = 4.032 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 124004, gadget_id = 70360094, pos = { x = 234.186, y = 204.370, z = 343.168 }, rot = { x = 348.502, y = 60.980, z = 355.533 }, level = 20, area_id = 402 },
		{ config_id = 124005, gadget_id = 70360094, pos = { x = 240.815, y = 206.875, z = 346.761 }, rot = { x = 348.502, y = 60.980, z = 355.533 }, level = 20, area_id = 402 },
		{ config_id = 124006, gadget_id = 70360094, pos = { x = 246.911, y = 209.772, z = 350.012 }, rot = { x = 348.502, y = 60.980, z = 355.533 }, level = 20, area_id = 402 },
		{ config_id = 124007, gadget_id = 70360094, pos = { x = 264.501, y = 209.444, z = 362.783 }, rot = { x = 21.965, y = 58.319, z = 355.279 }, level = 20, area_id = 402 },
		{ config_id = 124008, gadget_id = 70360094, pos = { x = 276.064, y = 203.964, z = 369.919 }, rot = { x = 21.965, y = 58.319, z = 355.279 }, level = 20, area_id = 402 },
		{ config_id = 124009, gadget_id = 70360094, pos = { x = 289.944, y = 197.386, z = 378.485 }, rot = { x = 21.965, y = 58.319, z = 355.279 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1124010, name = "CHALLENGE_SUCCESS_124010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_124010" },
		{ config_id = 1124011, name = "CHALLENGE_FAIL_124011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_124011", trigger_count = 0 },
		{ config_id = 1124012, name = "GADGET_STATE_CHANGE_124012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124012", action = "action_EVENT_GADGET_STATE_CHANGE_124012", trigger_count = 0 },
		{ config_id = 1124013, name = "ANY_GADGET_DIE_124013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1124014, name = "GADGET_CREATE_124014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124014", action = "action_EVENT_GADGET_CREATE_124014", trigger_count = 0 },
		{ config_id = 1124015, name = "SELECT_OPTION_124015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124015", action = "action_EVENT_SELECT_OPTION_124015", trigger_count = 0 }
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
		-- description = [风之微粒布设],
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