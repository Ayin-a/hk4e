-- 基础信息
local base_info = {
	group_id = 199004193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 20060501, pos = { x = -471.618, y = 127.259, z = -666.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 193002, monster_id = 20060501, pos = { x = -459.629, y = 127.994, z = -669.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 193003, monster_id = 20060501, pos = { x = -478.269, y = 127.259, z = -689.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
		{ config_id = 193007, monster_id = 20060501, pos = { x = -463.733, y = 128.049, z = -680.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
	},
	regions = {
		{ config_id = 193005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -471.494, y = 127.952, z = -680.328 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1193005, name = "ENTER_REGION_193005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193005", action = "action_EVENT_ENTER_REGION_193005" },
		{ config_id = 1193006, name = "ANY_MONSTER_DIE_193006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193006", action = "action_EVENT_ANY_MONSTER_DIE_193006" }
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
		monsters = { 193001, 193002, 193003 },
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