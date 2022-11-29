-- 基础信息
local base_info = {
	group_id = 133223237
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
		{ config_id = 237001, gadget_id = 70211101, pos = { x = -5922.239, y = 226.516, z = -2555.425 }, rot = { x = 337.377, y = 55.017, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
		{ config_id = 237002, gadget_id = 70900387, pos = { x = -5921.579, y = 226.786, z = -2554.212 }, rot = { x = 4.877, y = 179.283, z = 339.038 }, level = 19, isOneoff = true, persistent = true, area_id = 18 }
	},
	triggers = {
		{ config_id = 1237003, name = "ANY_GADGET_DIE_237003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237003", action = "action_EVENT_ANY_GADGET_DIE_237003" },
		{ config_id = 1237004, name = "GADGET_STATE_CHANGE_237004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_237004", action = "action_EVENT_GADGET_STATE_CHANGE_237004", trigger_count = 0 }
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