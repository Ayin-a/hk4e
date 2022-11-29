-- 基础信息
local base_info = {
	group_id = 250087001
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
	{ config_id = 1001, gadget_id = 70360002, pos = { x = 63.880, y = 0.723, z = 96.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 7 } } },
	{ config_id = 1003, gadget_id = 70290137, pos = { x = 70.192, y = 0.850, z = 100.009 }, rot = { x = 0.000, y = 90.183, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "change1", value = 0, no_refresh = true },
	{ config_id = 2, name = "change2", value = 0, no_refresh = false },
	{ config_id = 3, name = "change3", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001002, name = "SELECT_OPTION_1002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_1002", trigger_count = 0 },
		{ config_id = 1001004, name = "TIME_AXIS_PASS_1004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1004", trigger_count = 0 },
		{ config_id = 1001005, name = "TIME_AXIS_PASS_1005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1005", trigger_count = 0 }
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
		gadgets = { 1001, 1003 },
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