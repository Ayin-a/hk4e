-- 基础信息
local base_info = {
	group_id = 155005001
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
	triggers = {
		{ config_id = 1001003, name = "QUEST_START_1003", event = EventType.EVENT_QUEST_START, source = "7219801", condition = "", action = "action_EVENT_QUEST_START_1003", trigger_count = 0 },
		{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "7219801", condition = "", action = "action_EVENT_QUEST_FINISH_1004", trigger_count = 0 },
		{ config_id = 1001005, name = "QUEST_START_1005", event = EventType.EVENT_QUEST_START, source = "7219802", condition = "", action = "action_EVENT_QUEST_START_1005", trigger_count = 0 },
		{ config_id = 1001006, name = "QUEST_FINISH_1006", event = EventType.EVENT_QUEST_FINISH, source = "7219802", condition = "", action = "action_EVENT_QUEST_FINISH_1006", trigger_count = 0 },
		{ config_id = 1001007, name = "TIME_AXIS_PASS_1007", event = EventType.EVENT_TIME_AXIS_PASS, source = "StartSyncEnvState", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1007", trigger_count = 0 }
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