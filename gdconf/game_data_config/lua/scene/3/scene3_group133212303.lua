-- 基础信息
local base_info = {
	group_id = 133212303
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
		{ config_id = 303001, monster_id = 25080301, pos = { x = -4216.378, y = 199.989, z = -2534.412 }, rot = { x = 0.000, y = 29.822, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 303002, monster_id = 25080101, pos = { x = -4218.711, y = 200.057, z = -2532.311 }, rot = { x = 0.000, y = 64.597, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 303008, monster_id = 25100101, pos = { x = -4211.271, y = 200.013, z = -2530.642 }, rot = { x = 0.000, y = 273.969, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 }
	},
	gadgets = {
		{ config_id = 303007, gadget_id = 70300107, pos = { x = -4213.634, y = 200.059, z = -2530.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	regions = {
		{ config_id = 303005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4212.710, y = 200.153, z = -2530.861 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1303005, name = "ENTER_REGION_303005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_303005", action = "action_EVENT_ENTER_REGION_303005" },
		{ config_id = 1303006, name = "ANY_MONSTER_DIE_303006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_303006", action = "action_EVENT_ANY_MONSTER_DIE_303006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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