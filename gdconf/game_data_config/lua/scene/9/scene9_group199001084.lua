-- 基础信息
local base_info = {
	group_id = 199001084
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
		{ config_id = 84001, gadget_id = 70500033, pos = { x = 702.960, y = 120.997, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 20, persistent = true, arguments = { 40 }, area_id = 401 },
		{ config_id = 84002, gadget_id = 70500051, pos = { x = 702.596, y = 120.995, z = -562.839 }, rot = { x = 0.000, y = 147.124, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 84003, gadget_id = 70500041, pos = { x = 701.629, y = 120.848, z = -564.453 }, rot = { x = 0.000, y = 41.144, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 84004, gadget_id = 70500047, pos = { x = 710.243, y = 120.000, z = -567.704 }, rot = { x = 0.000, y = 105.048, z = 0.000 }, level = 20, area_id = 401 }
	},
	regions = {
		{ config_id = 84005, shape = RegionShape.SPHERE, radius = 12, pos = { x = 704.742, y = 120.247, z = -567.889 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1084006, name = "GADGET_CREATE_84006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_84006", action = "" }
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
	},
	{
		-- suite_id = 3,
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