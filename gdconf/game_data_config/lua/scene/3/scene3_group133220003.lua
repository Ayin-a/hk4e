-- 基础信息
local base_info = {
	group_id = 133220003
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
		{ config_id = 3006, gadget_id = 70360001, pos = { x = -2821.386, y = 205.725, z = -4761.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 11 },
		{ config_id = 3007, gadget_id = 70360001, pos = { x = -2820.687, y = 204.079, z = -4760.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 11 },
		{ config_id = 3008, gadget_id = 70360001, pos = { x = -2821.516, y = 204.335, z = -4761.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, interact_id = 6, area_id = 11 }
	},
	regions = {
		{ config_id = 3018, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2817.790, y = 206.483, z = -4771.781 }, area_id = 11 },
		{ config_id = 3012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2819.269, y = 205.890, z = -4771.168 }, area_id = 11 },
		{ config_id = 3017, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2818.712, y = 205.599, z = -4769.208 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1003009, name = "QUEST_START_3009", event = EventType.EVENT_QUEST_START, source = "7200001", condition = "", action = "action_EVENT_QUEST_START_3009" },
		{ config_id = 1003010, name = "TIMER_EVENT_3010", event = EventType.EVENT_TIMER_EVENT, source = "case1delay", condition = "", action = "action_EVENT_TIMER_EVENT_3010" },
		{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1003013, name = "TIMER_EVENT_3013", event = EventType.EVENT_TIMER_EVENT, source = "case2delay", condition = "", action = "action_EVENT_TIMER_EVENT_3013" },
		{ config_id = 1003014, name = "TIMER_EVENT_3014", event = EventType.EVENT_TIMER_EVENT, source = "case1delay", condition = "", action = "action_EVENT_TIMER_EVENT_3014" },
		{ config_id = 1003015, name = "SELECT_OPTION_3015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3015", action = "action_EVENT_SELECT_OPTION_3015", trigger_count = 0, forbid_guest = false },
		{ config_id = 1003016, name = "SELECT_OPTION_3016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3016", action = "action_EVENT_SELECT_OPTION_3016", trigger_count = 0, forbid_guest = false },
		{ config_id = 1003018, name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3018", action = "action_EVENT_ENTER_REGION_3018", trigger_count = 0 },
		{ config_id = 1003019, name = "QUEST_FINISH_3019", event = EventType.EVENT_QUEST_FINISH, source = "7200306", condition = "", action = "action_EVENT_QUEST_FINISH_3019", trigger_count = 0 },
		{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012", trigger_count = 0 },
		{ config_id = 1003017, name = "ENTER_REGION_3017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3017", action = "action_EVENT_ENTER_REGION_3017" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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