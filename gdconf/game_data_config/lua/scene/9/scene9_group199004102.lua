-- 基础信息
local base_info = {
	group_id = 199004102
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
		{ config_id = 102001, gadget_id = 70310011, pos = { x = -342.511, y = 199.111, z = -645.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 102002, gadget_id = 70310011, pos = { x = -350.378, y = 198.224, z = -635.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 102003, gadget_id = 70310011, pos = { x = -352.318, y = 187.789, z = -647.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 102004, gadget_id = 70310011, pos = { x = -366.597, y = 199.190, z = -634.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1102005, name = "GADGET_STATE_CHANGE_102005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_102005", trigger_count = 0 }
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