-- 基础信息
local base_info = {
	group_id = 133107222
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
	{ config_id = 222008, gadget_id = 70220013, pos = { x = -501.401, y = 211.154, z = 356.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
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
		{ config_id = 222001, gadget_id = 70800104, pos = { x = -487.442, y = 210.022, z = 345.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 222002, gadget_id = 70800104, pos = { x = -495.164, y = 210.107, z = 344.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 222003, gadget_id = 70800104, pos = { x = -505.569, y = 210.107, z = 333.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 222005, gadget_id = 70800104, pos = { x = -487.442, y = 210.022, z = 345.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 222006, gadget_id = 70800104, pos = { x = -495.164, y = 210.107, z = 344.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 222007, gadget_id = 70800104, pos = { x = -505.569, y = 210.107, z = 333.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
	},
	triggers = {
		{ config_id = 1222004, name = "QUEST_FINISH_222004", event = EventType.EVENT_QUEST_FINISH, source = "4003712", condition = "condition_EVENT_QUEST_FINISH_222004", action = "action_EVENT_QUEST_FINISH_222004", trigger_count = 0 }
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 222008 },
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