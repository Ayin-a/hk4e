-- 基础信息
local base_info = {
	group_id = 133302492
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
		{ config_id = 492001, gadget_id = 70310201, pos = { x = -263.502, y = 204.186, z = 3075.132 }, rot = { x = 0.000, y = 67.198, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
		{ config_id = 492002, gadget_id = 70310199, pos = { x = -297.557, y = 202.346, z = 3070.004 }, rot = { x = 0.000, y = 187.646, z = 0.000 }, level = 27, area_id = 22 },
		{ config_id = 492003, gadget_id = 70211102, pos = { x = -267.943, y = 199.858, z = 3074.985 }, rot = { x = 0.000, y = 260.074, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1492004, name = "GADGET_STATE_CHANGE_492004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_492004", action = "action_EVENT_GADGET_STATE_CHANGE_492004" }
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