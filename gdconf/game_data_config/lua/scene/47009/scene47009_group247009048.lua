-- 基础信息
local base_info = {
	group_id = 247009048
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
		{ config_id = 48001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.577, y = 1.374, z = 140.511 } },
		{ config_id = 48002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -0.264, y = 2.264, z = 263.044 } }
	},
	triggers = {
		{ config_id = 1048001, name = "ENTER_REGION_48001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48001", action = "action_EVENT_ENTER_REGION_48001" },
		{ config_id = 1048002, name = "ENTER_REGION_48002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48002", action = "action_EVENT_ENTER_REGION_48002" }
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