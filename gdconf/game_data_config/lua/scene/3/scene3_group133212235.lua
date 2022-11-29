-- 基础信息
local base_info = {
	group_id = 133212235
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
		{ config_id = 235001, monster_id = 25100301, pos = { x = -3508.687, y = 206.752, z = -2110.446 }, rot = { x = 0.000, y = 321.881, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 235002, gadget_id = 70900394, pos = { x = -3509.253, y = 206.454, z = -2107.442 }, rot = { x = 16.623, y = 4.504, z = 12.729 }, level = 27, area_id = 13 },
		{ config_id = 235003, gadget_id = 70360001, pos = { x = -3509.307, y = 206.546, z = -2107.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1235005, name = "GADGET_CREATE_235005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_235005", action = "action_EVENT_GADGET_CREATE_235005", trigger_count = 0 },
		{ config_id = 1235006, name = "SELECT_OPTION_235006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_235006", action = "action_EVENT_SELECT_OPTION_235006", trigger_count = 0 },
		{ config_id = 1235007, name = "ANY_MONSTER_DIE_235007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235007", action = "action_EVENT_ANY_MONSTER_DIE_235007" }
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