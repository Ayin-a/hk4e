-- 基础信息
local base_info = {
	group_id = 133220631
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
	{ config_id = 1, name = "fin", value = 0, no_refresh = false },
	{ config_id = 2, name = "rua", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 631001, monster_id = 25080201, pos = { x = -2152.198, y = 201.476, z = -3562.658 }, rot = { x = 0.000, y = 119.925, z = 3.745 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
		{ config_id = 631002, monster_id = 25080101, pos = { x = -2158.923, y = 200.369, z = -3556.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
		{ config_id = 631014, monster_id = 25080301, pos = { x = -2151.807, y = 196.634, z = -3628.807 }, rot = { x = 0.000, y = 156.708, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1006, area_id = 11 },
		{ config_id = 631021, monster_id = 25100201, pos = { x = -2140.804, y = 205.842, z = -3578.277 }, rot = { x = 0.000, y = 358.359, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1002, area_id = 11 },
		{ config_id = 631022, monster_id = 25080101, pos = { x = -2111.639, y = 192.445, z = -3571.693 }, rot = { x = 0.000, y = 58.515, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
	},
	gadgets = {
		{ config_id = 631007, gadget_id = 70211012, pos = { x = -2142.587, y = 206.695, z = -3580.492 }, rot = { x = 10.754, y = 19.321, z = 3.365 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1631017, name = "ANY_MONSTER_DIE_631017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_631017", action = "action_EVENT_ANY_MONSTER_DIE_631017", trigger_count = 0 }
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