-- 基础信息
local base_info = {
	group_id = 133212115
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
		{ config_id = 115001, monster_id = 25100401, pos = { x = -3772.666, y = 240.608, z = -2161.800 }, rot = { x = 0.000, y = 65.338, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 115003, gadget_id = 70900394, pos = { x = -3769.197, y = 240.876, z = -2163.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 115004, gadget_id = 70360001, pos = { x = -3769.115, y = 240.879, z = -2163.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1115006, name = "GADGET_CREATE_115006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_115006", action = "action_EVENT_GADGET_CREATE_115006", trigger_count = 0 },
		{ config_id = 1115007, name = "SELECT_OPTION_115007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115007", action = "action_EVENT_SELECT_OPTION_115007", trigger_count = 0 },
		{ config_id = 1115008, name = "ANY_MONSTER_DIE_115008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115008", action = "action_EVENT_ANY_MONSTER_DIE_115008", trigger_count = 0 }
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