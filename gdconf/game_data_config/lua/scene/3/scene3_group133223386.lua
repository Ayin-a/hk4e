-- 基础信息
local base_info = {
	group_id = 133223386
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
		{ config_id = 386001, gadget_id = 70950055, pos = { x = -6186.990, y = 221.519, z = -2929.736 }, rot = { x = 8.443, y = 205.730, z = 3.666 }, level = 30, state = GadgetState.Action01, area_id = 18 },
		{ config_id = 386002, gadget_id = 70950055, pos = { x = -6190.000, y = 221.991, z = -2926.188 }, rot = { x = 7.321, y = 85.399, z = 9.779 }, level = 30, state = GadgetState.Action02, area_id = 18 },
		{ config_id = 386003, gadget_id = 70950055, pos = { x = -6189.303, y = 222.279, z = -2920.291 }, rot = { x = 7.246, y = 145.101, z = 3.537 }, level = 30, state = GadgetState.Action03, area_id = 18 }
	},
	triggers = {
		{ config_id = 1386007, name = "VARIABLE_CHANGE_386007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_386007", action = "" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
	},
	{
		-- suite_id = 3,
		-- description = 雷鸟雕像用suit,
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