-- 基础信息
local base_info = {
	group_id = 133310425
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
		{ config_id = 425001, gadget_id = 70330259, pos = { x = -3003.600, y = 11.704, z = 4308.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
		{ config_id = 425002, gadget_id = 70330259, pos = { x = -2999.109, y = 9.409, z = 4300.170 }, rot = { x = 0.000, y = 54.755, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 }
	},
	triggers = {
		{ config_id = 1425003, name = "ANY_GADGET_DIE_425003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_425003", action = "action_EVENT_ANY_GADGET_DIE_425003" },
		{ config_id = 1425004, name = "ANY_GADGET_DIE_425004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_425004", action = "action_EVENT_ANY_GADGET_DIE_425004" }
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