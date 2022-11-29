-- 基础信息
local base_info = {
	group_id = 133212017
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
		{ config_id = 17001, monster_id = 25100301, pos = { x = -3804.927, y = 207.336, z = -2630.554 }, rot = { x = 0.000, y = 292.700, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 17011, monster_id = 25100401, pos = { x = -3809.463, y = 206.766, z = -2634.567 }, rot = { x = 0.000, y = 11.699, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 17002, gadget_id = 70900394, pos = { x = -3806.898, y = 206.944, z = -2634.866 }, rot = { x = 0.000, y = 195.754, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 17003, gadget_id = 70360001, pos = { x = -3806.987, y = 206.949, z = -2634.880 }, rot = { x = 0.000, y = 195.754, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1017005, name = "GADGET_CREATE_17005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17005", action = "action_EVENT_GADGET_CREATE_17005", trigger_count = 0 },
		{ config_id = 1017006, name = "SELECT_OPTION_17006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17006", action = "action_EVENT_SELECT_OPTION_17006", trigger_count = 0 },
		{ config_id = 1017007, name = "ANY_MONSTER_DIE_17007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17007", action = "action_EVENT_ANY_MONSTER_DIE_17007" }
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