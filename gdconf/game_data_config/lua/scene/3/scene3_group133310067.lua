-- 基础信息
local base_info = {
	group_id = 133310067
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
		{ config_id = 67001, gadget_id = 70360001, pos = { x = -3006.612, y = 124.059, z = 4173.013 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 28 },
		{ config_id = 67002, gadget_id = 70211101, pos = { x = -3006.612, y = 123.078, z = 4172.813 }, rot = { x = 17.816, y = 5.050, z = 4.959 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
	},
	triggers = {
		{ config_id = 1067003, name = "GADGET_CREATE_67003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_67003", action = "action_EVENT_GADGET_CREATE_67003", trigger_count = 0 },
		{ config_id = 1067004, name = "SELECT_OPTION_67004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_67004", action = "action_EVENT_SELECT_OPTION_67004" },
		{ config_id = 1067005, name = "GADGET_STATE_CHANGE_67005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67005", action = "action_EVENT_GADGET_STATE_CHANGE_67005", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================