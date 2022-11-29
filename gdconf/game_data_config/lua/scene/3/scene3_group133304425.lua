-- 基础信息
local base_info = {
	group_id = 133304425
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
		{ config_id = 425001, gadget_id = 70330218, pos = { x = -1198.116, y = 201.728, z = 2424.631 }, rot = { x = 0.000, y = 11.550, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
		{ config_id = 425002, gadget_id = 70310198, pos = { x = -1189.588, y = 200.435, z = 2432.687 }, rot = { x = 0.000, y = 38.354, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1425003, name = "ANY_GADGET_DIE_425003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_425003", action = "action_EVENT_ANY_GADGET_DIE_425003", trigger_count = 0 }
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