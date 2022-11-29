-- 基础信息
local base_info = {
	group_id = 133212049
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
		{ config_id = 49001, monster_id = 20011201, pos = { x = -4235.019, y = 200.000, z = -2509.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 49002, monster_id = 20011201, pos = { x = -4233.532, y = 200.000, z = -2510.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 49003, monster_id = 20011201, pos = { x = -4236.502, y = 200.000, z = -2510.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 13 }
	},
	regions = {
		{ config_id = 49004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4235.029, y = 200.000, z = -2510.505 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1049004, name = "ENTER_REGION_49004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49004", action = "action_EVENT_ENTER_REGION_49004" }
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