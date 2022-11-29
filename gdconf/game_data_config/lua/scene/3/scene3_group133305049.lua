-- 基础信息
local base_info = {
	group_id = 133305049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49011, monster_id = 28020604, pos = { x = -2288.236, y = 268.609, z = 3871.712 }, rot = { x = 0.000, y = 79.342, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 }
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
		{ config_id = 49001, monster_id = 28050201, pos = { x = -2288.236, y = 266.509, z = 3871.712 }, rot = { x = 0.000, y = 89.644, z = 0.000 }, level = 32, drop_tag = "魔法生物", isOneoff = true, area_id = 26 },
		{ config_id = 49002, monster_id = 28050201, pos = { x = -2282.145, y = 267.854, z = 3870.978 }, rot = { x = 0.000, y = 55.282, z = 0.000 }, level = 32, drop_tag = "魔法生物", isOneoff = true, pose_id = 3, area_id = 26 }
	},
	gadgets = {
		{ config_id = 49003, gadget_id = 70360027, pos = { x = -2281.755, y = 267.968, z = 3870.980 }, rot = { x = 342.537, y = 104.122, z = 1.838 }, level = 32, mark_flag = 3, area_id = 26 },
		{ config_id = 49004, gadget_id = 70360015, pos = { x = -2288.161, y = 266.344, z = 3871.725 }, rot = { x = 355.707, y = 102.614, z = 0.000 }, level = 32, mark_flag = 2, area_id = 26 }
	},
	triggers = {
		{ config_id = 1049005, name = "ANY_MONSTER_DIE_49005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49005", action = "action_EVENT_ANY_MONSTER_DIE_49005" },
		{ config_id = 1049006, name = "SELECT_OPTION_49006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_49006", action = "action_EVENT_SELECT_OPTION_49006", trigger_count = 0 },
		{ config_id = 1049007, name = "GADGET_STATE_CHANGE_49007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49007", action = "action_EVENT_GADGET_STATE_CHANGE_49007", trigger_count = 0 },
		{ config_id = 1049008, name = "GADGET_STATE_CHANGE_49008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49008", action = "action_EVENT_GADGET_STATE_CHANGE_49008", trigger_count = 0 },
		{ config_id = 1049009, name = "GROUP_LOAD_49009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_49009", action = "action_EVENT_GROUP_LOAD_49009", trigger_count = 0 },
		{ config_id = 1049010, name = "GROUP_LOAD_49010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_49010", action = "action_EVENT_GROUP_LOAD_49010", trigger_count = 0 }
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
		-- description = ,
		monsters = { 49011 },
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