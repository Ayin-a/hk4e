-- 基础信息
local base_info = {
	group_id = 199004197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 20060201, pos = { x = -478.431, y = 122.304, z = -674.605 }, rot = { x = 0.000, y = 196.634, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 197002, monster_id = 20060201, pos = { x = -464.485, y = 127.931, z = -673.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 197003, monster_id = 20060201, pos = { x = -473.318, y = 127.422, z = -687.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
		{ config_id = 197007, monster_id = 20060201, pos = { x = -464.004, y = 128.671, z = -680.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
	},
	regions = {
		{ config_id = 197005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -471.595, y = 127.888, z = -680.084 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1197005, name = "ENTER_REGION_197005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_197005", action = "action_EVENT_ENTER_REGION_197005" },
		{ config_id = 1197006, name = "ANY_MONSTER_DIE_197006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197006", action = "action_EVENT_ANY_MONSTER_DIE_197006" }
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
		monsters = { 197001, 197002, 197003 },
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