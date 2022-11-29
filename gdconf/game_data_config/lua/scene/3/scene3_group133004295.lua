-- 基础信息
local base_info = {
	group_id = 133004295
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 133004295
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
		{ config_id = 295001, gadget_id = 70211111, pos = { x = 2409.100, y = 293.400, z = -369.000 }, rot = { x = 2.500, y = 264.500, z = 0.300 }, level = 11, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
		{ config_id = 295002, gadget_id = 70900039, pos = { x = 2254.067, y = 297.948, z = -365.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 295003, gadget_id = 70900201, pos = { x = 2409.100, y = 293.400, z = -369.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
	},
	triggers = {
		{ config_id = 1295005, name = "CHALLENGE_SUCCESS_295005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_295005" },
		{ config_id = 1295006, name = "CHALLENGE_FAIL_295006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_295006", trigger_count = 0 },
		{ config_id = 1295007, name = "GADGET_STATE_CHANGE_295007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295007", action = "action_EVENT_GADGET_STATE_CHANGE_295007", trigger_count = 0 },
		{ config_id = 1295008, name = "GADGET_STATE_CHANGE_295008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295008", action = "", tag = "202" }
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