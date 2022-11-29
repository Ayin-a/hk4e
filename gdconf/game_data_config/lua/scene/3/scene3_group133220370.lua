-- 基础信息
local base_info = {
	group_id = 133220370
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133220370
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
		{ config_id = 370001, gadget_id = 70211121, pos = { x = -2573.253, y = 159.895, z = -4875.117 }, rot = { x = 357.065, y = 284.870, z = 347.935 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 370002, gadget_id = 70350093, pos = { x = -2672.185, y = 199.033, z = -4828.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
		{ config_id = 370003, gadget_id = 70360001, pos = { x = -2672.185, y = 199.998, z = -4828.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
		{ config_id = 370004, gadget_id = 70290150, pos = { x = -2660.769, y = 196.458, z = -4834.562 }, rot = { x = 0.000, y = 4.214, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370005, gadget_id = 70290150, pos = { x = -2656.382, y = 196.451, z = -4836.426 }, rot = { x = 0.000, y = 39.709, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370006, gadget_id = 70290150, pos = { x = -2652.243, y = 196.450, z = -4838.084 }, rot = { x = 0.000, y = 45.540, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370007, gadget_id = 70290150, pos = { x = -2649.150, y = 196.503, z = -4839.308 }, rot = { x = 0.000, y = 45.765, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370008, gadget_id = 70290150, pos = { x = -2619.669, y = 193.203, z = -4854.875 }, rot = { x = 0.000, y = 45.201, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370009, gadget_id = 70290150, pos = { x = -2614.398, y = 193.203, z = -4857.144 }, rot = { x = 0.000, y = 4.214, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370010, gadget_id = 70290150, pos = { x = -2609.625, y = 193.203, z = -4859.861 }, rot = { x = 0.000, y = 4.214, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370011, gadget_id = 70290150, pos = { x = -2604.310, y = 193.203, z = -4862.151 }, rot = { x = 0.000, y = 4.214, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 370018, gadget_id = 70330093, pos = { x = -2663.356, y = 194.376, z = -4833.733 }, rot = { x = 0.000, y = 347.035, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370019, gadget_id = 70330093, pos = { x = -2658.358, y = 194.376, z = -4836.159 }, rot = { x = 0.000, y = 44.326, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370020, gadget_id = 70330093, pos = { x = -2653.268, y = 194.376, z = -4838.676 }, rot = { x = 0.000, y = 347.035, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370021, gadget_id = 70330093, pos = { x = -2648.443, y = 194.376, z = -4841.068 }, rot = { x = 0.000, y = 22.530, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370022, gadget_id = 70330093, pos = { x = -2619.455, y = 191.998, z = -4855.191 }, rot = { x = 0.000, y = 347.035, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370023, gadget_id = 70330093, pos = { x = -2614.686, y = 191.998, z = -4857.613 }, rot = { x = 0.000, y = 28.361, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370024, gadget_id = 70330093, pos = { x = -2609.367, y = 191.998, z = -4860.136 }, rot = { x = 0.000, y = 347.035, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370025, gadget_id = 70330093, pos = { x = -2604.445, y = 191.998, z = -4862.688 }, rot = { x = 0.000, y = 28.586, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 370030, gadget_id = 70900380, pos = { x = -2639.238, y = 194.690, z = -4845.207 }, rot = { x = 0.000, y = 4.214, z = 0.000 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1370012, name = "CHALLENGE_SUCCESS_370012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_370012", trigger_count = 0 },
		{ config_id = 1370013, name = "CHALLENGE_FAIL_370013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_370013", trigger_count = 0 },
		{ config_id = 1370014, name = "GADGET_STATE_CHANGE_370014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_370014", action = "action_EVENT_GADGET_STATE_CHANGE_370014", trigger_count = 0 },
		{ config_id = 1370015, name = "ANY_GADGET_DIE_370015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1370016, name = "GADGET_CREATE_370016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_370016", action = "action_EVENT_GADGET_CREATE_370016", trigger_count = 0 },
		{ config_id = 1370017, name = "SELECT_OPTION_370017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_370017", action = "action_EVENT_SELECT_OPTION_370017", trigger_count = 0 },
		{ config_id = 1370026, name = "GROUP_LOAD_370026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_370026", trigger_count = 0 }
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

require "V2_0/ElectricCore"