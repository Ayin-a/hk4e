-- 基础信息
local base_info = {
	group_id = 133308607
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
		{ config_id = 607001, gadget_id = 70330418, pos = { x = -1487.036, y = 86.470, z = 4464.614 }, rot = { x = 0.000, y = 9.393, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
	},
	triggers = {
		{ config_id = 1607002, name = "QUEST_FINISH_607002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "" }
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