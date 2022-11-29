-- 基础信息
local base_info = {
	group_id = 133220485
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
		{ config_id = 485001, gadget_id = 70211101, pos = { x = -2250.653, y = 188.188, z = -4312.394 }, rot = { x = 357.239, y = 63.966, z = 1.348 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 485002, gadget_id = 70900387, pos = { x = -2257.135, y = 189.086, z = -4307.682 }, rot = { x = 358.332, y = 172.341, z = 1.817 }, level = 19, isOneoff = true, persistent = true, area_id = 11 }
	},
	triggers = {
		{ config_id = 1485003, name = "ANY_GADGET_DIE_485003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_485003", action = "action_EVENT_ANY_GADGET_DIE_485003" },
		{ config_id = 1485004, name = "GADGET_STATE_CHANGE_485004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_485004", action = "action_EVENT_GADGET_STATE_CHANGE_485004", trigger_count = 0 }
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