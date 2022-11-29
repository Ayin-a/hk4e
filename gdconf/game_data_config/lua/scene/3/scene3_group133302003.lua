-- 基础信息
local base_info = {
	group_id = 133302003
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
	regions = {
		{ config_id = 3003, shape = RegionShape.SPHERE, radius = 30, pos = { x = -726.981, y = 128.820, z = 2277.213 }, area_id = 24 },
		{ config_id = 3010, shape = RegionShape.SPHERE, radius = 20, pos = { x = -479.181, y = 173.822, z = 2337.584 }, area_id = 24 },
		{ config_id = 3013, shape = RegionShape.SPHERE, radius = 30, pos = { x = -348.059, y = 106.187, z = 2253.280 }, area_id = 24 }
	},
	triggers = {
		{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003", trigger_count = 0 },
		{ config_id = 1003010, name = "ENTER_REGION_3010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3010", action = "action_EVENT_ENTER_REGION_3010", trigger_count = 0 },
		{ config_id = 1003013, name = "ENTER_REGION_3013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3013", action = "action_EVENT_ENTER_REGION_3013", trigger_count = 0 }
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