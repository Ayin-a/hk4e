-- 基础信息
local base_info = {
	group_id = 133302031
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
	{ config_id = 31005, gadget_id = 71700420, pos = { x = -683.937, y = 134.235, z = 2573.565 }, rot = { x = 0.000, y = 37.110, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 31006, gadget_id = 71700420, pos = { x = -684.875, y = 134.024, z = 2567.862 }, rot = { x = 0.000, y = 55.670, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 31007, gadget_id = 71700420, pos = { x = -698.207, y = 132.848, z = 2570.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 31008, gadget_id = 71700420, pos = { x = -689.914, y = 134.058, z = 2577.616 }, rot = { x = 0.000, y = 333.370, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 31009, gadget_id = 71700420, pos = { x = -695.102, y = 132.816, z = 2575.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 31010, gadget_id = 71700420, pos = { x = -692.772, y = 132.764, z = 2565.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
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
		{ config_id = 31001, gadget_id = 70360001, pos = { x = -371.755, y = 145.950, z = 2419.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
		{ config_id = 31004, gadget_id = 70710413, pos = { x = -371.834, y = 145.988, z = 2420.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
	},
	triggers = {
		{ config_id = 1031002, name = "GADGET_CREATE_31002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31002", action = "action_EVENT_GADGET_CREATE_31002" },
		{ config_id = 1031003, name = "SELECT_OPTION_31003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31003", action = "action_EVENT_SELECT_OPTION_31003" }
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
		gadgets = { 31005, 31006, 31007, 31008, 31009, 31010 },
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