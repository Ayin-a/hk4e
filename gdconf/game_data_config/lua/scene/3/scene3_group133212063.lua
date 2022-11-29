-- 基础信息
local base_info = {
	group_id = 133212063
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
		{ config_id = 63001, monster_id = 20010601, pos = { x = -4242.492, y = 200.000, z = -2525.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
		{ config_id = 63002, monster_id = 20010501, pos = { x = -4241.003, y = 200.000, z = -2526.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 63003, monster_id = 20010501, pos = { x = -4243.973, y = 200.000, z = -2526.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
	},
	regions = {
		{ config_id = 63004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4242.502, y = 200.000, z = -2526.430 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1063004, name = "ENTER_REGION_63004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63004", action = "action_EVENT_ENTER_REGION_63004" }
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