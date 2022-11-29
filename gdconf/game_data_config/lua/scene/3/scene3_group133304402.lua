-- 基础信息
local base_info = {
	group_id = 133304402
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
		{ config_id = 402001, gadget_id = 70330218, pos = { x = -1465.149, y = 121.706, z = 2476.271 }, rot = { x = 343.235, y = 18.914, z = 358.304 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
		{ config_id = 402002, gadget_id = 70310198, pos = { x = -1459.332, y = 124.741, z = 2481.749 }, rot = { x = 335.936, y = 23.469, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1402003, name = "ANY_GADGET_DIE_402003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_402003", action = "action_EVENT_ANY_GADGET_DIE_402003", trigger_count = 0 }
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