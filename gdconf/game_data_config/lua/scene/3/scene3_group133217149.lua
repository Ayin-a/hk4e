-- 基础信息
local base_info = {
	group_id = 133217149
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
		{ config_id = 149001, gadget_id = 70360001, pos = { x = -4386.675, y = 162.052, z = -3827.344 }, rot = { x = 356.016, y = 326.293, z = 359.594 }, level = 19, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 149002, gadget_id = 70211101, pos = { x = -4386.281, y = 160.998, z = -3828.045 }, rot = { x = 353.156, y = 324.233, z = 0.941 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1149003, name = "GADGET_CREATE_149003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149003", action = "action_EVENT_GADGET_CREATE_149003", trigger_count = 0 },
		{ config_id = 1149004, name = "SELECT_OPTION_149004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149004", action = "action_EVENT_SELECT_OPTION_149004" },
		{ config_id = 1149005, name = "GADGET_STATE_CHANGE_149005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149005", action = "action_EVENT_GADGET_STATE_CHANGE_149005", trigger_count = 0 }
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