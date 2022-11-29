-- 基础信息
local base_info = {
	group_id = 133213224
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
		{ config_id = 224001, monster_id = 20010701, pos = { x = -3528.547, y = 216.375, z = -3255.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", area_id = 12 },
		{ config_id = 224002, monster_id = 20010501, pos = { x = -3527.046, y = 216.006, z = -3257.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", area_id = 12 },
		{ config_id = 224003, monster_id = 20010501, pos = { x = -3530.146, y = 216.730, z = -3258.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", area_id = 12 }
	},
	gadgets = {
		{ config_id = 224004, gadget_id = 70211102, pos = { x = -3530.566, y = 216.758, z = -3251.682 }, rot = { x = 0.000, y = 159.156, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
	},
	regions = {
		{ config_id = 224005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3528.422, y = 216.659, z = -3257.517 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1224005, name = "ENTER_REGION_224005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224005", action = "action_EVENT_ENTER_REGION_224005" },
		{ config_id = 1224006, name = "ANY_MONSTER_DIE_224006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224006", action = "action_EVENT_ANY_MONSTER_DIE_224006" }
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
		monsters = { },
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