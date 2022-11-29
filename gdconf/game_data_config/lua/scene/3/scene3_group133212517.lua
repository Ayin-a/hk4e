-- 基础信息
local base_info = {
	group_id = 133212517
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133212517,
	collectable_sum = 8
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
		{ config_id = 517001, gadget_id = 70211121, pos = { x = -3874.879, y = 192.814, z = -3229.964 }, rot = { x = 16.621, y = 38.153, z = 0.376 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
		{ config_id = 517002, gadget_id = 70350093, pos = { x = -4119.462, y = 191.909, z = -2878.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 12 },
		{ config_id = 517003, gadget_id = 70360001, pos = { x = -4119.462, y = 192.874, z = -2878.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 12 },
		{ config_id = 517004, gadget_id = 70290150, pos = { x = -4095.603, y = 191.967, z = -2856.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517005, gadget_id = 70290150, pos = { x = -4042.257, y = 193.403, z = -2849.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517006, gadget_id = 70290150, pos = { x = -4022.449, y = 193.403, z = -2881.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517007, gadget_id = 70290150, pos = { x = -3989.837, y = 193.403, z = -2948.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517008, gadget_id = 70290150, pos = { x = -3966.249, y = 193.559, z = -3002.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517009, gadget_id = 70290150, pos = { x = -3931.310, y = 193.403, z = -3072.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517010, gadget_id = 70290150, pos = { x = -3900.159, y = 193.403, z = -3130.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
		{ config_id = 517011, gadget_id = 70290150, pos = { x = -3863.092, y = 193.403, z = -3195.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 }
	},
	triggers = {
		{ config_id = 1517012, name = "CHALLENGE_SUCCESS_517012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_517012", trigger_count = 0 },
		{ config_id = 1517013, name = "CHALLENGE_FAIL_517013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_517013", trigger_count = 0 },
		{ config_id = 1517014, name = "GADGET_STATE_CHANGE_517014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_517014", action = "action_EVENT_GADGET_STATE_CHANGE_517014", trigger_count = 0 },
		{ config_id = 1517015, name = "ANY_GADGET_DIE_517015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1517016, name = "GADGET_CREATE_517016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_517016", action = "action_EVENT_GADGET_CREATE_517016", trigger_count = 0 },
		{ config_id = 1517017, name = "SELECT_OPTION_517017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_517017", action = "action_EVENT_SELECT_OPTION_517017", trigger_count = 0 }
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