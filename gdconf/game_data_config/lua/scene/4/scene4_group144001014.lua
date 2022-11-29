-- 基础信息
local base_info = {
	group_id = 144001014
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
		{ config_id = 14001, gadget_id = 70350224, pos = { x = 213.553, y = 197.125, z = 163.828 }, rot = { x = 271.980, y = 1.072, z = 177.739 }, level = 1, area_id = 102 },
		{ config_id = 14002, gadget_id = 70350220, pos = { x = 211.824, y = 206.370, z = 149.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
	},
	triggers = {
		{ config_id = 1014003, name = "GADGET_STATE_CHANGE_14003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14003", action = "action_EVENT_GADGET_STATE_CHANGE_14003", trigger_count = 0 },
		{ config_id = 1014004, name = "GADGET_STATE_CHANGE_14004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14004", action = "action_EVENT_GADGET_STATE_CHANGE_14004", trigger_count = 0 },
		{ config_id = 1014005, name = "ANY_GADGET_DIE_14005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_14005", action = "action_EVENT_ANY_GADGET_DIE_14005" }
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