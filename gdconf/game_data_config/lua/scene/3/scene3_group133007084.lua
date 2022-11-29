-- 基础信息
local base_info = {
	group_id = 133007084
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
	{ config_id = 1, name = "target332", value = 0, no_refresh = false },
	{ config_id = 2, name = "target333", value = 0, no_refresh = false },
	{ config_id = 3, name = "target334", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 320, gadget_id = 70211111, pos = { x = 2872.625, y = 225.337, z = 87.811 }, rot = { x = 0.000, y = 107.421, z = 0.000 }, level = 21, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
		{ config_id = 384, gadget_id = 70900007, pos = { x = 2877.323, y = 225.453, z = 85.819 }, rot = { x = 0.000, y = 187.132, z = 0.000 }, level = 23, persistent = true, area_id = 4 }
	},
	triggers = {
		{ config_id = 1000036, name = "CHALLENGE_SUCCESS_36", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "84", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_36", tlog_tag = "风龙_84_射击挑战_成功" },
		{ config_id = 1000037, name = "CHALLENGE_FAIL_37", event = EventType.EVENT_CHALLENGE_FAIL, source = "84", condition = "", action = "action_EVENT_CHALLENGE_FAIL_37", tlog_tag = "风龙_84_射击挑战_失败" },
		{ config_id = 1000053, name = "ANY_GADGET_DIE_53", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 3, tag = "901" },
		{ config_id = 1084001, name = "GADGET_STATE_CHANGE_84001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_84001", action = "action_EVENT_GADGET_STATE_CHANGE_84001", trigger_count = 0 }
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