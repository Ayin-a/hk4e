-- 基础信息
local base_info = {
	group_id = 133212541
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
		{ config_id = 541001, monster_id = 25100401, pos = { x = -3553.189, y = 199.978, z = -2424.104 }, rot = { x = 0.000, y = 63.247, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 541002, monster_id = 25100301, pos = { x = -3547.323, y = 199.651, z = -2428.453 }, rot = { x = 0.000, y = 314.996, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 541003, gadget_id = 70900400, pos = { x = -3550.287, y = 199.975, z = -2423.466 }, rot = { x = 0.000, y = 118.142, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 541004, gadget_id = 70360001, pos = { x = -3546.730, y = 200.049, z = -2422.687 }, rot = { x = 0.000, y = 342.724, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1541005, name = "GADGET_STATE_CHANGE_541005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_541005", action = "action_EVENT_GADGET_STATE_CHANGE_541005", trigger_count = 0 },
		{ config_id = 1541006, name = "GADGET_CREATE_541006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_541006", action = "action_EVENT_GADGET_CREATE_541006", trigger_count = 0 },
		{ config_id = 1541007, name = "SELECT_OPTION_541007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_541007", action = "action_EVENT_SELECT_OPTION_541007", trigger_count = 0 },
		{ config_id = 1541008, name = "ANY_MONSTER_DIE_541008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_541008", action = "action_EVENT_ANY_MONSTER_DIE_541008", trigger_count = 0 },
		{ config_id = 1541009, name = "GROUP_LOAD_541009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_541009", action = "action_EVENT_GROUP_LOAD_541009" }
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