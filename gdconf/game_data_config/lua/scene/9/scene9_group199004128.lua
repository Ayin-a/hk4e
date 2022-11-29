-- 基础信息
local base_info = {
	group_id = 199004128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 20060201, pos = { x = -328.123, y = 126.325, z = -704.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 128002, monster_id = 20060201, pos = { x = -316.200, y = 125.748, z = -706.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 128003, monster_id = 20060201, pos = { x = -321.923, y = 126.772, z = -705.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
		{ config_id = 128005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -323.145, y = 124.359, z = -706.533 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1128005, name = "ENTER_REGION_128005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128005", action = "action_EVENT_ENTER_REGION_128005" },
		{ config_id = 1128006, name = "ANY_MONSTER_DIE_128006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128006", action = "action_EVENT_ANY_MONSTER_DIE_128006" }
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
		monsters = { 128001, 128002, 128003 },
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