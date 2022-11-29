-- 基础信息
local base_info = {
	group_id = 133301409
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
		{ config_id = 409001, gadget_id = 70230112, pos = { x = -817.531, y = 224.209, z = 3268.458 }, rot = { x = 296.069, y = 44.946, z = 85.011 }, level = 30, area_id = 23 },
		{ config_id = 409005, gadget_id = 70900050, pos = { x = -823.512, y = 230.944, z = 3256.337 }, rot = { x = 340.614, y = 1.511, z = 20.204 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1409006, name = "GADGET_STATE_CHANGE_409006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_409006", action = "action_EVENT_GADGET_STATE_CHANGE_409006", trigger_count = 0 }
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