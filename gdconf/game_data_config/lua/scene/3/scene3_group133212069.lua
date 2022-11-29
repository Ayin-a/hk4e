-- 基础信息
local base_info = {
	group_id = 133212069
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
	monsters = {
		{ config_id = 69001, monster_id = 20011201, pos = { x = -4236.093, y = 200.000, z = -2518.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 69002, monster_id = 20011201, pos = { x = -4234.604, y = 200.000, z = -2519.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 69003, monster_id = 20011201, pos = { x = -4237.575, y = 200.000, z = -2519.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 }
	},
	regions = {
		{ config_id = 69004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4236.103, y = 200.000, z = -2519.378 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1069004, name = "ENTER_REGION_69004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69004", action = "action_EVENT_ENTER_REGION_69004" }
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