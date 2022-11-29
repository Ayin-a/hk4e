-- 基础信息
local base_info = {
	group_id = 220119008
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
	{ config_id = 8003, gadget_id = 70360288, pos = { x = -4.980, y = -1.160, z = 19.769 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1 }
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
		{ config_id = 8001, gadget_id = 70360170, pos = { x = -8.521, y = -1.183, z = 16.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 8002, gadget_id = 70360001, pos = { x = -8.521, y = -0.659, z = 16.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1008004, name = "GADGET_CREATE_8004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8004", action = "action_EVENT_GADGET_CREATE_8004" },
		{ config_id = 1008005, name = "SELECT_OPTION_8005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8005", action = "action_EVENT_SELECT_OPTION_8005" }
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
		-- description = ,
		monsters = { },
		gadgets = { 8003 },
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