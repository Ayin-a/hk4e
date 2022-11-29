-- 基础信息
local base_info = {
	group_id = 133212465
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
		{ config_id = 465001, monster_id = 20010701, pos = { x = -4045.657, y = 202.379, z = -2262.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
		{ config_id = 465002, monster_id = 20010501, pos = { x = -4044.168, y = 202.840, z = -2263.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 465003, monster_id = 20010501, pos = { x = -4047.138, y = 202.667, z = -2263.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
	},
	regions = {
		{ config_id = 465004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4045.667, y = 202.766, z = -2263.294 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1465004, name = "ENTER_REGION_465004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_465004", action = "action_EVENT_ENTER_REGION_465004" }
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