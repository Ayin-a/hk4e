-- 基础信息
local base_info = {
	group_id = 133103472
}

-- Trigger变量
local defs = {
	duration = 15,
	group_id = 133103472
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
		{ config_id = 472001, gadget_id = 70211111, pos = { x = 371.296, y = 272.017, z = 1768.896 }, rot = { x = 3.550, y = 164.630, z = 345.780 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
		{ config_id = 472002, gadget_id = 70900039, pos = { x = 359.014, y = 251.897, z = 1655.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
		{ config_id = 472003, gadget_id = 70900201, pos = { x = 371.300, y = 272.000, z = 1768.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
	},
	triggers = {
		{ config_id = 1472005, name = "CHALLENGE_SUCCESS_472005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_472005" },
		{ config_id = 1472006, name = "CHALLENGE_FAIL_472006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_472006", trigger_count = 0 },
		{ config_id = 1472007, name = "GADGET_STATE_CHANGE_472007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_472007", action = "action_EVENT_GADGET_STATE_CHANGE_472007", trigger_count = 0 },
		{ config_id = 1472008, name = "GADGET_STATE_CHANGE_472008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_472008", action = "", tag = "202" }
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