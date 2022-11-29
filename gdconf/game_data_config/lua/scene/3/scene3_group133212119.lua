-- 基础信息
local base_info = {
	group_id = 133212119
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
		{ config_id = 119001, monster_id = 23050101, pos = { x = -4237.293, y = 199.243, z = -2525.803 }, rot = { x = 0.000, y = 285.425, z = 0.000 }, level = 27, drop_tag = "藏镜侍女", disableWander = true, area_id = 13 }
	},
	gadgets = {
		{ config_id = 119002, gadget_id = 70211002, pos = { x = -4246.866, y = 200.773, z = -2522.676 }, rot = { x = 11.800, y = 115.424, z = 357.808 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 119004, gadget_id = 70310004, pos = { x = -4243.476, y = 199.998, z = -2525.151 }, rot = { x = 350.266, y = 0.305, z = 356.424 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
		{ config_id = 119006, gadget_id = 70220048, pos = { x = -4247.364, y = 200.274, z = -2526.278 }, rot = { x = 0.000, y = 327.458, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 119007, gadget_id = 70220048, pos = { x = -4244.410, y = 200.230, z = -2518.115 }, rot = { x = 10.860, y = 35.691, z = 345.304 }, level = 27, area_id = 13 },
		{ config_id = 119008, gadget_id = 70220048, pos = { x = -4246.279, y = 200.658, z = -2519.557 }, rot = { x = 8.877, y = 2.733, z = 354.692 }, level = 27, area_id = 13 },
		{ config_id = 119009, gadget_id = 70220048, pos = { x = -4244.003, y = 200.281, z = -2520.562 }, rot = { x = 357.329, y = 0.203, z = 356.418 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1119003, name = "ANY_MONSTER_DIE_119003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119003", action = "action_EVENT_ANY_MONSTER_DIE_119003" }
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