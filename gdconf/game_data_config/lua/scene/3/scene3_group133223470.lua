-- 基础信息
local base_info = {
	group_id = 133223470
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 470001, monster_id = 24020101, pos = { x = -5918.215, y = 165.490, z = -2656.775 }, rot = { x = 8.431, y = 31.509, z = 4.567 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 470002, monster_id = 24020101, pos = { x = -5921.556, y = 165.700, z = -2654.431 }, rot = { x = 8.431, y = 31.509, z = 4.567 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		{ config_id = 470003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -5920.490, y = 165.615, z = -2657.552 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1470003, name = "ENTER_REGION_470003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_470003", action = "action_EVENT_ENTER_REGION_470003" }
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
		monsters = { 470001, 470002 },
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