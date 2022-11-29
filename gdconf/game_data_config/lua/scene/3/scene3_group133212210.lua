-- 基础信息
local base_info = {
	group_id = 133212210
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
		{ config_id = 210001, monster_id = 25100401, pos = { x = -3499.966, y = 200.242, z = -2567.002 }, rot = { x = 0.000, y = 69.015, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 210002, gadget_id = 70900394, pos = { x = -3497.538, y = 200.000, z = -2564.539 }, rot = { x = 0.000, y = 329.284, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 210003, gadget_id = 70360001, pos = { x = -3497.497, y = 201.190, z = -2564.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1210005, name = "GADGET_CREATE_210005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_210005", action = "action_EVENT_GADGET_CREATE_210005", trigger_count = 0 },
		{ config_id = 1210006, name = "SELECT_OPTION_210006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_210006", action = "action_EVENT_SELECT_OPTION_210006", trigger_count = 0 },
		{ config_id = 1210007, name = "ANY_MONSTER_DIE_210007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210007", action = "action_EVENT_ANY_MONSTER_DIE_210007", trigger_count = 0 }
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