-- 基础信息
local base_info = {
	group_id = 199004129
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
		{ config_id = 129002, gadget_id = 70220021, pos = { x = -400.887, y = 126.343, z = -633.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 400 }
	},
	triggers = {
		{ config_id = 1129003, name = "ANY_GADGET_DIE_129003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_129003", action = "action_EVENT_ANY_GADGET_DIE_129003" },
		{ config_id = 1129004, name = "GADGET_STATE_CHANGE_129004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_129004", action = "action_EVENT_GADGET_STATE_CHANGE_129004", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================