-- 基础信息
local base_info = {
	group_id = 133301241
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
		{ config_id = 241001, monster_id = 26090201, pos = { x = -340.094, y = 246.257, z = 3893.979 }, rot = { x = 0.000, y = 65.361, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
		{ config_id = 241002, monster_id = 26090201, pos = { x = -339.694, y = 245.285, z = 3895.986 }, rot = { x = 0.000, y = 138.477, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
		{ config_id = 241003, monster_id = 26090201, pos = { x = -335.069, y = 244.940, z = 3898.727 }, rot = { x = 0.000, y = 31.217, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
	},
	regions = {
		{ config_id = 241004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -336.376, y = 238.437, z = 3895.387 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1241004, name = "ENTER_REGION_241004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_241004", action = "action_EVENT_ENTER_REGION_241004" },
		{ config_id = 1241005, name = "ANY_MONSTER_DIE_241005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_241005", trigger_count = 0 }
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