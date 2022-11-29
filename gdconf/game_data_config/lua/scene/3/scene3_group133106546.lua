-- 基础信息
local base_info = {
	group_id = 133106546
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
		{ config_id = 546001, gadget_id = 70211101, pos = { x = -776.096, y = 101.875, z = 1794.059 }, rot = { x = 346.889, y = 56.015, z = 14.937 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
		{ config_id = 546002, gadget_id = 70220024, pos = { x = -777.210, y = 102.888, z = 1792.505 }, rot = { x = 355.836, y = 229.570, z = 1.953 }, level = 19, isOneoff = true, persistent = true, area_id = 19 }
	},
	triggers = {
		{ config_id = 1546003, name = "ANY_GADGET_DIE_546003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_546003", action = "action_EVENT_ANY_GADGET_DIE_546003" },
		{ config_id = 1546004, name = "GADGET_STATE_CHANGE_546004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_546004", action = "action_EVENT_GADGET_STATE_CHANGE_546004", trigger_count = 0 }
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