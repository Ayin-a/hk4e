-- 基础信息
local base_info = {
	group_id = 133212247
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 1,
	group_id = 133212247,
	gadget_controller_id = 247005
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
		{ config_id = 247001, monster_id = 25100401, pos = { x = -3990.870, y = 198.715, z = -1965.748 }, rot = { x = 0.000, y = 190.827, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 247002, monster_id = 25100301, pos = { x = -3998.203, y = 200.327, z = -1965.446 }, rot = { x = 0.000, y = 136.180, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 247003, gadget_id = 70900394, pos = { x = -3996.337, y = 199.323, z = -1970.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 247004, gadget_id = 70211011, pos = { x = -3994.161, y = 198.885, z = -1970.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 247005, gadget_id = 70360001, pos = { x = -3996.346, y = 200.826, z = -1970.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1247006, name = "CHALLENGE_SUCCESS_247006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_247006" },
		{ config_id = 1247007, name = "CHALLENGE_FAIL_247007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_247007", trigger_count = 0 },
		{ config_id = 1247008, name = "GADGET_CREATE_247008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_247008", action = "action_EVENT_GADGET_CREATE_247008", trigger_count = 0 },
		{ config_id = 1247009, name = "SELECT_OPTION_247009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_247009", action = "action_EVENT_SELECT_OPTION_247009", trigger_count = 0 }
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