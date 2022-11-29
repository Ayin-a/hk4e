-- 基础信息
local base_info = {
	group_id = 133222057
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
		{ config_id = 57001, gadget_id = 70211101, pos = { x = -4678.847, y = 130.696, z = -4288.861 }, rot = { x = 0.000, y = 94.595, z = 18.608 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 57002, gadget_id = 70220021, pos = { x = -4676.420, y = 129.769, z = -4288.823 }, rot = { x = 13.705, y = 240.537, z = 352.721 }, level = 19, isOneoff = true, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1057003, name = "ANY_GADGET_DIE_57003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_57003", action = "action_EVENT_ANY_GADGET_DIE_57003" },
		{ config_id = 1057004, name = "GADGET_STATE_CHANGE_57004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57004", action = "action_EVENT_GADGET_STATE_CHANGE_57004", trigger_count = 0 }
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