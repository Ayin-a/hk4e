-- 基础信息
local base_info = {
	group_id = 133308096
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
		{ config_id = 96001, gadget_id = 70330266, pos = { x = -2352.677, y = 121.199, z = 4659.346 }, rot = { x = 0.000, y = 337.499, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 96002, gadget_id = 70211001, pos = { x = -2352.498, y = 120.817, z = 4658.802 }, rot = { x = 15.206, y = 346.704, z = 348.612 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
	},
	triggers = {
		{ config_id = 1096003, name = "ANY_GADGET_DIE_96003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96003", action = "action_EVENT_ANY_GADGET_DIE_96003", trigger_count = 0 },
		{ config_id = 1096004, name = "GADGET_STATE_CHANGE_96004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96004", action = "action_EVENT_GADGET_STATE_CHANGE_96004", trigger_count = 0 }
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