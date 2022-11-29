-- 基础信息
local base_info = {
	group_id = 133212012
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133212012
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
		{ config_id = 12001, gadget_id = 70211101, pos = { x = -4305.653, y = 241.288, z = -2589.619 }, rot = { x = 340.621, y = 18.887, z = 4.582 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 12002, gadget_id = 70350093, pos = { x = -4225.108, y = 199.428, z = -2517.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
		{ config_id = 12003, gadget_id = 70360001, pos = { x = -4225.108, y = 200.393, z = -2517.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
		{ config_id = 12004, gadget_id = 70290150, pos = { x = -4260.515, y = 227.153, z = -2527.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12005, gadget_id = 70290150, pos = { x = -4279.836, y = 238.271, z = -2533.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12006, gadget_id = 70290150, pos = { x = -4282.816, y = 243.831, z = -2538.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12007, gadget_id = 70290150, pos = { x = -4286.320, y = 248.779, z = -2548.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12008, gadget_id = 70290150, pos = { x = -4303.886, y = 242.967, z = -2585.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12009, gadget_id = 70290150, pos = { x = -4304.494, y = 242.886, z = -2586.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12010, gadget_id = 70290150, pos = { x = -4252.754, y = 225.834, z = -2525.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12011, gadget_id = 70290150, pos = { x = -4256.059, y = 226.479, z = -2527.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 12018, gadget_id = 70900380, pos = { x = -4230.123, y = 207.065, z = -2519.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12019, gadget_id = 70900380, pos = { x = -4235.984, y = 213.869, z = -2521.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12020, gadget_id = 70900380, pos = { x = -4243.971, y = 221.848, z = -2524.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12021, gadget_id = 70900380, pos = { x = -4265.986, y = 227.519, z = -2528.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12022, gadget_id = 70900380, pos = { x = -4274.414, y = 236.551, z = -2532.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12023, gadget_id = 70900380, pos = { x = -4288.368, y = 248.486, z = -2555.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12024, gadget_id = 70900380, pos = { x = -4284.368, y = 245.198, z = -2543.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12025, gadget_id = 70900380, pos = { x = -4297.688, y = 249.621, z = -2569.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 12026, gadget_id = 70330064, pos = { x = -4281.429, y = 237.111, z = -2533.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
	},
	triggers = {
		{ config_id = 1012012, name = "CHALLENGE_SUCCESS_12012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12012", trigger_count = 0 },
		{ config_id = 1012013, name = "CHALLENGE_FAIL_12013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12013", trigger_count = 0 },
		{ config_id = 1012014, name = "GADGET_STATE_CHANGE_12014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12014", action = "action_EVENT_GADGET_STATE_CHANGE_12014", trigger_count = 0 },
		{ config_id = 1012015, name = "ANY_GADGET_DIE_12015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "247" },
		{ config_id = 1012016, name = "GADGET_CREATE_12016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12016", action = "action_EVENT_GADGET_CREATE_12016", trigger_count = 0 },
		{ config_id = 1012017, name = "SELECT_OPTION_12017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12017", action = "action_EVENT_SELECT_OPTION_12017", trigger_count = 0 }
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