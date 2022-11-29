-- 基础信息
local base_info = {
	group_id = 199001136
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
		{ config_id = 136001, gadget_id = 70350083, pos = { x = 205.574, y = 196.246, z = 162.473 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136002, gadget_id = 70360001, pos = { x = 205.071, y = 196.253, z = 162.035 }, rot = { x = 0.000, y = 74.542, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136003, gadget_id = 70211111, pos = { x = 198.977, y = 176.398, z = 133.800 }, rot = { x = 354.043, y = 92.377, z = 347.898 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 136004, gadget_id = 70360094, pos = { x = 202.104, y = 197.135, z = 159.616 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136005, gadget_id = 70360094, pos = { x = 198.618, y = 195.243, z = 156.997 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136006, gadget_id = 70360094, pos = { x = 195.382, y = 192.522, z = 155.368 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136007, gadget_id = 70360094, pos = { x = 191.457, y = 189.824, z = 150.687 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136008, gadget_id = 70360094, pos = { x = 191.450, y = 183.921, z = 142.013 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 136009, gadget_id = 70360094, pos = { x = 194.272, y = 178.514, z = 136.481 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1136010, name = "CHALLENGE_SUCCESS_136010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_136010" },
		{ config_id = 1136011, name = "CHALLENGE_FAIL_136011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_136011", trigger_count = 0 },
		{ config_id = 1136012, name = "GADGET_STATE_CHANGE_136012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136012", action = "action_EVENT_GADGET_STATE_CHANGE_136012", trigger_count = 0 },
		{ config_id = 1136013, name = "ANY_GADGET_DIE_136013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1136014, name = "GADGET_CREATE_136014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_136014", action = "action_EVENT_GADGET_CREATE_136014", trigger_count = 0 },
		{ config_id = 1136015, name = "SELECT_OPTION_136015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_136015", action = "action_EVENT_SELECT_OPTION_136015", trigger_count = 0 }
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