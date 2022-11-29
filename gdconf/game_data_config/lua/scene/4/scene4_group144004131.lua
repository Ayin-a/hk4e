-- 基础信息
local base_info = {
	group_id = 144004131
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
		{ config_id = 131001, gadget_id = 70360001, pos = { x = -728.968, y = 166.450, z = -16.686 }, rot = { x = 0.000, y = 131.017, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 103 },
		{ config_id = 131002, gadget_id = 70360006, pos = { x = -727.974, y = 173.252, z = -20.582 }, rot = { x = 0.000, y = 0.000, z = 178.626 }, level = 1, area_id = 103 }
	},
	regions = {
		{ config_id = 131003, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -727.974, y = 172.606, z = -20.582 }, area_id = 103 }
	},
	triggers = {
		{ config_id = 1131003, name = "ENTER_REGION_131003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_131003", action = "action_EVENT_ENTER_REGION_131003", trigger_count = 0 },
		{ config_id = 1131004, name = "GADGET_STATE_CHANGE_131004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_131004", action = "action_EVENT_GADGET_STATE_CHANGE_131004", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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