-- 基础信息
local base_info = {
	group_id = 133223342
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 342001, monster_id = 24020301, pos = { x = -6006.711, y = 154.537, z = -2736.567 }, rot = { x = 0.000, y = 38.267, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		{ config_id = 342002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6006.046, y = 154.537, z = -2736.276 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1342002, name = "ENTER_REGION_342002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_342002", action = "action_EVENT_ENTER_REGION_342002" }
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
		monsters = { 342001 },
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