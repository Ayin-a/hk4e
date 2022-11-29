-- 基础信息
local base_info = {
	group_id = 199004191
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 191001, monster_id = 20060301, pos = { x = -471.562, y = 126.531, z = -668.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 191002, monster_id = 20060301, pos = { x = -467.492, y = 127.642, z = -682.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 191003, monster_id = 20060301, pos = { x = -478.074, y = 126.895, z = -689.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
		{ config_id = 191007, monster_id = 20060301, pos = { x = -465.020, y = 128.260, z = -673.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
	},
	regions = {
		{ config_id = 191005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -471.439, y = 127.032, z = -680.383 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1191005, name = "ENTER_REGION_191005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191005", action = "action_EVENT_ENTER_REGION_191005" },
		{ config_id = 1191006, name = "ANY_MONSTER_DIE_191006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191006", action = "action_EVENT_ANY_MONSTER_DIE_191006" }
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
		monsters = { 191001, 191002, 191003 },
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