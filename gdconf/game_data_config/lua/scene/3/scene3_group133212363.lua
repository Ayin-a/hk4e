-- 基础信息
local base_info = {
	group_id = 133212363
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
		{ config_id = 363001, monster_id = 21010201, pos = { x = -3831.199, y = 199.646, z = -1871.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 13 },
		{ config_id = 363002, monster_id = 21010201, pos = { x = -3837.240, y = 199.684, z = -1865.185 }, rot = { x = 0.000, y = 77.864, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 13 },
		{ config_id = 363004, monster_id = 21010201, pos = { x = -3826.731, y = 199.839, z = -1865.294 }, rot = { x = 0.000, y = 274.773, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 13 },
		{ config_id = 363005, monster_id = 21010201, pos = { x = -3831.146, y = 199.839, z = -1859.951 }, rot = { x = 0.000, y = 179.616, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 13 },
		{ config_id = 363006, monster_id = 20010501, pos = { x = -3831.496, y = 199.839, z = -1864.920 }, rot = { x = 0.000, y = 179.616, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1363003, name = "ANY_MONSTER_DIE_363003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363003", action = "action_EVENT_ANY_MONSTER_DIE_363003" }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================