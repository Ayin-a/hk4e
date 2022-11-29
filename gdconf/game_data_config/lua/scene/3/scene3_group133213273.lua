-- 基础信息
local base_info = {
	group_id = 133213273
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
		{ config_id = 273001, monster_id = 20011301, pos = { x = -3961.365, y = 219.329, z = -3207.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", area_id = 12 },
		{ config_id = 273002, monster_id = 20011301, pos = { x = -3953.502, y = 218.079, z = -3207.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", area_id = 12 }
	},
	gadgets = {
		{ config_id = 273004, gadget_id = 70211102, pos = { x = -3956.197, y = 218.570, z = -3202.082 }, rot = { x = 0.000, y = 202.889, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
	},
	regions = {
		{ config_id = 273005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3956.309, y = 218.589, z = -3201.685 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1273005, name = "ENTER_REGION_273005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273005", action = "action_EVENT_ENTER_REGION_273005" },
		{ config_id = 1273006, name = "ANY_MONSTER_DIE_273006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273006", action = "action_EVENT_ANY_MONSTER_DIE_273006" }
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