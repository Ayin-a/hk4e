-- 基础信息
local base_info = {
	group_id = 133301596
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
	-- 传送点1
	{ config_id = 596001, gadget_id = 70290596, pos = { x = -618.749, y = 145.764, z = 3676.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	-- 传送点2
	{ config_id = 596002, gadget_id = 70290596, pos = { x = -567.303, y = 38.873, z = 3842.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	-- 传送点3
	{ config_id = 596003, gadget_id = 70290596, pos = { x = -737.508, y = -135.901, z = 3811.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	-- 神像
	{ config_id = 596004, gadget_id = 70290596, pos = { x = -724.283, y = 118.679, z = 4041.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
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
		{ config_id = 596005, gadget_id = 70290596, pos = { x = -594.335, y = 32.994, z = 3798.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
	},
	triggers = {
		{ config_id = 1596006, name = "QUEST_START_596006", event = EventType.EVENT_QUEST_START, source = "7303612", condition = "", action = "action_EVENT_QUEST_START_596006", trigger_count = 0 },
		{ config_id = 1596007, name = "QUEST_FINISH_596007", event = EventType.EVENT_QUEST_FINISH, source = "7303614", condition = "", action = "action_EVENT_QUEST_FINISH_596007", trigger_count = 0 }
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
		gadgets = { 596001, 596002, 596003, 596004 },
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

require "V3_0/DeathFieldStandard"