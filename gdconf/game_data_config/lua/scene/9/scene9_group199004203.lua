-- 基础信息
local base_info = {
	group_id = 199004203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 20010701, pos = { x = -298.619, y = 134.098, z = -664.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 203002, monster_id = 20010601, pos = { x = -299.347, y = 133.755, z = -660.643 }, rot = { x = 0.000, y = 153.002, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 }
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
		{ config_id = 203003, monster_id = 20060501, pos = { x = -298.425, y = 136.390, z = -672.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
	},
	regions = {
		{ config_id = 203005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -292.994, y = 135.451, z = -666.257 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1203005, name = "ENTER_REGION_203005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203005", action = "action_EVENT_ENTER_REGION_203005" },
		{ config_id = 1203006, name = "ANY_MONSTER_DIE_203006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203006", action = "action_EVENT_ANY_MONSTER_DIE_203006" }
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
		monsters = { 203001, 203002 },
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