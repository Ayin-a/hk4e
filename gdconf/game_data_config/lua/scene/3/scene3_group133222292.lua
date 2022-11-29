-- 基础信息
local base_info = {
	group_id = 133222292
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
		{ config_id = 292001, monster_id = 20011101, pos = { x = -4644.320, y = 140.088, z = -4226.331 }, rot = { x = 0.000, y = 136.382, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 10, area_id = 14 },
		{ config_id = 292002, monster_id = 20011401, pos = { x = -4641.427, y = 139.992, z = -4226.835 }, rot = { x = 0.000, y = 210.417, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
	},
	regions = {
		{ config_id = 292004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4642.724, y = 140.004, z = -4226.233 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1292004, name = "ENTER_REGION_292004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292004", action = "action_EVENT_ENTER_REGION_292004" }
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