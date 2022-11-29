-- 基础信息
local base_info = {
	group_id = 133102647
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
		{ config_id = 647006, gadget_id = 70900007, pos = { x = 1736.703, y = 210.972, z = 590.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
		{ config_id = 647021, gadget_id = 70211121, pos = { x = 1754.576, y = 255.933, z = 555.708 }, rot = { x = 4.174, y = 32.720, z = 1.879 }, level = 16, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
	},
	triggers = {
		{ config_id = 1647007, name = "GADGET_STATE_CHANGE_647007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_647007", action = "action_EVENT_GADGET_STATE_CHANGE_647007" },
		{ config_id = 1647008, name = "CHALLENGE_FAIL_647008", event = EventType.EVENT_CHALLENGE_FAIL, source = "647", condition = "", action = "action_EVENT_CHALLENGE_FAIL_647008" },
		{ config_id = 1647009, name = "CHALLENGE_SUCCESS_647009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "647", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_647009" }
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