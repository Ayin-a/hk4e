-- 基础信息
local base_info = {
	group_id = 133217300
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
		{ config_id = 300001, monster_id = 26010201, pos = { x = -5056.212, y = 200.054, z = -3684.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "骗骗花", area_id = 14 }
	},
	gadgets = {
		{ config_id = 300002, gadget_id = 70510013, pos = { x = -5056.213, y = 200.000, z = -3684.239 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 32, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1300003, name = "GADGET_STATE_CHANGE_300003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300003", action = "action_EVENT_GADGET_STATE_CHANGE_300003", trigger_count = 0 },
		{ config_id = 1300004, name = "ANY_MONSTER_DIE_300004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_300004", action = "action_EVENT_ANY_MONSTER_DIE_300004" },
		{ config_id = 1300005, name = "GADGET_CREATE_300005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_300005", action = "action_EVENT_GADGET_CREATE_300005", trigger_count = 0 },
		{ config_id = 1300006, name = "SELECT_OPTION_300006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_300006", action = "action_EVENT_SELECT_OPTION_300006", trigger_count = 0 }
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