-- 基础信息
local base_info = {
	group_id = 133223194
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
	gadgets = {
		{ config_id = 194001, gadget_id = 70360001, pos = { x = -6204.820, y = 212.591, z = -2366.311 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 18 },
		{ config_id = 194002, gadget_id = 70211101, pos = { x = -6205.073, y = 212.943, z = -2365.535 }, rot = { x = 0.000, y = 5.347, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1194003, name = "GADGET_CREATE_194003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194003", action = "action_EVENT_GADGET_CREATE_194003", trigger_count = 0 },
		{ config_id = 1194004, name = "SELECT_OPTION_194004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194004", action = "action_EVENT_SELECT_OPTION_194004" },
		{ config_id = 1194005, name = "GADGET_STATE_CHANGE_194005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194005", action = "action_EVENT_GADGET_STATE_CHANGE_194005", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
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