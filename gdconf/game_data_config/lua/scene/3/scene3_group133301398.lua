-- 基础信息
local base_info = {
	group_id = 133301398
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 398001, monster_id = 25010201, pos = { x = -799.534, y = 303.510, z = 3299.345 }, rot = { x = 0.000, y = 329.846, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 398004, monster_id = 25010201, pos = { x = -802.480, y = 305.970, z = 3304.726 }, rot = { x = 0.000, y = 65.029, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 23 },
	{ config_id = 398005, monster_id = 25010701, pos = { x = -793.796, y = 302.976, z = 3291.716 }, rot = { x = 0.000, y = 323.572, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 23 },
	{ config_id = 398006, monster_id = 25010601, pos = { x = -803.231, y = 305.733, z = 3319.530 }, rot = { x = 0.000, y = 159.856, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9004, area_id = 23 }
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
	gadgets = {
		{ config_id = 398002, gadget_id = 70211012, pos = { x = -791.437, y = 305.574, z = 3284.492 }, rot = { x = 0.000, y = 326.303, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1398003, name = "ANY_MONSTER_DIE_398003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_398003", action = "action_EVENT_ANY_MONSTER_DIE_398003" }
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
		monsters = { 398001, 398004, 398005, 398006 },
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