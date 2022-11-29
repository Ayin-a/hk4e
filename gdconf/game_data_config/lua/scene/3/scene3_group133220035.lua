-- 基础信息
local base_info = {
	group_id = 133220035
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
		{ config_id = 35001, gadget_id = 70360001, pos = { x = -3404.605, y = 200.073, z = -4240.874 }, rot = { x = 354.143, y = 249.468, z = 322.228 }, level = 19, isOneoff = true, persistent = true, area_id = 11 },
		{ config_id = 35002, gadget_id = 70211111, pos = { x = -3404.699, y = 199.540, z = -4241.351 }, rot = { x = 323.284, y = 148.633, z = 11.208 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1035003, name = "GADGET_CREATE_35003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_35003", action = "action_EVENT_GADGET_CREATE_35003", trigger_count = 0 },
		{ config_id = 1035004, name = "SELECT_OPTION_35004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35004", action = "action_EVENT_SELECT_OPTION_35004" },
		{ config_id = 1035005, name = "GADGET_STATE_CHANGE_35005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35005", action = "action_EVENT_GADGET_STATE_CHANGE_35005", trigger_count = 0 }
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