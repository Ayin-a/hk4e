-- 基础信息
local base_info = {
	group_id = 133220098
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
		{ config_id = 98001, monster_id = 20011001, pos = { x = -2471.569, y = 204.105, z = -4589.533 }, rot = { x = 0.000, y = 112.355, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
		{ config_id = 98002, monster_id = 20011001, pos = { x = -2473.803, y = 204.349, z = -4590.235 }, rot = { x = 0.000, y = 112.355, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
		{ config_id = 98003, monster_id = 20011001, pos = { x = -2473.920, y = 204.673, z = -4586.836 }, rot = { x = 0.000, y = 112.355, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
	},
	gadgets = {
		{ config_id = 98004, gadget_id = 70211102, pos = { x = -2473.539, y = 204.289, z = -4588.742 }, rot = { x = 0.000, y = 112.355, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	regions = {
		{ config_id = 98005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2473.447, y = 204.990, z = -4588.893 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1098005, name = "ENTER_REGION_98005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98005", action = "action_EVENT_ENTER_REGION_98005" },
		{ config_id = 1098006, name = "ANY_MONSTER_DIE_98006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_98006", action = "action_EVENT_ANY_MONSTER_DIE_98006" }
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