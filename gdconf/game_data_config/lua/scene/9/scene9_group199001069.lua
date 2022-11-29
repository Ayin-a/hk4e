-- 基础信息
local base_info = {
	group_id = 199001069
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
		{ config_id = 69001, gadget_id = 70350083, pos = { x = 316.320, y = 243.313, z = 178.390 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69002, gadget_id = 70360001, pos = { x = 316.320, y = 243.313, z = 178.390 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69009, gadget_id = 70211101, pos = { x = 322.095, y = 241.403, z = 178.864 }, rot = { x = 0.000, y = 23.703, z = 348.611 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 69010, gadget_id = 70360094, pos = { x = 321.876, y = 254.476, z = 134.833 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69011, gadget_id = 70360094, pos = { x = 324.202, y = 252.136, z = 135.897 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69012, gadget_id = 70360094, pos = { x = 326.379, y = 248.239, z = 137.688 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69013, gadget_id = 70360094, pos = { x = 258.977, y = 257.670, z = 185.517 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69014, gadget_id = 70360094, pos = { x = 260.511, y = 253.657, z = 181.938 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 69015, gadget_id = 70360094, pos = { x = 262.716, y = 250.756, z = 180.141 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1069003, name = "CHALLENGE_SUCCESS_69003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_69003" },
		{ config_id = 1069004, name = "CHALLENGE_FAIL_69004", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_69004", trigger_count = 0 },
		{ config_id = 1069005, name = "GADGET_STATE_CHANGE_69005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69005", action = "action_EVENT_GADGET_STATE_CHANGE_69005", trigger_count = 0 },
		{ config_id = 1069006, name = "ANY_GADGET_DIE_69006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1069007, name = "GADGET_CREATE_69007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_69007", action = "action_EVENT_GADGET_CREATE_69007", trigger_count = 0 },
		{ config_id = 1069008, name = "SELECT_OPTION_69008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_69008", action = "action_EVENT_SELECT_OPTION_69008", trigger_count = 0 }
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