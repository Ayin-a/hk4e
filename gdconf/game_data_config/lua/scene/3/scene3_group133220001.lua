-- 基础信息
local base_info = {
	group_id = 133220001
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
	{ config_id = 1, name = "fhotofin", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1011, gadget_id = 70360001, pos = { x = -2878.551, y = 174.486, z = -3798.015 }, rot = { x = 0.000, y = 310.262, z = 0.000 }, level = 32, area_id = 11 },
		{ config_id = 1014, gadget_id = 70360001, pos = { x = -2878.514, y = 174.486, z = -3798.018 }, rot = { x = 0.000, y = 310.262, z = 0.000 }, level = 32, interact_id = 6, area_id = 11 },
		{ config_id = 1015, gadget_id = 70360001, pos = { x = -2878.550, y = 174.486, z = -3797.932 }, rot = { x = 0.000, y = 310.262, z = 0.000 }, level = 32, area_id = 11 }
	},
	regions = {
		{ config_id = 1001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2827.351, y = 205.000, z = -3743.285 }, area_id = 11 },
		{ config_id = 1002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2819.620, y = 205.260, z = -3742.286 }, area_id = 11 },
		{ config_id = 1004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2869.876, y = 175.825, z = -3766.019 }, area_id = 11 },
		{ config_id = 1022, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2869.755, y = 175.718, z = -3765.252 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001", trigger_count = 0 },
		{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002" },
		{ config_id = 1001004, name = "ENTER_REGION_1004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1004", action = "action_EVENT_ENTER_REGION_1004", trigger_count = 0 },
		{ config_id = 1001010, name = "GADGET_CREATE_1010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1010", action = "action_EVENT_GADGET_CREATE_1010" },
		{ config_id = 1001012, name = "SELECT_OPTION_1012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1012", action = "action_EVENT_SELECT_OPTION_1012", trigger_count = 0, forbid_guest = false },
		{ config_id = 1001013, name = "TIMER_EVENT_1013", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "" },
		{ config_id = 1001022, name = "ENTER_REGION_1022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1022", action = "action_EVENT_ENTER_REGION_1022" },
		{ config_id = 1001016, name = "QUEST_START_1016", event = EventType.EVENT_QUEST_START, source = "7210001", condition = "", action = "action_EVENT_QUEST_START_1016" },
		{ config_id = 1001017, name = "QUEST_FINISH_1017", event = EventType.EVENT_QUEST_FINISH, source = "7210106", condition = "", action = "action_EVENT_QUEST_FINISH_1017", trigger_count = 0 },
		{ config_id = 1001018, name = "GADGET_CREATE_1018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1018", action = "action_EVENT_GADGET_CREATE_1018", trigger_count = 0 },
		{ config_id = 1001019, name = "SELECT_OPTION_1019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1019", action = "action_EVENT_SELECT_OPTION_1019", trigger_count = 0, forbid_guest = false },
		{ config_id = 1001020, name = "TIMER_EVENT_1020", event = EventType.EVENT_TIMER_EVENT, source = "case2delay", condition = "", action = "action_EVENT_TIMER_EVENT_1020" },
		{ config_id = 1001021, name = "ANY_GADGET_DIE_1021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1021", action = "action_EVENT_ANY_GADGET_DIE_1021" }
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
		-- description = var < 1 & no item,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = var < 1 & item get,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = var = 1,
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