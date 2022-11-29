-- 基础信息
local base_info = {
	group_id = 133107223
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
	{ config_id = 223006, gadget_id = 70220013, pos = { x = -568.441, y = 210.022, z = 298.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
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
		{ config_id = 223001, gadget_id = 70800104, pos = { x = -545.808, y = 210.284, z = 293.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 223002, gadget_id = 70800104, pos = { x = -552.387, y = 210.089, z = 287.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
		{ config_id = 223004, gadget_id = 70800104, pos = { x = -545.808, y = 210.284, z = 293.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 },
		{ config_id = 223005, gadget_id = 70800104, pos = { x = -552.387, y = 210.089, z = 287.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
	},
	triggers = {
		{ config_id = 1223003, name = "QUEST_FINISH_223003", event = EventType.EVENT_QUEST_FINISH, source = "4003712", condition = "condition_EVENT_QUEST_FINISH_223003", action = "action_EVENT_QUEST_FINISH_223003", trigger_count = 0 }
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
		gadgets = { 223006 },
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