-- 基础信息
local base_info = {
	group_id = 133304457
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
		{ config_id = 457001, gadget_id = 70330238, pos = { x = -1652.689, y = 182.272, z = 2781.383 }, rot = { x = 14.927, y = 189.649, z = 12.288 }, level = 30, area_id = 21 },
		{ config_id = 457002, gadget_id = 70290558, pos = { x = -1652.517, y = 185.437, z = 2787.664 }, rot = { x = 42.922, y = 286.299, z = 296.220 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
	},
	triggers = {
		{ config_id = 1457003, name = "GADGET_STATE_CHANGE_457003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_457003", action = "action_EVENT_GADGET_STATE_CHANGE_457003", trigger_count = 0 },
		{ config_id = 1457004, name = "GROUP_LOAD_457004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_457004", action = "action_EVENT_GROUP_LOAD_457004", trigger_count = 0 },
		{ config_id = 1457005, name = "GADGET_STATE_CHANGE_457005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_457005", action = "action_EVENT_GADGET_STATE_CHANGE_457005" }
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