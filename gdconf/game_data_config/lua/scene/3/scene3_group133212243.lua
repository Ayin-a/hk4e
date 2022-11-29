-- 基础信息
local base_info = {
	group_id = 133212243
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
		{ config_id = 243001, monster_id = 25100301, pos = { x = -3538.372, y = 200.024, z = -2435.924 }, rot = { x = 0.000, y = 238.323, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 243008, monster_id = 25100401, pos = { x = -3542.260, y = 198.978, z = -2428.398 }, rot = { x = 0.000, y = 144.611, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 243002, gadget_id = 70900394, pos = { x = -3543.142, y = 200.116, z = -2433.447 }, rot = { x = 359.839, y = 10.782, z = 348.024 }, level = 27, area_id = 13 },
		{ config_id = 243003, gadget_id = 70360001, pos = { x = -3543.060, y = 200.162, z = -2433.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1243005, name = "GADGET_CREATE_243005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_243005", action = "action_EVENT_GADGET_CREATE_243005", trigger_count = 0 },
		{ config_id = 1243006, name = "SELECT_OPTION_243006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243006", action = "action_EVENT_SELECT_OPTION_243006", trigger_count = 0 },
		{ config_id = 1243007, name = "ANY_MONSTER_DIE_243007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_243007", action = "action_EVENT_ANY_MONSTER_DIE_243007" }
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