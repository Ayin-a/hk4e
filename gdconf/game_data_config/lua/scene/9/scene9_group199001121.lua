-- 基础信息
local base_info = {
	group_id = 199001121
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
		{ config_id = 121001, gadget_id = 70350083, pos = { x = 186.648, y = 209.114, z = 264.734 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 121002, gadget_id = 70360001, pos = { x = 186.145, y = 209.122, z = 264.297 }, rot = { x = 0.000, y = 74.542, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 121003, gadget_id = 70211111, pos = { x = 206.416, y = 157.565, z = 139.456 }, rot = { x = 1.963, y = 352.279, z = 355.460 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 121004, gadget_id = 70360094, pos = { x = 174.479, y = 209.491, z = 260.057 }, rot = { x = 354.291, y = 204.987, z = 15.937 }, level = 20, area_id = 402 },
		{ config_id = 121005, gadget_id = 70360094, pos = { x = 181.790, y = 209.424, z = 266.403 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 121006, gadget_id = 70360094, pos = { x = 171.617, y = 202.047, z = 222.904 }, rot = { x = 19.901, y = 136.557, z = 344.676 }, level = 20, area_id = 402 },
		{ config_id = 121007, gadget_id = 70360094, pos = { x = 176.662, y = 199.391, z = 217.577 }, rot = { x = 19.901, y = 136.557, z = 344.676 }, level = 20, area_id = 402 },
		{ config_id = 121008, gadget_id = 70360094, pos = { x = 161.459, y = 207.539, z = 238.675 }, rot = { x = 14.994, y = 161.927, z = 349.635 }, level = 20, area_id = 402 },
		{ config_id = 121009, gadget_id = 70360094, pos = { x = 163.555, y = 205.729, z = 232.251 }, rot = { x = 14.994, y = 161.927, z = 349.635 }, level = 20, area_id = 402 },
		{ config_id = 121016, gadget_id = 70360094, pos = { x = 162.547, y = 206.599, z = 235.339 }, rot = { x = 14.994, y = 161.927, z = 349.635 }, level = 20, area_id = 402 },
		{ config_id = 121017, gadget_id = 70360094, pos = { x = 169.733, y = 210.368, z = 250.085 }, rot = { x = 354.291, y = 204.987, z = 15.937 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1121010, name = "CHALLENGE_SUCCESS_121010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_121010" },
		{ config_id = 1121011, name = "CHALLENGE_FAIL_121011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_121011", trigger_count = 0 },
		{ config_id = 1121012, name = "GADGET_STATE_CHANGE_121012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121012", action = "action_EVENT_GADGET_STATE_CHANGE_121012", trigger_count = 0 },
		{ config_id = 1121013, name = "ANY_GADGET_DIE_121013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1121014, name = "GADGET_CREATE_121014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121014", action = "action_EVENT_GADGET_CREATE_121014", trigger_count = 0 },
		{ config_id = 1121015, name = "SELECT_OPTION_121015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121015", action = "action_EVENT_SELECT_OPTION_121015", trigger_count = 0 }
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