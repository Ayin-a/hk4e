-- 基础信息
local base_info = {
	group_id = 133212208
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
		{ config_id = 208005, monster_id = 25100401, pos = { x = -3668.200, y = 201.055, z = -2517.211 }, rot = { x = 0.000, y = 115.806, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 208001, gadget_id = 70900394, pos = { x = -3667.651, y = 200.517, z = -2519.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 208002, gadget_id = 70360001, pos = { x = -3667.569, y = 200.517, z = -2518.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1208003, name = "GADGET_CREATE_208003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208003", action = "action_EVENT_GADGET_CREATE_208003", trigger_count = 0 },
		{ config_id = 1208004, name = "SELECT_OPTION_208004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_208004", action = "action_EVENT_SELECT_OPTION_208004", trigger_count = 0 },
		{ config_id = 1208006, name = "ANY_MONSTER_DIE_208006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_208006", action = "action_EVENT_ANY_MONSTER_DIE_208006", trigger_count = 0 }
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