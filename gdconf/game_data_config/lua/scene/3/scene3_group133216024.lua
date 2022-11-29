-- 基础信息
local base_info = {
	group_id = 133216024
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
	{ config_id = 24006, gadget_id = 70210101, pos = { x = -4947.190, y = 200.488, z = -2543.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 18 }
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
	gadgets = {
		{ config_id = 24001, gadget_id = 70360001, pos = { x = -4947.133, y = 200.675, z = -2542.964 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 18 },
		{ config_id = 24002, gadget_id = 70211150, pos = { x = -4947.351, y = 200.135, z = -2542.760 }, rot = { x = 346.557, y = 123.154, z = 334.843 }, level = 26, chest_drop_id = 21900007, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1024003, name = "GADGET_CREATE_24003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_24003", action = "action_EVENT_GADGET_CREATE_24003", trigger_count = 0 },
		{ config_id = 1024004, name = "SELECT_OPTION_24004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24004", action = "action_EVENT_SELECT_OPTION_24004" },
		{ config_id = 1024005, name = "GADGET_STATE_CHANGE_24005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24005", action = "action_EVENT_GADGET_STATE_CHANGE_24005", trigger_count = 0 }
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
		gadgets = { 24006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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