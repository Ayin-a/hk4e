-- 基础信息
local base_info = {
	group_id = 133307144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144005, monster_id = 23020101, pos = { x = -2028.186, y = 155.036, z = 5829.276 }, rot = { x = 0.000, y = 154.868, z = 0.000 }, level = 32, drop_tag = "债务处理人", area_id = 27 }
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
		{ config_id = 144001, monster_id = 25210503, pos = { x = -2039.863, y = 179.898, z = 5811.943 }, rot = { x = 0.000, y = 113.168, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
		{ config_id = 144002, monster_id = 25210202, pos = { x = -2045.782, y = 181.082, z = 5812.833 }, rot = { x = 0.000, y = 113.168, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 },
		{ config_id = 144003, monster_id = 25210403, pos = { x = -2042.231, y = 180.711, z = 5818.601 }, rot = { x = 0.000, y = 159.350, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 }
	},
	regions = {
		{ config_id = 144004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2042.626, y = 180.455, z = 5812.661 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1144004, name = "ENTER_REGION_144004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144004", action = "action_EVENT_ENTER_REGION_144004" }
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
		monsters = { 144005 },
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