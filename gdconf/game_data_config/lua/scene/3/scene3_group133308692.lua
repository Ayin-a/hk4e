-- 基础信息
local base_info = {
	group_id = 133308692
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
		{ config_id = 692001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 2.000, z = 10.000 }, pos = { x = -1454.412, y = 77.090, z = 4418.520 }, area_id = 26 },
		{ config_id = 692002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 2.000, z = 10.000 }, pos = { x = -1454.412, y = 74.979, z = 4418.520 }, area_id = 26 }
	},
	triggers = {
		{ config_id = 1692001, name = "ENTER_REGION_692001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_692001", action = "action_EVENT_ENTER_REGION_692001", trigger_count = 0 },
		{ config_id = 1692002, name = "ENTER_REGION_692002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_692002", action = "action_EVENT_ENTER_REGION_692002", trigger_count = 0 }
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