-- 基础信息
local base_info = {
	group_id = 133212118
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 1,
	group_id = 133212118,
	gadget_controller_id = 118005
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
	monsters = {
		{ config_id = 118001, monster_id = 25100401, pos = { x = -3788.080, y = 200.175, z = -1977.221 }, rot = { x = 0.000, y = 254.939, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 118002, monster_id = 25100301, pos = { x = -3802.743, y = 200.573, z = -1976.449 }, rot = { x = 0.000, y = 69.272, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 118003, gadget_id = 70900394, pos = { x = -3796.202, y = 200.578, z = -1975.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 118004, gadget_id = 70211011, pos = { x = -3796.268, y = 200.740, z = -1980.717 }, rot = { x = 1.914, y = 359.987, z = 359.194 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 118005, gadget_id = 70360001, pos = { x = -3796.211, y = 200.601, z = -1975.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1118006, name = "CHALLENGE_SUCCESS_118006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_118006" },
		{ config_id = 1118007, name = "CHALLENGE_FAIL_118007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_118007", trigger_count = 0 },
		{ config_id = 1118008, name = "GADGET_CREATE_118008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_118008", action = "action_EVENT_GADGET_CREATE_118008", trigger_count = 0 },
		{ config_id = 1118009, name = "SELECT_OPTION_118009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_118009", action = "action_EVENT_SELECT_OPTION_118009", trigger_count = 0 }
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