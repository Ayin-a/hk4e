-- 基础信息
local base_info = {
	group_id = 199004053
}

-- Trigger变量
local defs = {
	group_id = 199004053,
	gadget_target_1S = 53002,
	gadget_target_1E = 53005,
	gadget_target_2S = 53003,
	gadget_target_2E = 53006,
	gadget_target_3S = 53004,
	gadget_target_3E = 53007
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
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 53001, gadget_id = 70360008, pos = { x = -395.480, y = 176.309, z = -601.205 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 53002, gadget_id = 70360011, pos = { x = -402.180, y = 182.005, z = -600.205 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 20, mark_flag = 2, area_id = 400 },
		{ config_id = 53003, gadget_id = 70360011, pos = { x = -392.080, y = 182.129, z = -601.105 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 20, mark_flag = 4, area_id = 400 },
		{ config_id = 53004, gadget_id = 70360011, pos = { x = -390.580, y = 182.088, z = -604.805 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 20, mark_flag = 8, area_id = 400 },
		{ config_id = 53005, gadget_id = 70360014, pos = { x = -404.895, y = 182.005, z = -599.833 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 20, route_id = 900400004, area_id = 400 },
		{ config_id = 53006, gadget_id = 70360014, pos = { x = -388.604, y = 182.129, z = -590.113 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 20, route_id = 900400005, area_id = 400 },
		{ config_id = 53007, gadget_id = 70360014, pos = { x = -392.209, y = 186.166, z = -603.898 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 20, route_id = 900400006, area_id = 400 }
	},
	triggers = {
		{ config_id = 1053009, name = "GADGET_STATE_CHANGE_53009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_53009", trigger_count = 0 },
		{ config_id = 1053010, name = "GADGET_STATE_CHANGE_53010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53010", action = "action_EVENT_GADGET_STATE_CHANGE_53010" },
		{ config_id = 1053011, name = "VARIABLE_CHANGE_53011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53011", action = "action_EVENT_VARIABLE_CHANGE_53011" },
		{ config_id = 1053012, name = "GADGET_STATE_CHANGE_53012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53012", action = "action_EVENT_GADGET_STATE_CHANGE_53012", trigger_count = 0 },
		{ config_id = 1053013, name = "GADGET_CREATE_53013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53013", action = "action_EVENT_GADGET_CREATE_53013", trigger_count = 0 },
		{ config_id = 1053014, name = "SELECT_OPTION_53014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53014", action = "action_EVENT_SELECT_OPTION_53014", trigger_count = 0 },
		{ config_id = 1053015, name = "GROUP_REFRESH_53015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_53015" },
		{ config_id = 1053016, name = "ANY_GADGET_DIE_53016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_53016", trigger_count = 0 },
		{ config_id = 1053017, name = "GADGET_CREATE_53017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53017", action = "action_EVENT_GADGET_CREATE_53017", trigger_count = 0 }
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
	end_suite = 2,
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================