-- 基础信息
local base_info = {
	group_id = 133308181
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
	{ config_id = 181002, gadget_id = 70211151, pos = { x = -2306.801, y = 59.112, z = 4464.363 }, rot = { x = 0.000, y = 70.360, z = 0.000 }, level = 26, chest_drop_id = 21910089, drop_count = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 26 }
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
		{ config_id = 181001, gadget_id = 70330430, pos = { x = -2303.423, y = 59.196, z = 4465.660 }, rot = { x = 358.890, y = 286.276, z = 0.608 }, level = 32, area_id = 26 }
	},
	triggers = {
		{ config_id = 1181003, name = "ANY_GADGET_DIE_181003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_181003", action = "action_EVENT_ANY_GADGET_DIE_181003", trigger_count = 0 },
		{ config_id = 1181004, name = "GADGET_STATE_CHANGE_181004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_181004", action = "action_EVENT_GADGET_STATE_CHANGE_181004", trigger_count = 0 }
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
		gadgets = { 181002 },
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