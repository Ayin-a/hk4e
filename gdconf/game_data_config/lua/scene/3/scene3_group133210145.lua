-- 基础信息
local base_info = {
	group_id = 133210145
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
		{ config_id = 145001, monster_id = 20011001, pos = { x = -3655.774, y = 112.823, z = -854.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
		{ config_id = 145002, monster_id = 20011001, pos = { x = -3654.274, y = 112.766, z = -856.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
		{ config_id = 145003, monster_id = 20011001, pos = { x = -3657.374, y = 112.603, z = -857.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 17 }
	},
	gadgets = {
		{ config_id = 145004, gadget_id = 70211102, pos = { x = -3655.754, y = 112.704, z = -856.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
	},
	regions = {
		{ config_id = 145005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3655.651, y = 114.615, z = -856.475 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1145005, name = "ENTER_REGION_145005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_145005", action = "action_EVENT_ENTER_REGION_145005" },
		{ config_id = 1145006, name = "ANY_MONSTER_DIE_145006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145006", action = "action_EVENT_ANY_MONSTER_DIE_145006" }
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