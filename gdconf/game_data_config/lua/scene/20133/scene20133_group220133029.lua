-- 基础信息
local base_info = {
	group_id = 220133029
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
		{ config_id = 29001, gadget_id = 70360346, pos = { x = 2172.130, y = 564.117, z = 596.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 119 },
		{ config_id = 29003, gadget_id = 70310148, pos = { x = 2172.130, y = 564.117, z = 596.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	triggers = {
		{ config_id = 1029002, name = "GADGET_STATE_CHANGE_29002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29002", action = "action_EVENT_GADGET_STATE_CHANGE_29002" }
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