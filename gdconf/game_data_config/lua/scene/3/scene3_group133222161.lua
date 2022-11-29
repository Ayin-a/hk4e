-- 基础信息
local base_info = {
	group_id = 133222161
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
		{ config_id = 161001, monster_id = 20060101, pos = { x = -5191.068, y = 199.990, z = -4315.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
		{ config_id = 161002, monster_id = 20060101, pos = { x = -5184.296, y = 199.871, z = -4305.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
		{ config_id = 161003, monster_id = 20060201, pos = { x = -5194.377, y = 200.581, z = -4306.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
	},
	gadgets = {
		{ config_id = 161006, gadget_id = 70220050, pos = { x = -5200.097, y = 199.631, z = -4183.608 }, rot = { x = 49.292, y = 338.931, z = 30.233 }, level = 30, area_id = 14 },
		{ config_id = 161007, gadget_id = 70220051, pos = { x = -5200.780, y = 199.738, z = -4185.757 }, rot = { x = 309.746, y = 52.090, z = 0.002 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 161004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5189.784, y = 200.096, z = -4310.031 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1161004, name = "ENTER_REGION_161004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_161004", action = "action_EVENT_ENTER_REGION_161004" }
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