-- 基础信息
local base_info = {
	group_id = 133222125
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
	{ config_id = 125006, gadget_id = 70220013, pos = { x = -4813.828, y = 214.138, z = -4706.736 }, rot = { x = 0.000, y = 334.209, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 125008, gadget_id = 70220026, pos = { x = -4813.633, y = 214.137, z = -4712.812 }, rot = { x = 0.000, y = 303.115, z = 0.000 }, level = 30, area_id = 14 }
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
		{ config_id = 125001, monster_id = 21020101, pos = { x = -4716.830, y = 199.985, z = -4787.071 }, rot = { x = 0.000, y = 274.346, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 14 },
		{ config_id = 125002, monster_id = 21010701, pos = { x = -4716.906, y = 200.012, z = -4790.705 }, rot = { x = 0.000, y = 334.324, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 125003, monster_id = 21010701, pos = { x = -4719.414, y = 200.002, z = -4783.570 }, rot = { x = 0.000, y = 249.739, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 14 }
	},
	gadgets = {
		{ config_id = 125005, gadget_id = 70220013, pos = { x = -4813.644, y = 214.138, z = -4712.069 }, rot = { x = 0.000, y = 355.846, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 125007, gadget_id = 70220013, pos = { x = -4813.492, y = 214.165, z = -4706.598 }, rot = { x = 0.000, y = 355.502, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 125009, gadget_id = 70220014, pos = { x = -4822.033, y = 214.111, z = -4716.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 125004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -4795.415, y = 208.256, z = -4707.741 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1125004, name = "ENTER_REGION_125004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_125004", action = "action_EVENT_ENTER_REGION_125004" }
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
		gadgets = { 125006, 125008 },
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